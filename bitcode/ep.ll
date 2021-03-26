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
@.str.30 = private unnamed_addr constant [12 x i8] c"10 Feb 2021\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gclang\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"-O3 \00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"-lm -mcmodel=large\00", align 1
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
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca [131072 x double], align 16
  %59 = alloca i32, align 4
  %60 = alloca double, align 8
  %61 = alloca double, align 8
  %62 = alloca double, align 8
  %63 = alloca double, align 8
  %64 = alloca double, align 8
  %65 = alloca double, align 8
  %66 = alloca double, align 8
  %67 = alloca double, align 8
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
  %78 = alloca double, align 8
  %79 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !2
  %80 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %80) #5
  %81 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %81) #5
  %82 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %82) #5
  %83 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %83) #5
  %84 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %84) #5
  %85 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85) #5
  %86 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %86) #5
  %87 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %87) #5
  %88 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %88) #5
  %89 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %89) #5
  %90 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %90) #5
  %91 = bitcast double* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %91) #5
  %92 = bitcast double* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %92) #5
  %93 = bitcast [3 x double]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %93) #5
  %94 = bitcast [3 x double]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %94, i8* align 16 bitcast ([3 x double]* @__const.main.dum to i8*), i64 24, i1 false)
  %95 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %95) #5
  %96 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %96) #5
  %97 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %97) #5
  %98 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %98) #5
  %99 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %99) #5
  %100 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %100) #5
  %101 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %101) #5
  %102 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %102) #5
  %103 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %103) #5
  %104 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %104) #5
  %105 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %105) #5
  %106 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %106) #5
  %107 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %107) #5
  %108 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #5
  %109 = bitcast i32* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %109) #5
  %110 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %110) #5
  store i32 1, i32* %35, align 4, !tbaa !7
  %111 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %111) #5
  %112 = bitcast [14 x i8]* %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 14, i8* %112) #5
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0))
  %114 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 0
  %115 = call double @pow(double 2.000000e+00, double 3.100000e+01) #5
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), double %115) #5
  store i32 13, i32* %34, align 4, !tbaa !7
  br label %117

117:                                              ; preds = %132, %2
  %118 = load i32, i32* %34, align 4, !tbaa !7
  %119 = icmp sge i32 %118, 1
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i32, i32* %34, align 4, !tbaa !7
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1, !tbaa !6
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 46
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* %34, align 4, !tbaa !7
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 %129
  store i8 32, i8* %130, align 1, !tbaa !6
  br label %131

131:                                              ; preds = %127, %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %34, align 4, !tbaa !7
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %34, align 4, !tbaa !7
  br label %117

135:                                              ; preds = %117
  %136 = getelementptr inbounds [14 x i8], [14 x i8]* %37, i64 0, i64 0
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i8* %136)
  store i32 0, i32* %36, align 4, !tbaa !7
  store i32 16384, i32* %20, align 4, !tbaa !7
  %138 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %139 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %140 = load double, double* %139, align 8, !tbaa !9
  %141 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  call void @vranlc(i32 0, double* %138, double %140, double* %141)
  %142 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %143 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  %144 = load double, double* %143, align 16, !tbaa !9
  %145 = call double @randlc(double* %142, double %144)
  %146 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  store double %145, double* %146, align 16, !tbaa !9
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %147

147:                                              ; preds = %154, %135
  %148 = load i32, i32* %24, align 4, !tbaa !7, !note.noelle !17
  %149 = icmp slt i32 %148, 131072, !note.noelle !17
  br i1 %149, label %150, label %157, !note.noelle !17

150:                                              ; preds = %147
  %151 = load i32, i32* %24, align 4, !tbaa !7, !note.noelle !17
  %152 = sext i32 %151 to i64, !note.noelle !17
  %153 = getelementptr inbounds [131072 x double], [131072 x double]* @x, i64 0, i64 %152, !note.noelle !17
  store double 0xD47D42AEA2879F2E, double* %153, align 8, !tbaa !9, !note.noelle !17
  br label %154, !note.noelle !17

154:                                              ; preds = %150
  %155 = load i32, i32* %24, align 4, !tbaa !7, !note.noelle !17
  %156 = add nsw i32 %155, 1, !note.noelle !17
  store i32 %156, i32* %24, align 4, !tbaa !7, !note.noelle !17
  br label %147, !note.noelle !17

157:                                              ; preds = %147
  %158 = call double @llvm.fabs.f64(double 1.000000e+00)
  %159 = call double @sqrt(double %158) #5
  %160 = call double @log(double %159) #5
  store double %160, double* %6, align 8, !tbaa !9
  call void @timer_clear(i32 1)
  call void @timer_clear(i32 2)
  call void @timer_clear(i32 3)
  call void @timer_start(i32 1)
  call void @vranlc(i32 0, double* %7, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double], [131072 x double]* @x, i64 0, i64 0))
  store double 0x41D2309CE5400000, double* %7, align 8, !tbaa !9
  store i32 1, i32* %24, align 4, !tbaa !7
  br label %161

161:                                              ; preds = %167, %157
  %162 = load i32, i32* %24, align 4, !tbaa !7
  %163 = icmp sle i32 %162, 17
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load double, double* %7, align 8, !tbaa !9
  %166 = call double @randlc(double* %7, double %165)
  store double %166, double* %8, align 8, !tbaa !9
  br label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %24, align 4, !tbaa !7
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %24, align 4, !tbaa !7
  br label %161

170:                                              ; preds = %161
  %171 = load double, double* %7, align 8, !tbaa !9
  store double %171, double* %16, align 8, !tbaa !9
  store double 0x41B033C4D7000000, double* %17, align 8, !tbaa !9
  store double 0.000000e+00, double* %18, align 8, !tbaa !9
  store double 0.000000e+00, double* %13, align 8, !tbaa !9
  store double 0.000000e+00, double* %14, align 8, !tbaa !9
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %172

