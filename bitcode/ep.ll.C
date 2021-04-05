; ModuleID = 'ep.c'
source_filename = "ep.c"
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
@__const.main.dum = private unnamed_addr constant [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@.str.22 = private unnamed_addr constant [75 x i8] c"\0A\0A NAS Parallel Benchmarks 3.0 structured OpenMP C version - EP Benchmark\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%12.0f\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c" Number of random numbers generated: %13s\0A\00", align 1
@x = internal global [131072 x double] zeroinitializer, align 16
@q = internal global [10 x double] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [111 x i8] c"EP Benchmark Results: \0ACPU Time = %10.4f\0AN = 2^%5d\0ANo. Gaussian Pairs = %15.0f\0ASums = %25.15e %25.15e\0ACounts:\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"%3d %15.0f\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Random numbers generated\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"3.0 structured\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"30 Mar 2021\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"-O3 -fopenmp\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"-lm -mcmodel=large -fopenmp\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1

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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #5
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local double @randlc(double*, double) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double* %0, double** %3, align 8, !tbaa !2
  store double %1, double* %4, align 8, !tbaa !9
  %14 = bitcast double* %5 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #5, !note.noelle !11
  %15 = bitcast double* %6 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #5, !note.noelle !11
  %16 = bitcast double* %7 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #5, !note.noelle !11
  %17 = bitcast double* %8 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #5, !note.noelle !11
  %18 = bitcast double* %9 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #5, !note.noelle !11
  %19 = bitcast double* %10 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #5, !note.noelle !11
  %20 = bitcast double* %11 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #5, !note.noelle !11
  %21 = bitcast double* %12 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #5, !note.noelle !11
  %22 = bitcast double* %13 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #5, !note.noelle !11
  %23 = load double, double* %4, align 8, !tbaa !9, !note.noelle !11
  %24 = fmul double 0x3E80000000000000, %23, !note.noelle !11
  store double %24, double* %5, align 8, !tbaa !9, !note.noelle !11
  %25 = load double, double* %5, align 8, !tbaa !9, !note.noelle !11
  %26 = fptosi double %25 to i32, !note.noelle !11
  %27 = sitofp i32 %26 to double, !note.noelle !11
  store double %27, double* %9, align 8, !tbaa !9, !note.noelle !11
  %28 = load double, double* %4, align 8, !tbaa !9, !note.noelle !11
  %29 = load double, double* %9, align 8, !tbaa !9, !note.noelle !11
  %30 = fmul double 0x4160000000000000, %29, !note.noelle !11
  %31 = fsub double %28, %30, !note.noelle !11
  store double %31, double* %10, align 8, !tbaa !9, !note.noelle !11
  %32 = load double*, double** %3, align 8, !tbaa !2, !note.noelle !11
  %33 = load double, double* %32, align 8, !tbaa !9, !note.noelle !11
  %34 = fmul double 0x3E80000000000000, %33, !note.noelle !11
  store double %34, double* %5, align 8, !tbaa !9, !note.noelle !11
  %35 = load double, double* %5, align 8, !tbaa !9, !note.noelle !11
  %36 = fptosi double %35 to i32, !note.noelle !11
  %37 = sitofp i32 %36 to double, !note.noelle !11
  store double %37, double* %11, align 8, !tbaa !9, !note.noelle !11
  %38 = load double*, double** %3, align 8, !tbaa !2, !note.noelle !11
  %39 = load double, double* %38, align 8, !tbaa !9, !note.noelle !11
  %40 = load double, double* %11, align 8, !tbaa !9, !note.noelle !11
  %41 = fmul double 0x4160000000000000, %40, !note.noelle !11
  %42 = fsub double %39, %41, !note.noelle !11
  store double %42, double* %12, align 8, !tbaa !9, !note.noelle !11
  %43 = load double, double* %9, align 8, !tbaa !9, !note.noelle !11
  %44 = load double, double* %12, align 8, !tbaa !9, !note.noelle !11
  %45 = fmul double %43, %44, !note.noelle !11
  %46 = load double, double* %10, align 8, !tbaa !9, !note.noelle !11
  %47 = load double, double* %11, align 8, !tbaa !9, !note.noelle !11
  %48 = fmul double %46, %47, !note.noelle !11
  %49 = fadd double %45, %48, !note.noelle !11
  store double %49, double* %5, align 8, !tbaa !9, !note.noelle !11
  %50 = load double, double* %5, align 8, !tbaa !9, !note.noelle !11
  %51 = fmul double 0x3E80000000000000, %50, !note.noelle !11
  %52 = fptosi double %51 to i32, !note.noelle !11
  %53 = sitofp i32 %52 to double, !note.noelle !11
  store double %53, double* %6, align 8, !tbaa !9, !note.noelle !11
  %54 = load double, double* %5, align 8, !tbaa !9, !note.noelle !11
  %55 = load double, double* %6, align 8, !tbaa !9, !note.noelle !11
  %56 = fmul double 0x4160000000000000, %55, !note.noelle !11
  %57 = fsub double %54, %56, !note.noelle !11
  store double %57, double* %13, align 8, !tbaa !9, !note.noelle !11
  %58 = load double, double* %13, align 8, !tbaa !9, !note.noelle !11
  %59 = fmul double 0x4160000000000000, %58, !note.noelle !11
  %60 = load double, double* %10, align 8, !tbaa !9, !note.noelle !11
  %61 = load double, double* %12, align 8, !tbaa !9, !note.noelle !11
  %62 = fmul double %60, %61, !note.noelle !11
  %63 = fadd double %59, %62, !note.noelle !11
  store double %63, double* %7, align 8, !tbaa !9, !note.noelle !11
  %64 = load double, double* %7, align 8, !tbaa !9, !note.noelle !11
  %65 = fmul double 0x3D10000000000000, %64, !note.noelle !11
  %66 = fptosi double %65 to i32, !note.noelle !11
  %67 = sitofp i32 %66 to double, !note.noelle !11
  store double %67, double* %8, align 8, !tbaa !9, !note.noelle !11
  %68 = load double, double* %7, align 8, !tbaa !9, !note.noelle !11
  %69 = load double, double* %8, align 8, !tbaa !9, !note.noelle !11
  %70 = fmul double 0x42D0000000000000, %69, !note.noelle !11
  %71 = fsub double %68, %70, !note.noelle !11
  %72 = load double*, double** %3, align 8, !tbaa !2, !note.noelle !11
  store double %71, double* %72, align 8, !tbaa !9, !note.noelle !11
  %73 = load double*, double** %3, align 8, !tbaa !2, !note.noelle !11
  %74 = load double, double* %73, align 8, !tbaa !9, !note.noelle !11
  %75 = fmul double 0x3D10000000000000, %74, !note.noelle !11
  %76 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #5
  %77 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #5
  %78 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %78) #5
  %79 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %79) #5
  %80 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %80) #5
  %81 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #5
  %82 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #5
  %83 = bitcast double* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #5
  %84 = bitcast double* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #5
  ret double %75
}

