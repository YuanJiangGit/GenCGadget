# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.dganalysis.Debug:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib


PostBuild.dgcda.Debug:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib


PostBuild.dgdda.Debug:
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib


PostBuild.dgllvmcda.Debug:
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib


PostBuild.dgllvmdda.Debug:
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib


PostBuild.dgllvmdg.Debug:
PostBuild.dgllvmdda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dgllvmthreadregions.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib


PostBuild.dgllvmforkjoin.Debug:
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib


PostBuild.dgllvmpta.Debug:
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib


PostBuild.dgllvmsdg.Debug:
PostBuild.dgsdg.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dgllvmdda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib


PostBuild.dgllvmthreadregions.Debug:
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib


PostBuild.dgpta.Debug:
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib


PostBuild.dgsdg.Debug:
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib


PostBuild.dgllvmslicer.Debug:
/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib


PostBuild.llvm-cda-bench.Debug:
PostBuild.dgllvmslicer.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench:\
	/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-bench


PostBuild.llvm-cda-dump.Debug:
PostBuild.dgllvmslicer.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-dump


PostBuild.llvm-cda-stress.Debug:
PostBuild.dgllvmslicer.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-stress
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-stress
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-stress
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-stress:\
	/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cda-stress


PostBuild.llvm-cg-dump.Debug:
PostBuild.dgllvmslicer.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cg-dump
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cg-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cg-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cg-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-cg-dump


PostBuild.llvm-dda-dump.Debug:
PostBuild.dgllvmdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump
PostBuild.dgllvmslicer.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dda-dump


PostBuild.llvm-dg-dump.Debug:
PostBuild.dgllvmdg.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgllvmdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgllvmthreadregions.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-dg-dump


PostBuild.llvm-ntscd-dump.Debug:
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-ntscd-dump
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-ntscd-dump
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-ntscd-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-ntscd-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-ntscd-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-ntscd-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-ntscd-dump


PostBuild.llvm-pta-ben.Debug:
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-ben
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-ben
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-ben
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-ben:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-ben


PostBuild.llvm-pta-compare.Debug:
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-compare
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-compare
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-compare
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-compare:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-compare


PostBuild.llvm-pta-dump.Debug:
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-pta-dump


PostBuild.llvm-sdg-dump.Debug:
PostBuild.dgllvmslicer.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgllvmsdg.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgsdg.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgllvmdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-sdg-dump


PostBuild.llvm-slicer.Debug:
PostBuild.dgllvmslicer.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgllvmdg.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgllvmdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgllvmthreadregions.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer:\
	/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-slicer


PostBuild.llvm-thread-regions-dump.Debug:
PostBuild.dgllvmthreadregions.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-thread-regions-dump
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-thread-regions-dump
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-thread-regions-dump
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-thread-regions-dump
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-thread-regions-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-thread-regions-dump


PostBuild.llvm-to-source.Debug:
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-to-source:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-to-source


PostBuild.llvm-vr-dump.Debug:
/Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-vr-dump:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Debug/llvm-vr-dump


PostBuild.adt-test.Debug:
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/adt-test
/Users/mac/project/C/dg/build_xcode/tests/Debug/adt-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/adt-test


PostBuild.bitvector-test.Debug:
/Users/mac/project/C/dg/build_xcode/tests/Debug/bitvector-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/bitvector-test


PostBuild.disjunctive-intervals-map-test.Debug:
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/disjunctive-intervals-map-test
/Users/mac/project/C/dg/build_xcode/tests/Debug/disjunctive-intervals-map-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/disjunctive-intervals-map-test


PostBuild.llvm-dg-test.Debug:
PostBuild.dgllvmdg.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgllvmdda.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgllvmthreadregions.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgllvmcda.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgllvmforkjoin.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
PostBuild.dgcda.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test
/Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/llvm-dg-test


PostBuild.nodes-walk-test.Debug:
/Users/mac/project/C/dg/build_xcode/tests/Debug/nodes-walk-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/nodes-walk-test


PostBuild.numbers-set-test.Debug:
/Users/mac/project/C/dg/build_xcode/tests/Debug/numbers-set-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/numbers-set-test


PostBuild.points-to-set-test.Debug:
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-set-test
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-set-test
/Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-set-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-set-test


PostBuild.points-to-test.Debug:
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-test
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-test
/Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/points-to-test