172:                                              ; preds = %179, %170
  %173 = load i32, i32* %24, align 4, !tbaa !7
  %174 = icmp sle i32 %173, 9
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32, i32* %24, align 4, !tbaa !7
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [10 x double], [10 x double]* @q, i64 0, i64 %177
  store double 0.000000e+00, double* %178, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %24, align 4, !tbaa !7
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %24, align 4, !tbaa !7
  br label %172

182:                                              ; preds = %172
  store i32 -1, i32* %33, align 4, !tbaa !7
  %183 = bitcast double* %38 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %183) #5, !note.noelle !11
  store double 0.000000e+00, double* %38, align 8, !tbaa !9, !note.noelle !11
  %184 = bitcast double* %39 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %184) #5, !note.noelle !11
  store double 0.000000e+00, double* %39, align 8, !tbaa !9, !note.noelle !11
  %185 = bitcast double* %40 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %185) #5, !note.noelle !11
  store double 0.000000e+00, double* %40, align 8, !tbaa !9, !note.noelle !11
  %186 = bitcast double* %41 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %186) #5, !note.noelle !11
  store double 0.000000e+00, double* %41, align 8, !tbaa !9, !note.noelle !11
  %187 = bitcast double* %42 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %187) #5, !note.noelle !11
  store double 0.000000e+00, double* %42, align 8, !tbaa !9, !note.noelle !11
  %188 = bitcast double* %43 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %188) #5, !note.noelle !11
  store double 0.000000e+00, double* %43, align 8, !tbaa !9, !note.noelle !11
  %189 = bitcast double* %44 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %189) #5, !note.noelle !11
  store double 0.000000e+00, double* %44, align 8, !tbaa !9, !note.noelle !11
  %190 = bitcast double* %45 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %190) #5, !note.noelle !11
  store double 0.000000e+00, double* %45, align 8, !tbaa !9, !note.noelle !11
  %191 = bitcast double* %46 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %191) #5, !note.noelle !11
  store double 0.000000e+00, double* %46, align 8, !tbaa !9, !note.noelle !11
  %192 = bitcast double* %47 to i8*, !note.noelle !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %192) #5, !note.noelle !11
  store double 0.000000e+00, double* %47, align 8, !tbaa !9, !note.noelle !11
  store i32 1, i32* %28, align 4, !tbaa !7, !note.noelle !11
  br label %193, !note.noelle !11

193:                                              ; preds = %494, %182
  %194 = load i32, i32* %28, align 4, !tbaa !7, !note.noelle !20
  %195 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !20
  %196 = icmp sle i32 %194, %195, !note.noelle !20
  br i1 %196, label %197, label %497, !note.noelle !20

197:                                              ; preds = %193
  %198 = bitcast double* %48 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %198) #5, !note.noelle !20
  %199 = bitcast double* %49 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %199) #5, !note.noelle !20
  %200 = bitcast double* %50 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %200) #5, !note.noelle !20
  %201 = bitcast double* %51 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %201) #5, !note.noelle !20
  %202 = bitcast double* %52 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %202) #5, !note.noelle !20
  %203 = bitcast double* %53 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %203) #5, !note.noelle !20
  %204 = bitcast i32* %54 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %204) #5, !note.noelle !20
  %205 = bitcast i32* %55 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %205) #5, !note.noelle !20
  %206 = bitcast i32* %56 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %206) #5, !note.noelle !20
  %207 = bitcast i32* %57 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %207) #5, !note.noelle !20
  %208 = bitcast [131072 x double]* %58 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 1048576, i8* %208) #5, !note.noelle !20
  store i32 0, i32* %55, align 4, !tbaa !7, !note.noelle !20
  br label %209, !note.noelle !20

209:                                              ; preds = %220, %197
  %210 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %211 = icmp slt i32 %210, 131072, !note.noelle !20
  br i1 %211, label %212, label %223, !note.noelle !20

212:                                              ; preds = %209
  %213 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %214 = sext i32 %213 to i64, !note.noelle !20
  %215 = getelementptr inbounds [131072 x double], [131072 x double]* @x, i64 0, i64 %214, !note.noelle !20
  %216 = load double, double* %215, align 8, !tbaa !9, !note.noelle !20
  %217 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %218 = sext i32 %217 to i64, !note.noelle !20
  %219 = getelementptr inbounds [131072 x double], [131072 x double]* %58, i64 0, i64 %218, !note.noelle !20
  store double %216, double* %219, align 8, !tbaa !9, !note.noelle !20
  br label %220, !note.noelle !20

220:                                              ; preds = %212
  %221 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %222 = add nsw i32 %221, 1, !note.noelle !20
  store i32 %222, i32* %55, align 4, !tbaa !7, !note.noelle !20
  br label %209, !note.noelle !20

223:                                              ; preds = %209
  %224 = load i32, i32* %33, align 4, !tbaa !7, !note.noelle !20
  %225 = load i32, i32* %28, align 4, !tbaa !7, !note.noelle !20
  %226 = add nsw i32 %224, %225, !note.noelle !20
  store i32 %226, i32* %54, align 4, !tbaa !7, !note.noelle !20
  store double 0x41B033C4D7000000, double* %48, align 8, !tbaa !9, !note.noelle !20
  %227 = load double, double* %16, align 8, !tbaa !9, !note.noelle !20
  store double %227, double* %49, align 8, !tbaa !9, !note.noelle !20
  store i32 1, i32* %55, align 4, !tbaa !7, !note.noelle !20
  br label %228, !note.noelle !20