; Function Attrs: nounwind uwtable
define dso_local void @vranlc(i32, double*, double, double*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %5, align 4, !tbaa !7
  store double* %1, double** %6, align 8, !tbaa !2
  store double %2, double* %7, align 8, !tbaa !9
  store double* %3, double** %8, align 8, !tbaa !2
  %20 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #5
  %21 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #5
  %22 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #5
  %23 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #5
  %24 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #5
  %25 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #5
  %26 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #5
  %27 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #5
  %28 = bitcast double* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #5
  %29 = bitcast double* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #5
  %30 = bitcast double* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #5
  %31 = load double, double* %7, align 8, !tbaa !9
  %32 = fmul double 0x3E80000000000000, %31
  store double %32, double* %11, align 8, !tbaa !9
  %33 = load double, double* %11, align 8, !tbaa !9
  %34 = fptosi double %33 to i32
  %35 = sitofp i32 %34 to double
  store double %35, double* %15, align 8, !tbaa !9
  %36 = load double, double* %7, align 8, !tbaa !9
  %37 = load double, double* %15, align 8, !tbaa !9
  %38 = fmul double 0x4160000000000000, %37
  %39 = fsub double %36, %38
  store double %39, double* %16, align 8, !tbaa !9
  %40 = load double*, double** %6, align 8, !tbaa !2
  %41 = load double, double* %40, align 8, !tbaa !9
  store double %41, double* %10, align 8, !tbaa !9
  store i32 1, i32* %9, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %91, %4
  %43 = load i32, i32* %9, align 4, !tbaa !7
  %44 = load i32, i32* %5, align 4, !tbaa !7
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %94

46:                                               ; preds = %42
  %47 = load double, double* %10, align 8, !tbaa !9
  %48 = fmul double 0x3E80000000000000, %47
  store double %48, double* %11, align 8, !tbaa !9
  %49 = load double, double* %11, align 8, !tbaa !9
  %50 = fptosi double %49 to i32
  %51 = sitofp i32 %50 to double
  store double %51, double* %17, align 8, !tbaa !9
  %52 = load double, double* %10, align 8, !tbaa !9
  %53 = load double, double* %17, align 8, !tbaa !9
  %54 = fmul double 0x4160000000000000, %53
  %55 = fsub double %52, %54
  store double %55, double* %18, align 8, !tbaa !9
  %56 = load double, double* %15, align 8, !tbaa !9
  %57 = load double, double* %18, align 8, !tbaa !9
  %58 = fmul double %56, %57
  %59 = load double, double* %16, align 8, !tbaa !9
  %60 = load double, double* %17, align 8, !tbaa !9
  %61 = fmul double %59, %60
  %62 = fadd double %58, %61
  store double %62, double* %11, align 8, !tbaa !9
  %63 = load double, double* %11, align 8, !tbaa !9
  %64 = fmul double 0x3E80000000000000, %63
  %65 = fptosi double %64 to i32
  %66 = sitofp i32 %65 to double
  store double %66, double* %12, align 8, !tbaa !9
  %67 = load double, double* %11, align 8, !tbaa !9
  %68 = load double, double* %12, align 8, !tbaa !9
  %69 = fmul double 0x4160000000000000, %68
  %70 = fsub double %67, %69
  store double %70, double* %19, align 8, !tbaa !9
  %71 = load double, double* %19, align 8, !tbaa !9
  %72 = fmul double 0x4160000000000000, %71
  %73 = load double, double* %16, align 8, !tbaa !9
  %74 = load double, double* %18, align 8, !tbaa !9
  %75 = fmul double %73, %74
  %76 = fadd double %72, %75
  store double %76, double* %13, align 8, !tbaa !9
  %77 = load double, double* %13, align 8, !tbaa !9
  %78 = fmul double 0x3D10000000000000, %77
  %79 = fptosi double %78 to i32
  %80 = sitofp i32 %79 to double
  store double %80, double* %14, align 8, !tbaa !9
  %81 = load double, double* %13, align 8, !tbaa !9
  %82 = load double, double* %14, align 8, !tbaa !9
  %83 = fmul double 0x42D0000000000000, %82
  %84 = fsub double %81, %83
  store double %84, double* %10, align 8, !tbaa !9
  %85 = load double, double* %10, align 8, !tbaa !9
  %86 = fmul double 0x3D10000000000000, %85
  %87 = load double*, double** %8, align 8, !tbaa !2
  %88 = load i32, i32* %9, align 4, !tbaa !7
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  store double %86, double* %90, align 8, !tbaa !9
  br label %91

91:                                               ; preds = %46
  %92 = load i32, i32* %9, align 4, !tbaa !7
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4, !tbaa !7
  br label %42

94:                                               ; preds = %42
  %95 = load double, double* %10, align 8, !tbaa !9
  %96 = load double*, double** %6, align 8, !tbaa !2
  store double %95, double* %96, align 8, !tbaa !9
  %97 = bitcast double* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #5
  %98 = bitcast double* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #5
  %99 = bitcast double* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %99) #5
  %100 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %100) #5
  %101 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #5
  %102 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %102) #5
  %103 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #5
  %104 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #5
  %105 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #5
  %106 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #5
  %107 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @elapsed_time() #0 {
  %1 = alloca double, align 8
  %2 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5
  call void @wtime_(double* %1)
  %3 = load double, double* %1, align 8, !tbaa !9
  %4 = bitcast double* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #5
  ret double %3
}

