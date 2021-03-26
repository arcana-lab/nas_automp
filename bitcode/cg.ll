; ModuleID = 'cg.c'
source_filename = "cg.c"
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
@firstrow = internal global i32 0, align 4
@lastrow = internal global i32 0, align 4
@firstcol = internal global i32 0, align 4
@lastcol = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [75 x i8] c"\0A\0A NAS Parallel Benchmarks 3.0 structured OpenMP C version - CG Benchmark\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c" Size: %10d\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c" Iterations: %5d\0A\00", align 1
@naa = internal global i32 0, align 4
@nzz = internal global i32 0, align 4
@tran = internal global double 0.000000e+00, align 8
@amult = internal global double 0.000000e+00, align 8
@a = internal global [15825001 x double] zeroinitializer, align 16
@colidx = internal global [15825001 x i32] zeroinitializer, align 16
@rowstr = internal global [75002 x i32] zeroinitializer, align 16
@arow = internal global [15825001 x i32] zeroinitializer, align 16
@acol = internal global [15825001 x i32] zeroinitializer, align 16
@aelt = internal global [15825001 x double] zeroinitializer, align 16
@v = internal global [75002 x double] zeroinitializer, align 16
@iv = internal global [150002 x i32] zeroinitializer, align 16
@x = internal global [75003 x double] zeroinitializer, align 16
@q = internal global [75003 x double] zeroinitializer, align 16
@z = internal global [75003 x double] zeroinitializer, align 16
@r = internal global [75003 x double] zeroinitializer, align 16
@p = internal global [75003 x double] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [51 x i8] c"   iteration           ||r||                 zeta\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"    %5d       %20.14e%20.13e\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" Benchmark completed\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c" VERIFICATION SUCCESSFUL\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c" Zeta is    %20.12e\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c" Error is   %20.12e\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c" VERIFICATION FAILED\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c" Zeta                %20.12e\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c" The correct zeta is %20.12e\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c" Problem size unknown\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c" NO VERIFICATION PERFORMED\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"          floating point\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"3.0 structured\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"05 Feb 2021\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gclang\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"-O3 \00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"-lm -mcmodel=large\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@conj_grad.callcount = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [45 x i8] c"Space for matrix elements exceeded in makea\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"nnza, nzmax = %d, %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"iouter = %d\0A\00", align 1

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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #6
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #6
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
  %14 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #6
  %15 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #6
  %16 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #6
  %17 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #6
  %18 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #6
  %19 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #6
  %20 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #6
  %21 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #6
  %22 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #6
  %23 = load double, double* %4, align 8, !tbaa !9
  %24 = fmul double 0x3E80000000000000, %23
  store double %24, double* %5, align 8, !tbaa !9
  %25 = load double, double* %5, align 8, !tbaa !9
  %26 = fptosi double %25 to i32
  %27 = sitofp i32 %26 to double
  store double %27, double* %9, align 8, !tbaa !9
  %28 = load double, double* %4, align 8, !tbaa !9
  %29 = load double, double* %9, align 8, !tbaa !9
  %30 = fmul double 0x4160000000000000, %29
  %31 = fsub double %28, %30
  store double %31, double* %10, align 8, !tbaa !9
  %32 = load double*, double** %3, align 8, !tbaa !2
  %33 = load double, double* %32, align 8, !tbaa !9
  %34 = fmul double 0x3E80000000000000, %33
  store double %34, double* %5, align 8, !tbaa !9
  %35 = load double, double* %5, align 8, !tbaa !9
  %36 = fptosi double %35 to i32
  %37 = sitofp i32 %36 to double
  store double %37, double* %11, align 8, !tbaa !9
  %38 = load double*, double** %3, align 8, !tbaa !2
  %39 = load double, double* %38, align 8, !tbaa !9
  %40 = load double, double* %11, align 8, !tbaa !9
  %41 = fmul double 0x4160000000000000, %40
  %42 = fsub double %39, %41
  store double %42, double* %12, align 8, !tbaa !9
  %43 = load double, double* %9, align 8, !tbaa !9
  %44 = load double, double* %12, align 8, !tbaa !9
  %45 = fmul double %43, %44
  %46 = load double, double* %10, align 8, !tbaa !9
  %47 = load double, double* %11, align 8, !tbaa !9
  %48 = fmul double %46, %47
  %49 = fadd double %45, %48
  store double %49, double* %5, align 8, !tbaa !9
  %50 = load double, double* %5, align 8, !tbaa !9
  %51 = fmul double 0x3E80000000000000, %50
  %52 = fptosi double %51 to i32
  %53 = sitofp i32 %52 to double
  store double %53, double* %6, align 8, !tbaa !9
  %54 = load double, double* %5, align 8, !tbaa !9
  %55 = load double, double* %6, align 8, !tbaa !9
  %56 = fmul double 0x4160000000000000, %55
  %57 = fsub double %54, %56
  store double %57, double* %13, align 8, !tbaa !9
  %58 = load double, double* %13, align 8, !tbaa !9
  %59 = fmul double 0x4160000000000000, %58
  %60 = load double, double* %10, align 8, !tbaa !9
  %61 = load double, double* %12, align 8, !tbaa !9
  %62 = fmul double %60, %61
  %63 = fadd double %59, %62
  store double %63, double* %7, align 8, !tbaa !9
  %64 = load double, double* %7, align 8, !tbaa !9
  %65 = fmul double 0x3D10000000000000, %64
  %66 = fptosi double %65 to i32
  %67 = sitofp i32 %66 to double
  store double %67, double* %8, align 8, !tbaa !9
  %68 = load double, double* %7, align 8, !tbaa !9
  %69 = load double, double* %8, align 8, !tbaa !9
  %70 = fmul double 0x42D0000000000000, %69
  %71 = fsub double %68, %70
  %72 = load double*, double** %3, align 8, !tbaa !2
  store double %71, double* %72, align 8, !tbaa !9
  %73 = load double*, double** %3, align 8, !tbaa !2
  %74 = load double, double* %73, align 8, !tbaa !9
  %75 = fmul double 0x3D10000000000000, %74
  %76 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #6
  %77 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #6
  %78 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %78) #6
  %79 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %79) #6
  %80 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %80) #6
  %81 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #6
  %82 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #6
  %83 = bitcast double* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #6
  %84 = bitcast double* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #6
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #6
  %21 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #6
  %22 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #6
  %23 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #6
  %24 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #6
  %25 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #6
  %26 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #6
  %27 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #6
  %28 = bitcast double* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #6
  %29 = bitcast double* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #6
  %30 = bitcast double* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #6
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #6
  %98 = bitcast double* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #6
  %99 = bitcast double* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %99) #6
  %100 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %100) #6
  %101 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #6
  %102 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %102) #6
  %103 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #6
  %104 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #6
  %105 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #6
  %106 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #6
  %107 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @elapsed_time() #0 {
  %1 = alloca double, align 8
  %2 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  call void @wtime_(double* %1)
  %3 = load double, double* %1, align 8, !tbaa !9
  %4 = bitcast double* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #6
  ret double %3
}

; Function Attrs: nounwind uwtable
define dso_local void @wtime_(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.timeval, align 8
  store double* %0, double** %2, align 8, !tbaa !2
  %4 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %4) #6
  %5 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #6
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %25) #6
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %6 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #6
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #6
  %21 = bitcast double* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #6
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
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !2
  %21 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #6
  %22 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #6
  %23 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #6
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #6
  %25 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #6
  store i32 1, i32* %10, align 4, !tbaa !7
  %26 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #6
  %27 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #6
  %28 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #6
  %29 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #6
  %30 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #6
  %31 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %17) #6
  %32 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #6
  %33 = bitcast double* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %33) #6
  %34 = bitcast double* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #6
  store i32 1, i32* @firstrow, align 4, !tbaa !7
  store i32 75000, i32* @lastrow, align 4, !tbaa !7
  store i32 1, i32* @firstcol, align 4, !tbaa !7
  store i32 75000, i32* @lastcol, align 4, !tbaa !7
  store i8 66, i8* %17, align 1, !tbaa !6
  store double 0x4036B6767CEA459A, double* %19, align 8, !tbaa !9
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 75000)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 75)
  store i32 75000, i32* @naa, align 4, !tbaa !7
  store i32 15825000, i32* @nzz, align 4, !tbaa !7
  store double 0x41B2B9B0A1000000, double* @tran, align 8, !tbaa !9
  store double 0x41D2309CE5400000, double* @amult, align 8, !tbaa !9
  %38 = load double, double* @amult, align 8, !tbaa !9
  %39 = call double @randlc(double* @tran, double %38)
  store double %39, double* %11, align 8, !tbaa !9
  %40 = load i32, i32* @naa, align 4, !tbaa !7
  %41 = load i32, i32* @nzz, align 4, !tbaa !7
  %42 = load i32, i32* @firstrow, align 4, !tbaa !7
  %43 = load i32, i32* @lastrow, align 4, !tbaa !7
  %44 = load i32, i32* @firstcol, align 4, !tbaa !7
  %45 = load i32, i32* @lastcol, align 4, !tbaa !7
  call void @makea(i32 %40, i32 %41, double* getelementptr inbounds ([15825001 x double], [15825001 x double]* @a, i64 0, i64 0), i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 0), i32* getelementptr inbounds ([75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 0), i32 13, i32 %42, i32 %43, i32 %44, i32 %45, double 1.000000e-01, i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @arow, i64 0, i64 0), i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @acol, i64 0, i64 0), double* getelementptr inbounds ([15825001 x double], [15825001 x double]* @aelt, i64 0, i64 0), double* getelementptr inbounds ([75002 x double], [75002 x double]* @v, i64 0, i64 0), i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @iv, i64 0, i64 0), double 6.000000e+01)
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %46

46:                                               ; preds = %81, %2
  %47 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %48 = load i32, i32* @lastrow, align 4, !tbaa !7, !note.noelle !15
  %49 = load i32, i32* @firstrow, align 4, !tbaa !7, !note.noelle !15
  %50 = sub nsw i32 %48, %49, !note.noelle !15
  %51 = add nsw i32 %50, 1, !note.noelle !15
  %52 = icmp sle i32 %47, %51, !note.noelle !15
  br i1 %52, label %53, label %84, !note.noelle !15

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %55 = sext i32 %54 to i64, !note.noelle !15
  %56 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %55, !note.noelle !15
  %57 = load i32, i32* %56, align 4, !tbaa !7, !note.noelle !15
  store i32 %57, i32* %8, align 4, !tbaa !7, !note.noelle !15
  br label %58, !note.noelle !15

