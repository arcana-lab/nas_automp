; ModuleID = 'is.c'
source_filename = "is.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c" Size            =              %3dx%3dx%3d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c" Threads         =             %12d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c" Time in seconds =             %12.2f\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c" Mop/s total     =             %12.2f\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c" Version         =           %12s\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c" Compile date    =             %12s\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\0A Compile options:\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"    CC           = %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"    CLINK        = %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"    C_LIB        = %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"    C_INC        = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"    CFLAGS       = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"    CLINKFLAGS   = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"    RAND         = %s\0A\00", align 1
@elapsed = common dso_local global [64 x double] zeroinitializer, align 16
@start = common dso_local global [64 x double] zeroinitializer, align 16
@wtime_.sec = internal global i32 -1, align 4
@S_test_index_array = dso_local global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = dso_local global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = dso_local global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = dso_local global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = dso_local global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = dso_local global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = dso_local global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = dso_local global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = dso_local global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = dso_local global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@randlc.KS = internal global i32 0, align 4
@randlc.R23 = internal global double 0.000000e+00, align 8
@randlc.R46 = internal global double 0.000000e+00, align 8
@randlc.T23 = internal global double 0.000000e+00, align 8
@randlc.T46 = internal global double 0.000000e+00, align 8
@key_array = common dso_local global [33554432 x i32] zeroinitializer, align 16
@key_buff2 = common dso_local global [33554432 x i32] zeroinitializer, align 16
@key_buff_ptr_global = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [45 x i8] c"Full_verify: number of keys out of sort: %d\0A\00", align 1
@passed_verification = common dso_local global i32 0, align 4
@test_index_array = common dso_local global [5 x i32] zeroinitializer, align 16
@partial_verify_vals = common dso_local global [5 x i32] zeroinitializer, align 16
@key_buff1 = common dso_local global [33554432 x i32] zeroinitializer, align 16
@test_rank_array = common dso_local global [5 x i32] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"\0A\0A NAS Parallel Benchmarks 2.3 OpenMP C version - IS Benchmark\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c" Size:  %d  (class %c)\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c" Iterations:   %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"\0A   iteration\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"3.0 structured\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"10 Mar 2021\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gclang\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"-O3 \00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"-lm -mcmodel=large\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"randlc\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @c_print_results(i8*, i8 signext, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #0 {
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  store i8* %0, i8** %21, align 8, !tbaa !2
  store i8 %1, i8* %22, align 1, !tbaa !6
  store i32 %2, i32* %23, align 4, !tbaa !7
  store i32 %3, i32* %24, align 4, !tbaa !7
  store i32 %4, i32* %25, align 4, !tbaa !7
  store i32 %5, i32* %26, align 4, !tbaa !7
  store i32 %6, i32* %27, align 4, !tbaa !7
  store double %7, double* %28, align 8, !tbaa !9
  store double %8, double* %29, align 8, !tbaa !9
  store i8* %9, i8** %30, align 8, !tbaa !2
  store i32 %10, i32* %31, align 4, !tbaa !7
  store i8* %11, i8** %32, align 8, !tbaa !2
  store i8* %12, i8** %33, align 8, !tbaa !2
  store i8* %13, i8** %34, align 8, !tbaa !2
  store i8* %14, i8** %35, align 8, !tbaa !2
  store i8* %15, i8** %36, align 8, !tbaa !2
  store i8* %16, i8** %37, align 8, !tbaa !2
  store i8* %17, i8** %38, align 8, !tbaa !2
  store i8* %18, i8** %39, align 8, !tbaa !2
  store i8* %19, i8** %40, align 8, !tbaa !2
  %42 = bitcast i8** %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %41, align 8, !tbaa !2
  %43 = load i8*, i8** %21, align 8, !tbaa !2
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i8, i8* %22, align 1, !tbaa !6
  %46 = sext i8 %45 to i32
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %24, align 4, !tbaa !7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %20
  %51 = load i32, i32* %25, align 4, !tbaa !7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %23, align 4, !tbaa !7
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %61