; Function Attrs: nounwind uwtable
define dso_local void @wtime_(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.timeval, align 8
  store double* %0, double** %2, align 8, !tbaa !2
  %4 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %4) #5
  %5 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #5
  %6 = load i32, i32* @wtime_.sec, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !13
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @wtime_.sec, align 4, !tbaa !7
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !13
  %15 = load i32, i32* @wtime_.sec, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = sitofp i64 %17 to double
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !tbaa !16
  %21 = sitofp i64 %20 to double
  %22 = fmul double 0x3EB0C6F7A0B5ED8D, %21
  %23 = fadd double %18, %22
  %24 = load double*, double** %2, align 8, !tbaa !2
  store double %23, double* %24, align 8, !tbaa !9
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %25) #5
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #5
  %6 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #5
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #5
  %21 = bitcast double* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #5
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
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca [3 x double], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca [14 x i8], align 1
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca double, align 8
  %59 = alloca double, align 8
  %60 = alloca double, align 8
  %61 = alloca double, align 8
  %62 = alloca double, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca [131072 x double], align 16
  %68 = alloca double, align 8
  %69 = alloca double, align 8
  %70 = alloca double, align 8
  %71 = alloca double, align 8
  %72 = alloca double, align 8
  %73 = alloca double, align 8
  %74 = alloca double, align 8
  %75 = alloca double, align 8
  %76 = alloca double, align 8
  %77 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !2
  %78 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %78) #5
  %79 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %79) #5
  %80 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %80) #5
  %81 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %81) #5
  %82 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %82) #5
  %83 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %83) #5
  %84 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %84) #5
  %85 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85) #5
  %86 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %86) #5
  %87 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %87) #5
  %88 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %88) #5
  %89 = bitcast double* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %89) #5
  %90 = bitcast double* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %90) #5
  %91 = bitcast [3 x double]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %91) #5
  %92 = bitcast [3 x double]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %92, i8* align 16 bitcast ([3 x double]* @__const.main.dum to i8*), i64 24, i1 false)
  %93 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %93) #5
  %94 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %94) #5
  %95 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %95) #5
  %96 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %96) #5
  %97 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %97) #5
  %98 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %98) #5
  %99 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %99) #5
  %100 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %100) #5
  %101 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %101) #5
  %102 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %102) #5
  %103 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %103) #5
  %104 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %104) #5
  %105 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %105) #5
  %106 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %106) #5
  %107 = bitcast i32* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %107) #5
  %108 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #5
  store i32 1, i32* %35, align 4, !tbaa !7
  %109 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %109) #5
  %110 = bitcast [14 x i8]* %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 14, i8* %110) #5
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0))
  %112 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 0
  %113 = call double @pow(double 2.000000e+00, double 3.300000e+01) #5
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), double %113) #5
  store i32 13, i32* %34, align 4, !tbaa !7
  br label %115

115:                                              ; preds = %130, %2
  %116 = load i32, i32* %34, align 4, !tbaa !7
  %117 = icmp sge i32 %116, 1
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load i32, i32* %34, align 4, !tbaa !7
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1, !tbaa !6
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 46
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* %34, align 4, !tbaa !7
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 %127
  store i8 32, i8* %128, align 1, !tbaa !6
  br label %129

129:                                              ; preds = %125, %118
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %34, align 4, !tbaa !7
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %34, align 4, !tbaa !7
  br label %115

133:                                              ; preds = %115
  %134 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 0
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i8* %134)
  store i32 0, i32* %36, align 4, !tbaa !7
  store i32 65536, i32* %20, align 4, !tbaa !7
  %136 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %137 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %138 = load double, double* %137, align 8, !tbaa !9
  %139 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  call void @vranlc(i32 0, double* %136, double %138, double* %139)
  %140 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %141 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  %142 = load double, double* %141, align 16, !tbaa !9
  %143 = call double @randlc(double* %140, double %142)
  %144 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  store double %143, double* %144, align 16, !tbaa !9
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %145

145:                                              ; preds = %152, %133
  %146 = load i32, i32* %24, align 4, !tbaa !7, !note.noelle !17
  %147 = icmp slt i32 %146, 131072, !note.noelle !17
  br i1 %147, label %148, label %155, !note.noelle !17

148:                                              ; preds = %145
  %149 = load i32, i32* %24, align 4, !tbaa !7, !note.noelle !17
  %150 = sext i32 %149 to i64, !note.noelle !17
  %151 = getelementptr inbounds [131072 x double], [131072 x double]* @x, i64 0, i64 %150, !note.noelle !17
  store double 0xD47D42AEA2879F2E, double* %151, align 8, !tbaa !9, !note.noelle !17
  br label %152, !note.noelle !17

152:                                              ; preds = %148
  %153 = load i32, i32* %24, align 4, !tbaa !7, !note.noelle !17
  %154 = add nsw i32 %153, 1, !note.noelle !17
  store i32 %154, i32* %24, align 4, !tbaa !7, !note.noelle !17
  br label %145, !note.noelle !17

155:                                              ; preds = %145
  %156 = call double @llvm.fabs.f64(double 1.000000e+00)
  %157 = call double @sqrt(double %156) #5
  %158 = call double @log(double %157) #5
  store double %158, double* %6, align 8, !tbaa !9
  call void @timer_clear(i32 1)
  call void @timer_clear(i32 2)
  call void @timer_clear(i32 3)
  call void @timer_start(i32 1)
  call void @vranlc(i32 0, double* %7, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double], [131072 x double]* @x, i64 0, i64 0))
  store double 0x41D2309CE5400000, double* %7, align 8, !tbaa !9
  store i32 1, i32* %24, align 4, !tbaa !7
  br label %159

159:                                              ; preds = %165, %155
  %160 = load i32, i32* %24, align 4, !tbaa !7
  %161 = icmp sle i32 %160, 17
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load double, double* %7, align 8, !tbaa !9
  %164 = call double @randlc(double* %7, double %163)
  store double %164, double* %8, align 8, !tbaa !9
  br label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %24, align 4, !tbaa !7
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %24, align 4, !tbaa !7
  br label %159

168:                                              ; preds = %159
  %169 = load double, double* %7, align 8, !tbaa !9
  store double %169, double* %16, align 8, !tbaa !9
  store double 0x41B033C4D7000000, double* %17, align 8, !tbaa !9
  store double 0.000000e+00, double* %18, align 8, !tbaa !9
  store double 0.000000e+00, double* %13, align 8, !tbaa !9
  store double 0.000000e+00, double* %14, align 8, !tbaa !9
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %170

170:                                              ; preds = %177, %168
  %171 = load i32, i32* %24, align 4, !tbaa !7
  %172 = icmp sle i32 %171, 9
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %24, align 4, !tbaa !7
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [10 x double], [10 x double]* @q, i64 0, i64 %175
  store double 0.000000e+00, double* %176, align 8, !tbaa !9
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %24, align 4, !tbaa !7
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %24, align 4, !tbaa !7
  br label %170