58:                                               ; preds = %77, %53
  %59 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !15
  %60 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %61 = add nsw i32 %60, 1, !note.noelle !15
  %62 = sext i32 %61 to i64, !note.noelle !15
  %63 = getelementptr inbounds [75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 %62, !note.noelle !15
  %64 = load i32, i32* %63, align 4, !tbaa !7, !note.noelle !15
  %65 = icmp slt i32 %59, %64, !note.noelle !15
  br i1 %65, label %66, label %80, !note.noelle !15

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !15
  %68 = sext i32 %67 to i64, !note.noelle !15
  %69 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %68, !note.noelle !15
  %70 = load i32, i32* %69, align 4, !tbaa !7, !note.noelle !15
  %71 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !15
  %72 = sub nsw i32 %70, %71, !note.noelle !15
  %73 = add nsw i32 %72, 1, !note.noelle !15
  %74 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !15
  %75 = sext i32 %74 to i64, !note.noelle !15
  %76 = getelementptr inbounds [15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 %75, !note.noelle !15
  store i32 %73, i32* %76, align 4, !tbaa !7, !note.noelle !15
  br label %77, !note.noelle !15

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !15
  %79 = add nsw i32 %78, 1, !note.noelle !15
  store i32 %79, i32* %8, align 4, !tbaa !7, !note.noelle !15
  br label %58, !note.noelle !15

80:                                               ; preds = %58
  br label %81, !note.noelle !15

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %83 = add nsw i32 %82, 1, !note.noelle !15
  store i32 %83, i32* %7, align 4, !tbaa !7, !note.noelle !15
  br label %46, !note.noelle !15

84:                                               ; preds = %46
  store i32 1, i32* %6, align 4, !tbaa !7
  br label %85

85:                                               ; preds = %92, %84
  %86 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !19
  %87 = icmp sle i32 %86, 75001, !note.noelle !19
  br i1 %87, label %88, label %95, !note.noelle !19

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !19
  %90 = sext i32 %89 to i64, !note.noelle !19
  %91 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %90, !note.noelle !19
  store double 1.000000e+00, double* %91, align 8, !tbaa !9, !note.noelle !19
  br label %92, !note.noelle !19

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !19
  %94 = add nsw i32 %93, 1, !note.noelle !19
  store i32 %94, i32* %6, align 4, !tbaa !7, !note.noelle !19
  br label %85, !note.noelle !19

95:                                               ; preds = %85
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %96

96:                                               ; preds = %116, %95
  %97 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !21
  %98 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !21
  %99 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !21
  %100 = sub nsw i32 %98, %99, !note.noelle !21
  %101 = add nsw i32 %100, 1, !note.noelle !21
  %102 = icmp sle i32 %97, %101, !note.noelle !21
  br i1 %102, label %103, label %119, !note.noelle !21

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !21
  %105 = sext i32 %104 to i64, !note.noelle !21
  %106 = getelementptr inbounds [75003 x double], [75003 x double]* @q, i64 0, i64 %105, !note.noelle !21
  store double 0.000000e+00, double* %106, align 8, !tbaa !9, !note.noelle !21
  %107 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !21
  %108 = sext i32 %107 to i64, !note.noelle !21
  %109 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %108, !note.noelle !21
  store double 0.000000e+00, double* %109, align 8, !tbaa !9, !note.noelle !21
  %110 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !21
  %111 = sext i32 %110 to i64, !note.noelle !21
  %112 = getelementptr inbounds [75003 x double], [75003 x double]* @r, i64 0, i64 %111, !note.noelle !21
  store double 0.000000e+00, double* %112, align 8, !tbaa !9, !note.noelle !21
  %113 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !21
  %114 = sext i32 %113 to i64, !note.noelle !21
  %115 = getelementptr inbounds [75003 x double], [75003 x double]* @p, i64 0, i64 %114, !note.noelle !21
  store double 0.000000e+00, double* %115, align 8, !tbaa !9, !note.noelle !21
  br label %116, !note.noelle !21

116:                                              ; preds = %103
  %117 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !21
  %118 = add nsw i32 %117, 1, !note.noelle !21
  store i32 %118, i32* %7, align 4, !tbaa !7, !note.noelle !21
  br label %96, !note.noelle !21

119:                                              ; preds = %96
  store double 0.000000e+00, double* %11, align 8, !tbaa !9
  store i32 1, i32* %9, align 4, !tbaa !7
  br label %120

120:                                              ; preds = %182, %119
  %121 = load i32, i32* %9, align 4, !tbaa !7
  %122 = icmp sle i32 %121, 1
  br i1 %122, label %123, label %185

123:                                              ; preds = %120
  call void @conj_grad(i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 0), i32* getelementptr inbounds ([75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @x, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @z, i64 0, i64 0), double* getelementptr inbounds ([15825001 x double], [15825001 x double]* @a, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @p, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @q, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @r, i64 0, i64 0), double* %12)
  store double 0.000000e+00, double* %13, align 8, !tbaa !9
  store double 0.000000e+00, double* %14, align 8, !tbaa !9
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %124

124:                                              ; preds = %154, %123
  %125 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !23
  %126 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !23
  %127 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !23
  %128 = sub nsw i32 %126, %127, !note.noelle !23
  %129 = add nsw i32 %128, 1, !note.noelle !23
  %130 = icmp sle i32 %125, %129, !note.noelle !23
  br i1 %130, label %131, label %157, !note.noelle !23

131:                                              ; preds = %124
  %132 = load double, double* %13, align 8, !tbaa !9, !note.noelle !23
  %133 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !23
  %134 = sext i32 %133 to i64, !note.noelle !23
  %135 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %134, !note.noelle !23
  %136 = load double, double* %135, align 8, !tbaa !9, !note.noelle !23
  %137 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !23
  %138 = sext i32 %137 to i64, !note.noelle !23
  %139 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %138, !note.noelle !23
  %140 = load double, double* %139, align 8, !tbaa !9, !note.noelle !23
  %141 = fmul double %136, %140, !note.noelle !23
  %142 = fadd double %132, %141, !note.noelle !23
  store double %142, double* %13, align 8, !tbaa !9, !note.noelle !23
  %143 = load double, double* %14, align 8, !tbaa !9, !note.noelle !23
  %144 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !23
  %145 = sext i32 %144 to i64, !note.noelle !23
  %146 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %145, !note.noelle !23
  %147 = load double, double* %146, align 8, !tbaa !9, !note.noelle !23
  %148 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !23
  %149 = sext i32 %148 to i64, !note.noelle !23
  %150 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %149, !note.noelle !23
  %151 = load double, double* %150, align 8, !tbaa !9, !note.noelle !23
  %152 = fmul double %147, %151, !note.noelle !23
  %153 = fadd double %143, %152, !note.noelle !23
  store double %153, double* %14, align 8, !tbaa !9, !note.noelle !23
  br label %154, !note.noelle !23

154:                                              ; preds = %131
  %155 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !23
  %156 = add nsw i32 %155, 1, !note.noelle !23
  store i32 %156, i32* %7, align 4, !tbaa !7, !note.noelle !23
  br label %124, !note.noelle !23

157:                                              ; preds = %124
  %158 = load double, double* %14, align 8, !tbaa !9
  %159 = call double @sqrt(double %158) #6
  %160 = fdiv double 1.000000e+00, %159
  store double %160, double* %14, align 8, !tbaa !9
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %161

161:                                              ; preds = %178, %157
  %162 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !25
  %163 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !25
  %164 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !25
  %165 = sub nsw i32 %163, %164, !note.noelle !25
  %166 = add nsw i32 %165, 1, !note.noelle !25
  %167 = icmp sle i32 %162, %166, !note.noelle !25
  br i1 %167, label %168, label %181, !note.noelle !25

168:                                              ; preds = %161
  %169 = load double, double* %14, align 8, !tbaa !9, !note.noelle !25
  %170 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !25
  %171 = sext i32 %170 to i64, !note.noelle !25
  %172 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %171, !note.noelle !25
  %173 = load double, double* %172, align 8, !tbaa !9, !note.noelle !25
  %174 = fmul double %169, %173, !note.noelle !25
  %175 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !25
  %176 = sext i32 %175 to i64, !note.noelle !25
  %177 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %176, !note.noelle !25
  store double %174, double* %177, align 8, !tbaa !9, !note.noelle !25
  br label %178, !note.noelle !25

178:                                              ; preds = %168
  %179 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !25
  %180 = add nsw i32 %179, 1, !note.noelle !25
  store i32 %180, i32* %7, align 4, !tbaa !7, !note.noelle !25
  br label %161, !note.noelle !25

181:                                              ; preds = %161
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %9, align 4, !tbaa !7
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4, !tbaa !7
  br label %120

185:                                              ; preds = %120
  store i32 1, i32* %6, align 4, !tbaa !7
  br label %186

186:                                              ; preds = %193, %185
  %187 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !27
  %188 = icmp sle i32 %187, 75001, !note.noelle !27
  br i1 %188, label %189, label %196, !note.noelle !27

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !27
  %191 = sext i32 %190 to i64, !note.noelle !27
  %192 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %191, !note.noelle !27
  store double 1.000000e+00, double* %192, align 8, !tbaa !9, !note.noelle !27
  br label %193, !note.noelle !27

193:                                              ; preds = %189
  %194 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !27
  %195 = add nsw i32 %194, 1, !note.noelle !27
  store i32 %195, i32* %6, align 4, !tbaa !7, !note.noelle !27
  br label %186, !note.noelle !27

196:                                              ; preds = %186
  store double 0.000000e+00, double* %11, align 8, !tbaa !9
  call void @timer_clear(i32 1)
  call void @timer_start(i32 1)
  store i32 1, i32* %9, align 4, !tbaa !7
  br label %197

197:                                              ; preds = %271, %196
  %198 = load i32, i32* %9, align 4, !tbaa !7
  %199 = icmp sle i32 %198, 75
  br i1 %199, label %200, label %274

200:                                              ; preds = %197
  call void @conj_grad(i32* getelementptr inbounds ([15825001 x i32], [15825001 x i32]* @colidx, i64 0, i64 0), i32* getelementptr inbounds ([75002 x i32], [75002 x i32]* @rowstr, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @x, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @z, i64 0, i64 0), double* getelementptr inbounds ([15825001 x double], [15825001 x double]* @a, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @p, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @q, i64 0, i64 0), double* getelementptr inbounds ([75003 x double], [75003 x double]* @r, i64 0, i64 0), double* %12)
  store double 0.000000e+00, double* %13, align 8, !tbaa !9
  store double 0.000000e+00, double* %14, align 8, !tbaa !9
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %201

201:                                              ; preds = %231, %200
  %202 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !29
  %203 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !29
  %204 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !29
  %205 = sub nsw i32 %203, %204, !note.noelle !29
  %206 = add nsw i32 %205, 1, !note.noelle !29
  %207 = icmp sle i32 %202, %206, !note.noelle !29
  br i1 %207, label %208, label %234, !note.noelle !29

208:                                              ; preds = %201
  %209 = load double, double* %13, align 8, !tbaa !9, !note.noelle !29
  %210 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !29
  %211 = sext i32 %210 to i64, !note.noelle !29
  %212 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %211, !note.noelle !29
  %213 = load double, double* %212, align 8, !tbaa !9, !note.noelle !29
  %214 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !29
  %215 = sext i32 %214 to i64, !note.noelle !29
  %216 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %215, !note.noelle !29
  %217 = load double, double* %216, align 8, !tbaa !9, !note.noelle !29
  %218 = fmul double %213, %217, !note.noelle !29
  %219 = fadd double %209, %218, !note.noelle !29
  store double %219, double* %13, align 8, !tbaa !9, !note.noelle !29
  %220 = load double, double* %14, align 8, !tbaa !9, !note.noelle !29
  %221 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !29
  %222 = sext i32 %221 to i64, !note.noelle !29
  %223 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %222, !note.noelle !29
  %224 = load double, double* %223, align 8, !tbaa !9, !note.noelle !29
  %225 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !29
  %226 = sext i32 %225 to i64, !note.noelle !29
  %227 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %226, !note.noelle !29
  %228 = load double, double* %227, align 8, !tbaa !9, !note.noelle !29
  %229 = fmul double %224, %228, !note.noelle !29
  %230 = fadd double %220, %229, !note.noelle !29
  store double %230, double* %14, align 8, !tbaa !9, !note.noelle !29
  br label %231, !note.noelle !29

231:                                              ; preds = %208
  %232 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !29
  %233 = add nsw i32 %232, 1, !note.noelle !29
  store i32 %233, i32* %7, align 4, !tbaa !7, !note.noelle !29
  br label %201, !note.noelle !29

234:                                              ; preds = %201
  %235 = load double, double* %14, align 8, !tbaa !9
  %236 = call double @sqrt(double %235) #6
  %237 = fdiv double 1.000000e+00, %236
  store double %237, double* %14, align 8, !tbaa !9
  %238 = load double, double* %13, align 8, !tbaa !9
  %239 = fdiv double 1.000000e+00, %238
  %240 = fadd double 6.000000e+01, %239
  store double %240, double* %11, align 8, !tbaa !9
  %241 = load i32, i32* %9, align 4, !tbaa !7
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %245

243:                                              ; preds = %234
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %234
  %246 = load i32, i32* %9, align 4, !tbaa !7
  %247 = load double, double* %12, align 8, !tbaa !9
  %248 = load double, double* %11, align 8, !tbaa !9
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i32 %246, double %247, double %248)
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %250

250:                                              ; preds = %267, %245
  %251 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !31
  %252 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !31
  %253 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !31
  %254 = sub nsw i32 %252, %253, !note.noelle !31
  %255 = add nsw i32 %254, 1, !note.noelle !31
  %256 = icmp sle i32 %251, %255, !note.noelle !31
  br i1 %256, label %257, label %270, !note.noelle !31

257:                                              ; preds = %250
  %258 = load double, double* %14, align 8, !tbaa !9, !note.noelle !31
  %259 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !31
  %260 = sext i32 %259 to i64, !note.noelle !31
  %261 = getelementptr inbounds [75003 x double], [75003 x double]* @z, i64 0, i64 %260, !note.noelle !31
  %262 = load double, double* %261, align 8, !tbaa !9, !note.noelle !31
  %263 = fmul double %258, %262, !note.noelle !31
  %264 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !31
  %265 = sext i32 %264 to i64, !note.noelle !31
  %266 = getelementptr inbounds [75003 x double], [75003 x double]* @x, i64 0, i64 %265, !note.noelle !31
  store double %263, double* %266, align 8, !tbaa !9, !note.noelle !31
  br label %267, !note.noelle !31

267:                                              ; preds = %257
  %268 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !31
  %269 = add nsw i32 %268, 1, !note.noelle !31
  store i32 %269, i32* %7, align 4, !tbaa !7, !note.noelle !31
  br label %250, !note.noelle !31

270:                                              ; preds = %250
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %9, align 4, !tbaa !7
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4, !tbaa !7
  br label %197

274:                                              ; preds = %197
  call void @timer_stop(i32 1)
  %275 = call double @timer_read(i32 1)
  store double %275, double* %15, align 8, !tbaa !9
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  store double 1.000000e-10, double* %20, align 8, !tbaa !9
  %277 = load i8, i8* %17, align 1, !tbaa !6
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 85
  br i1 %279, label %280, label %302

280:                                              ; preds = %274
  %281 = load double, double* %11, align 8, !tbaa !9
  %282 = load double, double* %19, align 8, !tbaa !9
  %283 = fsub double %281, %282
  %284 = call double @llvm.fabs.f64(double %283)
  %285 = load double, double* %20, align 8, !tbaa !9
  %286 = fcmp ole double %284, %285
  br i1 %286, label %287, label %295

287:                                              ; preds = %280
  store i32 1, i32* %18, align 4, !tbaa !7
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0))
  %289 = load double, double* %11, align 8, !tbaa !9
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), double %289)
  %291 = load double, double* %11, align 8, !tbaa !9
  %292 = load double, double* %19, align 8, !tbaa !9
  %293 = fsub double %291, %292
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), double %293)
  br label %301