PostBuild.ptset-benchmark.Debug:
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/ptset-benchmark
/Users/mac/project/C/dg/build_xcode/tests/Debug/ptset-benchmark:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/ptset-benchmark


PostBuild.readwritegraph-test.Debug:
PostBuild.dgdda.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/readwritegraph-test
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/readwritegraph-test
/Users/mac/project/C/dg/build_xcode/tests/Debug/readwritegraph-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/readwritegraph-test


PostBuild.thread-regions-test.Debug:
PostBuild.dgllvmthreadregions.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/thread-regions-test
PostBuild.dgllvmpta.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/thread-regions-test
PostBuild.dgpta.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/thread-regions-test
PostBuild.dganalysis.Debug: /Users/mac/project/C/dg/build_xcode/tests/Debug/thread-regions-test
/Users/mac/project/C/dg/build_xcode/tests/Debug/thread-regions-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Debug/thread-regions-test


PostBuild.dganalysis.Release:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib


PostBuild.dgcda.Release:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib


PostBuild.dgdda.Release:
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib


PostBuild.dgllvmcda.Release:
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib


PostBuild.dgllvmdda.Release:
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib


PostBuild.dgllvmdg.Release:
PostBuild.dgllvmdda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dgllvmthreadregions.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib


PostBuild.dgllvmforkjoin.Release:
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib


PostBuild.dgllvmpta.Release:
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib


PostBuild.dgllvmsdg.Release:
PostBuild.dgsdg.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dgllvmdda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib


PostBuild.dgllvmthreadregions.Release:
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib


PostBuild.dgpta.Release:
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib


PostBuild.dgsdg.Release:
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib


PostBuild.dgllvmslicer.Release:
/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib


PostBuild.llvm-cda-bench.Release:
PostBuild.dgllvmslicer.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench:\
	/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-bench


PostBuild.llvm-cda-dump.Release:
PostBuild.dgllvmslicer.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-dump


PostBuild.llvm-cda-stress.Release:
PostBuild.dgllvmslicer.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-stress
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-stress
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-stress
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-stress:\
	/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cda-stress


PostBuild.llvm-cg-dump.Release:
PostBuild.dgllvmslicer.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cg-dump
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cg-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cg-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cg-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-cg-dump


PostBuild.llvm-dda-dump.Release:
PostBuild.dgllvmdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump
PostBuild.dgllvmslicer.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dda-dump


PostBuild.llvm-dg-dump.Release:
PostBuild.dgllvmdg.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgllvmdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgllvmthreadregions.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-dg-dump


PostBuild.llvm-ntscd-dump.Release:
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-ntscd-dump
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-ntscd-dump
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-ntscd-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-ntscd-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-ntscd-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-ntscd-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-ntscd-dump


PostBuild.llvm-pta-ben.Release:
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-ben
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-ben
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-ben
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-ben:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-ben


PostBuild.llvm-pta-compare.Release:
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-compare
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-compare
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-compare
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-compare:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-compare


PostBuild.llvm-pta-dump.Release:
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-pta-dump


PostBuild.llvm-sdg-dump.Release:
PostBuild.dgllvmslicer.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgllvmsdg.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgsdg.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgllvmdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-sdg-dump


PostBuild.llvm-slicer.Release:
PostBuild.dgllvmslicer.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgllvmdg.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgllvmdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgllvmthreadregions.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer:\
	/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-slicer


PostBuild.llvm-thread-regions-dump.Release:
PostBuild.dgllvmthreadregions.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-thread-regions-dump
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-thread-regions-dump
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-thread-regions-dump
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-thread-regions-dump
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-thread-regions-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-thread-regions-dump


PostBuild.llvm-to-source.Release:
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-to-source:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-to-source


PostBuild.llvm-vr-dump.Release:
/Users/mac/project/C/dg/build_xcode/tools/Release/llvm-vr-dump:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/Release/llvm-vr-dump


PostBuild.adt-test.Release:
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/adt-test
/Users/mac/project/C/dg/build_xcode/tests/Release/adt-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/adt-test


PostBuild.bitvector-test.Release:
/Users/mac/project/C/dg/build_xcode/tests/Release/bitvector-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/bitvector-test


PostBuild.disjunctive-intervals-map-test.Release:
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/disjunctive-intervals-map-test
/Users/mac/project/C/dg/build_xcode/tests/Release/disjunctive-intervals-map-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/disjunctive-intervals-map-test