180:                                              ; preds = %170
  store i32 -1, i32* %33, align 4, !tbaa !7
  %181 = bitcast double* %38 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %181) #5, !note.noelle !11
  %182 = bitcast double* %39 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %182) #5, !note.noelle !11
  %183 = bitcast double* %40 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %183) #5, !note.noelle !11
  %184 = bitcast double* %41 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %184) #5, !note.noelle !11
  %185 = bitcast double* %42 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %185) #5, !note.noelle !11
  %186 = bitcast i32* %43 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %186) #5, !note.noelle !11
  %187 = bitcast i32* %44 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %187) #5, !note.noelle !11
  %188 = bitcast i32* %45 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %188) #5, !note.noelle !11
  %189 = bitcast i32* %46 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %189) #5, !note.noelle !11
  %190 = bitcast double* %47 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %190) #5, !note.noelle !11
  store double 0.000000e+00, double* %47, align 8, !tbaa !9, !note.noelle !11
  %191 = bitcast double* %48 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %191) #5, !note.noelle !11
  store double 0.000000e+00, double* %48, align 8, !tbaa !9, !note.noelle !11
  %192 = bitcast double* %49 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %192) #5, !note.noelle !11
  store double 0.000000e+00, double* %49, align 8, !tbaa !9, !note.noelle !11
  %193 = bitcast double* %50 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %193) #5, !note.noelle !11
  store double 0.000000e+00, double* %50, align 8, !tbaa !9, !note.noelle !11
  %194 = bitcast double* %51 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %194) #5, !note.noelle !11
  store double 0.000000e+00, double* %51, align 8, !tbaa !9, !note.noelle !11
  %195 = bitcast double* %52 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %195) #5, !note.noelle !11
  store double 0.000000e+00, double* %52, align 8, !tbaa !9, !note.noelle !11
  %196 = bitcast double* %53 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %196) #5, !note.noelle !11
  store double 0.000000e+00, double* %53, align 8, !tbaa !9, !note.noelle !11
  %197 = bitcast double* %54 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %197) #5, !note.noelle !11
  store double 0.000000e+00, double* %54, align 8, !tbaa !9, !note.noelle !11
  %198 = bitcast double* %55 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %198) #5, !note.noelle !11
  store double 0.000000e+00, double* %55, align 8, !tbaa !9, !note.noelle !11
  %199 = bitcast double* %56 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %199) #5, !note.noelle !11
  store double 0.000000e+00, double* %56, align 8, !tbaa !9, !note.noelle !11
  store i32 1, i32* %28, align 4, !tbaa !7, !note.noelle !11
  br label %200, !note.noelle !11

200:                                              ; preds = %422, %180
  %201 = load i32, i32* %28, align 4, !tbaa !7, !note.noelle !20
  %202 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !20
  %203 = icmp sle i32 %201, %202, !note.noelle !20
  br i1 %203, label %204, label %425, !note.noelle !20

204:                                              ; preds = %200
  %205 = bitcast double* %57 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %205) #5, !note.noelle !20
  %206 = bitcast double* %58 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %206) #5, !note.noelle !20
  %207 = bitcast double* %59 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %207) #5, !note.noelle !20
  %208 = bitcast double* %60 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %208) #5, !note.noelle !20
  %209 = bitcast double* %61 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %209) #5, !note.noelle !20
  %210 = bitcast double* %62 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %210) #5, !note.noelle !20
  %211 = bitcast i32* %63 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %211) #5, !note.noelle !20
  %212 = bitcast i32* %64 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %212) #5, !note.noelle !20
  %213 = bitcast i32* %65 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %213) #5, !note.noelle !20
  %214 = bitcast i32* %66 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %214) #5, !note.noelle !20
  %215 = bitcast [131072 x double]* %67 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 1048576, i8* %215) #5, !note.noelle !20
  store i32 0, i32* %64, align 4, !tbaa !7, !note.noelle !20
  br label %216, !note.noelle !20

216:                                              ; preds = %227, %204
  %217 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %218 = icmp slt i32 %217, 131072, !note.noelle !20
  br i1 %218, label %219, label %230, !note.noelle !20

219:                                              ; preds = %216
  %220 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %221 = sext i32 %220 to i64, !note.noelle !20
  %222 = getelementptr inbounds [131072 x double], [131072 x double]* @x, i64 0, i64 %221, !note.noelle !20
  %223 = load double, double* %222, align 8, !tbaa !9, !note.noelle !20
  %224 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %225 = sext i32 %224 to i64, !note.noelle !20
  %226 = getelementptr inbounds [131072 x double], [131072 x double]* %67, i64 0, i64 %225, !note.noelle !20
  store double %223, double* %226, align 8, !tbaa !9, !note.noelle !20
  br label %227, !note.noelle !20

227:                                              ; preds = %219
  %228 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %229 = add nsw i32 %228, 1, !note.noelle !20
  store i32 %229, i32* %64, align 4, !tbaa !7, !note.noelle !20
  br label %216, !note.noelle !20

230:                                              ; preds = %216
  %231 = load i32, i32* %33, align 4, !tbaa !7, !note.noelle !20
  %232 = load i32, i32* %28, align 4, !tbaa !7, !note.noelle !20
  %233 = add nsw i32 %231, %232, !note.noelle !20
  store i32 %233, i32* %63, align 4, !tbaa !7, !note.noelle !20
  store double 0x41B033C4D7000000, double* %57, align 8, !tbaa !9, !note.noelle !20
  %234 = load double, double* %16, align 8, !tbaa !9, !note.noelle !20
  store double %234, double* %58, align 8, !tbaa !9, !note.noelle !20
  store i32 1, i32* %64, align 4, !tbaa !7, !note.noelle !20
  br label %235, !note.noelle !20

235:                                              ; preds = %256, %230
  %236 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %237 = icmp sle i32 %236, 100, !note.noelle !20
  br i1 %237, label %238, label %259, !note.noelle !20

238:                                              ; preds = %235
  %239 = load i32, i32* %63, align 4, !tbaa !7, !note.noelle !20
  %240 = sdiv i32 %239, 2, !note.noelle !20
  store i32 %240, i32* %65, align 4, !tbaa !7, !note.noelle !20
  %241 = load i32, i32* %65, align 4, !tbaa !7, !note.noelle !20
  %242 = mul nsw i32 2, %241, !note.noelle !20
  %243 = load i32, i32* %63, align 4, !tbaa !7, !note.noelle !20
  %244 = icmp ne i32 %242, %243, !note.noelle !20
  br i1 %244, label %245, label %248, !note.noelle !20

245:                                              ; preds = %238
  %246 = load double, double* %58, align 8, !tbaa !9, !note.noelle !20
  %247 = call double @randlc(double* %57, double %246), !note.noelle !20
  store double %247, double* %59, align 8, !tbaa !9, !note.noelle !20
  br label %248, !note.noelle !20