228:                                              ; preds = %249, %223
  %229 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %230 = icmp sle i32 %229, 100, !note.noelle !20
  br i1 %230, label %231, label %252, !note.noelle !20

231:                                              ; preds = %228
  %232 = load i32, i32* %54, align 4, !tbaa !7, !note.noelle !20
  %233 = sdiv i32 %232, 2, !note.noelle !20
  store i32 %233, i32* %56, align 4, !tbaa !7, !note.noelle !20
  %234 = load i32, i32* %56, align 4, !tbaa !7, !note.noelle !20
  %235 = mul nsw i32 2, %234, !note.noelle !20
  %236 = load i32, i32* %54, align 4, !tbaa !7, !note.noelle !20
  %237 = icmp ne i32 %235, %236, !note.noelle !20
  br i1 %237, label %238, label %241, !note.noelle !20

238:                                              ; preds = %231
  %239 = load double, double* %49, align 8, !tbaa !9, !note.noelle !20
  %240 = call double @randlc(double* %48, double %239), !note.noelle !20
  store double %240, double* %50, align 8, !tbaa !9, !note.noelle !20
  br label %241, !note.noelle !20

241:                                              ; preds = %238, %231
  %242 = load i32, i32* %56, align 4, !tbaa !7, !note.noelle !20
  %243 = icmp eq i32 %242, 0, !note.noelle !20
  br i1 %243, label %244, label %245, !note.noelle !20

244:                                              ; preds = %241
  br label %252, !note.noelle !20

245:                                              ; preds = %241
  %246 = load double, double* %49, align 8, !tbaa !9, !note.noelle !20
  %247 = call double @randlc(double* %49, double %246), !note.noelle !20
  store double %247, double* %50, align 8, !tbaa !9, !note.noelle !20
  %248 = load i32, i32* %56, align 4, !tbaa !7, !note.noelle !20
  store i32 %248, i32* %54, align 4, !tbaa !7, !note.noelle !20
  br label %249, !note.noelle !20

249:                                              ; preds = %245
  %250 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %251 = add nsw i32 %250, 1, !note.noelle !20
  store i32 %251, i32* %55, align 4, !tbaa !7, !note.noelle !20
  br label %228, !note.noelle !20

252:                                              ; preds = %244, %228
  %253 = bitcast i32* %59 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %253) #5, !note.noelle !20
  %254 = bitcast double* %60 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %254) #5, !note.noelle !20
  %255 = bitcast double* %61 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %255) #5, !note.noelle !20
  %256 = bitcast double* %62 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %256) #5, !note.noelle !20
  %257 = bitcast double* %63 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %257) #5, !note.noelle !20
  %258 = bitcast double* %64 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %258) #5, !note.noelle !20
  %259 = bitcast double* %65 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %259) #5, !note.noelle !20
  %260 = bitcast double* %66 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %260) #5, !note.noelle !20
  %261 = bitcast double* %67 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %261) #5, !note.noelle !20
  %262 = bitcast double* %68 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %262) #5, !note.noelle !20
  %263 = bitcast double* %69 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %263) #5, !note.noelle !20
  store double 0x4062309CE5400000, double* %61, align 8, !tbaa !9, !note.noelle !20
  %264 = load double, double* %61, align 8, !tbaa !9, !note.noelle !20
  %265 = fptosi double %264 to i32, !note.noelle !20
  %266 = sitofp i32 %265 to double, !note.noelle !20
  store double %266, double* %65, align 8, !tbaa !9, !note.noelle !20
  %267 = load double, double* %65, align 8, !tbaa !9, !note.noelle !20
  %268 = fmul double 0x4160000000000000, %267, !note.noelle !20
  %269 = fsub double 0x41D2309CE5400000, %268, !note.noelle !20
  store double %269, double* %66, align 8, !tbaa !9, !note.noelle !20
  %270 = load double, double* %48, align 8, !tbaa !9, !note.noelle !20
  store double %270, double* %60, align 8, !tbaa !9, !note.noelle !20
  store i32 0, i32* %59, align 4, !tbaa !7, !note.noelle !20
  br label %271, !note.noelle !20

271:                                              ; preds = %318, %252
  %272 = load i32, i32* %59, align 4, !tbaa !7, !note.noelle !20
  %273 = icmp slt i32 %272, 131072, !note.noelle !20
  br i1 %273, label %274, label %321, !note.noelle !20

