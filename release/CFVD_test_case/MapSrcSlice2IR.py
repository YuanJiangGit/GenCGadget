import re
import os
import json
from collections import defaultdict
class MapSrcSlice2IR:
    def __init__(self):
        self.src_slice_dir='/home/sse/project/Vul/datasets/FFmpeg_src_slice'
        self.src_ir_dir= '/home/sse/project/Vul/datasets/FFmpeg_sr_ir_slice'
        self.store_dir= '/home/sse/project/Vul/datasets/FFmpeg_ir_slice'

    def _parse_ir(self, file_name, src_slices, src_labels):
        '''
        parse llvm IR file and extract the related statements whose line number in src_line_nums
        :param file_name: LLVM IR file where the vulnerable functions located in
        :param src_slices: the line nums of statements of src slicing
        :param src_labels: the line nums of vulnerable functions
        :return:
        '''

        with open(file_name,'r') as f:
            total_ir_lines = f.readlines()

        id_lineNum= {}
        id_statements=defaultdict(list)
        for line in total_ir_lines:
            # started with !\s*!(\d+)
            r_match = re.match(r'\s*!(\d+)', line)
            if r_match:
                id_str=r_match.group(1)
                int_id = int(id_str)
                r_sea=re.search(r'line:\s(\d+)',line)
                if r_sea:
                    line_num=r_sea.group(1)
                    id_lineNum[int_id]=line_num
            else:
                r_sea = re.search(r',\s*!dbg\s!(\d+)', line)
                if r_sea:
                    id_str=r_sea.group(1)
                    int_id=int(id_str)
                    id_statements[int_id].append(line[:r_sea.span()[0]].strip())

        # the llvm IR file have wrong when parsing
        if len(id_lineNum)==0 or len(id_statements)==0:
            return None, None
        # debug id list (id_lst), where the corresponding line nums of id in lst also lies in original source slicing
        id2slices=[id for id,line_num in id_lineNum.items() if int(line_num) in src_slices]
        id2slices = sorted(id2slices, reverse=False)
        ir_slices=[]
        [ir_slices.extend(id_statements[id]) for id in id2slices]
        ir_labels=[]
        if src_labels!= [0]:
            id2labels = [id for id, line_num in id_lineNum.items() if int(line_num) in src_labels]
            id2labels = sorted(id2labels, reverse=False)
            start=1
            for id in id2slices:
                statement_lst=id_statements[id]
                end=start+len(statement_lst)

                if id in id2labels:
                    ir_labels.extend([i for i in range(start,end)])
                start = end
            # slicing may not contain vulnerable statement
            if len(ir_labels)==0:
                ir_labels=[0]
        else:
            ir_labels=[0]

        return ir_slices, ir_labels

    def _parse_src_slice(self, src_slices, func_start_num):
        '''
        parse a single slice code snippet, return the corresponding line numbers
        :param src_slices:
        :return:
        '''
        line_nums=[]
        for line in src_slices:
            r_sea = re.search(r'\s*!\s*(\d+)', line)
            if r_sea:
                id_str = r_sea.group(1)
                # -1 because the the line num of src slice stated from 1
                line_nums.append(func_start_num+int(id_str)-1)
        return line_nums

    def _read_metaInfo(self,id_path):
        # read metaInfo data
        with open(os.path.join(id_path, 'metaInfo'), 'r') as f:
            meta = json.load(f)
        return meta

    def train_test_ids(self):
        '''
        partitioned each dataset (e.g., FFmpeg) into training data and test data by an "80–20" rule.
        :return:
        '''
        with open(os.path.join(self.store_dir, 'train_ids'), 'r') as f:
            train_ids=json.load(f)
        with open(os.path.join(self.store_dir, 'test_ids'), 'r') as f:
            test_ids=json.load(f)
        return train_ids,test_ids

    def _parse_src_slices(self, file_path):
        '''
        parse source slices of all instances
        :param file_path:
        :return:
        '''
        with open(file_path, 'r') as f:
            src_slices = f.readlines()
        # store slicing statements for each instance
        inst_statements=[]
        # the stated line num of functions in original source file
        func_start_num=0
        # the file where the vulnerable function is located
        patched_file_name=None
        # store file name and slicing criterion information
        head_info=None
        src_labels=None
        split_symbol='------------------------------'+'\n'
        # ids of train and test instances
        train_ids, test_ids = self.train_test_ids()
        datasub='train'
        for line in src_slices:
            r_match = re.match(r'(\d+).c/', line)
            if r_match:
                inst_id = r_match.group(1)
                if inst_id in train_ids:
                    datasub='train_programs'
                else:
                    datasub='target_programs'
                head_info=line
                inst_statements=[]
                # read metaInfo
                id_path=os.path.join(self.src_ir_dir, inst_id)
                metaInfo=self._read_metaInfo(id_path)
                func_start_num=metaInfo['vul_func_start']
                patched_file_name=os.path.basename(metaInfo['patched_file_path'])
                src_labels=metaInfo['vul_locations_src']
            elif line!=split_symbol:
                inst_statements.append(line)
            elif line==split_symbol:
                # calcuate
                src_line_nums=self._parse_src_slice(inst_statements,func_start_num)
                llvm_ir_file_name=os.path.join(self.src_ir_dir, inst_id, os.path.splitext(patched_file_name)[0] + '.ll')
                if not os.path.exists(llvm_ir_file_name):
                    continue
                ir_slices,ir_labels=self._parse_ir(llvm_ir_file_name,src_line_nums,src_labels)
                if ir_slices==None or ir_labels==None:
                    continue
                file_name=os.path.basename(file_path)
                path=os.path.join(self.store_dir, datasub, file_name)
                if not os.path.exists(os.path.join(self.store_dir,datasub)):
                    os.makedirs(os.path.join(self.store_dir,datasub))

                with open(path, 'a+') as f:
                    f.write(head_info)
                    f.write('\n'.join(ir_slices)+'\n')
                    f.write(str(ir_labels) + '\n')
                    f.write(split_symbol)

    def entry(self):
        for file in os.listdir(self.src_slice_dir):
            path=os.path.join(self.src_slice_dir,file)
            if os.path.isfile(path) and file.startswith('iSeVCs_'):
                self._parse_src_slices(path)

    # output the line num of the slicing
    def obtainLineNum(self):
        file_1='CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66a.c'
        file_2='CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66b.c'
        slice_lines=[]
        slice_path=''

        for file in [file_1,file_2]:
            with open(file,'r') as f:
                f.readline()



if __name__ == '__main__':
    mss = MapSrcSlice2IR()
    mss.entry()