248:                                              ; preds = %245, %238
  %249 = load i32, i32* %65, align 4, !tbaa !7, !note.noelle !20
  %250 = icmp eq i32 %249, 0, !note.noelle !20
  br i1 %250, label %251, label %252, !note.noelle !20

251:                                              ; preds = %248
  br label %259, !note.noelle !20

252:                                              ; preds = %248
  %253 = load double, double* %58, align 8, !tbaa !9, !note.noelle !20
  %254 = call double @randlc(double* %58, double %253), !note.noelle !20
  store double %254, double* %59, align 8, !tbaa !9, !note.noelle !20
  %255 = load i32, i32* %65, align 4, !tbaa !7, !note.noelle !20
  store i32 %255, i32* %63, align 4, !tbaa !7, !note.noelle !20
  br label %256, !note.noelle !20

256:                                              ; preds = %252
  %257 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %258 = add nsw i32 %257, 1, !note.noelle !20
  store i32 %258, i32* %64, align 4, !tbaa !7, !note.noelle !20
  br label %235, !note.noelle !20

259:                                              ; preds = %251, %235
  %260 = getelementptr inbounds [131072 x double], [131072 x double]* %67, i64 0, i64 0, !note.noelle !20
  %261 = getelementptr inbounds double, double* %260, i64 -1, !note.noelle !20
  call void @vranlc(i32 131072, double* %57, double 0x41D2309CE5400000, double* %261), !note.noelle !20
  store i32 0, i32* %64, align 4, !tbaa !7, !note.noelle !20
  br label %262, !note.noelle !20

262:                                              ; preds = %407, %259
  %263 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %264 = icmp slt i32 %263, 65536, !note.noelle !20
  br i1 %264, label %265, label %410, !note.noelle !20

265:                                              ; preds = %262
  %266 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %267 = mul nsw i32 2, %266, !note.noelle !20
  %268 = sext i32 %267 to i64, !note.noelle !20
  %269 = getelementptr inbounds [131072 x double], [131072 x double]* %67, i64 0, i64 %268, !note.noelle !20
  %270 = load double, double* %269, align 8, !tbaa !9, !note.noelle !20
  %271 = fmul double 2.000000e+00, %270, !note.noelle !20
  %272 = fsub double %271, 1.000000e+00, !note.noelle !20
  store double %272, double* %61, align 8, !tbaa !9, !note.noelle !20
  %273 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %274 = mul nsw i32 2, %273, !note.noelle !20
  %275 = add nsw i32 %274, 1, !note.noelle !20
  %276 = sext i32 %275 to i64, !note.noelle !20
  %277 = getelementptr inbounds [131072 x double], [131072 x double]* %67, i64 0, i64 %276, !note.noelle !20
  %278 = load double, double* %277, align 8, !tbaa !9, !note.noelle !20
  %279 = fmul double 2.000000e+00, %278, !note.noelle !20
  %280 = fsub double %279, 1.000000e+00, !note.noelle !20
  store double %280, double* %62, align 8, !tbaa !9, !note.noelle !20
  %281 = load double, double* %61, align 8, !tbaa !9, !note.noelle !20
  %282 = load double, double* %61, align 8, !tbaa !9, !note.noelle !20
  %283 = fmul double %281, %282, !note.noelle !20
  %284 = load double, double* %62, align 8, !tbaa !9, !note.noelle !20
  %285 = load double, double* %62, align 8, !tbaa !9, !note.noelle !20
  %286 = fmul double %284, %285, !note.noelle !20
  %287 = fadd double %283, %286, !note.noelle !20
  store double %287, double* %57, align 8, !tbaa !9, !note.noelle !20
  %288 = load double, double* %57, align 8, !tbaa !9, !note.noelle !20
  %289 = fcmp ole double %288, 1.000000e+00, !note.noelle !20
  br i1 %289, label %290, label %406, !note.noelle !20

290:                                              ; preds = %265
  %291 = load double, double* %57, align 8, !tbaa !9, !note.noelle !20
  %292 = call double @log(double %291) #5, !note.noelle !20
  %293 = fmul double -2.000000e+00, %292, !note.noelle !20
  %294 = load double, double* %57, align 8, !tbaa !9, !note.noelle !20
  %295 = fdiv double %293, %294, !note.noelle !20
  %296 = call double @sqrt(double %295) #5, !note.noelle !20
  store double %296, double* %58, align 8, !tbaa !9, !note.noelle !20
  %297 = load double, double* %61, align 8, !tbaa !9, !note.noelle !20
  %298 = load double, double* %58, align 8, !tbaa !9, !note.noelle !20
  %299 = fmul double %297, %298, !note.noelle !20
  store double %299, double* %59, align 8, !tbaa !9, !note.noelle !20
  %300 = load double, double* %62, align 8, !tbaa !9, !note.noelle !20
  %301 = load double, double* %58, align 8, !tbaa !9, !note.noelle !20
  %302 = fmul double %300, %301, !note.noelle !20
  store double %302, double* %60, align 8, !tbaa !9, !note.noelle !20
  %303 = load double, double* %59, align 8, !tbaa !9, !note.noelle !20
  %304 = call double @llvm.fabs.f64(double %303), !note.noelle !20
  %305 = load double, double* %60, align 8, !tbaa !9, !note.noelle !20
  %306 = call double @llvm.fabs.f64(double %305), !note.noelle !20
  %307 = fcmp ogt double %304, %306, !note.noelle !20
  br i1 %307, label %308, label %311, !note.noelle !20

308:                                              ; preds = %290
  %309 = load double, double* %59, align 8, !tbaa !9, !note.noelle !20
  %310 = call double @llvm.fabs.f64(double %309), !note.noelle !20
  br label %314, !note.noelle !20

311:                                              ; preds = %290
  %312 = load double, double* %60, align 8, !tbaa !9, !note.noelle !20
  %313 = call double @llvm.fabs.f64(double %312), !note.noelle !20
  br label %314, !note.noelle !20