56:                                               ; preds = %50, %20
  %57 = load i32, i32* %23, align 4, !tbaa !7
  %58 = load i32, i32* %24, align 4, !tbaa !7
  %59 = load i32, i32* %25, align 4, !tbaa !7
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %26, align 4, !tbaa !7
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %27, align 4, !tbaa !7
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load double, double* %28, align 8, !tbaa !9
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), double %66)
  %68 = load double, double* %29, align 8, !tbaa !9
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), double %68)
  %70 = load i8*, i8** %30, align 8, !tbaa !2
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %31, align 4, !tbaa !7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %78

76:                                               ; preds = %61
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i8*, i8** %32, align 8, !tbaa !2
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** %33, align 8, !tbaa !2
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %84 = load i8*, i8** %34, align 8, !tbaa !2
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %84)
  %86 = load i8*, i8** %35, align 8, !tbaa !2
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %86)
  %88 = load i8*, i8** %36, align 8, !tbaa !2
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %37, align 8, !tbaa !2
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %90)
  %92 = load i8*, i8** %38, align 8, !tbaa !2
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* %92)
  %94 = load i8*, i8** %39, align 8, !tbaa !2
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** %40, align 8, !tbaa !2
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %96)
  %98 = bitcast i8** %41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local double @elapsed_time() #0 {
  %1 = alloca double, align 8
  %2 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4
  call void @wtime_(double* %1)
  %3 = load double, double* %1, align 8, !tbaa !9
  %4 = bitcast double* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #4
  ret double %3
}