295:                                              ; preds = %280
  store i32 0, i32* %18, align 4, !tbaa !7
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %297 = load double, double* %11, align 8, !tbaa !9
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), double %297)
  %299 = load double, double* %19, align 8, !tbaa !9
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), double %299)
  br label %301

301:                                              ; preds = %295, %287
  br label %305

302:                                              ; preds = %274
  store i32 0, i32* %18, align 4, !tbaa !7
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0))
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %301
  %306 = load double, double* %15, align 8, !tbaa !9
  %307 = fcmp une double %306, 0.000000e+00
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = load double, double* %15, align 8, !tbaa !9
  %310 = fdiv double 0x422979CA8D600000, %309
  %311 = fdiv double %310, 1.000000e+06
  store double %311, double* %16, align 8, !tbaa !9
  br label %313

312:                                              ; preds = %305
  store double 0.000000e+00, double* %16, align 8, !tbaa !9
  br label %313

313:                                              ; preds = %312, %308
  %314 = load i8, i8* %17, align 1, !tbaa !6
  %315 = load i32, i32* %10, align 4, !tbaa !7
  %316 = load double, double* %15, align 8, !tbaa !9
  %317 = load double, double* %16, align 8, !tbaa !9
  %318 = load i32, i32* %18, align 4, !tbaa !7
  call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8 signext %314, i32 75000, i32 0, i32 0, i32 75, i32 %315, double %316, double %317, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i32 %318, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0))
  %319 = bitcast double* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %319) #6
  %320 = bitcast double* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %320) #6
  %321 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %321) #6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #6
  %322 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %322) #6
  %323 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %323) #6
  %324 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %324) #6
  %325 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %325) #6
  %326 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %326) #6
  %327 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %327) #6
  %328 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %328) #6
  %329 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %329) #6
  %330 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %330) #6
  %331 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %331) #6
  %332 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %332) #6
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

; Function Attrs: nounwind uwtable
define internal void @makea(i32, i32, double*, i32*, i32*, i32, i32, i32, i32, i32, double, i32*, i32*, double*, double*, i32*, double) #0 {
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca double, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca i32, align 4
  store i32 %0, i32* %18, align 4, !tbaa !7
  store i32 %1, i32* %19, align 4, !tbaa !7
  store double* %2, double** %20, align 8, !tbaa !2
  store i32* %3, i32** %21, align 8, !tbaa !2
  store i32* %4, i32** %22, align 8, !tbaa !2
  store i32 %5, i32* %23, align 4, !tbaa !7
  store i32 %6, i32* %24, align 4, !tbaa !7
  store i32 %7, i32* %25, align 4, !tbaa !7
  store i32 %8, i32* %26, align 4, !tbaa !7
  store i32 %9, i32* %27, align 4, !tbaa !7
  store double %10, double* %28, align 8, !tbaa !9
  store i32* %11, i32** %29, align 8, !tbaa !2
  store i32* %12, i32** %30, align 8, !tbaa !2
  store double* %13, double** %31, align 8, !tbaa !2
  store double* %14, double** %32, align 8, !tbaa !2
  store i32* %15, i32** %33, align 8, !tbaa !2
  store double %16, double* %34, align 8, !tbaa !9
  %46 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #6
  %47 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %47) #6
  %48 = bitcast i32* %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %48) #6
  %49 = bitcast i32* %38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %49) #6
  %50 = bitcast i32* %39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #6
  %51 = bitcast i32* %40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %51) #6
  %52 = bitcast i32* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #6
  %53 = bitcast double* %42 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %53) #6
  %54 = bitcast double* %43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %54) #6
  %55 = bitcast double* %44 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %55) #6
  %56 = bitcast i32* %45 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %56) #6
  store double 1.000000e+00, double* %42, align 8, !tbaa !9
  %57 = load double, double* %28, align 8, !tbaa !9
  %58 = load i32, i32* %18, align 4, !tbaa !7
  %59 = sitofp i32 %58 to double
  %60 = fdiv double 1.000000e+00, %59
  %61 = call double @pow(double %57, double %60) #6
  store double %61, double* %43, align 8, !tbaa !9
  store i32 0, i32* %36, align 4, !tbaa !7
  store i32 1, i32* %35, align 4, !tbaa !7
  br label %62

62:                                               ; preds = %73, %17
  %63 = load i32, i32* %35, align 4, !tbaa !7, !note.noelle !33
  %64 = load i32, i32* %18, align 4, !tbaa !7, !note.noelle !33
  %65 = icmp sle i32 %63, %64, !note.noelle !33
  br i1 %65, label %66, label %76, !note.noelle !33

66:                                               ; preds = %62
  %67 = load i32*, i32** %21, align 8, !tbaa !2, !note.noelle !33
  %68 = load i32, i32* %18, align 4, !tbaa !7, !note.noelle !33
  %69 = load i32, i32* %35, align 4, !tbaa !7, !note.noelle !33
  %70 = add nsw i32 %68, %69, !note.noelle !33
  %71 = sext i32 %70 to i64, !note.noelle !33
  %72 = getelementptr inbounds i32, i32* %67, i64 %71, !note.noelle !33
  store i32 0, i32* %72, align 4, !tbaa !7, !note.noelle !33
  br label %73, !note.noelle !33

73:                                               ; preds = %66
  %74 = load i32, i32* %35, align 4, !tbaa !7, !note.noelle !33
  %75 = add nsw i32 %74, 1, !note.noelle !33
  store i32 %75, i32* %35, align 4, !tbaa !7, !note.noelle !33
  br label %62, !note.noelle !33

76:                                               ; preds = %62
  store i32 1, i32* %37, align 4, !tbaa !7
  br label %77

77:                                               ; preds = %187, %76
  %78 = load i32, i32* %37, align 4, !tbaa !7
  %79 = load i32, i32* %18, align 4, !tbaa !7
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %190

81:                                               ; preds = %77
  %82 = load i32, i32* %23, align 4, !tbaa !7
  store i32 %82, i32* %41, align 4, !tbaa !7
  %83 = load i32, i32* %18, align 4, !tbaa !7
  %84 = load i32, i32* %41, align 4, !tbaa !7
  %85 = load double*, double** %32, align 8, !tbaa !2
  %86 = load i32*, i32** %33, align 8, !tbaa !2
  %87 = load i32*, i32** %21, align 8, !tbaa !2
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32*, i32** %21, align 8, !tbaa !2
  %90 = load i32, i32* %18, align 4, !tbaa !7
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  call void @sprnvc(i32 %83, i32 %84, double* %85, i32* %86, i32* %88, i32* %92)
  %93 = load i32, i32* %18, align 4, !tbaa !7
  %94 = load double*, double** %32, align 8, !tbaa !2
  %95 = load i32*, i32** %33, align 8, !tbaa !2
  %96 = load i32, i32* %37, align 4, !tbaa !7
  call void @vecset(i32 %93, double* %94, i32* %95, i32* %41, i32 %96, double 5.000000e-01)
  store i32 1, i32* %38, align 4, !tbaa !7
  br label %97

97:                                               ; preds = %180, %81
  %98 = load i32, i32* %38, align 4, !tbaa !7
  %99 = load i32, i32* %41, align 4, !tbaa !7
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %183

101:                                              ; preds = %97
  %102 = load i32*, i32** %33, align 8, !tbaa !2
  %103 = load i32, i32* %38, align 4, !tbaa !7
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !7
  store i32 %106, i32* %45, align 4, !tbaa !7
  %107 = load i32, i32* %45, align 4, !tbaa !7
  %108 = load i32, i32* %26, align 4, !tbaa !7
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %179

110:                                              ; preds = %101
  %111 = load i32, i32* %45, align 4, !tbaa !7
  %112 = load i32, i32* %27, align 4, !tbaa !7
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %179

114:                                              ; preds = %110
  %115 = load double, double* %42, align 8, !tbaa !9
  %116 = load double*, double** %32, align 8, !tbaa !2
  %117 = load i32, i32* %38, align 4, !tbaa !7
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8, !tbaa !9
  %121 = fmul double %115, %120
  store double %121, double* %44, align 8, !tbaa !9
  store i32 1, i32* %39, align 4, !tbaa !7
  br label %122

122:                                              ; preds = %175, %114
  %123 = load i32, i32* %39, align 4, !tbaa !7
  %124 = load i32, i32* %41, align 4, !tbaa !7
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %178

126:                                              ; preds = %122
  %127 = load i32*, i32** %33, align 8, !tbaa !2
  %128 = load i32, i32* %39, align 4, !tbaa !7
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !7
  store i32 %131, i32* %40, align 4, !tbaa !7
  %132 = load i32, i32* %40, align 4, !tbaa !7
  %133 = load i32, i32* %24, align 4, !tbaa !7
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %174

135:                                              ; preds = %126
  %136 = load i32, i32* %40, align 4, !tbaa !7
  %137 = load i32, i32* %25, align 4, !tbaa !7
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %174