314:                                              ; preds = %311, %308
  %315 = phi double [ %310, %308 ], [ %313, %311 ], !note.noelle !20
  %316 = fptosi double %315 to i32, !note.noelle !20
  store i32 %316, i32* %66, align 4, !tbaa !7, !note.noelle !20
  %317 = bitcast double* %68 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %317) #5, !note.noelle !20
  store double 0.000000e+00, double* %68, align 8, !tbaa !9, !note.noelle !20
  %318 = bitcast double* %69 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %318) #5, !note.noelle !20
  store double 0.000000e+00, double* %69, align 8, !tbaa !9, !note.noelle !20
  %319 = bitcast double* %70 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %319) #5, !note.noelle !20
  store double 0.000000e+00, double* %70, align 8, !tbaa !9, !note.noelle !20
  %320 = bitcast double* %71 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %320) #5, !note.noelle !20
  store double 0.000000e+00, double* %71, align 8, !tbaa !9, !note.noelle !20
  %321 = bitcast double* %72 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %321) #5, !note.noelle !20
  store double 0.000000e+00, double* %72, align 8, !tbaa !9, !note.noelle !20
  %322 = bitcast double* %73 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %322) #5, !note.noelle !20
  store double 0.000000e+00, double* %73, align 8, !tbaa !9, !note.noelle !20
  %323 = bitcast double* %74 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %323) #5, !note.noelle !20
  store double 0.000000e+00, double* %74, align 8, !tbaa !9, !note.noelle !20
  %324 = bitcast double* %75 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %324) #5, !note.noelle !20
  store double 0.000000e+00, double* %75, align 8, !tbaa !9, !note.noelle !20
  %325 = bitcast double* %76 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %325) #5, !note.noelle !20
  store double 0.000000e+00, double* %76, align 8, !tbaa !9, !note.noelle !20
  %326 = bitcast double* %77 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %326) #5, !note.noelle !20
  store double 0.000000e+00, double* %77, align 8, !tbaa !9, !note.noelle !20
  %327 = load i32, i32* %66, align 4, !tbaa !7, !note.noelle !20
  switch i32 %327, label %358 [
    i32 0, label %328
    i32 1, label %331
    i32 2, label %334
    i32 3, label %337
    i32 4, label %340
    i32 5, label %343
    i32 6, label %346
    i32 7, label %349
    i32 8, label %352
    i32 9, label %355
  ], !note.noelle !20

328:                                              ; preds = %314
  %329 = load double, double* %68, align 8, !tbaa !9, !note.noelle !20
  %330 = fadd double %329, 1.000000e+00, !note.noelle !20
  store double %330, double* %68, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

331:                                              ; preds = %314
  %332 = load double, double* %69, align 8, !tbaa !9, !note.noelle !20
  %333 = fadd double %332, 1.000000e+00, !note.noelle !20
  store double %333, double* %69, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

334:                                              ; preds = %314
  %335 = load double, double* %70, align 8, !tbaa !9, !note.noelle !20
  %336 = fadd double %335, 1.000000e+00, !note.noelle !20
  store double %336, double* %70, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

337:                                              ; preds = %314
  %338 = load double, double* %71, align 8, !tbaa !9, !note.noelle !20
  %339 = fadd double %338, 1.000000e+00, !note.noelle !20
  store double %339, double* %71, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

340:                                              ; preds = %314
  %341 = load double, double* %72, align 8, !tbaa !9, !note.noelle !20
  %342 = fadd double %341, 1.000000e+00, !note.noelle !20
  store double %342, double* %72, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

343:                                              ; preds = %314
  %344 = load double, double* %73, align 8, !tbaa !9, !note.noelle !20
  %345 = fadd double %344, 1.000000e+00, !note.noelle !20
  store double %345, double* %73, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

346:                                              ; preds = %314
  %347 = load double, double* %74, align 8, !tbaa !9, !note.noelle !20
  %348 = fadd double %347, 1.000000e+00, !note.noelle !20
  store double %348, double* %74, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

349:                                              ; preds = %314
  %350 = load double, double* %75, align 8, !tbaa !9, !note.noelle !20
  %351 = fadd double %350, 1.000000e+00, !note.noelle !20
  store double %351, double* %75, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

352:                                              ; preds = %314
  %353 = load double, double* %76, align 8, !tbaa !9, !note.noelle !20
  %354 = fadd double %353, 1.000000e+00, !note.noelle !20
  store double %354, double* %76, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

355:                                              ; preds = %314
  %356 = load double, double* %77, align 8, !tbaa !9, !note.noelle !20
  %357 = fadd double %356, 1.000000e+00, !note.noelle !20
  store double %357, double* %77, align 8, !tbaa !9, !note.noelle !20
  br label %359, !note.noelle !20

358:                                              ; preds = %314
  br label %359, !note.noelle !20

359:                                              ; preds = %358, %355, %352, %349, %346, %343, %340, %337, %334, %331, %328
  %360 = load double, double* %68, align 8, !tbaa !9, !note.noelle !20
  %361 = load double, double* %47, align 8, !tbaa !9, !note.noelle !20
  %362 = fadd double %361, %360, !note.noelle !20
  store double %362, double* %47, align 8, !tbaa !9, !note.noelle !20
  %363 = load double, double* %69, align 8, !tbaa !9, !note.noelle !20
  %364 = load double, double* %48, align 8, !tbaa !9, !note.noelle !20
  %365 = fadd double %364, %363, !note.noelle !20
  store double %365, double* %48, align 8, !tbaa !9, !note.noelle !20
  %366 = load double, double* %70, align 8, !tbaa !9, !note.noelle !20
  %367 = load double, double* %49, align 8, !tbaa !9, !note.noelle !20
  %368 = fadd double %367, %366, !note.noelle !20
  store double %368, double* %49, align 8, !tbaa !9, !note.noelle !20
  %369 = load double, double* %71, align 8, !tbaa !9, !note.noelle !20
  %370 = load double, double* %50, align 8, !tbaa !9, !note.noelle !20
  %371 = fadd double %370, %369, !note.noelle !20
  store double %371, double* %50, align 8, !tbaa !9, !note.noelle !20
  %372 = load double, double* %72, align 8, !tbaa !9, !note.noelle !20
  %373 = load double, double* %51, align 8, !tbaa !9, !note.noelle !20
  %374 = fadd double %373, %372, !note.noelle !20
  store double %374, double* %51, align 8, !tbaa !9, !note.noelle !20
  %375 = load double, double* %73, align 8, !tbaa !9, !note.noelle !20
  %376 = load double, double* %52, align 8, !tbaa !9, !note.noelle !20
  %377 = fadd double %376, %375, !note.noelle !20
  store double %377, double* %52, align 8, !tbaa !9, !note.noelle !20
  %378 = load double, double* %74, align 8, !tbaa !9, !note.noelle !20
  %379 = load double, double* %53, align 8, !tbaa !9, !note.noelle !20
  %380 = fadd double %379, %378, !note.noelle !20
  store double %380, double* %53, align 8, !tbaa !9, !note.noelle !20
  %381 = load double, double* %75, align 8, !tbaa !9, !note.noelle !20
  %382 = load double, double* %54, align 8, !tbaa !9, !note.noelle !20
  %383 = fadd double %382, %381, !note.noelle !20
  store double %383, double* %54, align 8, !tbaa !9, !note.noelle !20
  %384 = load double, double* %76, align 8, !tbaa !9, !note.noelle !20
  %385 = load double, double* %55, align 8, !tbaa !9, !note.noelle !20
  %386 = fadd double %385, %384, !note.noelle !20
  store double %386, double* %55, align 8, !tbaa !9, !note.noelle !20
  %387 = load double, double* %77, align 8, !tbaa !9, !note.noelle !20
  %388 = load double, double* %56, align 8, !tbaa !9, !note.noelle !20
  %389 = fadd double %388, %387, !note.noelle !20
  store double %389, double* %56, align 8, !tbaa !9, !note.noelle !20
  %390 = load double, double* %13, align 8, !tbaa !9, !note.noelle !20
  %391 = load double, double* %59, align 8, !tbaa !9, !note.noelle !20
  %392 = fadd double %390, %391, !note.noelle !20
  store double %392, double* %13, align 8, !tbaa !9, !note.noelle !20
  %393 = load double, double* %14, align 8, !tbaa !9, !note.noelle !20
  %394 = load double, double* %60, align 8, !tbaa !9, !note.noelle !20
  %395 = fadd double %393, %394, !note.noelle !20
  store double %395, double* %14, align 8, !tbaa !9, !note.noelle !20
  %396 = bitcast double* %77 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %396) #5, !note.noelle !20
  %397 = bitcast double* %76 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %397) #5, !note.noelle !20
  %398 = bitcast double* %75 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %398) #5, !note.noelle !20
  %399 = bitcast double* %74 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %399) #5, !note.noelle !20
  %400 = bitcast double* %73 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %400) #5, !note.noelle !20
  %401 = bitcast double* %72 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %401) #5, !note.noelle !20
  %402 = bitcast double* %71 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %402) #5, !note.noelle !20
  %403 = bitcast double* %70 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %403) #5, !note.noelle !20
  %404 = bitcast double* %69 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %404) #5, !note.noelle !20
  %405 = bitcast double* %68 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %405) #5, !note.noelle !20
  br label %406, !note.noelle !20