; Function Attrs: nounwind uwtable
define dso_local void @wtime_(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.timeval, align 8
  store double* %0, double** %2, align 8, !tbaa !2
  %4 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %4) #4
  %5 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #4
  %6 = load i32, i32* @wtime_.sec, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !11
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @wtime_.sec, align 4, !tbaa !7
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !11
  %15 = load i32, i32* @wtime_.sec, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = sitofp i64 %17 to double
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !tbaa !14
  %21 = sitofp i64 %20 to double
  %22 = fmul double 0x3EB0C6F7A0B5ED8D, %21
  %23 = fadd double %18, %22
  %24 = load double*, double** %2, align 8, !tbaa !2
  store double %23, double* %24, align 8, !tbaa !9
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %25) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @timer_clear(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [64 x double], [64 x double]* @elapsed, i64 0, i64 %4
  store double 0.000000e+00, double* %5, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @timer_start(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = call double @elapsed_time()
  %4 = load i32, i32* %2, align 4, !tbaa !7
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [64 x double], [64 x double]* @start, i64 0, i64 %5
  store double %3, double* %6, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @timer_stop(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 %0, i32* %2, align 4, !tbaa !7
  %5 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4
  %6 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4
  %7 = call double @elapsed_time()
  store double %7, double* %4, align 8, !tbaa !9
  %8 = load double, double* %4, align 8, !tbaa !9
  %9 = load i32, i32* %2, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [64 x double], [64 x double]* @start, i64 0, i64 %10
  %12 = load double, double* %11, align 8, !tbaa !9
  %13 = fsub double %8, %12
  store double %13, double* %3, align 8, !tbaa !9
  %14 = load double, double* %3, align 8, !tbaa !9
  %15 = load i32, i32* %2, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [64 x double], [64 x double]* @elapsed, i64 0, i64 %16
  %18 = load double, double* %17, align 8, !tbaa !9
  %19 = fadd double %18, %14
  store double %19, double* %17, align 8, !tbaa !9
  %20 = bitcast double* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #4
  %21 = bitcast double* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @timer_read(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [64 x double], [64 x double]* @elapsed, i64 0, i64 %4
  %6 = load double, double* %5, align 8, !tbaa !9
  ret double %6
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind uwtable
define dso_local double @randlc(double*, double*) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store double* %0, double** %3, align 8, !tbaa !2
  store double* %1, double** %4, align 8, !tbaa !2
  %16 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #4
  %17 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #4
  %18 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #4
  %19 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #4
  %20 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #4
  %21 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #4
  %22 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #4
  %23 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #4
  %24 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #4
  %25 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #4
  %26 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #4
  %27 = load i32, i32* @randlc.KS, align 4, !tbaa !7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %2
  store double 1.000000e+00, double* @randlc.R23, align 8, !tbaa !9
  store double 1.000000e+00, double* @randlc.R46, align 8, !tbaa !9
  store double 1.000000e+00, double* @randlc.T23, align 8, !tbaa !9
  store double 1.000000e+00, double* @randlc.T46, align 8, !tbaa !9
  store i32 1, i32* %14, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %38, %29
  %31 = load i32, i32* %14, align 4, !tbaa !7
  %32 = icmp sle i32 %31, 23
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load double, double* @randlc.R23, align 8, !tbaa !9
  %35 = fmul double 5.000000e-01, %34
  store double %35, double* @randlc.R23, align 8, !tbaa !9
  %36 = load double, double* @randlc.T23, align 8, !tbaa !9
  %37 = fmul double 2.000000e+00, %36
  store double %37, double* @randlc.T23, align 8, !tbaa !9
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %14, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4, !tbaa !7
  br label %30

41:                                               ; preds = %30
  store i32 1, i32* %14, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %50, %41
  %43 = load i32, i32* %14, align 4, !tbaa !7
  %44 = icmp sle i32 %43, 46
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load double, double* @randlc.R46, align 8, !tbaa !9
  %47 = fmul double 5.000000e-01, %46
  store double %47, double* @randlc.R46, align 8, !tbaa !9
  %48 = load double, double* @randlc.T46, align 8, !tbaa !9
  %49 = fmul double 2.000000e+00, %48
  store double %49, double* @randlc.T46, align 8, !tbaa !9
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4, !tbaa !7
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4, !tbaa !7
  br label %42

53:                                               ; preds = %42
  store i32 1, i32* @randlc.KS, align 4, !tbaa !7
  br label %54

54:                                               ; preds = %53, %2
  %55 = load double, double* @randlc.R23, align 8, !tbaa !9
  %56 = load double*, double** %4, align 8, !tbaa !2
  %57 = load double, double* %56, align 8, !tbaa !9
  %58 = fmul double %55, %57
  store double %58, double* %5, align 8, !tbaa !9
  %59 = load double, double* %5, align 8, !tbaa !9
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %15, align 4, !tbaa !7
  %61 = load i32, i32* %15, align 4, !tbaa !7
  %62 = sitofp i32 %61 to double
  store double %62, double* %9, align 8, !tbaa !9
  %63 = load double*, double** %4, align 8, !tbaa !2
  %64 = load double, double* %63, align 8, !tbaa !9
  %65 = load double, double* @randlc.T23, align 8, !tbaa !9
  %66 = load double, double* %9, align 8, !tbaa !9
  %67 = fmul double %65, %66
  %68 = fsub double %64, %67
  store double %68, double* %10, align 8, !tbaa !9
  %69 = load double, double* @randlc.R23, align 8, !tbaa !9
  %70 = load double*, double** %3, align 8, !tbaa !2
  %71 = load double, double* %70, align 8, !tbaa !9
  %72 = fmul double %69, %71
  store double %72, double* %5, align 8, !tbaa !9
  %73 = load double, double* %5, align 8, !tbaa !9
  %74 = fptosi double %73 to i32
  store i32 %74, i32* %15, align 4, !tbaa !7
  %75 = load i32, i32* %15, align 4, !tbaa !7
  %76 = sitofp i32 %75 to double
  store double %76, double* %11, align 8, !tbaa !9
  %77 = load double*, double** %3, align 8, !tbaa !2
  %78 = load double, double* %77, align 8, !tbaa !9
  %79 = load double, double* @randlc.T23, align 8, !tbaa !9
  %80 = load double, double* %11, align 8, !tbaa !9
  %81 = fmul double %79, %80
  %82 = fsub double %78, %81
  store double %82, double* %12, align 8, !tbaa !9
  %83 = load double, double* %9, align 8, !tbaa !9
  %84 = load double, double* %12, align 8, !tbaa !9
  %85 = fmul double %83, %84
  %86 = load double, double* %10, align 8, !tbaa !9
  %87 = load double, double* %11, align 8, !tbaa !9
  %88 = fmul double %86, %87
  %89 = fadd double %85, %88
  store double %89, double* %5, align 8, !tbaa !9
  %90 = load double, double* @randlc.R23, align 8, !tbaa !9
  %91 = load double, double* %5, align 8, !tbaa !9
  %92 = fmul double %90, %91
  %93 = fptosi double %92 to i32
  store i32 %93, i32* %15, align 4, !tbaa !7
  %94 = load i32, i32* %15, align 4, !tbaa !7
  %95 = sitofp i32 %94 to double
  store double %95, double* %6, align 8, !tbaa !9
  %96 = load double, double* %5, align 8, !tbaa !9
  %97 = load double, double* @randlc.T23, align 8, !tbaa !9
  %98 = load double, double* %6, align 8, !tbaa !9
  %99 = fmul double %97, %98
  %100 = fsub double %96, %99
  store double %100, double* %13, align 8, !tbaa !9
  %101 = load double, double* @randlc.T23, align 8, !tbaa !9
  %102 = load double, double* %13, align 8, !tbaa !9
  %103 = fmul double %101, %102
  %104 = load double, double* %10, align 8, !tbaa !9
  %105 = load double, double* %12, align 8, !tbaa !9
  %106 = fmul double %104, %105
  %107 = fadd double %103, %106
  store double %107, double* %7, align 8, !tbaa !9
  %108 = load double, double* @randlc.R46, align 8, !tbaa !9
  %109 = load double, double* %7, align 8, !tbaa !9
  %110 = fmul double %108, %109
  %111 = fptosi double %110 to i32
  store i32 %111, i32* %15, align 4, !tbaa !7
  %112 = load i32, i32* %15, align 4, !tbaa !7
  %113 = sitofp i32 %112 to double
  store double %113, double* %8, align 8, !tbaa !9
  %114 = load double, double* %7, align 8, !tbaa !9
  %115 = load double, double* @randlc.T46, align 8, !tbaa !9
  %116 = load double, double* %8, align 8, !tbaa !9
  %117 = fmul double %115, %116
  %118 = fsub double %114, %117
  %119 = load double*, double** %3, align 8, !tbaa !2
  store double %118, double* %119, align 8, !tbaa !9
  %120 = load double, double* @randlc.R46, align 8, !tbaa !9
  %121 = load double*, double** %3, align 8, !tbaa !2
  %122 = load double, double* %121, align 8, !tbaa !9
  %123 = fmul double %120, %122
  %124 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %124) #4
  %125 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %125) #4
  %126 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %126) #4
  %127 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %127) #4
  %128 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %128) #4
  %129 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %129) #4
  %130 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %130) #4
  %131 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %131) #4
  %132 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %132) #4
  %133 = bitcast double* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %133) #4
  %134 = bitcast double* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %134) #4
  ret double %123
}

