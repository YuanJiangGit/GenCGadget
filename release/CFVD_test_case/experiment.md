



## 1 Compile into LLVM IR

### 1.1 编译单个文件

```
clang -emit-llvm -c CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66a.c -o CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66a.bc -g -I /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1 -I ../testcasesupport/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk
```

```
clang -emit-llvm -c CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66b.c -o CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66b.bc -g -I /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1 -I ../testcasesupport/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk
```



### 1.2 链接多个文件



```
llvm-link CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66a.bc CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66b.bc -o CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66.bc
```



## 2 Perform program slicing



```
-c 27:dataArray -dump-dg -code-gadget -entry CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66_bad -forward /Users/mac/project/vulnerability/C/CFVD_test_case/CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66.bc
```