139:                                              ; preds = %135
  %140 = load i32, i32* %36, align 4, !tbaa !7
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %36, align 4, !tbaa !7
  %142 = load i32, i32* %36, align 4, !tbaa !7
  %143 = load i32, i32* %19, align 4, !tbaa !7
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i64 0, i64 0))
  %147 = load i32, i32* %36, align 4, !tbaa !7
  %148 = load i32, i32* %19, align 4, !tbaa !7
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i32, i32* %37, align 4, !tbaa !7
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i32 %150)
  call void @exit(i32 1) #7
  unreachable

152:                                              ; preds = %139
  %153 = load i32, i32* %45, align 4, !tbaa !7
  %154 = load i32*, i32** %30, align 8, !tbaa !2
  %155 = load i32, i32* %36, align 4, !tbaa !7
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4, !tbaa !7
  %158 = load i32, i32* %40, align 4, !tbaa !7
  %159 = load i32*, i32** %29, align 8, !tbaa !2
  %160 = load i32, i32* %36, align 4, !tbaa !7
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4, !tbaa !7
  %163 = load double*, double** %32, align 8, !tbaa !2
  %164 = load i32, i32* %39, align 4, !tbaa !7
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  %167 = load double, double* %166, align 8, !tbaa !9
  %168 = load double, double* %44, align 8, !tbaa !9
  %169 = fmul double %167, %168
  %170 = load double*, double** %31, align 8, !tbaa !2
  %171 = load i32, i32* %36, align 4, !tbaa !7
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %170, i64 %172
  store double %169, double* %173, align 8, !tbaa !9
  br label %174

174:                                              ; preds = %152, %135, %126
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %39, align 4, !tbaa !7
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %39, align 4, !tbaa !7
  br label %122

178:                                              ; preds = %122
  br label %179

179:                                              ; preds = %178, %110, %101
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %38, align 4, !tbaa !7
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %38, align 4, !tbaa !7
  br label %97

183:                                              ; preds = %97
  %184 = load double, double* %42, align 8, !tbaa !9
  %185 = load double, double* %43, align 8, !tbaa !9
  %186 = fmul double %184, %185
  store double %186, double* %42, align 8, !tbaa !9
  br label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %37, align 4, !tbaa !7
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %37, align 4, !tbaa !7
  br label %77

190:                                              ; preds = %77
  %191 = load i32, i32* %24, align 4, !tbaa !7
  store i32 %191, i32* %35, align 4, !tbaa !7
  br label %192

192:                                              ; preds = %239, %190
  %193 = load i32, i32* %35, align 4, !tbaa !7
  %194 = load i32, i32* %25, align 4, !tbaa !7
  %195 = icmp sle i32 %193, %194
  br i1 %195, label %196, label %242

196:                                              ; preds = %192
  %197 = load i32, i32* %35, align 4, !tbaa !7
  %198 = load i32, i32* %26, align 4, !tbaa !7
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %200, label %238

200:                                              ; preds = %196
  %201 = load i32, i32* %35, align 4, !tbaa !7
  %202 = load i32, i32* %27, align 4, !tbaa !7
  %203 = icmp sle i32 %201, %202
  br i1 %203, label %204, label %238

204:                                              ; preds = %200
  %205 = load i32, i32* %18, align 4, !tbaa !7
  %206 = load i32, i32* %35, align 4, !tbaa !7
  %207 = add nsw i32 %205, %206
  store i32 %207, i32* %37, align 4, !tbaa !7
  %208 = load i32, i32* %36, align 4, !tbaa !7
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %36, align 4, !tbaa !7
  %210 = load i32, i32* %36, align 4, !tbaa !7
  %211 = load i32, i32* %19, align 4, !tbaa !7
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i64 0, i64 0))
  %215 = load i32, i32* %36, align 4, !tbaa !7
  %216 = load i32, i32* %19, align 4, !tbaa !7
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 %215, i32 %216)
  %218 = load i32, i32* %37, align 4, !tbaa !7
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i32 %218)
  call void @exit(i32 1) #7
  unreachable

220:                                              ; preds = %204
  %221 = load i32, i32* %35, align 4, !tbaa !7
  %222 = load i32*, i32** %30, align 8, !tbaa !2
  %223 = load i32, i32* %36, align 4, !tbaa !7
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4, !tbaa !7
  %226 = load i32, i32* %35, align 4, !tbaa !7
  %227 = load i32*, i32** %29, align 8, !tbaa !2
  %228 = load i32, i32* %36, align 4, !tbaa !7
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4, !tbaa !7
  %231 = load double, double* %28, align 8, !tbaa !9
  %232 = load double, double* %34, align 8, !tbaa !9
  %233 = fsub double %231, %232
  %234 = load double*, double** %31, align 8, !tbaa !2
  %235 = load i32, i32* %36, align 4, !tbaa !7
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds double, double* %234, i64 %236
  store double %233, double* %237, align 8, !tbaa !9
  br label %238

238:                                              ; preds = %220, %200, %196
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %35, align 4, !tbaa !7
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %35, align 4, !tbaa !7
  br label %192

242:                                              ; preds = %192
  %243 = load double*, double** %20, align 8, !tbaa !2
  %244 = load i32*, i32** %21, align 8, !tbaa !2
  %245 = load i32*, i32** %22, align 8, !tbaa !2
  %246 = load i32, i32* %18, align 4, !tbaa !7
  %247 = load i32*, i32** %29, align 8, !tbaa !2
  %248 = load i32*, i32** %30, align 8, !tbaa !2
  %249 = load double*, double** %31, align 8, !tbaa !2
  %250 = load i32, i32* %24, align 4, !tbaa !7
  %251 = load i32, i32* %25, align 4, !tbaa !7
  %252 = load double*, double** %32, align 8, !tbaa !2
  %253 = load i32*, i32** %33, align 8, !tbaa !2
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32*, i32** %33, align 8, !tbaa !2
  %256 = load i32, i32* %18, align 4, !tbaa !7
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %36, align 4, !tbaa !7
  call void @sparse(double* %243, i32* %244, i32* %245, i32 %246, i32* %247, i32* %248, double* %249, i32 %250, i32 %251, double* %252, i32* %254, i32* %258, i32 %259)
  %260 = bitcast i32* %45 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %260) #6
  %261 = bitcast double* %44 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %261) #6
  %262 = bitcast double* %43 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %262) #6
  %263 = bitcast double* %42 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %263) #6
  %264 = bitcast i32* %41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %264) #6
  %265 = bitcast i32* %40 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %265) #6
  %266 = bitcast i32* %39 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %266) #6
  %267 = bitcast i32* %38 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %267) #6
  %268 = bitcast i32* %37 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %268) #6
  %269 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %269) #6
  %270 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %270) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @conj_grad(i32*, i32*, double*, double*, double*, double*, double*, double*, double*) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8, !tbaa !2
  store i32* %1, i32** %11, align 8, !tbaa !2
  store double* %2, double** %12, align 8, !tbaa !2
  store double* %3, double** %13, align 8, !tbaa !2
  store double* %4, double** %14, align 8, !tbaa !2
  store double* %5, double** %15, align 8, !tbaa !2
  store double* %6, double** %16, align 8, !tbaa !2
  store double* %7, double** %17, align 8, !tbaa !2
  store double* %8, double** %18, align 8, !tbaa !2
  %30 = bitcast double* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #6
  %31 = bitcast double* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #6
  %32 = bitcast double* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #6
  %33 = bitcast double* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %33) #6
  %34 = bitcast double* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #6
  %35 = bitcast double* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35) #6
  %36 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #6
  %37 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #6
  %38 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #6
  %39 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #6
  %40 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #6
  store i32 25, i32* %29, align 4, !tbaa !7
  store double 0.000000e+00, double* %21, align 8, !tbaa !9
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !35
  br label %41, !note.noelle !35

41:                                               ; preds = %73, %9
  %42 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %43 = load i32, i32* @naa, align 4, !tbaa !7, !note.noelle !36
  %44 = add nsw i32 %43, 1, !note.noelle !36
  %45 = icmp sle i32 %42, %44, !note.noelle !36
  br i1 %45, label %46, label %76, !note.noelle !36

46:                                               ; preds = %41
  %47 = load double*, double** %16, align 8, !tbaa !2, !note.noelle !36
  %48 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %49 = sext i32 %48 to i64, !note.noelle !36
  %50 = getelementptr inbounds double, double* %47, i64 %49, !note.noelle !36
  store double 0.000000e+00, double* %50, align 8, !tbaa !9, !note.noelle !36
  %51 = load double*, double** %13, align 8, !tbaa !2, !note.noelle !36
  %52 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %53 = sext i32 %52 to i64, !note.noelle !36
  %54 = getelementptr inbounds double, double* %51, i64 %53, !note.noelle !36
  store double 0.000000e+00, double* %54, align 8, !tbaa !9, !note.noelle !36
  %55 = load double*, double** %12, align 8, !tbaa !2, !note.noelle !36
  %56 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %57 = sext i32 %56 to i64, !note.noelle !36
  %58 = getelementptr inbounds double, double* %55, i64 %57, !note.noelle !36
  %59 = load double, double* %58, align 8, !tbaa !9, !note.noelle !36
  %60 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !36
  %61 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %62 = sext i32 %61 to i64, !note.noelle !36
  %63 = getelementptr inbounds double, double* %60, i64 %62, !note.noelle !36
  store double %59, double* %63, align 8, !tbaa !9, !note.noelle !36
  %64 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !36
  %65 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %66 = sext i32 %65 to i64, !note.noelle !36
  %67 = getelementptr inbounds double, double* %64, i64 %66, !note.noelle !36
  %68 = load double, double* %67, align 8, !tbaa !9, !note.noelle !36
  %69 = load double*, double** %15, align 8, !tbaa !2, !note.noelle !36
  %70 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %71 = sext i32 %70 to i64, !note.noelle !36
  %72 = getelementptr inbounds double, double* %69, i64 %71, !note.noelle !36
  store double %68, double* %72, align 8, !tbaa !9, !note.noelle !36
  br label %73, !note.noelle !36

73:                                               ; preds = %46
  %74 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !36
  %75 = add nsw i32 %74, 1, !note.noelle !36
  store i32 %75, i32* %26, align 4, !tbaa !7, !note.noelle !36
  br label %41, !note.noelle !36

76:                                               ; preds = %41
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !35
  br label %77, !note.noelle !35

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !38
  %79 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !38
  %80 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !38
  %81 = sub nsw i32 %79, %80, !note.noelle !38
  %82 = add nsw i32 %81, 1, !note.noelle !38
  %83 = icmp sle i32 %78, %82, !note.noelle !38
  br i1 %83, label %84, label %101, !note.noelle !38

84:                                               ; preds = %77
  %85 = load double, double* %21, align 8, !tbaa !9, !note.noelle !38
  %86 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !38
  %87 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !38
  %88 = sext i32 %87 to i64, !note.noelle !38
  %89 = getelementptr inbounds double, double* %86, i64 %88, !note.noelle !38
  %90 = load double, double* %89, align 8, !tbaa !9, !note.noelle !38
  %91 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !38
  %92 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !38
  %93 = sext i32 %92 to i64, !note.noelle !38
  %94 = getelementptr inbounds double, double* %91, i64 %93, !note.noelle !38
  %95 = load double, double* %94, align 8, !tbaa !9, !note.noelle !38
  %96 = fmul double %90, %95, !note.noelle !38
  %97 = fadd double %85, %96, !note.noelle !38
  store double %97, double* %21, align 8, !tbaa !9, !note.noelle !38
  br label %98, !note.noelle !38

98:                                               ; preds = %84
  %99 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !38
  %100 = add nsw i32 %99, 1, !note.noelle !38
  store i32 %100, i32* %26, align 4, !tbaa !7, !note.noelle !38
  br label %77, !note.noelle !38

101:                                              ; preds = %77
  store i32 1, i32* %28, align 4, !tbaa !7
  br label %102