; Function Attrs: nounwind uwtable
define dso_local void @create_seq(double, double) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %3, align 8, !tbaa !9
  store double %1, double* %4, align 8, !tbaa !9
  %9 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  store i32 524288, i32* %8, align 4, !tbaa !7
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %13

13:                                               ; preds = %35, %2
  %14 = load i32, i32* %6, align 4, !tbaa !7
  %15 = icmp slt i32 %14, 33554432
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = call double @randlc(double* %3, double* %4)
  store double %17, double* %5, align 8, !tbaa !9
  %18 = call double @randlc(double* %3, double* %4)
  %19 = load double, double* %5, align 8, !tbaa !9
  %20 = fadd double %19, %18
  store double %20, double* %5, align 8, !tbaa !9
  %21 = call double @randlc(double* %3, double* %4)
  %22 = load double, double* %5, align 8, !tbaa !9
  %23 = fadd double %22, %21
  store double %23, double* %5, align 8, !tbaa !9
  %24 = call double @randlc(double* %3, double* %4)
  %25 = load double, double* %5, align 8, !tbaa !9
  %26 = fadd double %25, %24
  store double %26, double* %5, align 8, !tbaa !9
  %27 = load i32, i32* %8, align 4, !tbaa !7
  %28 = sitofp i32 %27 to double
  %29 = load double, double* %5, align 8, !tbaa !9
  %30 = fmul double %28, %29
  %31 = fptosi double %30 to i32
  %32 = load i32, i32* %6, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %33
  store i32 %31, i32* %34, align 4, !tbaa !7
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %6, align 4, !tbaa !7
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4, !tbaa !7
  br label %13