274:                                              ; preds = %271
  %275 = load double, double* %60, align 8, !tbaa !9, !note.noelle !20
  %276 = fmul double 0x3E80000000000000, %275, !note.noelle !20
  store double %276, double* %61, align 8, !tbaa !9, !note.noelle !20
  %277 = load double, double* %61, align 8, !tbaa !9, !note.noelle !20
  %278 = fptosi double %277 to i32, !note.noelle !20
  %279 = sitofp i32 %278 to double, !note.noelle !20
  store double %279, double* %67, align 8, !tbaa !9, !note.noelle !20
  %280 = load double, double* %60, align 8, !tbaa !9, !note.noelle !20
  %281 = load double, double* %67, align 8, !tbaa !9, !note.noelle !20
  %282 = fmul double 0x4160000000000000, %281, !note.noelle !20
  %283 = fsub double %280, %282, !note.noelle !20
  store double %283, double* %68, align 8, !tbaa !9, !note.noelle !20
  %284 = load double, double* %65, align 8, !tbaa !9, !note.noelle !20
  %285 = load double, double* %68, align 8, !tbaa !9, !note.noelle !20
  %286 = fmul double %284, %285, !note.noelle !20
  %287 = load double, double* %66, align 8, !tbaa !9, !note.noelle !20
  %288 = load double, double* %67, align 8, !tbaa !9, !note.noelle !20
  %289 = fmul double %287, %288, !note.noelle !20
  %290 = fadd double %286, %289, !note.noelle !20
  store double %290, double* %61, align 8, !tbaa !9, !note.noelle !20
  %291 = load double, double* %61, align 8, !tbaa !9, !note.noelle !20
  %292 = fmul double 0x3E80000000000000, %291, !note.noelle !20
  %293 = fptosi double %292 to i32, !note.noelle !20
  %294 = sitofp i32 %293 to double, !note.noelle !20
  store double %294, double* %62, align 8, !tbaa !9, !note.noelle !20
  %295 = load double, double* %61, align 8, !tbaa !9, !note.noelle !20
  %296 = load double, double* %62, align 8, !tbaa !9, !note.noelle !20
  %297 = fmul double 0x4160000000000000, %296, !note.noelle !20
  %298 = fsub double %295, %297, !note.noelle !20
  store double %298, double* %69, align 8, !tbaa !9, !note.noelle !20
  %299 = load double, double* %69, align 8, !tbaa !9, !note.noelle !20
  %300 = fmul double 0x4160000000000000, %299, !note.noelle !20
  %301 = load double, double* %66, align 8, !tbaa !9, !note.noelle !20
  %302 = load double, double* %68, align 8, !tbaa !9, !note.noelle !20
  %303 = fmul double %301, %302, !note.noelle !20
  %304 = fadd double %300, %303, !note.noelle !20
  store double %304, double* %63, align 8, !tbaa !9, !note.noelle !20
  %305 = load double, double* %63, align 8, !tbaa !9, !note.noelle !20
  %306 = fmul double 0x3D10000000000000, %305, !note.noelle !20
  %307 = fptosi double %306 to i32, !note.noelle !20
  %308 = sitofp i32 %307 to double, !note.noelle !20
  store double %308, double* %64, align 8, !tbaa !9, !note.noelle !20
  %309 = load double, double* %63, align 8, !tbaa !9, !note.noelle !20
  %310 = load double, double* %64, align 8, !tbaa !9, !note.noelle !20
  %311 = fmul double 0x42D0000000000000, %310, !note.noelle !20
  %312 = fsub double %309, %311, !note.noelle !20
  store double %312, double* %60, align 8, !tbaa !9, !note.noelle !20
  %313 = load double, double* %60, align 8, !tbaa !9, !note.noelle !20
  %314 = fmul double 0x3D10000000000000, %313, !note.noelle !20
  %315 = load i32, i32* %59, align 4, !tbaa !7, !note.noelle !20
  %316 = sext i32 %315 to i64, !note.noelle !20
  %317 = getelementptr inbounds [131072 x double], [131072 x double]* %58, i64 0, i64 %316, !note.noelle !20
  store double %314, double* %317, align 8, !tbaa !9, !note.noelle !20
  br label %318, !note.noelle !20

318:                                              ; preds = %274
  %319 = load i32, i32* %59, align 4, !tbaa !7, !note.noelle !20
  %320 = add nsw i32 %319, 1, !note.noelle !20
  store i32 %320, i32* %59, align 4, !tbaa !7, !note.noelle !20
  br label %271, !note.noelle !20

321:                                              ; preds = %271
  %322 = load double, double* %60, align 8, !tbaa !9, !note.noelle !20
  store double %322, double* %48, align 8, !tbaa !9, !note.noelle !20
  %323 = bitcast double* %69 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %323) #5, !note.noelle !20
  %324 = bitcast double* %68 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %324) #5, !note.noelle !20
  %325 = bitcast double* %67 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %325) #5, !note.noelle !20
  %326 = bitcast double* %66 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %326) #5, !note.noelle !20
  %327 = bitcast double* %65 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %327) #5, !note.noelle !20
  %328 = bitcast double* %64 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %328) #5, !note.noelle !20
  %329 = bitcast double* %63 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %329) #5, !note.noelle !20
  %330 = bitcast double* %62 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %330) #5, !note.noelle !20
  %331 = bitcast double* %61 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %331) #5, !note.noelle !20
  %332 = bitcast double* %60 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %332) #5, !note.noelle !20
  %333 = bitcast i32* %59 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %333) #5, !note.noelle !20
  store i32 0, i32* %55, align 4, !tbaa !7, !note.noelle !20
  br label %334, !note.noelle !20

334:                                              ; preds = %479, %321
  %335 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %336 = icmp slt i32 %335, 65536, !note.noelle !20
  br i1 %336, label %337, label %482, !note.noelle !20

337:                                              ; preds = %334
  %338 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %339 = mul nsw i32 2, %338, !note.noelle !20
  %340 = sext i32 %339 to i64, !note.noelle !20
  %341 = getelementptr inbounds [131072 x double], [131072 x double]* %58, i64 0, i64 %340, !note.noelle !20
  %342 = load double, double* %341, align 8, !tbaa !9, !note.noelle !20
  %343 = fmul double 2.000000e+00, %342, !note.noelle !20
  %344 = fsub double %343, 1.000000e+00, !note.noelle !20
  store double %344, double* %52, align 8, !tbaa !9, !note.noelle !20
  %345 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %346 = mul nsw i32 2, %345, !note.noelle !20
  %347 = add nsw i32 %346, 1, !note.noelle !20
  %348 = sext i32 %347 to i64, !note.noelle !20
  %349 = getelementptr inbounds [131072 x double], [131072 x double]* %58, i64 0, i64 %348, !note.noelle !20
  %350 = load double, double* %349, align 8, !tbaa !9, !note.noelle !20
  %351 = fmul double 2.000000e+00, %350, !note.noelle !20
  %352 = fsub double %351, 1.000000e+00, !note.noelle !20
  store double %352, double* %53, align 8, !tbaa !9, !note.noelle !20
  %353 = load double, double* %52, align 8, !tbaa !9, !note.noelle !20
  %354 = load double, double* %52, align 8, !tbaa !9, !note.noelle !20
  %355 = fmul double %353, %354, !note.noelle !20
  %356 = load double, double* %53, align 8, !tbaa !9, !note.noelle !20
  %357 = load double, double* %53, align 8, !tbaa !9, !note.noelle !20
  %358 = fmul double %356, %357, !note.noelle !20
  %359 = fadd double %355, %358, !note.noelle !20
  store double %359, double* %48, align 8, !tbaa !9, !note.noelle !20
  %360 = load double, double* %48, align 8, !tbaa !9, !note.noelle !20
  %361 = fcmp ole double %360, 1.000000e+00, !note.noelle !20
  br i1 %361, label %362, label %478, !note.noelle !20