102:                                              ; preds = %282, %101
  %103 = load i32, i32* %28, align 4, !tbaa !7
  %104 = load i32, i32* %29, align 4, !tbaa !7
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %285

106:                                              ; preds = %102
  %107 = load double, double* %21, align 8, !tbaa !9
  store double %107, double* %22, align 8, !tbaa !9
  store double 0.000000e+00, double* %19, align 8, !tbaa !9
  store double 0.000000e+00, double* %21, align 8, !tbaa !9
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !40
  br label %108, !note.noelle !40

108:                                              ; preds = %157, %106
  %109 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !42
  %110 = load i32, i32* @lastrow, align 4, !tbaa !7, !note.noelle !42
  %111 = load i32, i32* @firstrow, align 4, !tbaa !7, !note.noelle !42
  %112 = sub nsw i32 %110, %111, !note.noelle !42
  %113 = add nsw i32 %112, 1, !note.noelle !42
  %114 = icmp sle i32 %109, %113, !note.noelle !42
  br i1 %114, label %115, label %160, !note.noelle !42

115:                                              ; preds = %108
  store double 0.000000e+00, double* %20, align 8, !tbaa !9, !note.noelle !42
  %116 = load i32*, i32** %11, align 8, !tbaa !2, !note.noelle !42
  %117 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !42
  %118 = sext i32 %117 to i64, !note.noelle !42
  %119 = getelementptr inbounds i32, i32* %116, i64 %118, !note.noelle !42
  %120 = load i32, i32* %119, align 4, !tbaa !7, !note.noelle !42
  store i32 %120, i32* %27, align 4, !tbaa !7, !note.noelle !42
  br label %121, !note.noelle !42

121:                                              ; preds = %148, %115
  %122 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !42
  %123 = load i32*, i32** %11, align 8, !tbaa !2, !note.noelle !42
  %124 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !42
  %125 = add nsw i32 %124, 1, !note.noelle !42
  %126 = sext i32 %125 to i64, !note.noelle !42
  %127 = getelementptr inbounds i32, i32* %123, i64 %126, !note.noelle !42
  %128 = load i32, i32* %127, align 4, !tbaa !7, !note.noelle !42
  %129 = icmp slt i32 %122, %128, !note.noelle !42
  br i1 %129, label %130, label %151, !note.noelle !42

130:                                              ; preds = %121
  %131 = load double, double* %20, align 8, !tbaa !9, !note.noelle !42
  %132 = load double*, double** %14, align 8, !tbaa !2, !note.noelle !42
  %133 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !42
  %134 = sext i32 %133 to i64, !note.noelle !42
  %135 = getelementptr inbounds double, double* %132, i64 %134, !note.noelle !42
  %136 = load double, double* %135, align 8, !tbaa !9, !note.noelle !42
  %137 = load double*, double** %15, align 8, !tbaa !2, !note.noelle !42
  %138 = load i32*, i32** %10, align 8, !tbaa !2, !note.noelle !42
  %139 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !42
  %140 = sext i32 %139 to i64, !note.noelle !42
  %141 = getelementptr inbounds i32, i32* %138, i64 %140, !note.noelle !42
  %142 = load i32, i32* %141, align 4, !tbaa !7, !note.noelle !42
  %143 = sext i32 %142 to i64, !note.noelle !42
  %144 = getelementptr inbounds double, double* %137, i64 %143, !note.noelle !42
  %145 = load double, double* %144, align 8, !tbaa !9, !note.noelle !42
  %146 = fmul double %136, %145, !note.noelle !42
  %147 = fadd double %131, %146, !note.noelle !42
  store double %147, double* %20, align 8, !tbaa !9, !note.noelle !42
  br label %148, !note.noelle !42

148:                                              ; preds = %130
  %149 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !42
  %150 = add nsw i32 %149, 1, !note.noelle !42
  store i32 %150, i32* %27, align 4, !tbaa !7, !note.noelle !42
  br label %121, !note.noelle !42

151:                                              ; preds = %121
  %152 = load double, double* %20, align 8, !tbaa !9, !note.noelle !42
  %153 = load double*, double** %16, align 8, !tbaa !2, !note.noelle !42
  %154 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !42
  %155 = sext i32 %154 to i64, !note.noelle !42
  %156 = getelementptr inbounds double, double* %153, i64 %155, !note.noelle !42
  store double %152, double* %156, align 8, !tbaa !9, !note.noelle !42
  br label %157, !note.noelle !42

157:                                              ; preds = %151
  %158 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !42
  %159 = add nsw i32 %158, 1, !note.noelle !42
  store i32 %159, i32* %26, align 4, !tbaa !7, !note.noelle !42
  br label %108, !note.noelle !42

160:                                              ; preds = %108
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !40
  br label %161, !note.noelle !40

161:                                              ; preds = %182, %160
  %162 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !45
  %163 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !45
  %164 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !45
  %165 = sub nsw i32 %163, %164, !note.noelle !45
  %166 = add nsw i32 %165, 1, !note.noelle !45
  %167 = icmp sle i32 %162, %166, !note.noelle !45
  br i1 %167, label %168, label %185, !note.noelle !45

168:                                              ; preds = %161
  %169 = load double, double* %19, align 8, !tbaa !9, !note.noelle !45
  %170 = load double*, double** %15, align 8, !tbaa !2, !note.noelle !45
  %171 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !45
  %172 = sext i32 %171 to i64, !note.noelle !45
  %173 = getelementptr inbounds double, double* %170, i64 %172, !note.noelle !45
  %174 = load double, double* %173, align 8, !tbaa !9, !note.noelle !45
  %175 = load double*, double** %16, align 8, !tbaa !2, !note.noelle !45
  %176 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !45
  %177 = sext i32 %176 to i64, !note.noelle !45
  %178 = getelementptr inbounds double, double* %175, i64 %177, !note.noelle !45
  %179 = load double, double* %178, align 8, !tbaa !9, !note.noelle !45
  %180 = fmul double %174, %179, !note.noelle !45
  %181 = fadd double %169, %180, !note.noelle !45
  store double %181, double* %19, align 8, !tbaa !9, !note.noelle !45
  br label %182, !note.noelle !45

182:                                              ; preds = %168
  %183 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !45
  %184 = add nsw i32 %183, 1, !note.noelle !45
  store i32 %184, i32* %26, align 4, !tbaa !7, !note.noelle !45
  br label %161, !note.noelle !45

185:                                              ; preds = %161
  %186 = load double, double* %22, align 8, !tbaa !9, !note.noelle !40
  %187 = load double, double* %19, align 8, !tbaa !9, !note.noelle !40
  %188 = fdiv double %186, %187, !note.noelle !40
  store double %188, double* %23, align 8, !tbaa !9, !note.noelle !40
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !40
  br label %189, !note.noelle !40

189:                                              ; preds = %244, %185
  %190 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %191 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !47
  %192 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !47
  %193 = sub nsw i32 %191, %192, !note.noelle !47
  %194 = add nsw i32 %193, 1, !note.noelle !47
  %195 = icmp sle i32 %190, %194, !note.noelle !47
  br i1 %195, label %196, label %247, !note.noelle !47

196:                                              ; preds = %189
  %197 = load double*, double** %13, align 8, !tbaa !2, !note.noelle !47
  %198 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %199 = sext i32 %198 to i64, !note.noelle !47
  %200 = getelementptr inbounds double, double* %197, i64 %199, !note.noelle !47
  %201 = load double, double* %200, align 8, !tbaa !9, !note.noelle !47
  %202 = load double, double* %23, align 8, !tbaa !9, !note.noelle !47
  %203 = load double*, double** %15, align 8, !tbaa !2, !note.noelle !47
  %204 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %205 = sext i32 %204 to i64, !note.noelle !47
  %206 = getelementptr inbounds double, double* %203, i64 %205, !note.noelle !47
  %207 = load double, double* %206, align 8, !tbaa !9, !note.noelle !47
  %208 = fmul double %202, %207, !note.noelle !47
  %209 = fadd double %201, %208, !note.noelle !47
  %210 = load double*, double** %13, align 8, !tbaa !2, !note.noelle !47
  %211 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %212 = sext i32 %211 to i64, !note.noelle !47
  %213 = getelementptr inbounds double, double* %210, i64 %212, !note.noelle !47
  store double %209, double* %213, align 8, !tbaa !9, !note.noelle !47
  %214 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !47
  %215 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %216 = sext i32 %215 to i64, !note.noelle !47
  %217 = getelementptr inbounds double, double* %214, i64 %216, !note.noelle !47
  %218 = load double, double* %217, align 8, !tbaa !9, !note.noelle !47
  %219 = load double, double* %23, align 8, !tbaa !9, !note.noelle !47
  %220 = load double*, double** %16, align 8, !tbaa !2, !note.noelle !47
  %221 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %222 = sext i32 %221 to i64, !note.noelle !47
  %223 = getelementptr inbounds double, double* %220, i64 %222, !note.noelle !47
  %224 = load double, double* %223, align 8, !tbaa !9, !note.noelle !47
  %225 = fmul double %219, %224, !note.noelle !47
  %226 = fsub double %218, %225, !note.noelle !47
  %227 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !47
  %228 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %229 = sext i32 %228 to i64, !note.noelle !47
  %230 = getelementptr inbounds double, double* %227, i64 %229, !note.noelle !47
  store double %226, double* %230, align 8, !tbaa !9, !note.noelle !47
  %231 = load double, double* %21, align 8, !tbaa !9, !note.noelle !47
  %232 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !47
  %233 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %234 = sext i32 %233 to i64, !note.noelle !47
  %235 = getelementptr inbounds double, double* %232, i64 %234, !note.noelle !47
  %236 = load double, double* %235, align 8, !tbaa !9, !note.noelle !47
  %237 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !47
  %238 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %239 = sext i32 %238 to i64, !note.noelle !47
  %240 = getelementptr inbounds double, double* %237, i64 %239, !note.noelle !47
  %241 = load double, double* %240, align 8, !tbaa !9, !note.noelle !47
  %242 = fmul double %236, %241, !note.noelle !47
  %243 = fadd double %231, %242, !note.noelle !47
  store double %243, double* %21, align 8, !tbaa !9, !note.noelle !47
  br label %244, !note.noelle !47

244:                                              ; preds = %196
  %245 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !47
  %246 = add nsw i32 %245, 1, !note.noelle !47
  store i32 %246, i32* %26, align 4, !tbaa !7, !note.noelle !47
  br label %189, !note.noelle !47

247:                                              ; preds = %189
  %248 = load double, double* %21, align 8, !tbaa !9, !note.noelle !40
  %249 = load double, double* %22, align 8, !tbaa !9, !note.noelle !40
  %250 = fdiv double %248, %249, !note.noelle !40
  store double %250, double* %24, align 8, !tbaa !9, !note.noelle !40
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !40
  br label %251, !note.noelle !40

251:                                              ; preds = %276, %247
  %252 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !49
  %253 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !49
  %254 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !49
  %255 = sub nsw i32 %253, %254, !note.noelle !49
  %256 = add nsw i32 %255, 1, !note.noelle !49
  %257 = icmp sle i32 %252, %256, !note.noelle !49
  br i1 %257, label %258, label %279, !note.noelle !49

258:                                              ; preds = %251
  %259 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !49
  %260 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !49
  %261 = sext i32 %260 to i64, !note.noelle !49
  %262 = getelementptr inbounds double, double* %259, i64 %261, !note.noelle !49
  %263 = load double, double* %262, align 8, !tbaa !9, !note.noelle !49
  %264 = load double, double* %24, align 8, !tbaa !9, !note.noelle !49
  %265 = load double*, double** %15, align 8, !tbaa !2, !note.noelle !49
  %266 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !49
  %267 = sext i32 %266 to i64, !note.noelle !49
  %268 = getelementptr inbounds double, double* %265, i64 %267, !note.noelle !49
  %269 = load double, double* %268, align 8, !tbaa !9, !note.noelle !49
  %270 = fmul double %264, %269, !note.noelle !49
  %271 = fadd double %263, %270, !note.noelle !49
  %272 = load double*, double** %15, align 8, !tbaa !2, !note.noelle !49
  %273 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !49
  %274 = sext i32 %273 to i64, !note.noelle !49
  %275 = getelementptr inbounds double, double* %272, i64 %274, !note.noelle !49
  store double %271, double* %275, align 8, !tbaa !9, !note.noelle !49
  br label %276, !note.noelle !49