PostBuild.llvm-dg-test.Release:
PostBuild.dgllvmdg.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgllvmdda.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgllvmthreadregions.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgllvmcda.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgllvmforkjoin.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
PostBuild.dgcda.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test
/Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/llvm-dg-test


PostBuild.nodes-walk-test.Release:
/Users/mac/project/C/dg/build_xcode/tests/Release/nodes-walk-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/nodes-walk-test


PostBuild.numbers-set-test.Release:
/Users/mac/project/C/dg/build_xcode/tests/Release/numbers-set-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/numbers-set-test


PostBuild.points-to-set-test.Release:
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/points-to-set-test
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/points-to-set-test
/Users/mac/project/C/dg/build_xcode/tests/Release/points-to-set-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/points-to-set-test


PostBuild.points-to-test.Release:
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/points-to-test
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/points-to-test
/Users/mac/project/C/dg/build_xcode/tests/Release/points-to-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/points-to-test


PostBuild.ptset-benchmark.Release:
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/ptset-benchmark
/Users/mac/project/C/dg/build_xcode/tests/Release/ptset-benchmark:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/ptset-benchmark


PostBuild.readwritegraph-test.Release:
PostBuild.dgdda.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/readwritegraph-test
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/readwritegraph-test
/Users/mac/project/C/dg/build_xcode/tests/Release/readwritegraph-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/readwritegraph-test


PostBuild.thread-regions-test.Release:
PostBuild.dgllvmthreadregions.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/thread-regions-test
PostBuild.dgllvmpta.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/thread-regions-test
PostBuild.dgpta.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/thread-regions-test
PostBuild.dganalysis.Release: /Users/mac/project/C/dg/build_xcode/tests/Release/thread-regions-test
/Users/mac/project/C/dg/build_xcode/tests/Release/thread-regions-test:\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/Release/thread-regions-test


PostBuild.dganalysis.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib


PostBuild.dgcda.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib


PostBuild.dgdda.MinSizeRel:
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib


PostBuild.dgllvmcda.MinSizeRel:
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib


PostBuild.dgllvmdda.MinSizeRel:
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib


PostBuild.dgllvmdg.MinSizeRel:
PostBuild.dgllvmdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dgllvmthreadregions.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib


PostBuild.dgllvmforkjoin.MinSizeRel:
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib


PostBuild.dgllvmpta.MinSizeRel:
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib


PostBuild.dgllvmsdg.MinSizeRel:
PostBuild.dgsdg.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dgllvmdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib


PostBuild.dgllvmthreadregions.MinSizeRel:
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib


PostBuild.dgpta.MinSizeRel:
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib


PostBuild.dgsdg.MinSizeRel:
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib


PostBuild.dgllvmslicer.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib


PostBuild.llvm-cda-bench.MinSizeRel:
PostBuild.dgllvmslicer.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench:\
	/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-bench


PostBuild.llvm-cda-dump.MinSizeRel:
PostBuild.dgllvmslicer.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-dump


PostBuild.llvm-cda-stress.MinSizeRel:
PostBuild.dgllvmslicer.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-stress
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-stress
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-stress
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-stress:\
	/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cda-stress


PostBuild.llvm-cg-dump.MinSizeRel:
PostBuild.dgllvmslicer.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cg-dump
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cg-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cg-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cg-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-cg-dump


PostBuild.llvm-dda-dump.MinSizeRel:
PostBuild.dgllvmdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump
PostBuild.dgllvmslicer.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dda-dump


PostBuild.llvm-dg-dump.MinSizeRel:
PostBuild.dgllvmdg.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgllvmdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgllvmthreadregions.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-dg-dump


PostBuild.llvm-ntscd-dump.MinSizeRel:
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-ntscd-dump
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-ntscd-dump
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-ntscd-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-ntscd-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-ntscd-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-ntscd-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-ntscd-dump


PostBuild.llvm-pta-ben.MinSizeRel:
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-ben
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-ben
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-ben
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-ben:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-ben


PostBuild.llvm-pta-compare.MinSizeRel:
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-compare
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-compare
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-compare
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-compare:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-compare


PostBuild.llvm-pta-dump.MinSizeRel:
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-pta-dump


PostBuild.llvm-sdg-dump.MinSizeRel:
PostBuild.dgllvmslicer.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgllvmsdg.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgsdg.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgllvmdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-sdg-dump


PostBuild.llvm-slicer.MinSizeRel:
PostBuild.dgllvmslicer.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgllvmdg.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgllvmdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgllvmthreadregions.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer:\
	/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-slicer