38:                                               ; preds = %13
  %39 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4
  %40 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4
  %41 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4
  %42 = bitcast double* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @full_verify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  store i32 0, i32* %1, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %30, %0
  %12 = load i32, i32* %1, align 4, !tbaa !7
  %13 = icmp slt i32 %12, 33554432
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = load i32*, i32** @key_buff_ptr_global, align 8, !tbaa !2
  %20 = load i32, i32* %1, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %28
  store i32 %18, i32* %29, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %1, align 4, !tbaa !7
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4, !tbaa !7
  br label %11

33:                                               ; preds = %11
  store i32 0, i32* %2, align 4, !tbaa !7
  store i32 1, i32* %1, align 4, !tbaa !7
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %1, align 4, !tbaa !7
  %36 = icmp slt i32 %35, 33554432
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i32, i32* %1, align 4, !tbaa !7
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %43 = load i32, i32* %1, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !7
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %2, align 4, !tbaa !7
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4, !tbaa !7
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4, !tbaa !7
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4, !tbaa !7
  br label %34

55:                                               ; preds = %34
  %56 = load i32, i32* %2, align 4, !tbaa !7
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %2, align 4, !tbaa !7
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %59)
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @passed_verification, align 4, !tbaa !7
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @passed_verification, align 4, !tbaa !7
  br label %64

64:                                               ; preds = %61, %58
  %65 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4
  %66 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4
  %67 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #4
  %68 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #4
  %69 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rank(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2097152 x i32], align 16
  store i32 %0, i32* %2, align 4, !tbaa !7
  %13 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  %14 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4
  %15 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  %16 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4
  store i32 11, i32* %8, align 4, !tbaa !7
  %19 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4
  %20 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4
  %21 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4
  %22 = bitcast [2097152 x i32]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8388608, i8* %22) #4
  %23 = load i32, i32* %2, align 4, !tbaa !7
  %24 = load i32, i32* %2, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %25
  store i32 %23, i32* %26, align 4, !tbaa !7
  %27 = load i32, i32* %2, align 4, !tbaa !7
  %28 = sub nsw i32 2097152, %27
  %29 = load i32, i32* %2, align 4, !tbaa !7
  %30 = add nsw i32 %29, 10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %31
  store i32 %28, i32* %32, align 4, !tbaa !7
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %47, %1
  %34 = load i32, i32* %3, align 4, !tbaa !7
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !7
  %44 = load i32, i32* %3, align 4, !tbaa !7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %45
  store i32 %43, i32* %46, align 4, !tbaa !7
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4, !tbaa !7
  br label %33

50:                                               ; preds = %33
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %51

51:                                               ; preds = %58, %50
  %52 = load i32, i32* %3, align 4, !tbaa !7
  %53 = icmp slt i32 %52, 2097152
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4, !tbaa !7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %56
  store i32 0, i32* %57, align 4, !tbaa !7
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4, !tbaa !7
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4, !tbaa !7
  br label %51

61:                                               ; preds = %51
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %62

62:                                               ; preds = %69, %61
  %63 = load i32, i32* %3, align 4, !tbaa !7
  %64 = icmp slt i32 %63, 2097152
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4, !tbaa !7
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* %12, i64 0, i64 %67
  store i32 0, i32* %68, align 4, !tbaa !7
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4, !tbaa !7
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4, !tbaa !7
  br label %62