276:                                              ; preds = %258
  %277 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !49
  %278 = add nsw i32 %277, 1, !note.noelle !49
  store i32 %278, i32* %26, align 4, !tbaa !7, !note.noelle !49
  br label %251, !note.noelle !49

279:                                              ; preds = %251
  %280 = load i32, i32* @conj_grad.callcount, align 4, !tbaa !7, !note.noelle !40
  %281 = add nsw i32 %280, 1, !note.noelle !40
  store i32 %281, i32* @conj_grad.callcount, align 4, !tbaa !7, !note.noelle !40
  br label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %28, align 4, !tbaa !7
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %28, align 4, !tbaa !7
  br label %102

285:                                              ; preds = %102
  store double 0.000000e+00, double* %20, align 8, !tbaa !9
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !35
  br label %286, !note.noelle !35

286:                                              ; preds = %336, %285
  %287 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !51
  %288 = load i32, i32* @lastrow, align 4, !tbaa !7, !note.noelle !51
  %289 = load i32, i32* @firstrow, align 4, !tbaa !7, !note.noelle !51
  %290 = sub nsw i32 %288, %289, !note.noelle !51
  %291 = add nsw i32 %290, 1, !note.noelle !51
  %292 = icmp sle i32 %287, %291, !note.noelle !51
  br i1 %292, label %293, label %339, !note.noelle !51

293:                                              ; preds = %286
  store double 0.000000e+00, double* %19, align 8, !tbaa !9, !note.noelle !51
  %294 = load i32*, i32** %11, align 8, !tbaa !2, !note.noelle !51
  %295 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !51
  %296 = sext i32 %295 to i64, !note.noelle !51
  %297 = getelementptr inbounds i32, i32* %294, i64 %296, !note.noelle !51
  %298 = load i32, i32* %297, align 4, !tbaa !7, !note.noelle !51
  store i32 %298, i32* %27, align 4, !tbaa !7, !note.noelle !51
  br label %299, !note.noelle !51

299:                                              ; preds = %327, %293
  %300 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !51
  %301 = load i32*, i32** %11, align 8, !tbaa !2, !note.noelle !51
  %302 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !51
  %303 = add nsw i32 %302, 1, !note.noelle !51
  %304 = sext i32 %303 to i64, !note.noelle !51
  %305 = getelementptr inbounds i32, i32* %301, i64 %304, !note.noelle !51
  %306 = load i32, i32* %305, align 4, !tbaa !7, !note.noelle !51
  %307 = sub nsw i32 %306, 1, !note.noelle !51
  %308 = icmp sle i32 %300, %307, !note.noelle !51
  br i1 %308, label %309, label %330, !note.noelle !51

309:                                              ; preds = %299
  %310 = load double, double* %19, align 8, !tbaa !9, !note.noelle !51
  %311 = load double*, double** %14, align 8, !tbaa !2, !note.noelle !51
  %312 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !51
  %313 = sext i32 %312 to i64, !note.noelle !51
  %314 = getelementptr inbounds double, double* %311, i64 %313, !note.noelle !51
  %315 = load double, double* %314, align 8, !tbaa !9, !note.noelle !51
  %316 = load double*, double** %13, align 8, !tbaa !2, !note.noelle !51
  %317 = load i32*, i32** %10, align 8, !tbaa !2, !note.noelle !51
  %318 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !51
  %319 = sext i32 %318 to i64, !note.noelle !51
  %320 = getelementptr inbounds i32, i32* %317, i64 %319, !note.noelle !51
  %321 = load i32, i32* %320, align 4, !tbaa !7, !note.noelle !51
  %322 = sext i32 %321 to i64, !note.noelle !51
  %323 = getelementptr inbounds double, double* %316, i64 %322, !note.noelle !51
  %324 = load double, double* %323, align 8, !tbaa !9, !note.noelle !51
  %325 = fmul double %315, %324, !note.noelle !51
  %326 = fadd double %310, %325, !note.noelle !51
  store double %326, double* %19, align 8, !tbaa !9, !note.noelle !51
  br label %327, !note.noelle !51

327:                                              ; preds = %309
  %328 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !51
  %329 = add nsw i32 %328, 1, !note.noelle !51
  store i32 %329, i32* %27, align 4, !tbaa !7, !note.noelle !51
  br label %299, !note.noelle !51

330:                                              ; preds = %299
  %331 = load double, double* %19, align 8, !tbaa !9, !note.noelle !51
  %332 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !51
  %333 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !51
  %334 = sext i32 %333 to i64, !note.noelle !51
  %335 = getelementptr inbounds double, double* %332, i64 %334, !note.noelle !51
  store double %331, double* %335, align 8, !tbaa !9, !note.noelle !51
  br label %336, !note.noelle !51

336:                                              ; preds = %330
  %337 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !51
  %338 = add nsw i32 %337, 1, !note.noelle !51
  store i32 %338, i32* %26, align 4, !tbaa !7, !note.noelle !51
  br label %286, !note.noelle !51

339:                                              ; preds = %286
  store i32 1, i32* %26, align 4, !tbaa !7, !note.noelle !35
  br label %340, !note.noelle !35

340:                                              ; preds = %364, %339
  %341 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !54
  %342 = load i32, i32* @lastcol, align 4, !tbaa !7, !note.noelle !54
  %343 = load i32, i32* @firstcol, align 4, !tbaa !7, !note.noelle !54
  %344 = sub nsw i32 %342, %343, !note.noelle !54
  %345 = add nsw i32 %344, 1, !note.noelle !54
  %346 = icmp sle i32 %341, %345, !note.noelle !54
  br i1 %346, label %347, label %367, !note.noelle !54

347:                                              ; preds = %340
  %348 = load double*, double** %12, align 8, !tbaa !2, !note.noelle !54
  %349 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !54
  %350 = sext i32 %349 to i64, !note.noelle !54
  %351 = getelementptr inbounds double, double* %348, i64 %350, !note.noelle !54
  %352 = load double, double* %351, align 8, !tbaa !9, !note.noelle !54
  %353 = load double*, double** %17, align 8, !tbaa !2, !note.noelle !54
  %354 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !54
  %355 = sext i32 %354 to i64, !note.noelle !54
  %356 = getelementptr inbounds double, double* %353, i64 %355, !note.noelle !54
  %357 = load double, double* %356, align 8, !tbaa !9, !note.noelle !54
  %358 = fsub double %352, %357, !note.noelle !54
  store double %358, double* %19, align 8, !tbaa !9, !note.noelle !54
  %359 = load double, double* %20, align 8, !tbaa !9, !note.noelle !54
  %360 = load double, double* %19, align 8, !tbaa !9, !note.noelle !54
  %361 = load double, double* %19, align 8, !tbaa !9, !note.noelle !54
  %362 = fmul double %360, %361, !note.noelle !54
  %363 = fadd double %359, %362, !note.noelle !54
  store double %363, double* %20, align 8, !tbaa !9, !note.noelle !54
  br label %364, !note.noelle !54

364:                                              ; preds = %347
  %365 = load i32, i32* %26, align 4, !tbaa !7, !note.noelle !54
  %366 = add nsw i32 %365, 1, !note.noelle !54
  store i32 %366, i32* %26, align 4, !tbaa !7, !note.noelle !54
  br label %340, !note.noelle !54