PostBuild.llvm-thread-regions-dump.MinSizeRel:
PostBuild.dgllvmthreadregions.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-thread-regions-dump
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-thread-regions-dump
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-thread-regions-dump
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-thread-regions-dump
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-thread-regions-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-thread-regions-dump


PostBuild.llvm-to-source.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-to-source:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-to-source


PostBuild.llvm-vr-dump.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-vr-dump:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/llvm-vr-dump


PostBuild.adt-test.MinSizeRel:
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/adt-test
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/adt-test:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/adt-test


PostBuild.bitvector-test.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/bitvector-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/bitvector-test


PostBuild.disjunctive-intervals-map-test.MinSizeRel:
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/disjunctive-intervals-map-test
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/disjunctive-intervals-map-test:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/disjunctive-intervals-map-test


PostBuild.llvm-dg-test.MinSizeRel:
PostBuild.dgllvmdg.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgllvmdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgllvmthreadregions.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgllvmcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgllvmforkjoin.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
PostBuild.dgcda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/llvm-dg-test


PostBuild.nodes-walk-test.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/nodes-walk-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/nodes-walk-test


PostBuild.numbers-set-test.MinSizeRel:
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/numbers-set-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/numbers-set-test


PostBuild.points-to-set-test.MinSizeRel:
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-set-test
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-set-test
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-set-test:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-set-test


PostBuild.points-to-test.MinSizeRel:
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-test
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-test
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-test:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/points-to-test


PostBuild.ptset-benchmark.MinSizeRel:
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/ptset-benchmark
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/ptset-benchmark:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/ptset-benchmark


PostBuild.readwritegraph-test.MinSizeRel:
PostBuild.dgdda.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/readwritegraph-test
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/readwritegraph-test
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/readwritegraph-test:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/readwritegraph-test


PostBuild.thread-regions-test.MinSizeRel:
PostBuild.dgllvmthreadregions.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/thread-regions-test
PostBuild.dgllvmpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/thread-regions-test
PostBuild.dgpta.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/thread-regions-test
PostBuild.dganalysis.MinSizeRel: /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/thread-regions-test
/Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/thread-regions-test:\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/MinSizeRel/thread-regions-test


PostBuild.dganalysis.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib


PostBuild.dgcda.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib


PostBuild.dgdda.RelWithDebInfo:
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib


PostBuild.dgllvmcda.RelWithDebInfo:
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib


PostBuild.dgllvmdda.RelWithDebInfo:
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib


PostBuild.dgllvmdg.RelWithDebInfo:
PostBuild.dgllvmdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dgllvmthreadregions.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib


PostBuild.dgllvmforkjoin.RelWithDebInfo:
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib


PostBuild.dgllvmpta.RelWithDebInfo:
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib


PostBuild.dgllvmsdg.RelWithDebInfo:
PostBuild.dgsdg.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dgllvmdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib


PostBuild.dgllvmthreadregions.RelWithDebInfo:
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib


PostBuild.dgpta.RelWithDebInfo:
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib


PostBuild.dgsdg.RelWithDebInfo:
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib


PostBuild.dgllvmslicer.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib


PostBuild.llvm-cda-bench.RelWithDebInfo:
PostBuild.dgllvmslicer.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench:\
	/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-bench


PostBuild.llvm-cda-dump.RelWithDebInfo:
PostBuild.dgllvmslicer.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-dump


PostBuild.llvm-cda-stress.RelWithDebInfo:
PostBuild.dgllvmslicer.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-stress
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-stress
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-stress
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-stress:\
	/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cda-stress


PostBuild.llvm-cg-dump.RelWithDebInfo:
PostBuild.dgllvmslicer.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cg-dump
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cg-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cg-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cg-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-cg-dump


PostBuild.llvm-dda-dump.RelWithDebInfo:
PostBuild.dgllvmdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump
PostBuild.dgllvmslicer.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dda-dump


PostBuild.llvm-dg-dump.RelWithDebInfo:
PostBuild.dgllvmdg.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgllvmdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgllvmthreadregions.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-dg-dump


PostBuild.llvm-ntscd-dump.RelWithDebInfo:
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-ntscd-dump
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-ntscd-dump
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-ntscd-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-ntscd-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-ntscd-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-ntscd-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-ntscd-dump


PostBuild.llvm-pta-ben.RelWithDebInfo:
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-ben
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-ben
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-ben
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-ben:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-ben