362:                                              ; preds = %337
  %363 = load double, double* %48, align 8, !tbaa !9, !note.noelle !20
  %364 = call double @log(double %363) #5, !note.noelle !20
  %365 = fmul double -2.000000e+00, %364, !note.noelle !20
  %366 = load double, double* %48, align 8, !tbaa !9, !note.noelle !20
  %367 = fdiv double %365, %366, !note.noelle !20
  %368 = call double @sqrt(double %367) #5, !note.noelle !20
  store double %368, double* %49, align 8, !tbaa !9, !note.noelle !20
  %369 = load double, double* %52, align 8, !tbaa !9, !note.noelle !20
  %370 = load double, double* %49, align 8, !tbaa !9, !note.noelle !20
  %371 = fmul double %369, %370, !note.noelle !20
  store double %371, double* %50, align 8, !tbaa !9, !note.noelle !20
  %372 = load double, double* %53, align 8, !tbaa !9, !note.noelle !20
  %373 = load double, double* %49, align 8, !tbaa !9, !note.noelle !20
  %374 = fmul double %372, %373, !note.noelle !20
  store double %374, double* %51, align 8, !tbaa !9, !note.noelle !20
  %375 = load double, double* %50, align 8, !tbaa !9, !note.noelle !20
  %376 = call double @llvm.fabs.f64(double %375), !note.noelle !20
  %377 = load double, double* %51, align 8, !tbaa !9, !note.noelle !20
  %378 = call double @llvm.fabs.f64(double %377), !note.noelle !20
  %379 = fcmp ogt double %376, %378, !note.noelle !20
  br i1 %379, label %380, label %383, !note.noelle !20

380:                                              ; preds = %362
  %381 = load double, double* %50, align 8, !tbaa !9, !note.noelle !20
  %382 = call double @llvm.fabs.f64(double %381), !note.noelle !20
  br label %386, !note.noelle !20

383:                                              ; preds = %362
  %384 = load double, double* %51, align 8, !tbaa !9, !note.noelle !20
  %385 = call double @llvm.fabs.f64(double %384), !note.noelle !20
  br label %386, !note.noelle !20

386:                                              ; preds = %383, %380
  %387 = phi double [ %382, %380 ], [ %385, %383 ], !note.noelle !20
  %388 = fptosi double %387 to i32, !note.noelle !20
  store i32 %388, i32* %57, align 4, !tbaa !7, !note.noelle !20
  %389 = bitcast double* %70 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %389) #5, !note.noelle !20
  store double 0.000000e+00, double* %70, align 8, !tbaa !9, !note.noelle !20
  %390 = bitcast double* %71 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %390) #5, !note.noelle !20
  store double 0.000000e+00, double* %71, align 8, !tbaa !9, !note.noelle !20
  %391 = bitcast double* %72 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %391) #5, !note.noelle !20
  store double 0.000000e+00, double* %72, align 8, !tbaa !9, !note.noelle !20
  %392 = bitcast double* %73 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %392) #5, !note.noelle !20
  store double 0.000000e+00, double* %73, align 8, !tbaa !9, !note.noelle !20
  %393 = bitcast double* %74 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %393) #5, !note.noelle !20
  store double 0.000000e+00, double* %74, align 8, !tbaa !9, !note.noelle !20
  %394 = bitcast double* %75 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %394) #5, !note.noelle !20
  store double 0.000000e+00, double* %75, align 8, !tbaa !9, !note.noelle !20
  %395 = bitcast double* %76 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %395) #5, !note.noelle !20
  store double 0.000000e+00, double* %76, align 8, !tbaa !9, !note.noelle !20
  %396 = bitcast double* %77 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %396) #5, !note.noelle !20
  store double 0.000000e+00, double* %77, align 8, !tbaa !9, !note.noelle !20
  %397 = bitcast double* %78 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %397) #5, !note.noelle !20
  store double 0.000000e+00, double* %78, align 8, !tbaa !9, !note.noelle !20
  %398 = bitcast double* %79 to i8*, !note.noelle !20
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %398) #5, !note.noelle !20
  store double 0.000000e+00, double* %79, align 8, !tbaa !9, !note.noelle !20
  %399 = load i32, i32* %57, align 4, !tbaa !7, !note.noelle !20
  switch i32 %399, label %430 [
    i32 0, label %400
    i32 1, label %403
    i32 2, label %406
    i32 3, label %409
    i32 4, label %412
    i32 5, label %415
    i32 6, label %418
    i32 7, label %421
    i32 8, label %424
    i32 9, label %427
  ], !note.noelle !20

400:                                              ; preds = %386
  %401 = load double, double* %70, align 8, !tbaa !9, !note.noelle !20
  %402 = fadd double %401, 1.000000e+00, !note.noelle !20
  store double %402, double* %70, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