367:                                              ; preds = %340
  %368 = load double, double* %20, align 8, !tbaa !9
  %369 = call double @sqrt(double %368) #6
  %370 = load double*, double** %18, align 8, !tbaa !2
  store double %369, double* %370, align 8, !tbaa !9
  %371 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %371) #6
  %372 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %372) #6
  %373 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %373) #6
  %374 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %374) #6
  %375 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %375) #6
  %376 = bitcast double* %24 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %376) #6
  %377 = bitcast double* %23 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %377) #6
  %378 = bitcast double* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %378) #6
  %379 = bitcast double* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %379) #6
  %380 = bitcast double* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %380) #6
  %381 = bitcast double* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %381) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define internal void @sprnvc(i32, i32, double*, i32*, i32*, i32*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %7, align 4, !tbaa !7
  store i32 %1, i32* %8, align 4, !tbaa !7
  store double* %2, double** %9, align 8, !tbaa !2
  store i32* %3, i32** %10, align 8, !tbaa !2
  store i32* %4, i32** %11, align 8, !tbaa !2
  store i32* %5, i32** %12, align 8, !tbaa !2
  %20 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #6
  %21 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #6
  %22 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #6
  %23 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #6
  %24 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #6
  %25 = bitcast double* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #6
  %26 = bitcast double* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #6
  store i32 0, i32* %15, align 4, !tbaa !7
  store i32 0, i32* %14, align 4, !tbaa !7
  store i32 1, i32* %13, align 4, !tbaa !7
  br label %27

27:                                               ; preds = %30, %6
  %28 = load i32, i32* %13, align 4, !tbaa !7
  %29 = mul nsw i32 2, %28
  store i32 %29, i32* %13, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4, !tbaa !7
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %27, label %34

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %83, %51, %34
  %36 = load i32, i32* %15, align 4, !tbaa !7
  %37 = load i32, i32* %8, align 4, !tbaa !7
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = load double, double* @amult, align 8, !tbaa !9
  %41 = call double @randlc(double* @tran, double %40)
  store double %41, double* %18, align 8, !tbaa !9
  %42 = load double, double* @amult, align 8, !tbaa !9
  %43 = call double @randlc(double* @tran, double %42)
  store double %43, double* %19, align 8, !tbaa !9
  %44 = load double, double* %19, align 8, !tbaa !9
  %45 = load i32, i32* %13, align 4, !tbaa !7
  %46 = call i32 @icnvrt(double %44, i32 %45)
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4, !tbaa !7
  %48 = load i32, i32* %17, align 4, !tbaa !7
  %49 = load i32, i32* %7, align 4, !tbaa !7
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %35

52:                                               ; preds = %39
  %53 = load i32*, i32** %12, align 8, !tbaa !2
  %54 = load i32, i32* %17, align 4, !tbaa !7
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load i32*, i32** %12, align 8, !tbaa !2
  %61 = load i32, i32* %17, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 1, i32* %63, align 4, !tbaa !7
  %64 = load i32, i32* %14, align 4, !tbaa !7
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4, !tbaa !7
  %66 = load i32, i32* %17, align 4, !tbaa !7
  %67 = load i32*, i32** %11, align 8, !tbaa !2
  %68 = load i32, i32* %14, align 4, !tbaa !7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4, !tbaa !7
  %71 = load i32, i32* %15, align 4, !tbaa !7
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4, !tbaa !7
  %73 = load double, double* %18, align 8, !tbaa !9
  %74 = load double*, double** %9, align 8, !tbaa !2
  %75 = load i32, i32* %15, align 4, !tbaa !7
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  store double %73, double* %77, align 8, !tbaa !9
  %78 = load i32, i32* %17, align 4, !tbaa !7
  %79 = load i32*, i32** %10, align 8, !tbaa !2
  %80 = load i32, i32* %15, align 4, !tbaa !7
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4, !tbaa !7
  br label %83

83:                                               ; preds = %59, %52
  br label %35

84:                                               ; preds = %35
  store i32 1, i32* %16, align 4, !tbaa !7
  br label %85

85:                                               ; preds = %99, %84
  %86 = load i32, i32* %16, align 4, !tbaa !7
  %87 = load i32, i32* %14, align 4, !tbaa !7
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32*, i32** %11, align 8, !tbaa !2
  %91 = load i32, i32* %16, align 4, !tbaa !7
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !7
  store i32 %94, i32* %17, align 4, !tbaa !7
  %95 = load i32*, i32** %12, align 8, !tbaa !2
  %96 = load i32, i32* %17, align 4, !tbaa !7
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 0, i32* %98, align 4, !tbaa !7
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %16, align 4, !tbaa !7
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4, !tbaa !7
  br label %85

102:                                              ; preds = %85
  %103 = bitcast double* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #6
  %104 = bitcast double* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #6
  %105 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #6
  %106 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #6
  %107 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #6
  %108 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #6
  %109 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vecset(i32, double*, i32*, i32*, i32, double) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4, !tbaa !7
  store double* %1, double** %8, align 8, !tbaa !2
  store i32* %2, i32** %9, align 8, !tbaa !2
  store i32* %3, i32** %10, align 8, !tbaa !2
  store i32 %4, i32* %11, align 4, !tbaa !7
  store double %5, double* %12, align 8, !tbaa !9
  %15 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6
  %16 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6
  store i32 0, i32* %14, align 4, !tbaa !7
  store i32 1, i32* %13, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %37, %6
  %18 = load i32, i32* %13, align 4, !tbaa !7
  %19 = load i32*, i32** %10, align 8, !tbaa !2
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load i32*, i32** %9, align 8, !tbaa !2
  %24 = load i32, i32* %13, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32, i32* %11, align 4, !tbaa !7
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load double, double* %12, align 8, !tbaa !9
  %32 = load double*, double** %8, align 8, !tbaa !2
  %33 = load i32, i32* %13, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  store double %31, double* %35, align 8, !tbaa !9
  store i32 1, i32* %14, align 4, !tbaa !7
  br label %36

36:                                               ; preds = %30, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %13, align 4, !tbaa !7
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4, !tbaa !7
  br label %17

40:                                               ; preds = %17
  %41 = load i32, i32* %14, align 4, !tbaa !7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8, !tbaa !2
  %45 = load i32, i32* %44, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  %47 = load i32*, i32** %10, align 8, !tbaa !2
  store i32 %46, i32* %47, align 4, !tbaa !7
  %48 = load double, double* %12, align 8, !tbaa !9
  %49 = load double*, double** %8, align 8, !tbaa !2
  %50 = load i32*, i32** %10, align 8, !tbaa !2
  %51 = load i32, i32* %50, align 4, !tbaa !7
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %49, i64 %52
  store double %48, double* %53, align 8, !tbaa !9
  %54 = load i32, i32* %11, align 4, !tbaa !7
  %55 = load i32*, i32** %9, align 8, !tbaa !2
  %56 = load i32*, i32** %10, align 8, !tbaa !2
  %57 = load i32, i32* %56, align 4, !tbaa !7
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4, !tbaa !7
  br label %60

60:                                               ; preds = %43, %40
  %61 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #6
  %62 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #6
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal void @sparse(double*, i32*, i32*, i32, i32*, i32*, double*, i32, i32, double*, i32*, i32*, i32) #0 {
  %14 = alloca double*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  store double* %0, double** %14, align 8, !tbaa !2
  store i32* %1, i32** %15, align 8, !tbaa !2
  store i32* %2, i32** %16, align 8, !tbaa !2
  store i32 %3, i32* %17, align 4, !tbaa !7
  store i32* %4, i32** %18, align 8, !tbaa !2
  store i32* %5, i32** %19, align 8, !tbaa !2
  store double* %6, double** %20, align 8, !tbaa !2
  store i32 %7, i32* %21, align 4, !tbaa !7
  store i32 %8, i32* %22, align 4, !tbaa !7
  store double* %9, double** %23, align 8, !tbaa !2
  store i32* %10, i32** %24, align 8, !tbaa !2
  store i32* %11, i32** %25, align 8, !tbaa !2
  store i32 %12, i32* %26, align 4, !tbaa !7
  %35 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35) #6
  %36 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #6
  %37 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #6
  %38 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #6
  %39 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #6
  %40 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #6
  %41 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #6
  %42 = bitcast double* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #6
  %43 = load i32, i32* %22, align 4, !tbaa !7
  %44 = load i32, i32* %21, align 4, !tbaa !7
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %27, align 4, !tbaa !7
  store i32 1, i32* %29, align 4, !tbaa !7
  br label %47

47:                                               ; preds = %60, %13
  %48 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !56
  %49 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !56
  %50 = icmp sle i32 %48, %49, !note.noelle !56
  br i1 %50, label %51, label %63, !note.noelle !56

51:                                               ; preds = %47
  %52 = load i32*, i32** %16, align 8, !tbaa !2, !note.noelle !56
  %53 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !56
  %54 = sext i32 %53 to i64, !note.noelle !56
  %55 = getelementptr inbounds i32, i32* %52, i64 %54, !note.noelle !56
  store i32 0, i32* %55, align 4, !tbaa !7, !note.noelle !56
  %56 = load i32*, i32** %24, align 8, !tbaa !2, !note.noelle !56
  %57 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !56
  %58 = sext i32 %57 to i64, !note.noelle !56
  %59 = getelementptr inbounds i32, i32* %56, i64 %58, !note.noelle !56
  store i32 0, i32* %59, align 4, !tbaa !7, !note.noelle !56
  br label %60, !note.noelle !56

60:                                               ; preds = %51
  %61 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !56
  %62 = add nsw i32 %61, 1, !note.noelle !56
  store i32 %62, i32* %29, align 4, !tbaa !7, !note.noelle !56
  br label %47, !note.noelle !56

63:                                               ; preds = %47
  %64 = load i32*, i32** %16, align 8, !tbaa !2
  %65 = load i32, i32* %17, align 4, !tbaa !7
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 0, i32* %68, align 4, !tbaa !7
  store i32 1, i32* %31, align 4, !tbaa !7
  br label %69

69:                                               ; preds = %93, %63
  %70 = load i32, i32* %31, align 4, !tbaa !7
  %71 = load i32, i32* %26, align 4, !tbaa !7
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load i32*, i32** %18, align 8, !tbaa !2
  %75 = load i32, i32* %31, align 4, !tbaa !7
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !7
  %79 = load i32, i32* %21, align 4, !tbaa !7
  %80 = sub nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %29, align 4, !tbaa !7
  %83 = load i32*, i32** %16, align 8, !tbaa !2
  %84 = load i32, i32* %29, align 4, !tbaa !7
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4, !tbaa !7
  %88 = add nsw i32 %87, 1
  %89 = load i32*, i32** %16, align 8, !tbaa !2
  %90 = load i32, i32* %29, align 4, !tbaa !7
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4, !tbaa !7
  br label %93

93:                                               ; preds = %73
  %94 = load i32, i32* %31, align 4, !tbaa !7
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %31, align 4, !tbaa !7
  br label %69

96:                                               ; preds = %69
  %97 = load i32*, i32** %16, align 8, !tbaa !2
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 1, i32* %98, align 4, !tbaa !7
  store i32 2, i32* %29, align 4, !tbaa !7
  br label %99

99:                                               ; preds = %121, %96
  %100 = load i32, i32* %29, align 4, !tbaa !7
  %101 = load i32, i32* %27, align 4, !tbaa !7
  %102 = add nsw i32 %101, 1
  %103 = icmp sle i32 %100, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %99
  %105 = load i32*, i32** %16, align 8, !tbaa !2
  %106 = load i32, i32* %29, align 4, !tbaa !7
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4, !tbaa !7
  %110 = load i32*, i32** %16, align 8, !tbaa !2
  %111 = load i32, i32* %29, align 4, !tbaa !7
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !7
  %116 = add nsw i32 %109, %115
  %117 = load i32*, i32** %16, align 8, !tbaa !2
  %118 = load i32, i32* %29, align 4, !tbaa !7
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4, !tbaa !7
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %29, align 4, !tbaa !7
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %29, align 4, !tbaa !7
  br label %99

124:                                              ; preds = %99
  store i32 0, i32* %29, align 4, !tbaa !7
  br label %125

125:                                              ; preds = %155, %124
  %126 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !58
  %127 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !58
  %128 = sub nsw i32 %127, 1, !note.noelle !58
  %129 = icmp sle i32 %126, %128, !note.noelle !58
  br i1 %129, label %130, label %158, !note.noelle !58

130:                                              ; preds = %125
  %131 = load i32*, i32** %16, align 8, !tbaa !2, !note.noelle !58
  %132 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !58
  %133 = sext i32 %132 to i64, !note.noelle !58
  %134 = getelementptr inbounds i32, i32* %131, i64 %133, !note.noelle !58
  %135 = load i32, i32* %134, align 4, !tbaa !7, !note.noelle !58
  store i32 %135, i32* %32, align 4, !tbaa !7, !note.noelle !58
  br label %136, !note.noelle !58

136:                                              ; preds = %151, %130
  %137 = load i32, i32* %32, align 4, !tbaa !7, !note.noelle !58
  %138 = load i32*, i32** %16, align 8, !tbaa !2, !note.noelle !58
  %139 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !58
  %140 = add nsw i32 %139, 1, !note.noelle !58
  %141 = sext i32 %140 to i64, !note.noelle !58
  %142 = getelementptr inbounds i32, i32* %138, i64 %141, !note.noelle !58
  %143 = load i32, i32* %142, align 4, !tbaa !7, !note.noelle !58
  %144 = sub nsw i32 %143, 1, !note.noelle !58
  %145 = icmp sle i32 %137, %144, !note.noelle !58
  br i1 %145, label %146, label %154, !note.noelle !58

146:                                              ; preds = %136
  %147 = load double*, double** %14, align 8, !tbaa !2, !note.noelle !58
  %148 = load i32, i32* %32, align 4, !tbaa !7, !note.noelle !58
  %149 = sext i32 %148 to i64, !note.noelle !58
  %150 = getelementptr inbounds double, double* %147, i64 %149, !note.noelle !58
  store double 0.000000e+00, double* %150, align 8, !tbaa !9, !note.noelle !58
  br label %151, !note.noelle !58

151:                                              ; preds = %146
  %152 = load i32, i32* %32, align 4, !tbaa !7, !note.noelle !58
  %153 = add nsw i32 %152, 1, !note.noelle !58
  store i32 %153, i32* %32, align 4, !tbaa !7, !note.noelle !58
  br label %136, !note.noelle !58

154:                                              ; preds = %136
  br label %155, !note.noelle !58

155:                                              ; preds = %154
  %156 = load i32, i32* %29, align 4, !tbaa !7, !note.noelle !58
  %157 = add nsw i32 %156, 1, !note.noelle !58
  store i32 %157, i32* %29, align 4, !tbaa !7, !note.noelle !58
  br label %125, !note.noelle !58

158:                                              ; preds = %125
  store i32 1, i32* %31, align 4, !tbaa !7
  br label %159

159:                                              ; preds = %205, %158
  %160 = load i32, i32* %31, align 4, !tbaa !7
  %161 = load i32, i32* %26, align 4, !tbaa !7
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %208