PostBuild.llvm-pta-compare.RelWithDebInfo:
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-compare
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-compare
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-compare
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-compare:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-compare


PostBuild.llvm-pta-dump.RelWithDebInfo:
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-pta-dump


PostBuild.llvm-sdg-dump.RelWithDebInfo:
PostBuild.dgllvmslicer.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgllvmsdg.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgsdg.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgllvmdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump:\
	/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-sdg-dump


PostBuild.llvm-slicer.RelWithDebInfo:
PostBuild.dgllvmslicer.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgllvmdg.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgllvmdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgllvmthreadregions.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer:\
	/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-slicer


PostBuild.llvm-thread-regions-dump.RelWithDebInfo:
PostBuild.dgllvmthreadregions.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-thread-regions-dump
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-thread-regions-dump
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-thread-regions-dump
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-thread-regions-dump
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-thread-regions-dump:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-thread-regions-dump


PostBuild.llvm-to-source.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-to-source:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-to-source


PostBuild.llvm-vr-dump.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-vr-dump:\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/llvm-vr-dump


PostBuild.adt-test.RelWithDebInfo:
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/adt-test
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/adt-test:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/adt-test


PostBuild.bitvector-test.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/bitvector-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/bitvector-test


PostBuild.disjunctive-intervals-map-test.RelWithDebInfo:
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/disjunctive-intervals-map-test
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/disjunctive-intervals-map-test:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/disjunctive-intervals-map-test


PostBuild.llvm-dg-test.RelWithDebInfo:
PostBuild.dgllvmdg.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgllvmdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgllvmthreadregions.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgllvmcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgllvmforkjoin.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
PostBuild.dgcda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/llvm-dg-test


PostBuild.nodes-walk-test.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/nodes-walk-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/nodes-walk-test


PostBuild.numbers-set-test.RelWithDebInfo:
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/numbers-set-test:
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/numbers-set-test


PostBuild.points-to-set-test.RelWithDebInfo:
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-set-test
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-set-test
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-set-test:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-set-test


PostBuild.points-to-test.RelWithDebInfo:
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-test
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-test
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-test:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/points-to-test


PostBuild.ptset-benchmark.RelWithDebInfo:
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/ptset-benchmark
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/ptset-benchmark:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/ptset-benchmark


PostBuild.readwritegraph-test.RelWithDebInfo:
PostBuild.dgdda.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/readwritegraph-test
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/readwritegraph-test
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/readwritegraph-test:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/readwritegraph-test


PostBuild.thread-regions-test.RelWithDebInfo:
PostBuild.dgllvmthreadregions.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/thread-regions-test
PostBuild.dgllvmpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/thread-regions-test
PostBuild.dgpta.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/thread-regions-test
PostBuild.dganalysis.RelWithDebInfo: /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/thread-regions-test
/Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/thread-regions-test:\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib\
	/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a\
	/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a
	/bin/rm -f /Users/mac/project/C/dg/build_xcode/tests/RelWithDebInfo/thread-regions-test




# For each target create a dummy ruleso the target does not have to exist
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdganalysis.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmforkjoin.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmsdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgllvmthreadregions.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Debug/libdgsdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdganalysis.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmforkjoin.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmsdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgllvmthreadregions.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/MinSizeRel/libdgsdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdganalysis.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmforkjoin.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmsdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgllvmthreadregions.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/RelWithDebInfo/libdgsdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdganalysis.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmcda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdda.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmforkjoin.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmsdg.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgllvmthreadregions.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgpta.dylib:
/Users/mac/project/C/dg/build_xcode/lib/Release/libdgsdg.dylib:
/Users/mac/project/C/dg/build_xcode/tools/Debug/libdgllvmslicer.dylib:
/Users/mac/project/C/dg/build_xcode/tools/MinSizeRel/libdgllvmslicer.dylib:
/Users/mac/project/C/dg/build_xcode/tools/RelWithDebInfo/libdgllvmslicer.dylib:
/Users/mac/project/C/dg/build_xcode/tools/Release/libdgllvmslicer.dylib:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAnalysis.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMAsmParser.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBinaryFormat.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitReader.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitWriter.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMBitstreamReader.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMCore.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoCodeView.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDebugInfoMSF.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMDemangle.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMIRReader.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMC.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMMCParser.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMObject.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMProfileData.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMRemarks.a:
/Users/mac/softwarePackage/llvm/llvm_release/lib/libLLVMSupport.a:
