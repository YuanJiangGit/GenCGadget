define i32 @main(i32, i8**) #0 {
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66_bad()
define void @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66_bad() #0 {
  %2 = alloca i64*, align 8
  %3 = alloca [5 x i64*], align 16
  %4 = alloca i64*, align 8
  %6 = alloca i8, i64 400, align 16
  %7 = bitcast i8* %6 to i64*
  store i64* %7, i64** %4, align 8
  %10 = load i64*, i64** %4, align 8
  store i64* %10, i64** %2, align 8
  %11 = load i64*, i64** %2, align 8
  %12 = getelementptr inbounds [5 x i64*], [5 x i64*]* %3, i64 0, i64 2
  store i64* %12, i64** %12, align 16
  %13 = getelementptr inbounds [5 x i64*], [5 x i64*]* %3, i32 0, i32 0
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66b_badSink(i64** %13)
define void @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memmove_66b_badSink(i64**) #0 {
  %16 = alloca i64**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca [100 x i64], align 16
  store i64** %14, i64*** %16, align 8
  %19 = load i64**, i64*** %16, align 8
  %20 = getelementptr inbounds i64*, i64** %19, i64 2
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %17, align 8
  %22 = bitcast [100 x i64]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 800, i32 16, i1 false)
  %23 = load i64*, i64** %17, align 
  %24 = bitcast i64* %23 to i8
  %25 = getelementptr inbounds [100 x i64], [100 x i64]* %18, i32 0, i32 
  %26 = bitcast i64* %25 to i8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %24, i8* %26, i64 800, i32 8, i1 false)
  %27 = load i64*, i64** %data, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %27, i64 0
  %28 = load i64, i64* %arrayidx1, align 8, !dbg !83
  call void @printLongLongLine(i64 %28)
define void @printLongLongLine(i64 %longLongIntNumber) #0 {
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  %29 = load i64* %longLongIntNumber.addr, align 8
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i64 %29)
  ret void
}
}
}
}