72:                                               ; preds = %62
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i32, i32* %3, align 4, !tbaa !7, !note.noelle !15
  %75 = icmp slt i32 %74, 33554432, !note.noelle !15
  br i1 %75, label %76, label %95, !note.noelle !15

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4, !tbaa !7, !note.noelle !15
  %78 = sext i32 %77 to i64, !note.noelle !15
  %79 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %78, !note.noelle !15
  %80 = load i32, i32* %79, align 4, !tbaa !7, !note.noelle !15
  %81 = load i32, i32* %3, align 4, !tbaa !7, !note.noelle !15
  %82 = sext i32 %81 to i64, !note.noelle !15
  %83 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %82, !note.noelle !15
  store i32 %80, i32* %83, align 4, !tbaa !7, !note.noelle !15
  %84 = load i32, i32* %3, align 4, !tbaa !7, !note.noelle !15
  %85 = sext i32 %84 to i64, !note.noelle !15
  %86 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %85, !note.noelle !15
  %87 = load i32, i32* %86, align 4, !tbaa !7, !note.noelle !15
  %88 = sext i32 %87 to i64, !note.noelle !15
  %89 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* %12, i64 0, i64 %88, !note.noelle !15
  %90 = load i32, i32* %89, align 4, !tbaa !7, !note.noelle !15
  %91 = add nsw i32 %90, 1, !note.noelle !15
  store i32 %91, i32* %89, align 4, !tbaa !7, !note.noelle !15
  br label %92, !note.noelle !15

92:                                               ; preds = %76
  %93 = load i32, i32* %3, align 4, !tbaa !7, !note.noelle !15
  %94 = add nsw i32 %93, 1, !note.noelle !15
  store i32 %94, i32* %3, align 4, !tbaa !7, !note.noelle !15
  br label %73, !note.noelle !15

95:                                               ; preds = %73
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %96

96:                                               ; preds = %110, %95
  %97 = load i32, i32* %3, align 4, !tbaa !7
  %98 = icmp slt i32 %97, 2097151
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4, !tbaa !7
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* %12, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !7
  %104 = load i32, i32* %3, align 4, !tbaa !7
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* %12, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !7
  %109 = add nsw i32 %108, %103
  store i32 %109, i32* %107, align 4, !tbaa !7
  br label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %3, align 4, !tbaa !7
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4, !tbaa !7
  br label %96

113:                                              ; preds = %96
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i32, i32* %3, align 4, !tbaa !7
  %116 = icmp slt i32 %115, 2097152
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4, !tbaa !7
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* %12, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4, !tbaa !7
  %122 = load i32, i32* %3, align 4, !tbaa !7
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !7
  %126 = add nsw i32 %125, %121
  store i32 %126, i32* %124, align 4, !tbaa !7
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %3, align 4, !tbaa !7
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4, !tbaa !7
  br label %114

130:                                              ; preds = %114
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %131

131:                                              ; preds = %197, %130
  %132 = load i32, i32* %3, align 4, !tbaa !7
  %133 = icmp slt i32 %132, 5
  br i1 %133, label %134, label %200

134:                                              ; preds = %131
  %135 = load i32, i32* %3, align 4, !tbaa !7
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4, !tbaa !7
  store i32 %138, i32* %5, align 4, !tbaa !7
  %139 = load i32, i32* %5, align 4, !tbaa !7
  %140 = icmp sle i32 0, %139
  br i1 %140, label %141, label %196

141:                                              ; preds = %134
  %142 = load i32, i32* %5, align 4, !tbaa !7
  %143 = icmp sle i32 %142, 33554431
  br i1 %143, label %144, label %196

144:                                              ; preds = %141
  %145 = load i32, i32* %3, align 4, !tbaa !7
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %3, align 4, !tbaa !7
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %3, align 4, !tbaa !7
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %174

153:                                              ; preds = %150, %147, %144
  %154 = load i32, i32* %5, align 4, !tbaa !7
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4, !tbaa !7
  %159 = load i32, i32* %3, align 4, !tbaa !7
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4, !tbaa !7
  %163 = load i32, i32* %2, align 4, !tbaa !7
  %164 = add nsw i32 %162, %163
  %165 = icmp ne i32 %158, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %153
  %167 = load i32, i32* %2, align 4, !tbaa !7
  %168 = load i32, i32* %3, align 4, !tbaa !7
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 %167, i32 %168)
  br label %173

170:                                              ; preds = %153
  %171 = load i32, i32* @passed_verification, align 4, !tbaa !7
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @passed_verification, align 4, !tbaa !7
  br label %173

173:                                              ; preds = %170, %166
  br label %195