403:                                              ; preds = %386
  %404 = load double, double* %71, align 8, !tbaa !9, !note.noelle !20
  %405 = fadd double %404, 1.000000e+00, !note.noelle !20
  store double %405, double* %71, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

406:                                              ; preds = %386
  %407 = load double, double* %72, align 8, !tbaa !9, !note.noelle !20
  %408 = fadd double %407, 1.000000e+00, !note.noelle !20
  store double %408, double* %72, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

409:                                              ; preds = %386
  %410 = load double, double* %73, align 8, !tbaa !9, !note.noelle !20
  %411 = fadd double %410, 1.000000e+00, !note.noelle !20
  store double %411, double* %73, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

412:                                              ; preds = %386
  %413 = load double, double* %74, align 8, !tbaa !9, !note.noelle !20
  %414 = fadd double %413, 1.000000e+00, !note.noelle !20
  store double %414, double* %74, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

415:                                              ; preds = %386
  %416 = load double, double* %75, align 8, !tbaa !9, !note.noelle !20
  %417 = fadd double %416, 1.000000e+00, !note.noelle !20
  store double %417, double* %75, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

418:                                              ; preds = %386
  %419 = load double, double* %76, align 8, !tbaa !9, !note.noelle !20
  %420 = fadd double %419, 1.000000e+00, !note.noelle !20
  store double %420, double* %76, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

421:                                              ; preds = %386
  %422 = load double, double* %77, align 8, !tbaa !9, !note.noelle !20
  %423 = fadd double %422, 1.000000e+00, !note.noelle !20
  store double %423, double* %77, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

424:                                              ; preds = %386
  %425 = load double, double* %78, align 8, !tbaa !9, !note.noelle !20
  %426 = fadd double %425, 1.000000e+00, !note.noelle !20
  store double %426, double* %78, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

427:                                              ; preds = %386
  %428 = load double, double* %79, align 8, !tbaa !9, !note.noelle !20
  %429 = fadd double %428, 1.000000e+00, !note.noelle !20
  store double %429, double* %79, align 8, !tbaa !9, !note.noelle !20
  br label %431, !note.noelle !20

430:                                              ; preds = %386
  br label %431, !note.noelle !20

431:                                              ; preds = %430, %427, %424, %421, %418, %415, %412, %409, %406, %403, %400
  %432 = load double, double* %70, align 8, !tbaa !9, !note.noelle !20
  %433 = load double, double* %38, align 8, !tbaa !9, !note.noelle !20
  %434 = fadd double %433, %432, !note.noelle !20
  store double %434, double* %38, align 8, !tbaa !9, !note.noelle !20
  %435 = load double, double* %71, align 8, !tbaa !9, !note.noelle !20
  %436 = load double, double* %39, align 8, !tbaa !9, !note.noelle !20
  %437 = fadd double %436, %435, !note.noelle !20
  store double %437, double* %39, align 8, !tbaa !9, !note.noelle !20
  %438 = load double, double* %72, align 8, !tbaa !9, !note.noelle !20
  %439 = load double, double* %40, align 8, !tbaa !9, !note.noelle !20
  %440 = fadd double %439, %438, !note.noelle !20
  store double %440, double* %40, align 8, !tbaa !9, !note.noelle !20
  %441 = load double, double* %73, align 8, !tbaa !9, !note.noelle !20
  %442 = load double, double* %41, align 8, !tbaa !9, !note.noelle !20
  %443 = fadd double %442, %441, !note.noelle !20
  store double %443, double* %41, align 8, !tbaa !9, !note.noelle !20
  %444 = load double, double* %74, align 8, !tbaa !9, !note.noelle !20
  %445 = load double, double* %42, align 8, !tbaa !9, !note.noelle !20
  %446 = fadd double %445, %444, !note.noelle !20
  store double %446, double* %42, align 8, !tbaa !9, !note.noelle !20
  %447 = load double, double* %75, align 8, !tbaa !9, !note.noelle !20
  %448 = load double, double* %43, align 8, !tbaa !9, !note.noelle !20
  %449 = fadd double %448, %447, !note.noelle !20
  store double %449, double* %43, align 8, !tbaa !9, !note.noelle !20
  %450 = load double, double* %76, align 8, !tbaa !9, !note.noelle !20
  %451 = load double, double* %44, align 8, !tbaa !9, !note.noelle !20
  %452 = fadd double %451, %450, !note.noelle !20
  store double %452, double* %44, align 8, !tbaa !9, !note.noelle !20
  %453 = load double, double* %77, align 8, !tbaa !9, !note.noelle !20
  %454 = load double, double* %45, align 8, !tbaa !9, !note.noelle !20
  %455 = fadd double %454, %453, !note.noelle !20
  store double %455, double* %45, align 8, !tbaa !9, !note.noelle !20
  %456 = load double, double* %78, align 8, !tbaa !9, !note.noelle !20
  %457 = load double, double* %46, align 8, !tbaa !9, !note.noelle !20
  %458 = fadd double %457, %456, !note.noelle !20
  store double %458, double* %46, align 8, !tbaa !9, !note.noelle !20
  %459 = load double, double* %79, align 8, !tbaa !9, !note.noelle !20
  %460 = load double, double* %47, align 8, !tbaa !9, !note.noelle !20
  %461 = fadd double %460, %459, !note.noelle !20
  store double %461, double* %47, align 8, !tbaa !9, !note.noelle !20
  %462 = load double, double* %13, align 8, !tbaa !9, !note.noelle !20
  %463 = load double, double* %50, align 8, !tbaa !9, !note.noelle !20
  %464 = fadd double %462, %463, !note.noelle !20
  store double %464, double* %13, align 8, !tbaa !9, !note.noelle !20
  %465 = load double, double* %14, align 8, !tbaa !9, !note.noelle !20
  %466 = load double, double* %51, align 8, !tbaa !9, !note.noelle !20
  %467 = fadd double %465, %466, !note.noelle !20
  store double %467, double* %14, align 8, !tbaa !9, !note.noelle !20
  %468 = bitcast double* %79 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %468) #5, !note.noelle !20
  %469 = bitcast double* %78 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %469) #5, !note.noelle !20
  %470 = bitcast double* %77 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %470) #5, !note.noelle !20
  %471 = bitcast double* %76 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %471) #5, !note.noelle !20
  %472 = bitcast double* %75 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %472) #5, !note.noelle !20
  %473 = bitcast double* %74 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %473) #5, !note.noelle !20
  %474 = bitcast double* %73 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %474) #5, !note.noelle !20
  %475 = bitcast double* %72 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %475) #5, !note.noelle !20
  %476 = bitcast double* %71 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %476) #5, !note.noelle !20
  %477 = bitcast double* %70 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %477) #5, !note.noelle !20
  br label %478, !note.noelle !20

478:                                              ; preds = %431, %337
  br label %479, !note.noelle !20

479:                                              ; preds = %478
  %480 = load i32, i32* %55, align 4, !tbaa !7, !note.noelle !20
  %481 = add nsw i32 %480, 1, !note.noelle !20
  store i32 %481, i32* %55, align 4, !tbaa !7, !note.noelle !20
  br label %334, !note.noelle !20

482:                                              ; preds = %334
  %483 = bitcast [131072 x double]* %58 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 1048576, i8* %483) #5, !note.noelle !20
  %484 = bitcast i32* %57 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %484) #5, !note.noelle !20
  %485 = bitcast i32* %56 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %485) #5, !note.noelle !20
  %486 = bitcast i32* %55 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %486) #5, !note.noelle !20
  %487 = bitcast i32* %54 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %487) #5, !note.noelle !20
  %488 = bitcast double* %53 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %488) #5, !note.noelle !20
  %489 = bitcast double* %52 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %489) #5, !note.noelle !20
  %490 = bitcast double* %51 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %490) #5, !note.noelle !20
  %491 = bitcast double* %50 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %491) #5, !note.noelle !20
  %492 = bitcast double* %49 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %492) #5, !note.noelle !20
  %493 = bitcast double* %48 to i8*, !note.noelle !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %493) #5, !note.noelle !20
  br label %494, !note.noelle !20

494:                                              ; preds = %482
  %495 = load i32, i32* %28, align 4, !tbaa !7, !note.noelle !20
  %496 = add nsw i32 %495, 1, !note.noelle !20
  store i32 %496, i32* %28, align 4, !tbaa !7, !note.noelle !20
  br label %193, !note.noelle !20

497:                                              ; preds = %193
  %498 = load double, double* %38, align 8, !tbaa !9, !note.noelle !11
  %499 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 0), align 16, !tbaa !9, !note.noelle !11
  %500 = fadd double %499, %498, !note.noelle !11
  store double %500, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 0), align 16, !tbaa !9, !note.noelle !11
  %501 = load double, double* %39, align 8, !tbaa !9, !note.noelle !11
  %502 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 1), align 8, !tbaa !9, !note.noelle !11
  %503 = fadd double %502, %501, !note.noelle !11
  store double %503, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 1), align 8, !tbaa !9, !note.noelle !11
  %504 = load double, double* %40, align 8, !tbaa !9, !note.noelle !11
  %505 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 2), align 16, !tbaa !9, !note.noelle !11
  %506 = fadd double %505, %504, !note.noelle !11
  store double %506, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 2), align 16, !tbaa !9, !note.noelle !11
  %507 = load double, double* %41, align 8, !tbaa !9, !note.noelle !11
  %508 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 3), align 8, !tbaa !9, !note.noelle !11
  %509 = fadd double %508, %507, !note.noelle !11
  store double %509, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 3), align 8, !tbaa !9, !note.noelle !11
  %510 = load double, double* %42, align 8, !tbaa !9, !note.noelle !11
  %511 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 4), align 16, !tbaa !9, !note.noelle !11
  %512 = fadd double %511, %510, !note.noelle !11
  store double %512, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 4), align 16, !tbaa !9, !note.noelle !11
  %513 = load double, double* %43, align 8, !tbaa !9, !note.noelle !11
  %514 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 5), align 8, !tbaa !9, !note.noelle !11
  %515 = fadd double %514, %513, !note.noelle !11
  store double %515, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 5), align 8, !tbaa !9, !note.noelle !11
  %516 = load double, double* %44, align 8, !tbaa !9, !note.noelle !11
  %517 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 6), align 16, !tbaa !9, !note.noelle !11
  %518 = fadd double %517, %516, !note.noelle !11
  store double %518, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 6), align 16, !tbaa !9, !note.noelle !11
  %519 = load double, double* %45, align 8, !tbaa !9, !note.noelle !11
  %520 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 7), align 8, !tbaa !9, !note.noelle !11
  %521 = fadd double %520, %519, !note.noelle !11
  store double %521, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 7), align 8, !tbaa !9, !note.noelle !11
  %522 = load double, double* %46, align 8, !tbaa !9, !note.noelle !11
  %523 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 8), align 16, !tbaa !9, !note.noelle !11
  %524 = fadd double %523, %522, !note.noelle !11
  store double %524, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 8), align 16, !tbaa !9, !note.noelle !11
  %525 = load double, double* %47, align 8, !tbaa !9, !note.noelle !11
  %526 = load double, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 9), align 8, !tbaa !9, !note.noelle !11
  %527 = fadd double %526, %525, !note.noelle !11
  store double %527, double* getelementptr inbounds ([10 x double], [10 x double]* @q, i64 0, i64 9), align 8, !tbaa !9, !note.noelle !11
  %528 = bitcast double* %47 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %528) #5
  %529 = bitcast double* %46 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %529) #5
  %530 = bitcast double* %45 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %530) #5
  %531 = bitcast double* %44 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %531) #5
  %532 = bitcast double* %43 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %532) #5
  %533 = bitcast double* %42 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %533) #5
  %534 = bitcast double* %41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %534) #5
  %535 = bitcast double* %40 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %535) #5
  %536 = bitcast double* %39 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %536) #5
  %537 = bitcast double* %38 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %537) #5
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %538