163:                                              ; preds = %159
  %164 = load i32*, i32** %18, align 8, !tbaa !2
  %165 = load i32, i32* %31, align 4, !tbaa !7
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4, !tbaa !7
  %169 = load i32, i32* %21, align 4, !tbaa !7
  %170 = sub nsw i32 %168, %169
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %29, align 4, !tbaa !7
  %172 = load i32*, i32** %16, align 8, !tbaa !2
  %173 = load i32, i32* %29, align 4, !tbaa !7
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4, !tbaa !7
  store i32 %176, i32* %32, align 4, !tbaa !7
  %177 = load double*, double** %20, align 8, !tbaa !2
  %178 = load i32, i32* %31, align 4, !tbaa !7
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %177, i64 %179
  %181 = load double, double* %180, align 8, !tbaa !9
  %182 = load double*, double** %14, align 8, !tbaa !2
  %183 = load i32, i32* %32, align 4, !tbaa !7
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double, double* %182, i64 %184
  store double %181, double* %185, align 8, !tbaa !9
  %186 = load i32*, i32** %19, align 8, !tbaa !2
  %187 = load i32, i32* %31, align 4, !tbaa !7
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4, !tbaa !7
  %191 = load i32*, i32** %15, align 8, !tbaa !2
  %192 = load i32, i32* %32, align 4, !tbaa !7
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4, !tbaa !7
  %195 = load i32*, i32** %16, align 8, !tbaa !2
  %196 = load i32, i32* %29, align 4, !tbaa !7
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4, !tbaa !7
  %200 = add nsw i32 %199, 1
  %201 = load i32*, i32** %16, align 8, !tbaa !2
  %202 = load i32, i32* %29, align 4, !tbaa !7
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4, !tbaa !7
  br label %205

205:                                              ; preds = %163
  %206 = load i32, i32* %31, align 4, !tbaa !7
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %31, align 4, !tbaa !7
  br label %159

208:                                              ; preds = %159
  %209 = load i32, i32* %27, align 4, !tbaa !7
  store i32 %209, i32* %29, align 4, !tbaa !7
  br label %210

210:                                              ; preds = %224, %208
  %211 = load i32, i32* %29, align 4, !tbaa !7
  %212 = icmp sge i32 %211, 1
  br i1 %212, label %213, label %227

213:                                              ; preds = %210
  %214 = load i32*, i32** %16, align 8, !tbaa !2
  %215 = load i32, i32* %29, align 4, !tbaa !7
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4, !tbaa !7
  %219 = load i32*, i32** %16, align 8, !tbaa !2
  %220 = load i32, i32* %29, align 4, !tbaa !7
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %218, i32* %223, align 4, !tbaa !7
  br label %224

224:                                              ; preds = %213
  %225 = load i32, i32* %29, align 4, !tbaa !7
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %29, align 4, !tbaa !7
  br label %210

227:                                              ; preds = %210
  %228 = load i32*, i32** %16, align 8, !tbaa !2
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  store i32 1, i32* %229, align 4, !tbaa !7
  store i32 0, i32* %31, align 4, !tbaa !7
  store i32 1, i32* %28, align 4, !tbaa !7
  br label %230

230:                                              ; preds = %243, %227
  %231 = load i32, i32* %28, align 4, !tbaa !7
  %232 = load i32, i32* %17, align 4, !tbaa !7
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %230
  %235 = load double*, double** %23, align 8, !tbaa !2
  %236 = load i32, i32* %28, align 4, !tbaa !7
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double, double* %235, i64 %237
  store double 0.000000e+00, double* %238, align 8, !tbaa !9
  %239 = load i32*, i32** %24, align 8, !tbaa !2
  %240 = load i32, i32* %28, align 4, !tbaa !7
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 0, i32* %242, align 4, !tbaa !7
  br label %243

243:                                              ; preds = %234
  %244 = load i32, i32* %28, align 4, !tbaa !7
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %28, align 4, !tbaa !7
  br label %230

246:                                              ; preds = %230
  %247 = load i32*, i32** %16, align 8, !tbaa !2
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4, !tbaa !7
  store i32 %249, i32* %30, align 4, !tbaa !7
  store i32 1, i32* %29, align 4, !tbaa !7
  br label %250

250:                                              ; preds = %375, %246
  %251 = load i32, i32* %29, align 4, !tbaa !7
  %252 = load i32, i32* %27, align 4, !tbaa !7
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %378

254:                                              ; preds = %250
  store i32 0, i32* %33, align 4, !tbaa !7
  %255 = load i32, i32* %30, align 4, !tbaa !7
  store i32 %255, i32* %32, align 4, !tbaa !7
  br label %256

256:                                              ; preds = %312, %254
  %257 = load i32, i32* %32, align 4, !tbaa !7
  %258 = load i32*, i32** %16, align 8, !tbaa !2
  %259 = load i32, i32* %29, align 4, !tbaa !7
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4, !tbaa !7
  %264 = icmp slt i32 %257, %263
  br i1 %264, label %265, label %315

265:                                              ; preds = %256
  %266 = load i32*, i32** %15, align 8, !tbaa !2
  %267 = load i32, i32* %32, align 4, !tbaa !7
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4, !tbaa !7
  store i32 %270, i32* %28, align 4, !tbaa !7
  %271 = load double*, double** %23, align 8, !tbaa !2
  %272 = load i32, i32* %28, align 4, !tbaa !7
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double, double* %271, i64 %273
  %275 = load double, double* %274, align 8, !tbaa !9
  %276 = load double*, double** %14, align 8, !tbaa !2
  %277 = load i32, i32* %32, align 4, !tbaa !7
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %276, i64 %278
  %280 = load double, double* %279, align 8, !tbaa !9
  %281 = fadd double %275, %280
  %282 = load double*, double** %23, align 8, !tbaa !2
  %283 = load i32, i32* %28, align 4, !tbaa !7
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, double* %282, i64 %284
  store double %281, double* %285, align 8, !tbaa !9
  %286 = load i32*, i32** %24, align 8, !tbaa !2
  %287 = load i32, i32* %28, align 4, !tbaa !7
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4, !tbaa !7
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %311

292:                                              ; preds = %265
  %293 = load double*, double** %23, align 8, !tbaa !2
  %294 = load i32, i32* %28, align 4, !tbaa !7
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds double, double* %293, i64 %295
  %297 = load double, double* %296, align 8, !tbaa !9
  %298 = fcmp une double %297, 0.000000e+00
  br i1 %298, label %299, label %311

299:                                              ; preds = %292
  %300 = load i32*, i32** %24, align 8, !tbaa !2
  %301 = load i32, i32* %28, align 4, !tbaa !7
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 1, i32* %303, align 4, !tbaa !7
  %304 = load i32, i32* %33, align 4, !tbaa !7
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %33, align 4, !tbaa !7
  %306 = load i32, i32* %28, align 4, !tbaa !7
  %307 = load i32*, i32** %25, align 8, !tbaa !2
  %308 = load i32, i32* %33, align 4, !tbaa !7
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %306, i32* %310, align 4, !tbaa !7
  br label %311

311:                                              ; preds = %299, %292, %265
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %32, align 4, !tbaa !7
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %32, align 4, !tbaa !7
  br label %256

315:                                              ; preds = %256
  store i32 1, i32* %32, align 4, !tbaa !7
  br label %316

316:                                              ; preds = %355, %315
  %317 = load i32, i32* %32, align 4, !tbaa !7
  %318 = load i32, i32* %33, align 4, !tbaa !7
  %319 = icmp sle i32 %317, %318
  br i1 %319, label %320, label %358

320:                                              ; preds = %316
  %321 = load i32*, i32** %25, align 8, !tbaa !2
  %322 = load i32, i32* %32, align 4, !tbaa !7
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4, !tbaa !7
  store i32 %325, i32* %28, align 4, !tbaa !7
  %326 = load i32*, i32** %24, align 8, !tbaa !2
  %327 = load i32, i32* %28, align 4, !tbaa !7
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 0, i32* %329, align 4, !tbaa !7
  %330 = load double*, double** %23, align 8, !tbaa !2
  %331 = load i32, i32* %28, align 4, !tbaa !7
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds double, double* %330, i64 %332
  %334 = load double, double* %333, align 8, !tbaa !9
  store double %334, double* %34, align 8, !tbaa !9
  %335 = load double*, double** %23, align 8, !tbaa !2
  %336 = load i32, i32* %28, align 4, !tbaa !7
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds double, double* %335, i64 %337
  store double 0.000000e+00, double* %338, align 8, !tbaa !9
  %339 = load double, double* %34, align 8, !tbaa !9
  %340 = fcmp une double %339, 0.000000e+00
  br i1 %340, label %341, label %354

341:                                              ; preds = %320
  %342 = load i32, i32* %31, align 4, !tbaa !7
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %31, align 4, !tbaa !7
  %344 = load double, double* %34, align 8, !tbaa !9
  %345 = load double*, double** %14, align 8, !tbaa !2
  %346 = load i32, i32* %31, align 4, !tbaa !7
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double, double* %345, i64 %347
  store double %344, double* %348, align 8, !tbaa !9
  %349 = load i32, i32* %28, align 4, !tbaa !7
  %350 = load i32*, i32** %15, align 8, !tbaa !2
  %351 = load i32, i32* %31, align 4, !tbaa !7
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 %349, i32* %353, align 4, !tbaa !7
  br label %354

354:                                              ; preds = %341, %320
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %32, align 4, !tbaa !7
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %32, align 4, !tbaa !7
  br label %316

358:                                              ; preds = %316
  %359 = load i32*, i32** %16, align 8, !tbaa !2
  %360 = load i32, i32* %29, align 4, !tbaa !7
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %359, i64 %362
  %364 = load i32, i32* %363, align 4, !tbaa !7
  store i32 %364, i32* %30, align 4, !tbaa !7
  %365 = load i32, i32* %31, align 4, !tbaa !7
  %366 = load i32*, i32** %16, align 8, !tbaa !2
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load i32, i32* %367, align 4, !tbaa !7
  %369 = add nsw i32 %365, %368
  %370 = load i32*, i32** %16, align 8, !tbaa !2
  %371 = load i32, i32* %29, align 4, !tbaa !7
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %370, i64 %373
  store i32 %369, i32* %374, align 4, !tbaa !7
  br label %375

375:                                              ; preds = %358
  %376 = load i32, i32* %29, align 4, !tbaa !7
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %29, align 4, !tbaa !7
  br label %250

378:                                              ; preds = %250
  %379 = bitcast double* %34 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %379) #6
  %380 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %380) #6
  %381 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %381) #6
  %382 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %382) #6
  %383 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %383) #6
  %384 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %384) #6
  %385 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %385) #6
  %386 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %386) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @icnvrt(double, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8, !tbaa !9
  store i32 %1, i32* %4, align 4, !tbaa !7
  %5 = load i32, i32* %4, align 4, !tbaa !7
  %6 = sitofp i32 %5 to double
  %7 = load double, double* %3, align 8, !tbaa !9
  %8 = fmul double %6, %7
  %9 = fptosi double %8 to i32
  ret i32 %9
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!19 = !{!16, !20, !18}
!20 = !{!"label", !"2"}
!21 = !{!16, !22, !18}
!22 = !{!"label", !"3"}
!23 = !{!16, !24, !18}
!24 = !{!"label", !"4"}
!25 = !{!16, !26, !18}
!26 = !{!"label", !"5"}
!27 = !{!16, !28, !18}
!28 = !{!"label", !"6"}
!29 = !{!16, !30, !18}
!30 = !{!"label", !"7"}
!31 = !{!16, !32, !18}
!32 = !{!"label", !"8"}
!33 = !{!16, !34, !18}
!34 = !{!"label", !"18"}
!35 = !{!16}
!36 = !{!16, !37, !18}
!37 = !{!"label", !"9"}
!38 = !{!16, !39, !18}
!39 = !{!"label", !"10"}
!40 = !{!16, !41}
!41 = !{!"label", !"11"}
!42 = !{!16, !43, !44, !18}
!43 = !{!"isolated", !"1"}
!44 = !{!"label", !"12"}
!45 = !{!16, !46, !18}
!46 = !{!"label", !"13"}
!47 = !{!16, !48, !18}
!48 = !{!"label", !"14"}
!49 = !{!16, !50, !18}
!50 = !{!"label", !"15"}
!51 = !{!16, !52, !18, !53}
!52 = !{!"label", !"16"}
!53 = !{!"solated", !"1"}
!54 = !{!16, !55, !18}
!55 = !{!"label", !"17"}
!56 = !{!16, !57, !18}
!57 = !{!"label", !"19"}
!58 = !{!16, !59, !18}
!59 = !{!"label", !"20"}