174:                                              ; preds = %150
  %175 = load i32, i32* %5, align 4, !tbaa !7
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4, !tbaa !7
  %180 = load i32, i32* %3, align 4, !tbaa !7
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4, !tbaa !7
  %184 = load i32, i32* %2, align 4, !tbaa !7
  %185 = sub nsw i32 %183, %184
  %186 = icmp ne i32 %179, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %174
  %188 = load i32, i32* %2, align 4, !tbaa !7
  %189 = load i32, i32* %3, align 4, !tbaa !7
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 %188, i32 %189)
  br label %194

191:                                              ; preds = %174
  %192 = load i32, i32* @passed_verification, align 4, !tbaa !7
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @passed_verification, align 4, !tbaa !7
  br label %194

194:                                              ; preds = %191, %187
  br label %195

195:                                              ; preds = %194, %173
  br label %196

196:                                              ; preds = %195, %141, %134
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %3, align 4, !tbaa !7
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %3, align 4, !tbaa !7
  br label %131

200:                                              ; preds = %131
  %201 = load i32, i32* %2, align 4, !tbaa !7
  %202 = icmp eq i32 %201, 10
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 0), i32** @key_buff_ptr_global, align 8, !tbaa !2
  br label %204

204:                                              ; preds = %203, %200
  %205 = bitcast [2097152 x i32]* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8388608, i8* %205) #4
  %206 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %206) #4
  %207 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %207) #4
  %208 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %208) #4
  %209 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %209) #4
  %210 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %210) #4
  %211 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %211) #4
  %212 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %212) #4
  %213 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %213) #4
  %214 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %214) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !2
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4
  %15 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  store i32 1, i32* %9, align 4, !tbaa !7
  %16 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #4
  %17 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #4
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %18

18:                                               ; preds = %36, %2
  %19 = load i32, i32* %6, align 4, !tbaa !7
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_index_array, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = load i32, i32* %6, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i64 0, i64 %27
  store i32 %25, i32* %28, align 4, !tbaa !7
  %29 = load i32, i32* %6, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_rank_array, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = load i32, i32* %6, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %34
  store i32 %32, i32* %35, align 4, !tbaa !7
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4, !tbaa !7
  br label %18

39:                                               ; preds = %18
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 33554432, i32 66)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 10)
  call void @timer_clear(i32 0)
  call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000)
  call void @rank(i32 1)
  store i32 0, i32* @passed_verification, align 4, !tbaa !7
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  call void @timer_start(i32 0)
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %44

44:                                               ; preds = %51, %39
  %45 = load i32, i32* %7, align 4, !tbaa !7
  %46 = icmp sle i32 %45, 10
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4, !tbaa !7
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4, !tbaa !7
  call void @rank(i32 %50)
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4, !tbaa !7
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4, !tbaa !7
  br label %44

54:                                               ; preds = %44
  call void @timer_stop(i32 0)
  %55 = call double @timer_read(i32 0)
  store double %55, double* %10, align 8, !tbaa !9
  call void @full_verify()
  %56 = load i32, i32* @passed_verification, align 4, !tbaa !7
  %57 = icmp ne i32 %56, 51
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* @passed_verification, align 4, !tbaa !7
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %9, align 4, !tbaa !7
  %61 = load double, double* %10, align 8, !tbaa !9
  %62 = load double, double* %10, align 8, !tbaa !9
  %63 = fdiv double 0x41B4000000000000, %62
  %64 = fdiv double %63, 1.000000e+06
  %65 = load i32, i32* @passed_verification, align 4, !tbaa !7
  call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8 signext 66, i32 33554432, i32 0, i32 0, i32 10, i32 %60, double %61, double %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %66 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #4
  %67 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #4
  %68 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #4
  %69 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #4
  %70 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #4
  %71 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #4
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (https://github.com/scampanoni/LLVM_installer.git 0d876be2f90ee7ddfb16c2b131ab2c0e1f94708e)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"timeval", !13, i64 0, !13, i64 8}
!13 = !{!"long", !4, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!16, !17, !18}
!16 = !{!"independent", !"1"}
!17 = !{!"label", !"1"}
!18 = !{!"selected", !"1"}