538:                                              ; preds = %548, %497
  %539 = load i32, i32* %24, align 4, !tbaa !7
  %540 = icmp sle i32 %539, 9
  br i1 %540, label %541, label %551

541:                                              ; preds = %538
  %542 = load double, double* %18, align 8, !tbaa !9
  %543 = load i32, i32* %24, align 4, !tbaa !7
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [10 x double], [10 x double]* @q, i64 0, i64 %544
  %546 = load double, double* %545, align 8, !tbaa !9
  %547 = fadd double %542, %546
  store double %547, double* %18, align 8, !tbaa !9
  br label %548

548:                                              ; preds = %541
  %549 = load i32, i32* %24, align 4, !tbaa !7
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %24, align 4, !tbaa !7
  br label %538

551:                                              ; preds = %538
  call void @timer_stop(i32 1)
  %552 = call double @timer_read(i32 1)
  store double %552, double* %15, align 8, !tbaa !9
  store i32 0, i32* %29, align 4, !tbaa !7
  %553 = load double, double* %13, align 8, !tbaa !9
  %554 = fsub double %553, 0x40E3B244F93C9F6B
  %555 = load double, double* %13, align 8, !tbaa !9
  %556 = fdiv double %554, %555
  %557 = call double @llvm.fabs.f64(double %556)
  %558 = fcmp ole double %557, 1.000000e-08
  br i1 %558, label %559, label %567

559:                                              ; preds = %551
  %560 = load double, double* %14, align 8, !tbaa !9
  %561 = fsub double %560, 0xC0D9FBAC488CC3F5
  %562 = load double, double* %14, align 8, !tbaa !9
  %563 = fdiv double %561, %562
  %564 = call double @llvm.fabs.f64(double %563)
  %565 = fcmp ole double %564, 1.000000e-08
  br i1 %565, label %566, label %567

566:                                              ; preds = %559
  store i32 1, i32* %36, align 4, !tbaa !7
  br label %567

567:                                              ; preds = %566, %559, %551
  %568 = call double @pow(double 2.000000e+00, double 3.100000e+01) #5
  %569 = load double, double* %15, align 8, !tbaa !9
  %570 = fdiv double %568, %569
  %571 = fdiv double %570, 1.000000e+06
  store double %571, double* %6, align 8, !tbaa !9
  %572 = load double, double* %15, align 8, !tbaa !9
  %573 = load double, double* %18, align 8, !tbaa !9
  %574 = load double, double* %13, align 8, !tbaa !9
  %575 = load double, double* %14, align 8, !tbaa !9
  %576 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.25, i64 0, i64 0), double %572, i32 30, double %573, double %574, double %575)
  store i32 0, i32* %24, align 4, !tbaa !7
  br label %577

577:                                              ; preds = %587, %567
  %578 = load i32, i32* %24, align 4, !tbaa !7
  %579 = icmp sle i32 %578, 9
  br i1 %579, label %580, label %590

580:                                              ; preds = %577
  %581 = load i32, i32* %24, align 4, !tbaa !7
  %582 = load i32, i32* %24, align 4, !tbaa !7
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [10 x double], [10 x double]* @q, i64 0, i64 %583
  %585 = load double, double* %584, align 8, !tbaa !9
  %586 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %581, double %585)
  br label %587

587:                                              ; preds = %580
  %588 = load i32, i32* %24, align 4, !tbaa !7
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %24, align 4, !tbaa !7
  br label %577

590:                                              ; preds = %577
  %591 = load i32, i32* %29, align 4, !tbaa !7
  %592 = load i32, i32* %35, align 4, !tbaa !7
  %593 = load double, double* %15, align 8, !tbaa !9
  %594 = load double, double* %6, align 8, !tbaa !9
  %595 = load i32, i32* %36, align 4, !tbaa !7
  call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8 signext 66, i32 31, i32 0, i32 0, i32 %591, i32 %592, double %593, double %594, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %595, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  %596 = bitcast [14 x i8]* %37 to i8*
  call void @llvm.lifetime.end.p0i8(i64 14, i8* %596) #5
  %597 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %597) #5
  %598 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %598) #5
  %599 = bitcast i32* %34 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %599) #5
  %600 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %600) #5
  %601 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %601) #5
  %602 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %602) #5
  %603 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %603) #5
  %604 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %604) #5
  %605 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %605) #5
  %606 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %606) #5
  %607 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %607) #5
  %608 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %608) #5
  %609 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %609) #5
  %610 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %610) #5
  %611 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %611) #5
  %612 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %612) #5
  %613 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %613) #5
  %614 = bitcast [3 x double]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %614) #5
  %615 = bitcast double* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %615) #5
  %616 = bitcast double* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %616) #5
  %617 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %617) #5
  %618 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %618) #5
  %619 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %619) #5
  %620 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %620) #5
  %621 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %621) #5
  %622 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %622) #5
  %623 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %623) #5
  %624 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %624) #5
  %625 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %625) #5
  %626 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %626) #5
  %627 = bitcast double* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %627) #5
  %628 = load i32, i32* %3, align 4
  ret i32 %628
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