406:                                              ; preds = %359, %265
  br label %407, !note.noelle !20

407:                                              ; preds = %406
  %408 = load i32, i32* %64, align 4, !tbaa !7, !note.noelle !20
  %409 = add nsw i32 %408, 1, !note.noelle !20
  store i32 %409, i32* %64, align 4, !tbaa !7, !note.noelle !20
  br label %262, !note.noelle !20

410:                                              ; preds = %262
  %411 = bitcast [131072 x double]* %67 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 1048576, i8* %411) #5, !note.noelle !20
  %412 = bitcast i32* %66 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %412) #5, !note.noelle !20
  %413 = bitcast i32* %65 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %413) #5, !note.noelle !20
  %414 = bitcast i32* %64 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %414) #5, !note.noelle !20
  %415 = bitcast i32* %63 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %415) #5, !note.noelle !20
  %416 = bitcast double* %62 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %416) #5, !note.noelle !20
  %417 = bitcast double* %61 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %417) #5, !note.noelle !20
  %418 = bitcast double* %60 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %418) #5, !note.noelle !20
  %419 = bitcast double* %59 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %419) #5, !note.noelle !20
  %420 = bitcast double* %58 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %420) #5, !note.noelle !20
  %421 = bitcast double* %57 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %421) #5, !note.noelle !20
  br label %422, !note.noelle !20

422:                                              ; preds = %410
  %423 = load i32, i32* %28, align 4, !tbaa !7, !note.noelle !20
  %424 = add nsw i32 %423, 1, !note.noelle !20
  store i32 %424, i32* %28, align 4, !tbaa !7, !note.noelle !20
  br label %200, !note.noelle !20

425:                                              ; preds = %200
  %426 = load double, double* %47, align 8, !tbaa !9, !note.noelle !11
  %427 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 0), align 16, !tbaa !9, !note.noelle !11
  %428 = fadd double %427, %426, !note.noelle !11
  store double %428, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 0), align 16, !tbaa !9, !note.noelle !11
  %429 = load double, double* %48, align 8, !tbaa !9, !note.noelle !11
  %430 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 1), align 8, !tbaa !9, !note.noelle !11
  %431 = fadd double %430, %429, !note.noelle !11
  store double %431, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 1), align 8, !tbaa !9, !note.noelle !11
  %432 = load double, double* %49, align 8, !tbaa !9, !note.noelle !11
  %433 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 2), align 16, !tbaa !9, !note.noelle !11
  %434 = fadd double %433, %432, !note.noelle !11
  store double %434, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 2), align 16, !tbaa !9, !note.noelle !11
  %435 = load double, double* %50, align 8, !tbaa !9, !note.noelle !11
  %436 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 3), align 8, !tbaa !9, !note.noelle !11
  %437 = fadd double %436, %435, !note.noelle !11
  store double %437, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 3), align 8, !tbaa !9, !note.noelle !11
  %438 = load double, double* %51, align 8, !tbaa !9, !note.noelle !11
  %439 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 4), align 16, !tbaa !9, !note.noelle !11
  %440 = fadd double %439, %438, !note.noelle !11
  store double %440, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 4), align 16, !tbaa !9, !note.noelle !11
  %441 = load double, double* %52, align 8, !tbaa !9, !note.noelle !11
  %442 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 5), align 8, !tbaa !9, !note.noelle !11
  %443 = fadd double %442, %441, !note.noelle !11
  store double %443, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 5), align 8, !tbaa !9, !note.noelle !11
  %444 = load double, double* %53, align 8, !tbaa !9, !note.noelle !11
  %445 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 6), align 16, !tbaa !9, !note.noelle !11
  %446 = fadd double %445, %444, !note.noelle !11
  store double %446, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 6), align 16, !tbaa !9, !note.noelle !11
  %447 = load double, double* %54, align 8, !tbaa !9, !note.noelle !11
  %448 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 7), align 8, !tbaa !9, !note.noelle !11
  %449 = fadd double %448, %447, !note.noelle !11
  store double %449, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 7), align 8, !tbaa !9, !note.noelle !11
  %450 = load double, double* %55, align 8, !tbaa !9, !note.noelle !11
  %451 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 8), align 16, !tbaa !9, !note.noelle !11
  %452 = fadd double %451, %450, !note.noelle !11
  store double %452, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 8), align 16, !tbaa !9, !note.noelle !11
  %453 = load double, double* %56, align 8, !tbaa !9, !note.noelle !11
  %454 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 9), align 8, !tbaa !9, !note.noelle !11
  %455 = fadd double %454, %453, !note.noelle !11
  store double %455, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 9), align 8, !tbaa !9, !note.noelle !11
  %456 = bitcast double* %56 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %456) #5
  %457 = bitcast double* %55 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %457) #5
  %458 = bitcast double* %54 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %458) #5
  %459 = bitcast double* %53 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %459) #5
  %460 = bitcast double* %52 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %460) #5
  %461 = bitcast double* %51 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %461) #5
  %462 = bitcast double* %50 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %462) #5
  %463 = bitcast double* %49 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %463) #5
  %464 = bitcast double* %48 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %464) #5
  %465 = bitcast double* %47 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %465) #5
  %466 = bitcast i32* %46 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %466) #5
  %467 = bitcast i32* %45 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %467) #5
  %468 = bitcast i32* %44 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %468) #5
  %469 = bitcast i32* %43 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %469) #5
  %470 = bitcast double* %42 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %470) #5
  %471 = bitcast double* %41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %471) #5
  %472 = bitcast double* %40 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %472) #5
  %473 = bitcast double* %39 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %473) #5
  %474 = bitcast double* %38 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %474) #5
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %475

475:                                              ; preds = %485, %425
  %476 = load i32, i32* %24, align 4, !tbaa !7
  %477 = icmp sle i32 %476, 9
  br i1 %477, label %478, label %488

478:                                              ; preds = %475
  %479 = load double, double* %18, align 8, !tbaa !9
  %480 = load i32, i32* %24, align 4, !tbaa !7
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [10 x double], [10 x double]* @q, i64 0, i64 %481
  %483 = load double, double* %482, align 8, !tbaa !9
  %484 = fadd double %479, %483
  store double %484, double* %18, align 8, !tbaa !9
  br label %485

485:                                              ; preds = %478
  %486 = load i32, i32* %24, align 4, !tbaa !7
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %24, align 4, !tbaa !7
  br label %475

488:                                              ; preds = %475
  call void @timer_stop(i32 1)
  %489 = call double @timer_read(i32 1)
  store double %489, double* %15, align 8, !tbaa !9
  store i32 0, i32* %29, align 4, !tbaa !7
  %490 = load double, double* %13, align 8, !tbaa !9
  %491 = fsub double %490, 0x40E74375BCA95045
  %492 = load double, double* %13, align 8, !tbaa !9
  %493 = fdiv double %491, %492
  %494 = call double @llvm.fabs.f64(double %493)
  %495 = fcmp ole double %494, 1.000000e-08
  br i1 %495, label %496, label %504

496:                                              ; preds = %488
  %497 = load double, double* %14, align 8, !tbaa !9
  %498 = fsub double %497, 0xC0F3BC8BAD971C04
  %499 = load double, double* %14, align 8, !tbaa !9
  %500 = fdiv double %498, %499
  %501 = call double @llvm.fabs.f64(double %500)
  %502 = fcmp ole double %501, 1.000000e-08
  br i1 %502, label %503, label %504

503:                                              ; preds = %496
  store i32 1, i32* %36, align 4, !tbaa !7
  br label %504

504:                                              ; preds = %503, %496, %488
  %505 = call double @pow(double 2.000000e+00, double 3.300000e+01) #5
  %506 = load double, double* %15, align 8, !tbaa !9
  %507 = fdiv double %505, %506
  %508 = fdiv double %507, 1.000000e+06
  store double %508, double* %6, align 8, !tbaa !9
  %509 = load double, double* %15, align 8, !tbaa !9
  %510 = load double, double* %18, align 8, !tbaa !9
  %511 = load double, double* %13, align 8, !tbaa !9
  %512 = load double, double* %14, align 8, !tbaa !9
  %513 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.25, i64 0, i64 0), double %509, i32 32, double %510, double %511, double %512)
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %514

514:                                              ; preds = %524, %504
  %515 = load i32, i32* %24, align 4, !tbaa !7
  %516 = icmp sle i32 %515, 9
  br i1 %516, label %517, label %527

517:                                              ; preds = %514
  %518 = load i32, i32* %24, align 4, !tbaa !7
  %519 = load i32, i32* %24, align 4, !tbaa !7
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [10 x double], [10 x double]* @q, i64 0, i64 %520
  %522 = load double, double* %521, align 8, !tbaa !9
  %523 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %518, double %522)
  br label %524

524:                                              ; preds = %517
  %525 = load i32, i32* %24, align 4, !tbaa !7
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %24, align 4, !tbaa !7
  br label %514

527:                                              ; preds = %514
  %528 = load i32, i32* %29, align 4, !tbaa !7
  %529 = load i32, i32* %35, align 4, !tbaa !7
  %530 = load double, double* %15, align 8, !tbaa !9
  %531 = load double, double* %6, align 8, !tbaa !9
  %532 = load i32, i32* %36, align 4, !tbaa !7
  call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8 signext 67, i32 33, i32 0, i32 0, i32 %528, i32 %529, double %530, double %531, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %532, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  %533 = bitcast [14 x i8]* %37 to i8*
  call void @llvm.lifetime.end.p0i8(i64 14, i8* %533) #5
  %534 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %534) #5
  %535 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %535) #5
  %536 = bitcast i32* %34 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %536) #5
  %537 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %537) #5
  %538 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %538) #5
  %539 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %539) #5
  %540 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %540) #5
  %541 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %541) #5
  %542 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %542) #5
  %543 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %543) #5
  %544 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %544) #5
  %545 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %545) #5
  %546 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %546) #5
  %547 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %547) #5
  %548 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %548) #5
  %549 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %549) #5
  %550 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %550) #5
  %551 = bitcast [3 x double]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %551) #5
  %552 = bitcast double* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %552) #5
  %553 = bitcast double* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %553) #5
  %554 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %554) #5
  %555 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %555) #5
  %556 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %556) #5
  %557 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %557) #5
  %558 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %558) #5
  %559 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %559) #5
  %560 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %560) #5
  %561 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %561) #5
  %562 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %562) #5
  %563 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %563) #5
  %564 = bitcast double* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %564) #5
  %565 = load i32, i32* %3, align 4
  ret i32 %565
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

; Function Attrs: nounwind
declare dso_local double @log(double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }

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
!11 = !{!12}
!12 = !{!"independent", !"1"}
!13 = !{!14, !15, i64 0}
!14 = !{!"timeval", !15, i64 0, !15, i64 8}
!15 = !{!"long", !4, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!12, !18, !19}
!18 = !{!"label", !"1"}
!19 = !{!"selected", !"1"}
!20 = !{!12, !21, !19}
!21 = !{!"label", !"2"}
