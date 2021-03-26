; ModuleID = 'ft.c'
source_filename = "ft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcomplex = type { double, double }
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
@main.u0 = internal global [256 x [256 x [512 x %struct.dcomplex]]] zeroinitializer, align 16
@main.pad1 = internal global [3 x %struct.dcomplex] zeroinitializer, align 16
@main.u1 = internal global [256 x [256 x [512 x %struct.dcomplex]]] zeroinitializer, align 16
@main.pad2 = internal global [3 x %struct.dcomplex] zeroinitializer, align 16
@main.u2 = internal global [256 x [256 x [512 x %struct.dcomplex]]] zeroinitializer, align 16
@main.pad3 = internal global [3 x %struct.dcomplex] zeroinitializer, align 16
@main.indexmap = internal global [256 x [256 x [512 x i32]]] zeroinitializer, align 16
@dims = internal global [3 x [3 x i32]] zeroinitializer, align 16
@niter = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"FT\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"          floating point\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"3.0 structured\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"10 Feb 2021\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gclang\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"-O3 \00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"-lm -mcmodel=large\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@fftblock = common dso_local global i32 0, align 4
@fftblockpad = common dso_local global i32 0, align 4
@ex = internal global [1966081 x double] zeroinitializer, align 16
@compute_initial_conditions.tmp = internal global [524289 x double] zeroinitializer, align 16
@zstart = internal global [3 x i32] zeroinitializer, align 4
@ystart = internal global [3 x i32] zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [76 x i8] c"\0A\0A NAS Parallel Benchmarks 3.0 structured OpenMP C version - FT Benchmark\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c" Size                : %3dx%3dx%3d\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c" Iterations          :     %7d\0A\00", align 1
@xstart = internal global [3 x i32] zeroinitializer, align 4
@xend = internal global [3 x i32] zeroinitializer, align 4
@yend = internal global [3 x i32] zeroinitializer, align 4
@zend = internal global [3 x i32] zeroinitializer, align 4
@u = internal global [512 x %struct.dcomplex] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [99 x i8] c"CFFTZ: Either U has not been initialized, or else\0Aone of the input parameters is invalid%5d%5d%5d\0A\00", align 1
@sums = internal global [21 x %struct.dcomplex] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [40 x i8] c"T = %5d     Checksum = %22.12e %22.12e\0A\00", align 1
@__const.verify.vdata_real_b = private unnamed_addr constant [21 x double] [double 0.000000e+00, double 0x40802E1D67491D27, double 0x40801B9DF5E01838, double 0x408015209C2AC008, double 0x408011E72B556FFE, double 0x40800FB38AA32FE6, double 0x40800DF0531A9C48, double 0x40800C700989200D, double 0x40800B20F5210ADA, double 0x408009FA001E667B, double 0x408008F54B8BB893, double 0x4080080E66C1709C, double 0x40800741A55F37AD, double 0x4080068BDAC33674, double 0x408005EA3C919C43, double 0x4080055A545A3920, double 0x408004D9F6B6B8E1, double 0x408004673C213244, double 0x408004007A3FD0EA, double 0x408003A43D5F793B, double 0x40800351422D2EDF], align 16
@__const.verify.vdata_imag_b = private unnamed_addr constant [21 x double] [double 0.000000e+00, double 0x407FBC7C4BF0AFB0, double 0x407FCD32F7994D45, double 0x407FD9EF2BAE169A, double 0x407FE1A32DF83794, double 0x407FE65CD1D86E4E, double 0x407FE9844F14C8E1, double 0x407FEBD8BF0DD370, double 0x407FEDB8F6EE292B, double 0x407FEF52DA70C18D, double 0x407FF0BC8A6C6119, double 0x407FF200FF33D23F, double 0x407FF3261FE7F7AD, double 0x407FF42F9BEB8DC0, double 0x407FF5203263B154, double 0x407FF5FA3C741F6E, double 0x407FF6BFE1A61501, double 0x407FF77327A3F7B0, double 0x407FF815F3F1C1DE, double 0x407FF8AA099402A0, double 0x407FF93106A352EE], align 16
@__const.verify.vdata_real_c = private unnamed_addr constant [21 x double] [double 0.000000e+00, double 0x40803C101E899B03, double 0x40801C5675ED0B14, double 0x408013BE0F176AC3, double 0x4080101ED77ADAFA, double 0x40800E0A53D12FD5, double 0x40800CA61ABB2192, double 0x40800BA7CD2DCE4D, double 0x40800AEBECB397D4, double 0x40800A5D393668AE, double 0x408009EDAA24021D, double 0x40800993B097C5AC, double 0x40800948BF026ADC, double 0x4080090857A518D9, double 0x408008CF67B5F6E6, double 0x4080089BD580EA3A, double 0x4080086C31EBD984, double 0x4080083F8294129E, double 0x408008151CE457D2, double 0x408007EC8CCD48ED, double 0x408007C58371022F], align 16
@__const.verify.vdata_imag_c = private unnamed_addr constant [21 x double] [double 0.000000e+00, double 0x408017373C01E593, double 0x4080061004096FAD, double 0x408001CD2DA9B691, double 0x408000DF4A8B7C66, double 0x408000EA3A1348C8, double 0x408001328991F77F, double 0x4080017F2A30930B, double 0x408001C12D7B83F2, double 0x408001F6BADA1C71, double 0x4080022183F3CA50, double 0x40800243C3A1DCB2, double 0x4080025F68FD8268, double 0x40800275F32F50EA, double 0x408002887F1716B0, double 0x40800297DE24048E, double 0x408002A4AAB9F9F8, double 0x408002AF57DC0D71, double 0x408002B83C8A44C9, double 0x408002BF9BCECA75, double 0x408002C5AA6407B6], align 16
@.str.37 = private unnamed_addr constant [32 x i8] c"Result verification successful\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Result verification failed\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"class = %1c\0A\00", align 1

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
  %96 = load i8*, i8** %39, align 8, !tbaa !2
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %96)
  %98 = load i8*, i8** %40, align 8, !tbaa !2
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %98)
  %100 = bitcast i8** %41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %100) #6
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
  %31 = load double, double* %11, align 8, !tbaa !9
  %32 = fptosi double %31 to i32
  %33 = sitofp i32 %32 to double
  store double %33, double* %15, align 8, !tbaa !9
  %34 = load double, double* %7, align 8, !tbaa !9
  %35 = load double, double* %15, align 8, !tbaa !9
  %36 = fmul double 0x4160000000000000, %35
  %37 = fsub double %34, %36
  store double %37, double* %16, align 8, !tbaa !9
  %38 = load double*, double** %6, align 8, !tbaa !2
  %39 = load double, double* %38, align 8, !tbaa !9
  store double %39, double* %10, align 8, !tbaa !9
  store i32 1, i32* %9, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %89, %4
  %41 = load i32, i32* %9, align 4, !tbaa !7
  %42 = load i32, i32* %5, align 4, !tbaa !7
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = load double, double* %10, align 8, !tbaa !9
  %46 = fmul double 0x3E80000000000000, %45
  store double %46, double* %11, align 8, !tbaa !9
  %47 = load double, double* %11, align 8, !tbaa !9
  %48 = fptosi double %47 to i32
  %49 = sitofp i32 %48 to double
  store double %49, double* %17, align 8, !tbaa !9
  %50 = load double, double* %10, align 8, !tbaa !9
  %51 = load double, double* %17, align 8, !tbaa !9
  %52 = fmul double 0x4160000000000000, %51
  %53 = fsub double %50, %52
  store double %53, double* %18, align 8, !tbaa !9
  %54 = load double, double* %15, align 8, !tbaa !9
  %55 = load double, double* %18, align 8, !tbaa !9
  %56 = fmul double %54, %55
  %57 = load double, double* %16, align 8, !tbaa !9
  %58 = load double, double* %17, align 8, !tbaa !9
  %59 = fmul double %57, %58
  %60 = fadd double %56, %59
  store double %60, double* %11, align 8, !tbaa !9
  %61 = load double, double* %11, align 8, !tbaa !9
  %62 = fmul double 0x3E80000000000000, %61
  %63 = fptosi double %62 to i32
  %64 = sitofp i32 %63 to double
  store double %64, double* %12, align 8, !tbaa !9
  %65 = load double, double* %11, align 8, !tbaa !9
  %66 = load double, double* %12, align 8, !tbaa !9
  %67 = fmul double 0x4160000000000000, %66
  %68 = fsub double %65, %67
  store double %68, double* %19, align 8, !tbaa !9
  %69 = load double, double* %19, align 8, !tbaa !9
  %70 = fmul double 0x4160000000000000, %69
  %71 = load double, double* %16, align 8, !tbaa !9
  %72 = load double, double* %18, align 8, !tbaa !9
  %73 = fmul double %71, %72
  %74 = fadd double %70, %73
  store double %74, double* %13, align 8, !tbaa !9
  %75 = load double, double* %13, align 8, !tbaa !9
  %76 = fmul double 0x3D10000000000000, %75
  %77 = fptosi double %76 to i32
  %78 = sitofp i32 %77 to double
  store double %78, double* %14, align 8, !tbaa !9
  %79 = load double, double* %13, align 8, !tbaa !9
  %80 = load double, double* %14, align 8, !tbaa !9
  %81 = fmul double 0x42D0000000000000, %80
  %82 = fsub double %79, %81
  store double %82, double* %10, align 8, !tbaa !9
  %83 = load double, double* %10, align 8, !tbaa !9
  %84 = fmul double 0x3D10000000000000, %83
  %85 = load double*, double** %8, align 8, !tbaa !2
  %86 = load i32, i32* %9, align 4, !tbaa !7
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  store double %84, double* %88, align 8, !tbaa !9
  br label %89

89:                                               ; preds = %44
  %90 = load i32, i32* %9, align 4, !tbaa !7
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4, !tbaa !7
  br label %40

92:                                               ; preds = %40
  %93 = load double, double* %10, align 8, !tbaa !9
  %94 = load double*, double** %6, align 8, !tbaa !2
  store double %93, double* %94, align 8, !tbaa !9
  %95 = bitcast double* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %95) #6
  %96 = bitcast double* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %96) #6
  %97 = bitcast double* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #6
  %98 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #6
  %99 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %99) #6
  %100 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %100) #6
  %101 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #6
  %102 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %102) #6
  %103 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #6
  %104 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #6
  %105 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #6
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
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !2
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6
  store i32 1, i32* %9, align 4, !tbaa !7
  %18 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #6
  %19 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #6
  %20 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %13) #6
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %21

21:                                               ; preds = %26, %2
  %22 = load i32, i32* %6, align 4, !tbaa !7
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4, !tbaa !7
  call void @timer_clear(i32 %25)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4, !tbaa !7
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4, !tbaa !7
  br label %21

29:                                               ; preds = %21
  call void @setup()
  call void @compute_indexmap([256 x [512 x i32]]* getelementptr inbounds ([256 x [256 x [512 x i32]]], [256 x [256 x [512 x i32]]]* @main.indexmap, i64 0, i64 0), i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 2, i64 0))
  call void @compute_initial_conditions([256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u1, i64 0, i64 0), i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0))
  %30 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0), align 16, !tbaa !7
  call void @fft_init(i32 %30)
  call void @fft(i32 1, [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u1, i64 0, i64 0), [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u0, i64 0, i64 0))
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %31

31:                                               ; preds = %36, %29
  %32 = load i32, i32* %6, align 4, !tbaa !7
  %33 = icmp slt i32 %32, 7
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4, !tbaa !7
  call void @timer_clear(i32 %35)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4, !tbaa !7
  br label %31

39:                                               ; preds = %31
  call void @timer_start(i32 0)
  call void @compute_indexmap([256 x [512 x i32]]* getelementptr inbounds ([256 x [256 x [512 x i32]]], [256 x [256 x [512 x i32]]]* @main.indexmap, i64 0, i64 0), i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 2, i64 0))
  call void @compute_initial_conditions([256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u1, i64 0, i64 0), i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0))
  %40 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0), align 16, !tbaa !7
  call void @fft_init(i32 %40)
  call void @fft(i32 1, [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u1, i64 0, i64 0), [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u0, i64 0, i64 0))
  store i32 1, i32* %8, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %48, %39
  %42 = load i32, i32* %8, align 4, !tbaa !7
  %43 = load i32, i32* @niter, align 4, !tbaa !7
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4, !tbaa !7
  call void @evolve([256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u0, i64 0, i64 0), [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u1, i64 0, i64 0), i32 %46, [256 x [512 x i32]]* getelementptr inbounds ([256 x [256 x [512 x i32]]], [256 x [256 x [512 x i32]]]* @main.indexmap, i64 0, i64 0), i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0))
  call void @fft(i32 -1, [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u1, i64 0, i64 0), [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u2, i64 0, i64 0))
  %47 = load i32, i32* %8, align 4, !tbaa !7
  call void @checksum(i32 %47, [256 x [512 x %struct.dcomplex]]* getelementptr inbounds ([256 x [256 x [512 x %struct.dcomplex]]], [256 x [256 x [512 x %struct.dcomplex]]]* @main.u2, i64 0, i64 0), i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4, !tbaa !7
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4, !tbaa !7
  br label %41

51:                                               ; preds = %41
  %52 = load i32, i32* @niter, align 4, !tbaa !7
  call void @verify(i32 512, i32 256, i32 256, i32 %52, i32* %12, i8* %13)
  call void @timer_stop(i32 0)
  %53 = call double @timer_read(i32 0)
  store double %53, double* %10, align 8, !tbaa !9
  %54 = load double, double* %10, align 8, !tbaa !9
  %55 = fcmp une double %54, 0.000000e+00
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = call double @log(double 0x4180000000000000) #6
  %58 = fmul double 7.196410e+00, %57
  %59 = fadd double 1.481570e+01, %58
  %60 = call double @log(double 0x4180000000000000) #6
  %61 = fmul double 7.211130e+00, %60
  %62 = fadd double 5.235180e+00, %61
  %63 = load i32, i32* @niter, align 4, !tbaa !7
  %64 = sitofp i32 %63 to double
  %65 = fmul double %62, %64
  %66 = fadd double %59, %65
  %67 = fmul double 0x4040C6F7A0B5ED8D, %66
  %68 = load double, double* %10, align 8, !tbaa !9
  %69 = fdiv double %67, %68
  store double %69, double* %11, align 8, !tbaa !9
  br label %71

70:                                               ; preds = %51
  store double 0.000000e+00, double* %11, align 8, !tbaa !9
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i8, i8* %13, align 1, !tbaa !6
  %73 = load i32, i32* @niter, align 4, !tbaa !7
  %74 = load i32, i32* %9, align 4, !tbaa !7
  %75 = load double, double* %10, align 8, !tbaa !9
  %76 = load double, double* %11, align 8, !tbaa !9
  %77 = load i32, i32* %12, align 4, !tbaa !7
  call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8 signext %72, i32 512, i32 256, i32 256, i32 %73, i32 %74, double %75, double %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #6
  %78 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #6
  %79 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %79) #6
  %80 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %80) #6
  %81 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #6
  %82 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #6
  %83 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #6
  %84 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #6
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal void @setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.32, i64 0, i64 0))
  store i32 20, i32* @niter, align 4, !tbaa !7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 512, i32 256, i32 256)
  %11 = load i32, i32* @niter, align 4, !tbaa !7
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0), i32 %11)
  store i32 0, i32* %2, align 4, !tbaa !7
  br label %13

13:                                               ; preds = %29, %0
  %14 = load i32, i32* %2, align 4, !tbaa !7
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 %18
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 512, i32* %20, align 4, !tbaa !7
  %21 = load i32, i32* %2, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 %22
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  store i32 256, i32* %24, align 4, !tbaa !7
  %25 = load i32, i32* %2, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 %26
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 2
  store i32 256, i32* %28, align 4, !tbaa !7
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %2, align 4, !tbaa !7
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4, !tbaa !7
  br label %13

32:                                               ; preds = %13
  store i32 0, i32* %2, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i32, i32* %2, align 4, !tbaa !7
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* @xstart, i64 0, i64 %38
  store i32 1, i32* %39, align 4, !tbaa !7
  %40 = load i32, i32* %2, align 4, !tbaa !7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* @xend, i64 0, i64 %41
  store i32 512, i32* %42, align 4, !tbaa !7
  %43 = load i32, i32* %2, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* @ystart, i64 0, i64 %44
  store i32 1, i32* %45, align 4, !tbaa !7
  %46 = load i32, i32* %2, align 4, !tbaa !7
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* @yend, i64 0, i64 %47
  store i32 256, i32* %48, align 4, !tbaa !7
  %49 = load i32, i32* %2, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* @zstart, i64 0, i64 %50
  store i32 1, i32* %51, align 4, !tbaa !7
  %52 = load i32, i32* %2, align 4, !tbaa !7
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* @zend, i64 0, i64 %53
  store i32 256, i32* %54, align 4, !tbaa !7
  br label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %2, align 4, !tbaa !7
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4, !tbaa !7
  br label %33

58:                                               ; preds = %33
  store i32 16, i32* @fftblock, align 4, !tbaa !7
  store i32 18, i32* @fftblockpad, align 4, !tbaa !7
  %59 = load i32, i32* @fftblock, align 4, !tbaa !7
  %60 = icmp ne i32 %59, 16
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @fftblock, align 4, !tbaa !7
  %63 = add nsw i32 %62, 3
  store i32 %63, i32* @fftblockpad, align 4, !tbaa !7
  br label %64

64:                                               ; preds = %61, %58
  %65 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #6
  %66 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #6
  %67 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #6
  %68 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_indexmap([256 x [512 x i32]]*, i32*) #0 {
  %3 = alloca [256 x [512 x i32]]*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store [256 x [512 x i32]]* %0, [256 x [512 x i32]]** %3, align 8, !tbaa !2
  store i32* %1, i32** %4, align 8, !tbaa !2
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6
  %15 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6
  %19 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #6
  %20 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #6
  %21 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #6
  %22 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #6
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %23

23:                                               ; preds = %93, %2
  %24 = load i32, i32* %5, align 4, !tbaa !7, !note.noelle !15
  %25 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 2, i64 0), align 8, !tbaa !7, !note.noelle !15
  %26 = icmp slt i32 %24, %25, !note.noelle !15
  br i1 %26, label %27, label %96, !note.noelle !15

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4, !tbaa !7, !note.noelle !15
  %29 = add nsw i32 %28, 1, !note.noelle !15
  %30 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @xstart, i64 0, i64 2), align 4, !tbaa !7, !note.noelle !15
  %31 = add nsw i32 %29, %30, !note.noelle !15
  %32 = sub nsw i32 %31, 2, !note.noelle !15
  %33 = add nsw i32 %32, 256, !note.noelle !15
  %34 = srem i32 %33, 512, !note.noelle !15
  %35 = sub nsw i32 %34, 256, !note.noelle !15
  store i32 %35, i32* %8, align 4, !tbaa !7, !note.noelle !15
  %36 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !15
  %37 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !15
  %38 = mul nsw i32 %36, %37, !note.noelle !15
  store i32 %38, i32* %9, align 4, !tbaa !7, !note.noelle !15
  store i32 0, i32* %6, align 4, !tbaa !7, !note.noelle !15
  br label %39, !note.noelle !15

39:                                               ; preds = %89, %27
  %40 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !15
  %41 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 2, i64 1), align 4, !tbaa !7, !note.noelle !15
  %42 = icmp slt i32 %40, %41, !note.noelle !15
  br i1 %42, label %43, label %92, !note.noelle !15

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !15
  %45 = add nsw i32 %44, 1, !note.noelle !15
  %46 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ystart, i64 0, i64 2), align 4, !tbaa !7, !note.noelle !15
  %47 = add nsw i32 %45, %46, !note.noelle !15
  %48 = sub nsw i32 %47, 2, !note.noelle !15
  %49 = add nsw i32 %48, 128, !note.noelle !15
  %50 = srem i32 %49, 256, !note.noelle !15
  %51 = sub nsw i32 %50, 128, !note.noelle !15
  store i32 %51, i32* %10, align 4, !tbaa !7, !note.noelle !15
  %52 = load i32, i32* %10, align 4, !tbaa !7, !note.noelle !15
  %53 = load i32, i32* %10, align 4, !tbaa !7, !note.noelle !15
  %54 = mul nsw i32 %52, %53, !note.noelle !15
  %55 = load i32, i32* %9, align 4, !tbaa !7, !note.noelle !15
  %56 = add nsw i32 %54, %55, !note.noelle !15
  store i32 %56, i32* %11, align 4, !tbaa !7, !note.noelle !15
  store i32 0, i32* %7, align 4, !tbaa !7, !note.noelle !15
  br label %57, !note.noelle !15

57:                                               ; preds = %85, %43
  %58 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %59 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 2, i64 2), align 8, !tbaa !7, !note.noelle !15
  %60 = icmp slt i32 %58, %59, !note.noelle !15
  br i1 %60, label %61, label %88, !note.noelle !15

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %63 = add nsw i32 %62, 1, !note.noelle !15
  %64 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @zstart, i64 0, i64 2), align 4, !tbaa !7, !note.noelle !15
  %65 = add nsw i32 %63, %64, !note.noelle !15
  %66 = sub nsw i32 %65, 2, !note.noelle !15
  %67 = add nsw i32 %66, 128, !note.noelle !15
  %68 = srem i32 %67, 256, !note.noelle !15
  %69 = sub nsw i32 %68, 128, !note.noelle !15
  store i32 %69, i32* %12, align 4, !tbaa !7, !note.noelle !15
  %70 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !15
  %71 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !15
  %72 = mul nsw i32 %70, %71, !note.noelle !15
  %73 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !15
  %74 = add nsw i32 %72, %73, !note.noelle !15
  %75 = load [256 x [512 x i32]]*, [256 x [512 x i32]]** %3, align 8, !tbaa !2, !note.noelle !15
  %76 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %77 = sext i32 %76 to i64, !note.noelle !15
  %78 = getelementptr inbounds [256 x [512 x i32]], [256 x [512 x i32]]* %75, i64 %77, !note.noelle !15
  %79 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !15
  %80 = sext i32 %79 to i64, !note.noelle !15
  %81 = getelementptr inbounds [256 x [512 x i32]], [256 x [512 x i32]]* %78, i64 0, i64 %80, !note.noelle !15
  %82 = load i32, i32* %5, align 4, !tbaa !7, !note.noelle !15
  %83 = sext i32 %82 to i64, !note.noelle !15
  %84 = getelementptr inbounds [512 x i32], [512 x i32]* %81, i64 0, i64 %83, !note.noelle !15
  store i32 %74, i32* %84, align 4, !tbaa !7, !note.noelle !15
  br label %85, !note.noelle !15

85:                                               ; preds = %61
  %86 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !15
  %87 = add nsw i32 %86, 1, !note.noelle !15
  store i32 %87, i32* %7, align 4, !tbaa !7, !note.noelle !15
  br label %57, !note.noelle !15

88:                                               ; preds = %57
  br label %89, !note.noelle !15

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4, !tbaa !7, !note.noelle !15
  %91 = add nsw i32 %90, 1, !note.noelle !15
  store i32 %91, i32* %6, align 4, !tbaa !7, !note.noelle !15
  br label %39, !note.noelle !15

92:                                               ; preds = %39
  br label %93, !note.noelle !15

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4, !tbaa !7, !note.noelle !15
  %95 = add nsw i32 %94, 1, !note.noelle !15
  store i32 %95, i32* %5, align 4, !tbaa !7, !note.noelle !15
  br label %23, !note.noelle !15

96:                                               ; preds = %23
  store double 0xBF04B2B4199E149A, double* %13, align 8, !tbaa !9
  store double 1.000000e+00, double* getelementptr inbounds ([1966081 x double], [1966081 x double]* @ex, i64 0, i64 0), align 16, !tbaa !9
  %97 = load double, double* %13, align 8, !tbaa !9
  %98 = call double @exp(double %97) #6
  store double %98, double* getelementptr inbounds ([1966081 x double], [1966081 x double]* @ex, i64 0, i64 1), align 8, !tbaa !9
  store i32 2, i32* %5, align 4, !tbaa !7
  br label %99

99:                                               ; preds = %113, %96
  %100 = load i32, i32* %5, align 4, !tbaa !7
  %101 = icmp sle i32 %100, 1966080
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4, !tbaa !7
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [1966081 x double], [1966081 x double]* @ex, i64 0, i64 %105
  %107 = load double, double* %106, align 8, !tbaa !9
  %108 = load double, double* getelementptr inbounds ([1966081 x double], [1966081 x double]* @ex, i64 0, i64 1), align 8, !tbaa !9
  %109 = fmul double %107, %108
  %110 = load i32, i32* %5, align 4, !tbaa !7
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1966081 x double], [1966081 x double]* @ex, i64 0, i64 %111
  store double %109, double* %112, align 8, !tbaa !9
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %5, align 4, !tbaa !7
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4, !tbaa !7
  br label %99

116:                                              ; preds = %99
  %117 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %117) #6
  %118 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118) #6
  %119 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %119) #6
  %120 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #6
  %121 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %121) #6
  %122 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #6
  %123 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #6
  %124 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %124) #6
  %125 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %125) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_initial_conditions([256 x [512 x %struct.dcomplex]]*, i32*) #0 {
  %3 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store [256 x [512 x %struct.dcomplex]]* %0, [256 x [512 x %struct.dcomplex]]** %3, align 8, !tbaa !2
  store i32* %1, i32** %4, align 8, !tbaa !2
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #6
  %14 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #6
  %15 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #6
  %16 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #6
  %17 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #6
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #6
  %20 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #6
  store double 0x41B2B9B0A1000000, double* %7, align 8, !tbaa !9
  %21 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @zstart, i64 0, i64 0), align 4, !tbaa !7
  %22 = sub nsw i32 %21, 1
  %23 = mul nsw i32 %22, 2
  %24 = mul nsw i32 %23, 512
  %25 = mul nsw i32 %24, 256
  %26 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ystart, i64 0, i64 0), align 4, !tbaa !7
  %27 = sub nsw i32 %26, 1
  %28 = mul nsw i32 %27, 2
  %29 = mul nsw i32 %28, 512
  %30 = add nsw i32 %25, %29
  call void @ipow46(double 0x41D2309CE5400000, i32 %30, double* %8)
  %31 = load double, double* %8, align 8, !tbaa !9
  %32 = call double @randlc(double* %7, double %31)
  store double %32, double* %9, align 8, !tbaa !9
  call void @ipow46(double 0x41D2309CE5400000, i32 262144, double* %8)
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %97, %2
  %34 = load i32, i32* %5, align 4, !tbaa !7
  %35 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 2), align 8, !tbaa !7
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %33
  %38 = load double, double* %7, align 8, !tbaa !9
  store double %38, double* %6, align 8, !tbaa !9
  %39 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 1), align 4, !tbaa !7
  %40 = mul nsw i32 1024, %39
  call void @vranlc(i32 %40, double* %6, double 0x41D2309CE5400000, double* getelementptr inbounds ([524289 x double], [524289 x double]* @compute_initial_conditions.tmp, i64 0, i64 0))
  store i32 1, i32* %12, align 4, !tbaa !7
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %86, %37
  %42 = load i32, i32* %11, align 4, !tbaa !7
  %43 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 1), align 4, !tbaa !7
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %41
  store i32 0, i32* %10, align 4, !tbaa !7
  br label %46

46:                                               ; preds = %82, %45
  %47 = load i32, i32* %10, align 4, !tbaa !7
  %48 = icmp slt i32 %47, 512
  br i1 %48, label %49, label %85

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4, !tbaa !7
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4, !tbaa !7
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [524289 x double], [524289 x double]* @compute_initial_conditions.tmp, i64 0, i64 %52
  %54 = load double, double* %53, align 8, !tbaa !9
  %55 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %3, align 8, !tbaa !2
  %56 = load i32, i32* %5, align 4, !tbaa !7
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %55, i64 %57
  %59 = load i32, i32* %11, align 4, !tbaa !7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %58, i64 0, i64 %60
  %62 = load i32, i32* %10, align 4, !tbaa !7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %64, i32 0, i32 0
  store double %54, double* %65, align 8, !tbaa !19
  %66 = load i32, i32* %12, align 4, !tbaa !7
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4, !tbaa !7
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [524289 x double], [524289 x double]* @compute_initial_conditions.tmp, i64 0, i64 %68
  %70 = load double, double* %69, align 8, !tbaa !9
  %71 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %3, align 8, !tbaa !2
  %72 = load i32, i32* %5, align 4, !tbaa !7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %71, i64 %73
  %75 = load i32, i32* %11, align 4, !tbaa !7
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %74, i64 0, i64 %76
  %78 = load i32, i32* %10, align 4, !tbaa !7
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %77, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %80, i32 0, i32 1
  store double %70, double* %81, align 8, !tbaa !21
  br label %82

82:                                               ; preds = %49
  %83 = load i32, i32* %10, align 4, !tbaa !7
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4, !tbaa !7
  br label %46

85:                                               ; preds = %46
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4, !tbaa !7
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4, !tbaa !7
  br label %41

89:                                               ; preds = %41
  %90 = load i32, i32* %5, align 4, !tbaa !7
  %91 = load i32, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 2), align 8, !tbaa !7
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load double, double* %8, align 8, !tbaa !9
  %95 = call double @randlc(double* %7, double %94)
  store double %95, double* %9, align 8, !tbaa !9
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4, !tbaa !7
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4, !tbaa !7
  br label %33

100:                                              ; preds = %33
  %101 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #6
  %102 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #6
  %103 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #6
  %104 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #6
  %105 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #6
  %106 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %106) #6
  %107 = bitcast double* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #6
  %108 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fft_init(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %2, align 4, !tbaa !7
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #6
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #6
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #6
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6
  %17 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #6
  %18 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #6
  %19 = load i32, i32* %2, align 4, !tbaa !7
  store i32 %19, i32* %4, align 4, !tbaa !7
  %20 = load i32, i32* %2, align 4, !tbaa !7
  %21 = call i32 @ilog2(i32 %20)
  store i32 %21, i32* %3, align 4, !tbaa !7
  %22 = load i32, i32* %3, align 4, !tbaa !7
  %23 = sitofp i32 %22 to double
  store double %23, double* getelementptr inbounds ([512 x %struct.dcomplex], [512 x %struct.dcomplex]* @u, i64 0, i64 0, i32 0), align 16, !tbaa !19
  store double 0.000000e+00, double* getelementptr inbounds ([512 x %struct.dcomplex], [512 x %struct.dcomplex]* @u, i64 0, i64 0, i32 1), align 8, !tbaa !21
  store i32 1, i32* %5, align 4, !tbaa !7
  store i32 1, i32* %8, align 4, !tbaa !7
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %24

24:                                               ; preds = %67, %1
  %25 = load i32, i32* %7, align 4, !tbaa !7
  %26 = load i32, i32* %3, align 4, !tbaa !7
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4, !tbaa !7
  %30 = sitofp i32 %29 to double
  %31 = fdiv double 0x400921FB54442D18, %30
  store double %31, double* %9, align 8, !tbaa !9
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %32

32:                                               ; preds = %58, %28
  %33 = load i32, i32* %6, align 4, !tbaa !7
  %34 = load i32, i32* %8, align 4, !tbaa !7
  %35 = sub nsw i32 %34, 1
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4, !tbaa !7
  %39 = sitofp i32 %38 to double
  %40 = load double, double* %9, align 8, !tbaa !9
  %41 = fmul double %39, %40
  store double %41, double* %10, align 8, !tbaa !9
  %42 = load double, double* %10, align 8, !tbaa !9
  %43 = call double @cos(double %42) #6
  %44 = load i32, i32* %6, align 4, !tbaa !7
  %45 = load i32, i32* %5, align 4, !tbaa !7
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* @u, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %48, i32 0, i32 0
  store double %43, double* %49, align 16, !tbaa !19
  %50 = load double, double* %10, align 8, !tbaa !9
  %51 = call double @sin(double %50) #6
  %52 = load i32, i32* %6, align 4, !tbaa !7
  %53 = load i32, i32* %5, align 4, !tbaa !7
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* @u, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %56, i32 0, i32 1
  store double %51, double* %57, align 8, !tbaa !21
  br label %58

58:                                               ; preds = %37
  %59 = load i32, i32* %6, align 4, !tbaa !7
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4, !tbaa !7
  br label %32

61:                                               ; preds = %32
  %62 = load i32, i32* %5, align 4, !tbaa !7
  %63 = load i32, i32* %8, align 4, !tbaa !7
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %5, align 4, !tbaa !7
  %65 = load i32, i32* %8, align 4, !tbaa !7
  %66 = mul nsw i32 2, %65
  store i32 %66, i32* %8, align 4, !tbaa !7
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4, !tbaa !7
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4, !tbaa !7
  br label %24

70:                                               ; preds = %24
  %71 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #6
  %72 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #6
  %73 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #6
  %74 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #6
  %75 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #6
  %76 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #6
  %77 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #6
  %78 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fft(i32, [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %6 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %7 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %8 = alloca [512 x [18 x %struct.dcomplex]], align 16
  store i32 %0, i32* %4, align 4, !tbaa !7
  store [256 x [512 x %struct.dcomplex]]* %1, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %2, [256 x [512 x %struct.dcomplex]]** %6, align 8, !tbaa !2
  %9 = bitcast [512 x [18 x %struct.dcomplex]]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %9) #6
  %10 = bitcast [512 x [18 x %struct.dcomplex]]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %10) #6
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %15 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %16 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %7, i64 0, i64 0
  %17 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %8, i64 0, i64 0
  call void @cffts1(i32 1, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0), [256 x [512 x %struct.dcomplex]]* %14, [256 x [512 x %struct.dcomplex]]* %15, [18 x %struct.dcomplex]* %16, [18 x %struct.dcomplex]* %17)
  %18 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %19 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %20 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %8, i64 0, i64 0
  call void @cffts2(i32 1, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 1, i64 0), [256 x [512 x %struct.dcomplex]]* %18, [256 x [512 x %struct.dcomplex]]* %19, [18 x %struct.dcomplex]* %20, [18 x %struct.dcomplex]* %21)
  %22 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %23 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %6, align 8, !tbaa !2
  %24 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %8, i64 0, i64 0
  call void @cffts3(i32 1, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 2, i64 0), [256 x [512 x %struct.dcomplex]]* %22, [256 x [512 x %struct.dcomplex]]* %23, [18 x %struct.dcomplex]* %24, [18 x %struct.dcomplex]* %25)
  br label %39

26:                                               ; preds = %3
  %27 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %28 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %29 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %8, i64 0, i64 0
  call void @cffts3(i32 -1, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 2, i64 0), [256 x [512 x %struct.dcomplex]]* %27, [256 x [512 x %struct.dcomplex]]* %28, [18 x %struct.dcomplex]* %29, [18 x %struct.dcomplex]* %30)
  %31 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %32 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %33 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %7, i64 0, i64 0
  %34 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %8, i64 0, i64 0
  call void @cffts2(i32 -1, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 1, i64 0), [256 x [512 x %struct.dcomplex]]* %31, [256 x [512 x %struct.dcomplex]]* %32, [18 x %struct.dcomplex]* %33, [18 x %struct.dcomplex]* %34)
  %35 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  %36 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %6, align 8, !tbaa !2
  %37 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %7, i64 0, i64 0
  %38 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %8, i64 0, i64 0
  call void @cffts1(i32 -1, i32* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @dims, i64 0, i64 0, i64 0), [256 x [512 x %struct.dcomplex]]* %35, [256 x [512 x %struct.dcomplex]]* %36, [18 x %struct.dcomplex]* %37, [18 x %struct.dcomplex]* %38)
  br label %39

39:                                               ; preds = %26, %13
  %40 = bitcast [512 x [18 x %struct.dcomplex]]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %40) #6
  %41 = bitcast [512 x [18 x %struct.dcomplex]]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %41) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @evolve([256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]*, i32, [256 x [512 x i32]]*, i32*) #0 {
  %6 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %7 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x [512 x i32]]*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store [256 x [512 x %struct.dcomplex]]* %0, [256 x [512 x %struct.dcomplex]]** %6, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %1, [256 x [512 x %struct.dcomplex]]** %7, align 8, !tbaa !2
  store i32 %2, i32* %8, align 4, !tbaa !7
  store [256 x [512 x i32]]* %3, [256 x [512 x i32]]** %9, align 8, !tbaa !2
  store i32* %4, i32** %10, align 8, !tbaa !2
  %14 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6
  %15 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6
  %16 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6
  store i32 0, i32* %13, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %126, %5
  %18 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %19 = load i32*, i32** %10, align 8, !tbaa !2, !note.noelle !22
  %20 = getelementptr inbounds i32, i32* %19, i64 2, !note.noelle !22
  %21 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !22
  %22 = icmp slt i32 %18, %21, !note.noelle !22
  br i1 %22, label %23, label %129, !note.noelle !22

23:                                               ; preds = %17
  store i32 0, i32* %12, align 4, !tbaa !7, !note.noelle !22
  br label %24, !note.noelle !22

24:                                               ; preds = %122, %23
  %25 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %26 = load i32*, i32** %10, align 8, !tbaa !2, !note.noelle !22
  %27 = getelementptr inbounds i32, i32* %26, i64 1, !note.noelle !22
  %28 = load i32, i32* %27, align 4, !tbaa !7, !note.noelle !22
  %29 = icmp slt i32 %25, %28, !note.noelle !22
  br i1 %29, label %30, label %125, !note.noelle !22

30:                                               ; preds = %24
  store i32 0, i32* %11, align 4, !tbaa !7, !note.noelle !22
  br label %31, !note.noelle !22

31:                                               ; preds = %118, %30
  %32 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %33 = load i32*, i32** %10, align 8, !tbaa !2, !note.noelle !22
  %34 = getelementptr inbounds i32, i32* %33, i64 0, !note.noelle !22
  %35 = load i32, i32* %34, align 4, !tbaa !7, !note.noelle !22
  %36 = icmp slt i32 %32, %35, !note.noelle !22
  br i1 %36, label %37, label %121, !note.noelle !22

37:                                               ; preds = %31
  %38 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %6, align 8, !tbaa !2, !note.noelle !22
  %39 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %40 = sext i32 %39 to i64, !note.noelle !22
  %41 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %38, i64 %40, !note.noelle !22
  %42 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %43 = sext i32 %42 to i64, !note.noelle !22
  %44 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %41, i64 0, i64 %43, !note.noelle !22
  %45 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %46 = sext i32 %45 to i64, !note.noelle !22
  %47 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %44, i64 0, i64 %46, !note.noelle !22
  %48 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %47, i32 0, i32 0, !note.noelle !22
  %49 = load double, double* %48, align 8, !tbaa !19, !note.noelle !22
  %50 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !22
  %51 = load [256 x [512 x i32]]*, [256 x [512 x i32]]** %9, align 8, !tbaa !2, !note.noelle !22
  %52 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %53 = sext i32 %52 to i64, !note.noelle !22
  %54 = getelementptr inbounds [256 x [512 x i32]], [256 x [512 x i32]]* %51, i64 %53, !note.noelle !22
  %55 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %56 = sext i32 %55 to i64, !note.noelle !22
  %57 = getelementptr inbounds [256 x [512 x i32]], [256 x [512 x i32]]* %54, i64 0, i64 %56, !note.noelle !22
  %58 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %59 = sext i32 %58 to i64, !note.noelle !22
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* %57, i64 0, i64 %59, !note.noelle !22
  %61 = load i32, i32* %60, align 4, !tbaa !7, !note.noelle !22
  %62 = mul nsw i32 %50, %61, !note.noelle !22
  %63 = sext i32 %62 to i64, !note.noelle !22
  %64 = getelementptr inbounds [1966081 x double], [1966081 x double]* @ex, i64 0, i64 %63, !note.noelle !22
  %65 = load double, double* %64, align 8, !tbaa !9, !note.noelle !22
  %66 = fmul double %49, %65, !note.noelle !22
  %67 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %7, align 8, !tbaa !2, !note.noelle !22
  %68 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %69 = sext i32 %68 to i64, !note.noelle !22
  %70 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %67, i64 %69, !note.noelle !22
  %71 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %72 = sext i32 %71 to i64, !note.noelle !22
  %73 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %70, i64 0, i64 %72, !note.noelle !22
  %74 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %75 = sext i32 %74 to i64, !note.noelle !22
  %76 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %73, i64 0, i64 %75, !note.noelle !22
  %77 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %76, i32 0, i32 0, !note.noelle !22
  store double %66, double* %77, align 8, !tbaa !19, !note.noelle !22
  %78 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %6, align 8, !tbaa !2, !note.noelle !22
  %79 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %80 = sext i32 %79 to i64, !note.noelle !22
  %81 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %78, i64 %80, !note.noelle !22
  %82 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %83 = sext i32 %82 to i64, !note.noelle !22
  %84 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %81, i64 0, i64 %83, !note.noelle !22
  %85 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %86 = sext i32 %85 to i64, !note.noelle !22
  %87 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %84, i64 0, i64 %86, !note.noelle !22
  %88 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %87, i32 0, i32 1, !note.noelle !22
  %89 = load double, double* %88, align 8, !tbaa !21, !note.noelle !22
  %90 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !22
  %91 = load [256 x [512 x i32]]*, [256 x [512 x i32]]** %9, align 8, !tbaa !2, !note.noelle !22
  %92 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %93 = sext i32 %92 to i64, !note.noelle !22
  %94 = getelementptr inbounds [256 x [512 x i32]], [256 x [512 x i32]]* %91, i64 %93, !note.noelle !22
  %95 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %96 = sext i32 %95 to i64, !note.noelle !22
  %97 = getelementptr inbounds [256 x [512 x i32]], [256 x [512 x i32]]* %94, i64 0, i64 %96, !note.noelle !22
  %98 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %99 = sext i32 %98 to i64, !note.noelle !22
  %100 = getelementptr inbounds [512 x i32], [512 x i32]* %97, i64 0, i64 %99, !note.noelle !22
  %101 = load i32, i32* %100, align 4, !tbaa !7, !note.noelle !22
  %102 = mul nsw i32 %90, %101, !note.noelle !22
  %103 = sext i32 %102 to i64, !note.noelle !22
  %104 = getelementptr inbounds [1966081 x double], [1966081 x double]* @ex, i64 0, i64 %103, !note.noelle !22
  %105 = load double, double* %104, align 8, !tbaa !9, !note.noelle !22
  %106 = fmul double %89, %105, !note.noelle !22
  %107 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %7, align 8, !tbaa !2, !note.noelle !22
  %108 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %109 = sext i32 %108 to i64, !note.noelle !22
  %110 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %107, i64 %109, !note.noelle !22
  %111 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %112 = sext i32 %111 to i64, !note.noelle !22
  %113 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %110, i64 0, i64 %112, !note.noelle !22
  %114 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %115 = sext i32 %114 to i64, !note.noelle !22
  %116 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %113, i64 0, i64 %115, !note.noelle !22
  %117 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %116, i32 0, i32 1, !note.noelle !22
  store double %106, double* %117, align 8, !tbaa !21, !note.noelle !22
  br label %118, !note.noelle !22

118:                                              ; preds = %37
  %119 = load i32, i32* %11, align 4, !tbaa !7, !note.noelle !22
  %120 = add nsw i32 %119, 1, !note.noelle !22
  store i32 %120, i32* %11, align 4, !tbaa !7, !note.noelle !22
  br label %31, !note.noelle !22

121:                                              ; preds = %31
  br label %122, !note.noelle !22

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4, !tbaa !7, !note.noelle !22
  %124 = add nsw i32 %123, 1, !note.noelle !22
  store i32 %124, i32* %12, align 4, !tbaa !7, !note.noelle !22
  br label %24, !note.noelle !22

125:                                              ; preds = %24
  br label %126, !note.noelle !22

126:                                              ; preds = %125
  %127 = load i32, i32* %13, align 4, !tbaa !7, !note.noelle !22
  %128 = add nsw i32 %127, 1, !note.noelle !22
  store i32 %128, i32* %13, align 4, !tbaa !7, !note.noelle !22
  br label %17, !note.noelle !22

129:                                              ; preds = %17
  %130 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %130) #6
  %131 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %131) #6
  %132 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %132) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checksum(i32, [256 x [512 x %struct.dcomplex]]*, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dcomplex, align 8
  %13 = alloca %struct.dcomplex, align 8
  store i32 %0, i32* %4, align 4, !tbaa !7
  store [256 x [512 x %struct.dcomplex]]* %1, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2
  store i32* %2, i32** %6, align 8, !tbaa !2
  %14 = bitcast i32* %7 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6, !note.noelle !25
  %15 = bitcast i32* %8 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6, !note.noelle !25
  %16 = bitcast i32* %9 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6, !note.noelle !25
  %17 = bitcast i32* %10 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6, !note.noelle !25
  %18 = bitcast i32* %11 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6, !note.noelle !25
  %19 = bitcast %struct.dcomplex* %12 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %19) #6, !note.noelle !25
  %20 = bitcast %struct.dcomplex* %13 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %20) #6, !note.noelle !25
  %21 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 0, !note.noelle !25
  store double 0.000000e+00, double* %21, align 8, !tbaa !19, !note.noelle !25
  %22 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 1, !note.noelle !25
  store double 0.000000e+00, double* %22, align 8, !tbaa !21, !note.noelle !25
  store i32 1, i32* %7, align 4, !tbaa !7, !note.noelle !25
  br label %23, !note.noelle !25

23:                                               ; preds = %109, %3
  %24 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !26
  %25 = icmp sle i32 %24, 1024, !note.noelle !26
  br i1 %25, label %26, label %112, !note.noelle !26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !26
  %28 = srem i32 %27, 512, !note.noelle !26
  %29 = add nsw i32 %28, 1, !note.noelle !26
  store i32 %29, i32* %8, align 4, !tbaa !7, !note.noelle !26
  %30 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !26
  %31 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @xstart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %32 = icmp sge i32 %30, %31, !note.noelle !26
  br i1 %32, label %33, label %108, !note.noelle !26

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !26
  %35 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @xend, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %36 = icmp sle i32 %34, %35, !note.noelle !26
  br i1 %36, label %37, label %108, !note.noelle !26

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !26
  %39 = mul nsw i32 3, %38, !note.noelle !26
  %40 = srem i32 %39, 256, !note.noelle !26
  %41 = add nsw i32 %40, 1, !note.noelle !26
  store i32 %41, i32* %9, align 4, !tbaa !7, !note.noelle !26
  %42 = load i32, i32* %9, align 4, !tbaa !7, !note.noelle !26
  %43 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ystart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %44 = icmp sge i32 %42, %43, !note.noelle !26
  br i1 %44, label %45, label %107, !note.noelle !26

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4, !tbaa !7, !note.noelle !26
  %47 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @yend, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %48 = icmp sle i32 %46, %47, !note.noelle !26
  br i1 %48, label %49, label %107, !note.noelle !26

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !26
  %51 = mul nsw i32 5, %50, !note.noelle !26
  %52 = srem i32 %51, 256, !note.noelle !26
  %53 = add nsw i32 %52, 1, !note.noelle !26
  store i32 %53, i32* %10, align 4, !tbaa !7, !note.noelle !26
  %54 = load i32, i32* %10, align 4, !tbaa !7, !note.noelle !26
  %55 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @zstart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %56 = icmp sge i32 %54, %55, !note.noelle !26
  br i1 %56, label %57, label %106, !note.noelle !26

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4, !tbaa !7, !note.noelle !26
  %59 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @zend, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %60 = icmp sle i32 %58, %59, !note.noelle !26
  br i1 %60, label %61, label %106, !note.noelle !26

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 0, !note.noelle !26
  %63 = load double, double* %62, align 8, !tbaa !19, !note.noelle !26
  %64 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2, !note.noelle !26
  %65 = load i32, i32* %10, align 4, !tbaa !7, !note.noelle !26
  %66 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @zstart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %67 = sub nsw i32 %65, %66, !note.noelle !26
  %68 = sext i32 %67 to i64, !note.noelle !26
  %69 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %64, i64 %68, !note.noelle !26
  %70 = load i32, i32* %9, align 4, !tbaa !7, !note.noelle !26
  %71 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ystart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %72 = sub nsw i32 %70, %71, !note.noelle !26
  %73 = sext i32 %72 to i64, !note.noelle !26
  %74 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %69, i64 0, i64 %73, !note.noelle !26
  %75 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !26
  %76 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @xstart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %77 = sub nsw i32 %75, %76, !note.noelle !26
  %78 = sext i32 %77 to i64, !note.noelle !26
  %79 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %74, i64 0, i64 %78, !note.noelle !26
  %80 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %79, i32 0, i32 0, !note.noelle !26
  %81 = load double, double* %80, align 8, !tbaa !19, !note.noelle !26
  %82 = fadd double %63, %81, !note.noelle !26
  %83 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 0, !note.noelle !26
  store double %82, double* %83, align 8, !tbaa !19, !note.noelle !26
  %84 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 1, !note.noelle !26
  %85 = load double, double* %84, align 8, !tbaa !21, !note.noelle !26
  %86 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %5, align 8, !tbaa !2, !note.noelle !26
  %87 = load i32, i32* %10, align 4, !tbaa !7, !note.noelle !26
  %88 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @zstart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %89 = sub nsw i32 %87, %88, !note.noelle !26
  %90 = sext i32 %89 to i64, !note.noelle !26
  %91 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %86, i64 %90, !note.noelle !26
  %92 = load i32, i32* %9, align 4, !tbaa !7, !note.noelle !26
  %93 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ystart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %94 = sub nsw i32 %92, %93, !note.noelle !26
  %95 = sext i32 %94 to i64, !note.noelle !26
  %96 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %91, i64 0, i64 %95, !note.noelle !26
  %97 = load i32, i32* %8, align 4, !tbaa !7, !note.noelle !26
  %98 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @xstart, i64 0, i64 0), align 4, !tbaa !7, !note.noelle !26
  %99 = sub nsw i32 %97, %98, !note.noelle !26
  %100 = sext i32 %99 to i64, !note.noelle !26
  %101 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %96, i64 0, i64 %100, !note.noelle !26
  %102 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %101, i32 0, i32 1, !note.noelle !26
  %103 = load double, double* %102, align 8, !tbaa !21, !note.noelle !26
  %104 = fadd double %85, %103, !note.noelle !26
  %105 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 1, !note.noelle !26
  store double %104, double* %105, align 8, !tbaa !21, !note.noelle !26
  br label %106, !note.noelle !26

106:                                              ; preds = %61, %57, %49
  br label %107, !note.noelle !26

107:                                              ; preds = %106, %45, %37
  br label %108, !note.noelle !26

108:                                              ; preds = %107, %33, %26
  br label %109, !note.noelle !26

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !26
  %111 = add nsw i32 %110, 1, !note.noelle !26
  store i32 %111, i32* %7, align 4, !tbaa !7, !note.noelle !26
  br label %23, !note.noelle !26

112:                                              ; preds = %23
  %113 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 0, !note.noelle !25
  %114 = load double, double* %113, align 8, !tbaa !19, !note.noelle !25
  %115 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %116 = sext i32 %115 to i64, !note.noelle !25
  %117 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %116, !note.noelle !25
  %118 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %117, i32 0, i32 0, !note.noelle !25
  %119 = load double, double* %118, align 16, !tbaa !19, !note.noelle !25
  %120 = fadd double %119, %114, !note.noelle !25
  store double %120, double* %118, align 16, !tbaa !19, !note.noelle !25
  %121 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %12, i32 0, i32 1, !note.noelle !25
  %122 = load double, double* %121, align 8, !tbaa !21, !note.noelle !25
  %123 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %124 = sext i32 %123 to i64, !note.noelle !25
  %125 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %124, !note.noelle !25
  %126 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %125, i32 0, i32 1, !note.noelle !25
  %127 = load double, double* %126, align 8, !tbaa !21, !note.noelle !25
  %128 = fadd double %127, %122, !note.noelle !25
  store double %128, double* %126, align 8, !tbaa !21, !note.noelle !25
  %129 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %130 = sext i32 %129 to i64, !note.noelle !25
  %131 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %130, !note.noelle !25
  %132 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %131, i32 0, i32 0, !note.noelle !25
  %133 = load double, double* %132, align 16, !tbaa !19, !note.noelle !25
  %134 = fdiv double %133, 0x4180000000000000, !note.noelle !25
  %135 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %136 = sext i32 %135 to i64, !note.noelle !25
  %137 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %136, !note.noelle !25
  %138 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %137, i32 0, i32 0, !note.noelle !25
  store double %134, double* %138, align 16, !tbaa !19, !note.noelle !25
  %139 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %140 = sext i32 %139 to i64, !note.noelle !25
  %141 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %140, !note.noelle !25
  %142 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %141, i32 0, i32 1, !note.noelle !25
  %143 = load double, double* %142, align 8, !tbaa !21, !note.noelle !25
  %144 = fdiv double %143, 0x4180000000000000, !note.noelle !25
  %145 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %146 = sext i32 %145 to i64, !note.noelle !25
  %147 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %146, !note.noelle !25
  %148 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %147, i32 0, i32 1, !note.noelle !25
  store double %144, double* %148, align 8, !tbaa !21, !note.noelle !25
  %149 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %150 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %151 = sext i32 %150 to i64, !note.noelle !25
  %152 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %151, !note.noelle !25
  %153 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %152, i32 0, i32 0, !note.noelle !25
  %154 = load double, double* %153, align 16, !tbaa !19, !note.noelle !25
  %155 = load i32, i32* %4, align 4, !tbaa !7, !note.noelle !25
  %156 = sext i32 %155 to i64, !note.noelle !25
  %157 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %156, !note.noelle !25
  %158 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %157, i32 0, i32 1, !note.noelle !25
  %159 = load double, double* %158, align 8, !tbaa !21, !note.noelle !25
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i32 %149, double %154, double %159), !note.noelle !25
  %161 = bitcast %struct.dcomplex* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %161) #6
  %162 = bitcast %struct.dcomplex* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %162) #6
  %163 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %163) #6
  %164 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %164) #6
  %165 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %165) #6
  %166 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %166) #6
  %167 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %167) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @verify(i32, i32, i32, i32, i32*, i8*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [7 x double], align 16
  %19 = alloca [7 x double], align 16
  %20 = alloca [7 x double], align 16
  %21 = alloca [7 x double], align 16
  %22 = alloca [7 x double], align 16
  %23 = alloca [7 x double], align 16
  %24 = alloca [21 x double], align 16
  %25 = alloca [21 x double], align 16
  %26 = alloca [21 x double], align 16
  %27 = alloca [21 x double], align 16
  store i32 %0, i32* %7, align 4, !tbaa !7
  store i32 %1, i32* %8, align 4, !tbaa !7
  store i32 %2, i32* %9, align 4, !tbaa !7
  store i32 %3, i32* %10, align 4, !tbaa !7
  store i32* %4, i32** %11, align 8, !tbaa !2
  store i8* %5, i8** %12, align 8, !tbaa !2
  %28 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #6
  %29 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #6
  %30 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #6
  %31 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #6
  %32 = bitcast double* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #6
  %33 = bitcast [7 x double]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %33) #6
  %34 = bitcast [7 x double]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 56, i1 false)
  %35 = bitcast i8* %34 to [7 x double]*
  %36 = getelementptr inbounds [7 x double], [7 x double]* %35, i32 0, i32 1
  store double 0x408154DE9E5DA8C7, double* %36, align 8
  %37 = getelementptr inbounds [7 x double], [7 x double]* %35, i32 0, i32 2
  store double 0x4081551BBB575EAB, double* %37, align 16
  %38 = getelementptr inbounds [7 x double], [7 x double]* %35, i32 0, i32 3
  store double 0x408154EB318EB593, double* %38, align 8
  %39 = getelementptr inbounds [7 x double], [7 x double]* %35, i32 0, i32 4
  store double 0x40815456C13A7B04, double* %39, align 16
  %40 = getelementptr inbounds [7 x double], [7 x double]* %35, i32 0, i32 5
  store double 0x408153676E9F169C, double* %40, align 8
  %41 = getelementptr inbounds [7 x double], [7 x double]* %35, i32 0, i32 6
  store double 0x408152259010E0A1, double* %41, align 16
  %42 = bitcast [7 x double]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %42) #6
  %43 = bitcast [7 x double]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 56, i1 false)
  %44 = bitcast i8* %43 to [7 x double]*
  %45 = getelementptr inbounds [7 x double], [7 x double]* %44, i32 0, i32 1
  store double 0x407E4894D21E84F6, double* %45, align 8
  %46 = getelementptr inbounds [7 x double], [7 x double]* %44, i32 0, i32 2
  store double 0x407E687CA0F87E44, double* %46, align 16
  %47 = getelementptr inbounds [7 x double], [7 x double]* %44, i32 0, i32 3
  store double 0x407E8641D4F55AF9, double* %47, align 8
  %48 = getelementptr inbounds [7 x double], [7 x double]* %44, i32 0, i32 4
  store double 0x407EA2097D7357C2, double* %48, align 16
  %49 = getelementptr inbounds [7 x double], [7 x double]* %44, i32 0, i32 5
  store double 0x407EBBF61C86EF29, double* %49, align 8
  %50 = getelementptr inbounds [7 x double], [7 x double]* %44, i32 0, i32 6
  store double 0x407ED427D4DF0213, double* %50, align 16
  %51 = bitcast [7 x double]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %51) #6
  %52 = bitcast [7 x double]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %52, i8 0, i64 56, i1 false)
  %53 = bitcast i8* %52 to [7 x double]*
  %54 = getelementptr inbounds [7 x double], [7 x double]* %53, i32 0, i32 1
  store double 0x4081BAE3C635196D, double* %54, align 8
  %55 = getelementptr inbounds [7 x double], [7 x double]* %53, i32 0, i32 2
  store double 0x40819926462BA5A4, double* %55, align 16
  %56 = getelementptr inbounds [7 x double], [7 x double]* %53, i32 0, i32 3
  store double 0x40817B3822354DD9, double* %56, align 8
  %57 = getelementptr inbounds [7 x double], [7 x double]* %53, i32 0, i32 4
  store double 0x4081608EF5C48194, double* %57, align 16
  %58 = getelementptr inbounds [7 x double], [7 x double]* %53, i32 0, i32 5
  store double 0x408148B81D084E83, double* %58, align 8
  %59 = getelementptr inbounds [7 x double], [7 x double]* %53, i32 0, i32 6
  store double 0x40813353E9E3E09A, double* %59, align 16
  %60 = bitcast [7 x double]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %60) #6
  %61 = bitcast [7 x double]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %61, i8 0, i64 56, i1 false)
  %62 = bitcast i8* %61 to [7 x double]*
  %63 = getelementptr inbounds [7 x double], [7 x double]* %62, i32 0, i32 1
  store double 0x40808A98F467F156, double* %63, align 8
  %64 = getelementptr inbounds [7 x double], [7 x double]* %62, i32 0, i32 2
  store double 0x408081B851380EB7, double* %64, align 16
  %65 = getelementptr inbounds [7 x double], [7 x double]* %62, i32 0, i32 3
  store double 0x408078CC18578DFC, double* %65, align 8
  %66 = getelementptr inbounds [7 x double], [7 x double]* %62, i32 0, i32 4
  store double 0x40807005B7059038, double* %66, align 16
  %67 = getelementptr inbounds [7 x double], [7 x double]* %62, i32 0, i32 5
  store double 0x408067854B0E36C9, double* %67, align 8
  %68 = getelementptr inbounds [7 x double], [7 x double]* %62, i32 0, i32 6
  store double 0x40805F5EAB0F5DA2, double* %68, align 16
  %69 = bitcast [7 x double]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %69) #6
  %70 = bitcast [7 x double]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %70, i8 0, i64 56, i1 false)
  %71 = bitcast i8* %70 to [7 x double]*
  %72 = getelementptr inbounds [7 x double], [7 x double]* %71, i32 0, i32 1
  store double 0x407F8AC6A8CB8B90, double* %72, align 8
  %73 = getelementptr inbounds [7 x double], [7 x double]* %71, i32 0, i32 2
  store double 0x407F9F0F4941FB3E, double* %73, align 16
  %74 = getelementptr inbounds [7 x double], [7 x double]* %71, i32 0, i32 3
  store double 0x407FAF00C6D7110A, double* %74, align 8
  %75 = getelementptr inbounds [7 x double], [7 x double]* %71, i32 0, i32 4
  store double 0x407FBCA0EB3ECBEF, double* %75, align 16
  %76 = getelementptr inbounds [7 x double], [7 x double]* %71, i32 0, i32 5
  store double 0x407FC85F79D2C1E9, double* %76, align 8
  %77 = getelementptr inbounds [7 x double], [7 x double]* %71, i32 0, i32 6
  store double 0x407FD2611DBB8FA9, double* %77, align 16
  %78 = bitcast [7 x double]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %78) #6
  %79 = bitcast [7 x double]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %79, i8 0, i64 56, i1 false)
  %80 = bitcast i8* %79 to [7 x double]*
  %81 = getelementptr inbounds [7 x double], [7 x double]* %80, i32 0, i32 1
  store double 0x407FF67A05A82466, double* %81, align 8
  %82 = getelementptr inbounds [7 x double], [7 x double]* %80, i32 0, i32 2
  store double 0x407FDE18707A9D72, double* %82, align 16
  %83 = getelementptr inbounds [7 x double], [7 x double]* %80, i32 0, i32 3
  store double 0x407FDD07CCB88353, double* %83, align 8
  %84 = getelementptr inbounds [7 x double], [7 x double]* %80, i32 0, i32 4
  store double 0x407FE2234776F4EF, double* %84, align 16
  %85 = getelementptr inbounds [7 x double], [7 x double]* %80, i32 0, i32 5
  store double 0x407FE7DD0AF2CEF4, double* %85, align 8
  %86 = getelementptr inbounds [7 x double], [7 x double]* %80, i32 0, i32 6
  store double 0x407FECAB25FE5602, double* %86, align 16
  %87 = bitcast [21 x double]* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 168, i8* %87) #6
  %88 = bitcast [21 x double]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %88, i8* align 16 bitcast ([21 x double]* @__const.verify.vdata_real_b to i8*), i64 168, i1 false)
  %89 = bitcast [21 x double]* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 168, i8* %89) #6
  %90 = bitcast [21 x double]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %90, i8* align 16 bitcast ([21 x double]* @__const.verify.vdata_imag_b to i8*), i64 168, i1 false)
  %91 = bitcast [21 x double]* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 168, i8* %91) #6
  %92 = bitcast [21 x double]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %92, i8* align 16 bitcast ([21 x double]* @__const.verify.vdata_real_c to i8*), i64 168, i1 false)
  %93 = bitcast [21 x double]* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 168, i8* %93) #6
  %94 = bitcast [21 x double]* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %94, i8* align 16 bitcast ([21 x double]* @__const.verify.vdata_imag_c to i8*), i64 168, i1 false)
  store double 0x3D719799812DEA11, double* %17, align 8, !tbaa !9
  %95 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 1, i32* %95, align 4, !tbaa !7
  %96 = load i8*, i8** %12, align 8, !tbaa !2
  store i8 85, i8* %96, align 1, !tbaa !6
  %97 = load i32, i32* %7, align 4, !tbaa !7
  %98 = icmp eq i32 %97, 64
  br i1 %98, label %99, label %163

99:                                               ; preds = %6
  %100 = load i32, i32* %8, align 4, !tbaa !7
  %101 = icmp eq i32 %100, 64
  br i1 %101, label %102, label %163

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4, !tbaa !7
  %104 = icmp eq i32 %103, 64
  br i1 %104, label %105, label %163

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4, !tbaa !7
  %107 = icmp eq i32 %106, 6
  br i1 %107, label %108, label %163

108:                                              ; preds = %105
  %109 = load i8*, i8** %12, align 8, !tbaa !2
  store i8 83, i8* %109, align 1, !tbaa !6
  store i32 1, i32* %15, align 4, !tbaa !7
  br label %110

110:                                              ; preds = %159, %108
  %111 = load i32, i32* %15, align 4, !tbaa !7
  %112 = load i32, i32* %10, align 4, !tbaa !7
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %162

114:                                              ; preds = %110
  %115 = load i32, i32* %15, align 4, !tbaa !7
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %117, i32 0, i32 0
  %119 = load double, double* %118, align 16, !tbaa !19
  %120 = load i32, i32* %15, align 4, !tbaa !7
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 %121
  %123 = load double, double* %122, align 8, !tbaa !9
  %124 = fsub double %119, %123
  %125 = load i32, i32* %15, align 4, !tbaa !7
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 %126
  %128 = load double, double* %127, align 8, !tbaa !9
  %129 = fdiv double %124, %128
  store double %129, double* %16, align 8, !tbaa !9
  %130 = load double, double* %16, align 8, !tbaa !9
  %131 = call double @llvm.fabs.f64(double %130)
  %132 = load double, double* %17, align 8, !tbaa !9
  %133 = fcmp ogt double %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %114
  %135 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %135, align 4, !tbaa !7
  br label %162

136:                                              ; preds = %114
  %137 = load i32, i32* %15, align 4, !tbaa !7
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %139, i32 0, i32 1
  %141 = load double, double* %140, align 8, !tbaa !21
  %142 = load i32, i32* %15, align 4, !tbaa !7
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [7 x double], [7 x double]* %19, i64 0, i64 %143
  %145 = load double, double* %144, align 8, !tbaa !9
  %146 = fsub double %141, %145
  %147 = load i32, i32* %15, align 4, !tbaa !7
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [7 x double], [7 x double]* %19, i64 0, i64 %148
  %150 = load double, double* %149, align 8, !tbaa !9
  %151 = fdiv double %146, %150
  store double %151, double* %16, align 8, !tbaa !9
  %152 = load double, double* %16, align 8, !tbaa !9
  %153 = call double @llvm.fabs.f64(double %152)
  %154 = load double, double* %17, align 8, !tbaa !9
  %155 = fcmp ogt double %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %136
  %157 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %157, align 4, !tbaa !7
  br label %162

158:                                              ; preds = %136
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %15, align 4, !tbaa !7
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4, !tbaa !7
  br label %110

162:                                              ; preds = %156, %134, %110
  br label %435

163:                                              ; preds = %105, %102, %99, %6
  %164 = load i32, i32* %7, align 4, !tbaa !7
  %165 = icmp eq i32 %164, 128
  br i1 %165, label %166, label %230

166:                                              ; preds = %163
  %167 = load i32, i32* %8, align 4, !tbaa !7
  %168 = icmp eq i32 %167, 128
  br i1 %168, label %169, label %230

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4, !tbaa !7
  %171 = icmp eq i32 %170, 32
  br i1 %171, label %172, label %230

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4, !tbaa !7
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %175, label %230

175:                                              ; preds = %172
  %176 = load i8*, i8** %12, align 8, !tbaa !2
  store i8 87, i8* %176, align 1, !tbaa !6
  store i32 1, i32* %15, align 4, !tbaa !7
  br label %177

177:                                              ; preds = %226, %175
  %178 = load i32, i32* %15, align 4, !tbaa !7
  %179 = load i32, i32* %10, align 4, !tbaa !7
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %229

181:                                              ; preds = %177
  %182 = load i32, i32* %15, align 4, !tbaa !7
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %184, i32 0, i32 0
  %186 = load double, double* %185, align 16, !tbaa !19
  %187 = load i32, i32* %15, align 4, !tbaa !7
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [7 x double], [7 x double]* %20, i64 0, i64 %188
  %190 = load double, double* %189, align 8, !tbaa !9
  %191 = fsub double %186, %190
  %192 = load i32, i32* %15, align 4, !tbaa !7
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [7 x double], [7 x double]* %20, i64 0, i64 %193
  %195 = load double, double* %194, align 8, !tbaa !9
  %196 = fdiv double %191, %195
  store double %196, double* %16, align 8, !tbaa !9
  %197 = load double, double* %16, align 8, !tbaa !9
  %198 = call double @llvm.fabs.f64(double %197)
  %199 = load double, double* %17, align 8, !tbaa !9
  %200 = fcmp ogt double %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %181
  %202 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %202, align 4, !tbaa !7
  br label %229

203:                                              ; preds = %181
  %204 = load i32, i32* %15, align 4, !tbaa !7
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %205
  %207 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %206, i32 0, i32 1
  %208 = load double, double* %207, align 8, !tbaa !21
  %209 = load i32, i32* %15, align 4, !tbaa !7
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [7 x double], [7 x double]* %21, i64 0, i64 %210
  %212 = load double, double* %211, align 8, !tbaa !9
  %213 = fsub double %208, %212
  %214 = load i32, i32* %15, align 4, !tbaa !7
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [7 x double], [7 x double]* %21, i64 0, i64 %215
  %217 = load double, double* %216, align 8, !tbaa !9
  %218 = fdiv double %213, %217
  store double %218, double* %16, align 8, !tbaa !9
  %219 = load double, double* %16, align 8, !tbaa !9
  %220 = call double @llvm.fabs.f64(double %219)
  %221 = load double, double* %17, align 8, !tbaa !9
  %222 = fcmp ogt double %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %203
  %224 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %224, align 4, !tbaa !7
  br label %229

225:                                              ; preds = %203
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %15, align 4, !tbaa !7
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4, !tbaa !7
  br label %177

229:                                              ; preds = %223, %201, %177
  br label %434

230:                                              ; preds = %172, %169, %166, %163
  %231 = load i32, i32* %7, align 4, !tbaa !7
  %232 = icmp eq i32 %231, 256
  br i1 %232, label %233, label %297

233:                                              ; preds = %230
  %234 = load i32, i32* %8, align 4, !tbaa !7
  %235 = icmp eq i32 %234, 256
  br i1 %235, label %236, label %297

236:                                              ; preds = %233
  %237 = load i32, i32* %9, align 4, !tbaa !7
  %238 = icmp eq i32 %237, 128
  br i1 %238, label %239, label %297

239:                                              ; preds = %236
  %240 = load i32, i32* %10, align 4, !tbaa !7
  %241 = icmp eq i32 %240, 6
  br i1 %241, label %242, label %297

242:                                              ; preds = %239
  %243 = load i8*, i8** %12, align 8, !tbaa !2
  store i8 65, i8* %243, align 1, !tbaa !6
  store i32 1, i32* %15, align 4, !tbaa !7
  br label %244

244:                                              ; preds = %293, %242
  %245 = load i32, i32* %15, align 4, !tbaa !7
  %246 = load i32, i32* %10, align 4, !tbaa !7
  %247 = icmp sle i32 %245, %246
  br i1 %247, label %248, label %296

248:                                              ; preds = %244
  %249 = load i32, i32* %15, align 4, !tbaa !7
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %250
  %252 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %251, i32 0, i32 0
  %253 = load double, double* %252, align 16, !tbaa !19
  %254 = load i32, i32* %15, align 4, !tbaa !7
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [7 x double], [7 x double]* %22, i64 0, i64 %255
  %257 = load double, double* %256, align 8, !tbaa !9
  %258 = fsub double %253, %257
  %259 = load i32, i32* %15, align 4, !tbaa !7
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [7 x double], [7 x double]* %22, i64 0, i64 %260
  %262 = load double, double* %261, align 8, !tbaa !9
  %263 = fdiv double %258, %262
  store double %263, double* %16, align 8, !tbaa !9
  %264 = load double, double* %16, align 8, !tbaa !9
  %265 = call double @llvm.fabs.f64(double %264)
  %266 = load double, double* %17, align 8, !tbaa !9
  %267 = fcmp ogt double %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %248
  %269 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %269, align 4, !tbaa !7
  br label %296

270:                                              ; preds = %248
  %271 = load i32, i32* %15, align 4, !tbaa !7
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %272
  %274 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %273, i32 0, i32 1
  %275 = load double, double* %274, align 8, !tbaa !21
  %276 = load i32, i32* %15, align 4, !tbaa !7
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [7 x double], [7 x double]* %23, i64 0, i64 %277
  %279 = load double, double* %278, align 8, !tbaa !9
  %280 = fsub double %275, %279
  %281 = load i32, i32* %15, align 4, !tbaa !7
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [7 x double], [7 x double]* %23, i64 0, i64 %282
  %284 = load double, double* %283, align 8, !tbaa !9
  %285 = fdiv double %280, %284
  store double %285, double* %16, align 8, !tbaa !9
  %286 = load double, double* %16, align 8, !tbaa !9
  %287 = call double @llvm.fabs.f64(double %286)
  %288 = load double, double* %17, align 8, !tbaa !9
  %289 = fcmp ogt double %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %270
  %291 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %291, align 4, !tbaa !7
  br label %296

292:                                              ; preds = %270
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %15, align 4, !tbaa !7
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %15, align 4, !tbaa !7
  br label %244

296:                                              ; preds = %290, %268, %244
  br label %433

297:                                              ; preds = %239, %236, %233, %230
  %298 = load i32, i32* %7, align 4, !tbaa !7
  %299 = icmp eq i32 %298, 512
  br i1 %299, label %300, label %364

300:                                              ; preds = %297
  %301 = load i32, i32* %8, align 4, !tbaa !7
  %302 = icmp eq i32 %301, 256
  br i1 %302, label %303, label %364

303:                                              ; preds = %300
  %304 = load i32, i32* %9, align 4, !tbaa !7
  %305 = icmp eq i32 %304, 256
  br i1 %305, label %306, label %364

306:                                              ; preds = %303
  %307 = load i32, i32* %10, align 4, !tbaa !7
  %308 = icmp eq i32 %307, 20
  br i1 %308, label %309, label %364

309:                                              ; preds = %306
  %310 = load i8*, i8** %12, align 8, !tbaa !2
  store i8 66, i8* %310, align 1, !tbaa !6
  store i32 1, i32* %15, align 4, !tbaa !7
  br label %311

311:                                              ; preds = %360, %309
  %312 = load i32, i32* %15, align 4, !tbaa !7
  %313 = load i32, i32* %10, align 4, !tbaa !7
  %314 = icmp sle i32 %312, %313
  br i1 %314, label %315, label %363

315:                                              ; preds = %311
  %316 = load i32, i32* %15, align 4, !tbaa !7
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %317
  %319 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %318, i32 0, i32 0
  %320 = load double, double* %319, align 16, !tbaa !19
  %321 = load i32, i32* %15, align 4, !tbaa !7
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [21 x double], [21 x double]* %24, i64 0, i64 %322
  %324 = load double, double* %323, align 8, !tbaa !9
  %325 = fsub double %320, %324
  %326 = load i32, i32* %15, align 4, !tbaa !7
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [21 x double], [21 x double]* %24, i64 0, i64 %327
  %329 = load double, double* %328, align 8, !tbaa !9
  %330 = fdiv double %325, %329
  store double %330, double* %16, align 8, !tbaa !9
  %331 = load double, double* %16, align 8, !tbaa !9
  %332 = call double @llvm.fabs.f64(double %331)
  %333 = load double, double* %17, align 8, !tbaa !9
  %334 = fcmp ogt double %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %315
  %336 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %336, align 4, !tbaa !7
  br label %363

337:                                              ; preds = %315
  %338 = load i32, i32* %15, align 4, !tbaa !7
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %339
  %341 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %340, i32 0, i32 1
  %342 = load double, double* %341, align 8, !tbaa !21
  %343 = load i32, i32* %15, align 4, !tbaa !7
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [21 x double], [21 x double]* %25, i64 0, i64 %344
  %346 = load double, double* %345, align 8, !tbaa !9
  %347 = fsub double %342, %346
  %348 = load i32, i32* %15, align 4, !tbaa !7
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [21 x double], [21 x double]* %25, i64 0, i64 %349
  %351 = load double, double* %350, align 8, !tbaa !9
  %352 = fdiv double %347, %351
  store double %352, double* %16, align 8, !tbaa !9
  %353 = load double, double* %16, align 8, !tbaa !9
  %354 = call double @llvm.fabs.f64(double %353)
  %355 = load double, double* %17, align 8, !tbaa !9
  %356 = fcmp ogt double %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %337
  %358 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %358, align 4, !tbaa !7
  br label %363

359:                                              ; preds = %337
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %15, align 4, !tbaa !7
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %15, align 4, !tbaa !7
  br label %311

363:                                              ; preds = %357, %335, %311
  br label %432

364:                                              ; preds = %306, %303, %300, %297
  %365 = load i32, i32* %7, align 4, !tbaa !7
  %366 = icmp eq i32 %365, 512
  br i1 %366, label %367, label %431

367:                                              ; preds = %364
  %368 = load i32, i32* %8, align 4, !tbaa !7
  %369 = icmp eq i32 %368, 512
  br i1 %369, label %370, label %431

370:                                              ; preds = %367
  %371 = load i32, i32* %9, align 4, !tbaa !7
  %372 = icmp eq i32 %371, 512
  br i1 %372, label %373, label %431

373:                                              ; preds = %370
  %374 = load i32, i32* %10, align 4, !tbaa !7
  %375 = icmp eq i32 %374, 20
  br i1 %375, label %376, label %431

376:                                              ; preds = %373
  %377 = load i8*, i8** %12, align 8, !tbaa !2
  store i8 67, i8* %377, align 1, !tbaa !6
  store i32 1, i32* %15, align 4, !tbaa !7
  br label %378

378:                                              ; preds = %427, %376
  %379 = load i32, i32* %15, align 4, !tbaa !7
  %380 = load i32, i32* %10, align 4, !tbaa !7
  %381 = icmp sle i32 %379, %380
  br i1 %381, label %382, label %430

382:                                              ; preds = %378
  %383 = load i32, i32* %15, align 4, !tbaa !7
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %384
  %386 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %385, i32 0, i32 0
  %387 = load double, double* %386, align 16, !tbaa !19
  %388 = load i32, i32* %15, align 4, !tbaa !7
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [21 x double], [21 x double]* %26, i64 0, i64 %389
  %391 = load double, double* %390, align 8, !tbaa !9
  %392 = fsub double %387, %391
  %393 = load i32, i32* %15, align 4, !tbaa !7
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [21 x double], [21 x double]* %26, i64 0, i64 %394
  %396 = load double, double* %395, align 8, !tbaa !9
  %397 = fdiv double %392, %396
  store double %397, double* %16, align 8, !tbaa !9
  %398 = load double, double* %16, align 8, !tbaa !9
  %399 = call double @llvm.fabs.f64(double %398)
  %400 = load double, double* %17, align 8, !tbaa !9
  %401 = fcmp ogt double %399, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %382
  %403 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %403, align 4, !tbaa !7
  br label %430

404:                                              ; preds = %382
  %405 = load i32, i32* %15, align 4, !tbaa !7
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [21 x %struct.dcomplex], [21 x %struct.dcomplex]* @sums, i64 0, i64 %406
  %408 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %407, i32 0, i32 1
  %409 = load double, double* %408, align 8, !tbaa !21
  %410 = load i32, i32* %15, align 4, !tbaa !7
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [21 x double], [21 x double]* %27, i64 0, i64 %411
  %413 = load double, double* %412, align 8, !tbaa !9
  %414 = fsub double %409, %413
  %415 = load i32, i32* %15, align 4, !tbaa !7
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [21 x double], [21 x double]* %27, i64 0, i64 %416
  %418 = load double, double* %417, align 8, !tbaa !9
  %419 = fdiv double %414, %418
  store double %419, double* %16, align 8, !tbaa !9
  %420 = load double, double* %16, align 8, !tbaa !9
  %421 = call double @llvm.fabs.f64(double %420)
  %422 = load double, double* %17, align 8, !tbaa !9
  %423 = fcmp ogt double %421, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %404
  %425 = load i32*, i32** %11, align 8, !tbaa !2
  store i32 0, i32* %425, align 4, !tbaa !7
  br label %430

426:                                              ; preds = %404
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %15, align 4, !tbaa !7
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %15, align 4, !tbaa !7
  br label %378

430:                                              ; preds = %424, %402, %378
  br label %431

431:                                              ; preds = %430, %373, %370, %367, %364
  br label %432

432:                                              ; preds = %431, %363
  br label %433

433:                                              ; preds = %432, %296
  br label %434

434:                                              ; preds = %433, %229
  br label %435

435:                                              ; preds = %434, %162
  %436 = load i8*, i8** %12, align 8, !tbaa !2
  %437 = load i8, i8* %436, align 1, !tbaa !6
  %438 = sext i8 %437 to i32
  %439 = icmp ne i32 %438, 85
  br i1 %439, label %440, label %442

440:                                              ; preds = %435
  %441 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0))
  br label %444

442:                                              ; preds = %435
  %443 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0))
  br label %444

444:                                              ; preds = %442, %440
  %445 = load i8*, i8** %12, align 8, !tbaa !2
  %446 = load i8, i8* %445, align 1, !tbaa !6
  %447 = sext i8 %446 to i32
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32 %447)
  %449 = bitcast [21 x double]* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 168, i8* %449) #6
  %450 = bitcast [21 x double]* %26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 168, i8* %450) #6
  %451 = bitcast [21 x double]* %25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 168, i8* %451) #6
  %452 = bitcast [21 x double]* %24 to i8*
  call void @llvm.lifetime.end.p0i8(i64 168, i8* %452) #6
  %453 = bitcast [7 x double]* %23 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %453) #6
  %454 = bitcast [7 x double]* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %454) #6
  %455 = bitcast [7 x double]* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %455) #6
  %456 = bitcast [7 x double]* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %456) #6
  %457 = bitcast [7 x double]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %457) #6
  %458 = bitcast [7 x double]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %458) #6
  %459 = bitcast double* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %459) #6
  %460 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %460) #6
  %461 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %461) #6
  %462 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %462) #6
  %463 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %463) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double) #3

; Function Attrs: nounwind uwtable
define internal void @ipow46(double, i32, double*) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %4, align 8, !tbaa !9
  store i32 %1, i32* %5, align 4, !tbaa !7
  store double* %2, double** %6, align 8, !tbaa !2
  %13 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #6
  %14 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #6
  %15 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #6
  %16 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6
  %17 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6
  %18 = load double*, double** %6, align 8, !tbaa !2
  store double 1.000000e+00, double* %18, align 8, !tbaa !9
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load double, double* %4, align 8, !tbaa !9
  store double %23, double* %8, align 8, !tbaa !9
  store double 1.000000e+00, double* %9, align 8, !tbaa !9
  %24 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %24, i32* %10, align 4, !tbaa !7
  br label %25

25:                                               ; preds = %44, %22
  %26 = load i32, i32* %10, align 4, !tbaa !7
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4, !tbaa !7
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %11, align 4, !tbaa !7
  %31 = load i32, i32* %11, align 4, !tbaa !7
  %32 = mul nsw i32 %31, 2
  %33 = load i32, i32* %10, align 4, !tbaa !7
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load double, double* %8, align 8, !tbaa !9
  %37 = call double @randlc(double* %8, double %36)
  store double %37, double* %7, align 8, !tbaa !9
  %38 = load i32, i32* %11, align 4, !tbaa !7
  store i32 %38, i32* %10, align 4, !tbaa !7
  br label %44

39:                                               ; preds = %28
  %40 = load double, double* %8, align 8, !tbaa !9
  %41 = call double @randlc(double* %9, double %40)
  store double %41, double* %7, align 8, !tbaa !9
  %42 = load i32, i32* %10, align 4, !tbaa !7
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %10, align 4, !tbaa !7
  br label %44

44:                                               ; preds = %39, %35
  br label %25

45:                                               ; preds = %25
  %46 = load double, double* %8, align 8, !tbaa !9
  %47 = call double @randlc(double* %9, double %46)
  store double %47, double* %7, align 8, !tbaa !9
  %48 = load double, double* %9, align 8, !tbaa !9
  %49 = load double*, double** %6, align 8, !tbaa !2
  store double %48, double* %49, align 8, !tbaa !9
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %45, %21
  %51 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #6
  %52 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #6
  %53 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #6
  %54 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #6
  %55 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #6
  %56 = load i32, i32* %12, align 4
  switch i32 %56, label %58 [
    i32 0, label %57
    i32 1, label %57
  ]

57:                                               ; preds = %50, %50
  ret void

58:                                               ; preds = %50
  unreachable
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #3

; Function Attrs: nounwind uwtable
define internal void @cffts1(i32, i32*, [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]*, [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %10 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %11 = alloca [18 x %struct.dcomplex]*, align 8
  %12 = alloca [18 x %struct.dcomplex]*, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %19 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %20 = alloca i32, align 4
  %21 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %22 = alloca [512 x [18 x %struct.dcomplex]], align 16
  store i32 %0, i32* %7, align 4, !tbaa !7
  store i32* %1, i32** %8, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %2, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %3, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %4, [18 x %struct.dcomplex]** %11, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %5, [18 x %struct.dcomplex]** %12, align 8, !tbaa !2
  %23 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %23) #6
  %24 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #6
  %25 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #6
  %26 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #6
  %27 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #6
  store i32 0, i32* %14, align 4, !tbaa !7
  br label %28

28:                                               ; preds = %41, %6
  %29 = load i32, i32* %14, align 4, !tbaa !7
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8, !tbaa !2
  %33 = load i32, i32* %14, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = call i32 @ilog2(i32 %36)
  %38 = load i32, i32* %14, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %39
  store i32 %37, i32* %40, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %14, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4, !tbaa !7
  br label %28

44:                                               ; preds = %28
  %45 = bitcast [512 x [18 x %struct.dcomplex]]* %18 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %45) #6, !note.noelle !25
  %46 = bitcast [512 x [18 x %struct.dcomplex]]* %19 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %46) #6, !note.noelle !25
  %47 = bitcast i32* %20 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %47) #6, !note.noelle !25
  %48 = load i32, i32* @fftblock, align 4, !tbaa !7, !note.noelle !25
  store i32 %48, i32* %20, align 4, !tbaa !7, !note.noelle !25
  store i32 0, i32* %16, align 4, !tbaa !7, !note.noelle !25
  br label %49, !note.noelle !25

49:                                               ; preds = %206, %44
  %50 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !28
  %51 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !28
  %52 = getelementptr inbounds i32, i32* %51, i64 2, !note.noelle !28
  %53 = load i32, i32* %52, align 4, !tbaa !7, !note.noelle !28
  %54 = icmp slt i32 %50, %53, !note.noelle !28
  br i1 %54, label %55, label %209, !note.noelle !28

55:                                               ; preds = %49
  store i32 0, i32* %17, align 4, !tbaa !7, !note.noelle !28
  br label %56, !note.noelle !28

56:                                               ; preds = %201, %55
  %57 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !28
  %58 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !28
  %59 = getelementptr inbounds i32, i32* %58, i64 1, !note.noelle !28
  %60 = load i32, i32* %59, align 4, !tbaa !7, !note.noelle !28
  %61 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !28
  %62 = sub nsw i32 %60, %61, !note.noelle !28
  %63 = icmp sle i32 %57, %62, !note.noelle !28
  br i1 %63, label %64, label %205, !note.noelle !28

64:                                               ; preds = %56
  %65 = bitcast [512 x [18 x %struct.dcomplex]]* %21 to i8*, !note.noelle !28
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %65) #6, !note.noelle !28
  %66 = bitcast [512 x [18 x %struct.dcomplex]]* %22 to i8*, !note.noelle !28
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %66) #6, !note.noelle !28
  store i32 0, i32* %15, align 4, !tbaa !7, !note.noelle !28
  br label %67, !note.noelle !28

67:                                               ; preds = %125, %64
  %68 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %69 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !28
  %70 = icmp slt i32 %68, %69, !note.noelle !28
  br i1 %70, label %71, label %128, !note.noelle !28

71:                                               ; preds = %67
  store i32 0, i32* %14, align 4, !tbaa !7, !note.noelle !28
  br label %72, !note.noelle !28

72:                                               ; preds = %121, %71
  %73 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %74 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !28
  %75 = getelementptr inbounds i32, i32* %74, i64 0, !note.noelle !28
  %76 = load i32, i32* %75, align 4, !tbaa !7, !note.noelle !28
  %77 = icmp slt i32 %73, %76, !note.noelle !28
  br i1 %77, label %78, label %124, !note.noelle !28

78:                                               ; preds = %72
  %79 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2, !note.noelle !28
  %80 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !28
  %81 = sext i32 %80 to i64, !note.noelle !28
  %82 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %79, i64 %81, !note.noelle !28
  %83 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %84 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !28
  %85 = add nsw i32 %83, %84, !note.noelle !28
  %86 = sext i32 %85 to i64, !note.noelle !28
  %87 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %82, i64 0, i64 %86, !note.noelle !28
  %88 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %89 = sext i32 %88 to i64, !note.noelle !28
  %90 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %87, i64 0, i64 %89, !note.noelle !28
  %91 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %90, i32 0, i32 0, !note.noelle !28
  %92 = load double, double* %91, align 8, !tbaa !19, !note.noelle !28
  %93 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %94 = sext i32 %93 to i64, !note.noelle !28
  %95 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %94, !note.noelle !28
  %96 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %97 = sext i32 %96 to i64, !note.noelle !28
  %98 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %95, i64 0, i64 %97, !note.noelle !28
  %99 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %98, i32 0, i32 0, !note.noelle !28
  store double %92, double* %99, align 16, !tbaa !19, !note.noelle !28
  %100 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2, !note.noelle !28
  %101 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !28
  %102 = sext i32 %101 to i64, !note.noelle !28
  %103 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %100, i64 %102, !note.noelle !28
  %104 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %105 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !28
  %106 = add nsw i32 %104, %105, !note.noelle !28
  %107 = sext i32 %106 to i64, !note.noelle !28
  %108 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %103, i64 0, i64 %107, !note.noelle !28
  %109 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %110 = sext i32 %109 to i64, !note.noelle !28
  %111 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %108, i64 0, i64 %110, !note.noelle !28
  %112 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %111, i32 0, i32 1, !note.noelle !28
  %113 = load double, double* %112, align 8, !tbaa !21, !note.noelle !28
  %114 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %115 = sext i32 %114 to i64, !note.noelle !28
  %116 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %115, !note.noelle !28
  %117 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %118 = sext i32 %117 to i64, !note.noelle !28
  %119 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %116, i64 0, i64 %118, !note.noelle !28
  %120 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %119, i32 0, i32 1, !note.noelle !28
  store double %113, double* %120, align 8, !tbaa !21, !note.noelle !28
  br label %121, !note.noelle !28

121:                                              ; preds = %78
  %122 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %123 = add nsw i32 %122, 1, !note.noelle !28
  store i32 %123, i32* %14, align 4, !tbaa !7, !note.noelle !28
  br label %72, !note.noelle !28

124:                                              ; preds = %72
  br label %125, !note.noelle !28

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %127 = add nsw i32 %126, 1, !note.noelle !28
  store i32 %127, i32* %15, align 4, !tbaa !7, !note.noelle !28
  br label %67, !note.noelle !28

128:                                              ; preds = %67
  %129 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !28
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0, !note.noelle !28
  %131 = load i32, i32* %130, align 4, !tbaa !7, !note.noelle !28
  %132 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !28
  %133 = getelementptr inbounds i32, i32* %132, i64 0, !note.noelle !28
  %134 = load i32, i32* %133, align 4, !tbaa !7, !note.noelle !28
  %135 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 0, !note.noelle !28
  %136 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %22, i64 0, i64 0, !note.noelle !28
  call void @cfftz(i32 %129, i32 %131, i32 %134, [18 x %struct.dcomplex]* %135, [18 x %struct.dcomplex]* %136), !note.noelle !28
  store i32 0, i32* %15, align 4, !tbaa !7, !note.noelle !28
  br label %137, !note.noelle !28

137:                                              ; preds = %195, %128
  %138 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %139 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !28
  %140 = icmp slt i32 %138, %139, !note.noelle !28
  br i1 %140, label %141, label %198, !note.noelle !28

141:                                              ; preds = %137
  store i32 0, i32* %14, align 4, !tbaa !7, !note.noelle !28
  br label %142, !note.noelle !28

142:                                              ; preds = %191, %141
  %143 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %144 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !28
  %145 = getelementptr inbounds i32, i32* %144, i64 0, !note.noelle !28
  %146 = load i32, i32* %145, align 4, !tbaa !7, !note.noelle !28
  %147 = icmp slt i32 %143, %146, !note.noelle !28
  br i1 %147, label %148, label %194, !note.noelle !28

148:                                              ; preds = %142
  %149 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %150 = sext i32 %149 to i64, !note.noelle !28
  %151 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %150, !note.noelle !28
  %152 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %153 = sext i32 %152 to i64, !note.noelle !28
  %154 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %151, i64 0, i64 %153, !note.noelle !28
  %155 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %154, i32 0, i32 0, !note.noelle !28
  %156 = load double, double* %155, align 16, !tbaa !19, !note.noelle !28
  %157 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2, !note.noelle !28
  %158 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !28
  %159 = sext i32 %158 to i64, !note.noelle !28
  %160 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %157, i64 %159, !note.noelle !28
  %161 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %162 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !28
  %163 = add nsw i32 %161, %162, !note.noelle !28
  %164 = sext i32 %163 to i64, !note.noelle !28
  %165 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %160, i64 0, i64 %164, !note.noelle !28
  %166 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %167 = sext i32 %166 to i64, !note.noelle !28
  %168 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %165, i64 0, i64 %167, !note.noelle !28
  %169 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %168, i32 0, i32 0, !note.noelle !28
  store double %156, double* %169, align 8, !tbaa !19, !note.noelle !28
  %170 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %171 = sext i32 %170 to i64, !note.noelle !28
  %172 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %171, !note.noelle !28
  %173 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %174 = sext i32 %173 to i64, !note.noelle !28
  %175 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %172, i64 0, i64 %174, !note.noelle !28
  %176 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %175, i32 0, i32 1, !note.noelle !28
  %177 = load double, double* %176, align 8, !tbaa !21, !note.noelle !28
  %178 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2, !note.noelle !28
  %179 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !28
  %180 = sext i32 %179 to i64, !note.noelle !28
  %181 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %178, i64 %180, !note.noelle !28
  %182 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %183 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !28
  %184 = add nsw i32 %182, %183, !note.noelle !28
  %185 = sext i32 %184 to i64, !note.noelle !28
  %186 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %181, i64 0, i64 %185, !note.noelle !28
  %187 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %188 = sext i32 %187 to i64, !note.noelle !28
  %189 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %186, i64 0, i64 %188, !note.noelle !28
  %190 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %189, i32 0, i32 1, !note.noelle !28
  store double %177, double* %190, align 8, !tbaa !21, !note.noelle !28
  br label %191, !note.noelle !28

191:                                              ; preds = %148
  %192 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !28
  %193 = add nsw i32 %192, 1, !note.noelle !28
  store i32 %193, i32* %14, align 4, !tbaa !7, !note.noelle !28
  br label %142, !note.noelle !28

194:                                              ; preds = %142
  br label %195, !note.noelle !28

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !28
  %197 = add nsw i32 %196, 1, !note.noelle !28
  store i32 %197, i32* %15, align 4, !tbaa !7, !note.noelle !28
  br label %137, !note.noelle !28

198:                                              ; preds = %137
  %199 = bitcast [512 x [18 x %struct.dcomplex]]* %22 to i8*, !note.noelle !28
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %199) #6, !note.noelle !28
  %200 = bitcast [512 x [18 x %struct.dcomplex]]* %21 to i8*, !note.noelle !28
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %200) #6, !note.noelle !28
  br label %201, !note.noelle !28

201:                                              ; preds = %198
  %202 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !28
  %203 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !28
  %204 = add nsw i32 %203, %202, !note.noelle !28
  store i32 %204, i32* %17, align 4, !tbaa !7, !note.noelle !28
  br label %56, !note.noelle !28

205:                                              ; preds = %56
  br label %206, !note.noelle !28

206:                                              ; preds = %205
  %207 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !28
  %208 = add nsw i32 %207, 1, !note.noelle !28
  store i32 %208, i32* %16, align 4, !tbaa !7, !note.noelle !28
  br label %49, !note.noelle !28

209:                                              ; preds = %49
  %210 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %210) #6
  %211 = bitcast [512 x [18 x %struct.dcomplex]]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %211) #6
  %212 = bitcast [512 x [18 x %struct.dcomplex]]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %212) #6
  %213 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %213) #6
  %214 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %214) #6
  %215 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %215) #6
  %216 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %216) #6
  %217 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %217) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cffts2(i32, i32*, [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]*, [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %10 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %11 = alloca [18 x %struct.dcomplex]*, align 8
  %12 = alloca [18 x %struct.dcomplex]*, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %19 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %20 = alloca i32, align 4
  %21 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %22 = alloca [512 x [18 x %struct.dcomplex]], align 16
  store i32 %0, i32* %7, align 4, !tbaa !7
  store i32* %1, i32** %8, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %2, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %3, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %4, [18 x %struct.dcomplex]** %11, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %5, [18 x %struct.dcomplex]** %12, align 8, !tbaa !2
  %23 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %23) #6
  %24 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #6
  %25 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #6
  %26 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #6
  %27 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #6
  store i32 0, i32* %14, align 4, !tbaa !7
  br label %28

28:                                               ; preds = %41, %6
  %29 = load i32, i32* %14, align 4, !tbaa !7
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8, !tbaa !2
  %33 = load i32, i32* %14, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = call i32 @ilog2(i32 %36)
  %38 = load i32, i32* %14, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %39
  store i32 %37, i32* %40, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %14, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4, !tbaa !7
  br label %28

44:                                               ; preds = %28
  %45 = bitcast [512 x [18 x %struct.dcomplex]]* %18 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %45) #6, !note.noelle !25
  %46 = bitcast [512 x [18 x %struct.dcomplex]]* %19 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %46) #6, !note.noelle !25
  %47 = bitcast i32* %20 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %47) #6, !note.noelle !25
  %48 = load i32, i32* @fftblock, align 4, !tbaa !7, !note.noelle !25
  store i32 %48, i32* %20, align 4, !tbaa !7, !note.noelle !25
  store i32 0, i32* %16, align 4, !tbaa !7, !note.noelle !25
  br label %49, !note.noelle !25

49:                                               ; preds = %206, %44
  %50 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !30
  %51 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !30
  %52 = getelementptr inbounds i32, i32* %51, i64 2, !note.noelle !30
  %53 = load i32, i32* %52, align 4, !tbaa !7, !note.noelle !30
  %54 = icmp slt i32 %50, %53, !note.noelle !30
  br i1 %54, label %55, label %209, !note.noelle !30

55:                                               ; preds = %49
  store i32 0, i32* %17, align 4, !tbaa !7, !note.noelle !30
  br label %56, !note.noelle !30

56:                                               ; preds = %201, %55
  %57 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !30
  %58 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !30
  %59 = getelementptr inbounds i32, i32* %58, i64 0, !note.noelle !30
  %60 = load i32, i32* %59, align 4, !tbaa !7, !note.noelle !30
  %61 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !30
  %62 = sub nsw i32 %60, %61, !note.noelle !30
  %63 = icmp sle i32 %57, %62, !note.noelle !30
  br i1 %63, label %64, label %205, !note.noelle !30

64:                                               ; preds = %56
  %65 = bitcast [512 x [18 x %struct.dcomplex]]* %21 to i8*, !note.noelle !30
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %65) #6, !note.noelle !30
  %66 = bitcast [512 x [18 x %struct.dcomplex]]* %22 to i8*, !note.noelle !30
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %66) #6, !note.noelle !30
  store i32 0, i32* %15, align 4, !tbaa !7, !note.noelle !30
  br label %67, !note.noelle !30

67:                                               ; preds = %125, %64
  %68 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %69 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !30
  %70 = getelementptr inbounds i32, i32* %69, i64 1, !note.noelle !30
  %71 = load i32, i32* %70, align 4, !tbaa !7, !note.noelle !30
  %72 = icmp slt i32 %68, %71, !note.noelle !30
  br i1 %72, label %73, label %128, !note.noelle !30

73:                                               ; preds = %67
  store i32 0, i32* %14, align 4, !tbaa !7, !note.noelle !30
  br label %74, !note.noelle !30

74:                                               ; preds = %121, %73
  %75 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %76 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !30
  %77 = icmp slt i32 %75, %76, !note.noelle !30
  br i1 %77, label %78, label %124, !note.noelle !30

78:                                               ; preds = %74
  %79 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2, !note.noelle !30
  %80 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !30
  %81 = sext i32 %80 to i64, !note.noelle !30
  %82 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %79, i64 %81, !note.noelle !30
  %83 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %84 = sext i32 %83 to i64, !note.noelle !30
  %85 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %82, i64 0, i64 %84, !note.noelle !30
  %86 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %87 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !30
  %88 = add nsw i32 %86, %87, !note.noelle !30
  %89 = sext i32 %88 to i64, !note.noelle !30
  %90 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %85, i64 0, i64 %89, !note.noelle !30
  %91 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %90, i32 0, i32 0, !note.noelle !30
  %92 = load double, double* %91, align 8, !tbaa !19, !note.noelle !30
  %93 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %94 = sext i32 %93 to i64, !note.noelle !30
  %95 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %94, !note.noelle !30
  %96 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %97 = sext i32 %96 to i64, !note.noelle !30
  %98 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %95, i64 0, i64 %97, !note.noelle !30
  %99 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %98, i32 0, i32 0, !note.noelle !30
  store double %92, double* %99, align 16, !tbaa !19, !note.noelle !30
  %100 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2, !note.noelle !30
  %101 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !30
  %102 = sext i32 %101 to i64, !note.noelle !30
  %103 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %100, i64 %102, !note.noelle !30
  %104 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %105 = sext i32 %104 to i64, !note.noelle !30
  %106 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %103, i64 0, i64 %105, !note.noelle !30
  %107 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %108 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !30
  %109 = add nsw i32 %107, %108, !note.noelle !30
  %110 = sext i32 %109 to i64, !note.noelle !30
  %111 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %106, i64 0, i64 %110, !note.noelle !30
  %112 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %111, i32 0, i32 1, !note.noelle !30
  %113 = load double, double* %112, align 8, !tbaa !21, !note.noelle !30
  %114 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %115 = sext i32 %114 to i64, !note.noelle !30
  %116 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %115, !note.noelle !30
  %117 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %118 = sext i32 %117 to i64, !note.noelle !30
  %119 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %116, i64 0, i64 %118, !note.noelle !30
  %120 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %119, i32 0, i32 1, !note.noelle !30
  store double %113, double* %120, align 8, !tbaa !21, !note.noelle !30
  br label %121, !note.noelle !30

121:                                              ; preds = %78
  %122 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %123 = add nsw i32 %122, 1, !note.noelle !30
  store i32 %123, i32* %14, align 4, !tbaa !7, !note.noelle !30
  br label %74, !note.noelle !30

124:                                              ; preds = %74
  br label %125, !note.noelle !30

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %127 = add nsw i32 %126, 1, !note.noelle !30
  store i32 %127, i32* %15, align 4, !tbaa !7, !note.noelle !30
  br label %67, !note.noelle !30

128:                                              ; preds = %67
  %129 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !30
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1, !note.noelle !30
  %131 = load i32, i32* %130, align 4, !tbaa !7, !note.noelle !30
  %132 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !30
  %133 = getelementptr inbounds i32, i32* %132, i64 1, !note.noelle !30
  %134 = load i32, i32* %133, align 4, !tbaa !7, !note.noelle !30
  %135 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 0, !note.noelle !30
  %136 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %22, i64 0, i64 0, !note.noelle !30
  call void @cfftz(i32 %129, i32 %131, i32 %134, [18 x %struct.dcomplex]* %135, [18 x %struct.dcomplex]* %136), !note.noelle !30
  store i32 0, i32* %15, align 4, !tbaa !7, !note.noelle !30
  br label %137, !note.noelle !30

137:                                              ; preds = %195, %128
  %138 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %139 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !30
  %140 = getelementptr inbounds i32, i32* %139, i64 1, !note.noelle !30
  %141 = load i32, i32* %140, align 4, !tbaa !7, !note.noelle !30
  %142 = icmp slt i32 %138, %141, !note.noelle !30
  br i1 %142, label %143, label %198, !note.noelle !30

143:                                              ; preds = %137
  store i32 0, i32* %14, align 4, !tbaa !7, !note.noelle !30
  br label %144, !note.noelle !30

144:                                              ; preds = %191, %143
  %145 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %146 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !30
  %147 = icmp slt i32 %145, %146, !note.noelle !30
  br i1 %147, label %148, label %194, !note.noelle !30

148:                                              ; preds = %144
  %149 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %150 = sext i32 %149 to i64, !note.noelle !30
  %151 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %150, !note.noelle !30
  %152 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %153 = sext i32 %152 to i64, !note.noelle !30
  %154 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %151, i64 0, i64 %153, !note.noelle !30
  %155 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %154, i32 0, i32 0, !note.noelle !30
  %156 = load double, double* %155, align 16, !tbaa !19, !note.noelle !30
  %157 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2, !note.noelle !30
  %158 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !30
  %159 = sext i32 %158 to i64, !note.noelle !30
  %160 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %157, i64 %159, !note.noelle !30
  %161 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %162 = sext i32 %161 to i64, !note.noelle !30
  %163 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %160, i64 0, i64 %162, !note.noelle !30
  %164 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %165 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !30
  %166 = add nsw i32 %164, %165, !note.noelle !30
  %167 = sext i32 %166 to i64, !note.noelle !30
  %168 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %163, i64 0, i64 %167, !note.noelle !30
  %169 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %168, i32 0, i32 0, !note.noelle !30
  store double %156, double* %169, align 8, !tbaa !19, !note.noelle !30
  %170 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %171 = sext i32 %170 to i64, !note.noelle !30
  %172 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %171, !note.noelle !30
  %173 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %174 = sext i32 %173 to i64, !note.noelle !30
  %175 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %172, i64 0, i64 %174, !note.noelle !30
  %176 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %175, i32 0, i32 1, !note.noelle !30
  %177 = load double, double* %176, align 8, !tbaa !21, !note.noelle !30
  %178 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2, !note.noelle !30
  %179 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !30
  %180 = sext i32 %179 to i64, !note.noelle !30
  %181 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %178, i64 %180, !note.noelle !30
  %182 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %183 = sext i32 %182 to i64, !note.noelle !30
  %184 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %181, i64 0, i64 %183, !note.noelle !30
  %185 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %186 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !30
  %187 = add nsw i32 %185, %186, !note.noelle !30
  %188 = sext i32 %187 to i64, !note.noelle !30
  %189 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %184, i64 0, i64 %188, !note.noelle !30
  %190 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %189, i32 0, i32 1, !note.noelle !30
  store double %177, double* %190, align 8, !tbaa !21, !note.noelle !30
  br label %191, !note.noelle !30

191:                                              ; preds = %148
  %192 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !30
  %193 = add nsw i32 %192, 1, !note.noelle !30
  store i32 %193, i32* %14, align 4, !tbaa !7, !note.noelle !30
  br label %144, !note.noelle !30

194:                                              ; preds = %144
  br label %195, !note.noelle !30

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !30
  %197 = add nsw i32 %196, 1, !note.noelle !30
  store i32 %197, i32* %15, align 4, !tbaa !7, !note.noelle !30
  br label %137, !note.noelle !30

198:                                              ; preds = %137
  %199 = bitcast [512 x [18 x %struct.dcomplex]]* %22 to i8*, !note.noelle !30
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %199) #6, !note.noelle !30
  %200 = bitcast [512 x [18 x %struct.dcomplex]]* %21 to i8*, !note.noelle !30
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %200) #6, !note.noelle !30
  br label %201, !note.noelle !30

201:                                              ; preds = %198
  %202 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !30
  %203 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !30
  %204 = add nsw i32 %203, %202, !note.noelle !30
  store i32 %204, i32* %17, align 4, !tbaa !7, !note.noelle !30
  br label %56, !note.noelle !30

205:                                              ; preds = %56
  br label %206, !note.noelle !30

206:                                              ; preds = %205
  %207 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !30
  %208 = add nsw i32 %207, 1, !note.noelle !30
  store i32 %208, i32* %16, align 4, !tbaa !7, !note.noelle !30
  br label %49, !note.noelle !30

209:                                              ; preds = %49
  %210 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %210) #6
  %211 = bitcast [512 x [18 x %struct.dcomplex]]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %211) #6
  %212 = bitcast [512 x [18 x %struct.dcomplex]]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %212) #6
  %213 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %213) #6
  %214 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %214) #6
  %215 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %215) #6
  %216 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %216) #6
  %217 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %217) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cffts3(i32, i32*, [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]*, [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %10 = alloca [256 x [512 x %struct.dcomplex]]*, align 8
  %11 = alloca [18 x %struct.dcomplex]*, align 8
  %12 = alloca [18 x %struct.dcomplex]*, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %19 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %20 = alloca i32, align 4
  %21 = alloca [512 x [18 x %struct.dcomplex]], align 16
  %22 = alloca [512 x [18 x %struct.dcomplex]], align 16
  store i32 %0, i32* %7, align 4, !tbaa !7
  store i32* %1, i32** %8, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %2, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2
  store [256 x [512 x %struct.dcomplex]]* %3, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %4, [18 x %struct.dcomplex]** %11, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %5, [18 x %struct.dcomplex]** %12, align 8, !tbaa !2
  %23 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %23) #6
  %24 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #6
  %25 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #6
  %26 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #6
  %27 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #6
  store i32 0, i32* %14, align 4, !tbaa !7
  br label %28

28:                                               ; preds = %41, %6
  %29 = load i32, i32* %14, align 4, !tbaa !7
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8, !tbaa !2
  %33 = load i32, i32* %14, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = call i32 @ilog2(i32 %36)
  %38 = load i32, i32* %14, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %39
  store i32 %37, i32* %40, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %14, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4, !tbaa !7
  br label %28

44:                                               ; preds = %28
  %45 = bitcast [512 x [18 x %struct.dcomplex]]* %18 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %45) #6, !note.noelle !25
  %46 = bitcast [512 x [18 x %struct.dcomplex]]* %19 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %46) #6, !note.noelle !25
  %47 = bitcast i32* %20 to i8*, !note.noelle !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %47) #6, !note.noelle !25
  %48 = load i32, i32* @fftblock, align 4, !tbaa !7, !note.noelle !25
  store i32 %48, i32* %20, align 4, !tbaa !7, !note.noelle !25
  store i32 0, i32* %15, align 4, !tbaa !7, !note.noelle !25
  br label %49, !note.noelle !25

49:                                               ; preds = %206, %44
  %50 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !32
  %51 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !32
  %52 = getelementptr inbounds i32, i32* %51, i64 1, !note.noelle !32
  %53 = load i32, i32* %52, align 4, !tbaa !7, !note.noelle !32
  %54 = icmp slt i32 %50, %53, !note.noelle !32
  br i1 %54, label %55, label %209, !note.noelle !32

55:                                               ; preds = %49
  store i32 0, i32* %17, align 4, !tbaa !7, !note.noelle !32
  br label %56, !note.noelle !32

56:                                               ; preds = %201, %55
  %57 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !32
  %58 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !32
  %59 = getelementptr inbounds i32, i32* %58, i64 0, !note.noelle !32
  %60 = load i32, i32* %59, align 4, !tbaa !7, !note.noelle !32
  %61 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !32
  %62 = sub nsw i32 %60, %61, !note.noelle !32
  %63 = icmp sle i32 %57, %62, !note.noelle !32
  br i1 %63, label %64, label %205, !note.noelle !32

64:                                               ; preds = %56
  %65 = bitcast [512 x [18 x %struct.dcomplex]]* %21 to i8*, !note.noelle !32
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %65) #6, !note.noelle !32
  %66 = bitcast [512 x [18 x %struct.dcomplex]]* %22 to i8*, !note.noelle !32
  call void @llvm.lifetime.start.p0i8(i64 147456, i8* %66) #6, !note.noelle !32
  store i32 0, i32* %16, align 4, !tbaa !7, !note.noelle !32
  br label %67, !note.noelle !32

67:                                               ; preds = %125, %64
  %68 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %69 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !32
  %70 = getelementptr inbounds i32, i32* %69, i64 2, !note.noelle !32
  %71 = load i32, i32* %70, align 4, !tbaa !7, !note.noelle !32
  %72 = icmp slt i32 %68, %71, !note.noelle !32
  br i1 %72, label %73, label %128, !note.noelle !32

73:                                               ; preds = %67
  store i32 0, i32* %14, align 4, !tbaa !7, !note.noelle !32
  br label %74, !note.noelle !32

74:                                               ; preds = %121, %73
  %75 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %76 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !32
  %77 = icmp slt i32 %75, %76, !note.noelle !32
  br i1 %77, label %78, label %124, !note.noelle !32

78:                                               ; preds = %74
  %79 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2, !note.noelle !32
  %80 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %81 = sext i32 %80 to i64, !note.noelle !32
  %82 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %79, i64 %81, !note.noelle !32
  %83 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !32
  %84 = sext i32 %83 to i64, !note.noelle !32
  %85 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %82, i64 0, i64 %84, !note.noelle !32
  %86 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %87 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !32
  %88 = add nsw i32 %86, %87, !note.noelle !32
  %89 = sext i32 %88 to i64, !note.noelle !32
  %90 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %85, i64 0, i64 %89, !note.noelle !32
  %91 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %90, i32 0, i32 0, !note.noelle !32
  %92 = load double, double* %91, align 8, !tbaa !19, !note.noelle !32
  %93 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %94 = sext i32 %93 to i64, !note.noelle !32
  %95 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %94, !note.noelle !32
  %96 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %97 = sext i32 %96 to i64, !note.noelle !32
  %98 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %95, i64 0, i64 %97, !note.noelle !32
  %99 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %98, i32 0, i32 0, !note.noelle !32
  store double %92, double* %99, align 16, !tbaa !19, !note.noelle !32
  %100 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %9, align 8, !tbaa !2, !note.noelle !32
  %101 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %102 = sext i32 %101 to i64, !note.noelle !32
  %103 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %100, i64 %102, !note.noelle !32
  %104 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !32
  %105 = sext i32 %104 to i64, !note.noelle !32
  %106 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %103, i64 0, i64 %105, !note.noelle !32
  %107 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %108 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !32
  %109 = add nsw i32 %107, %108, !note.noelle !32
  %110 = sext i32 %109 to i64, !note.noelle !32
  %111 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %106, i64 0, i64 %110, !note.noelle !32
  %112 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %111, i32 0, i32 1, !note.noelle !32
  %113 = load double, double* %112, align 8, !tbaa !21, !note.noelle !32
  %114 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %115 = sext i32 %114 to i64, !note.noelle !32
  %116 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %115, !note.noelle !32
  %117 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %118 = sext i32 %117 to i64, !note.noelle !32
  %119 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %116, i64 0, i64 %118, !note.noelle !32
  %120 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %119, i32 0, i32 1, !note.noelle !32
  store double %113, double* %120, align 8, !tbaa !21, !note.noelle !32
  br label %121, !note.noelle !32

121:                                              ; preds = %78
  %122 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %123 = add nsw i32 %122, 1, !note.noelle !32
  store i32 %123, i32* %14, align 4, !tbaa !7, !note.noelle !32
  br label %74, !note.noelle !32

124:                                              ; preds = %74
  br label %125, !note.noelle !32

125:                                              ; preds = %124
  %126 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %127 = add nsw i32 %126, 1, !note.noelle !32
  store i32 %127, i32* %16, align 4, !tbaa !7, !note.noelle !32
  br label %67, !note.noelle !32

128:                                              ; preds = %67
  %129 = load i32, i32* %7, align 4, !tbaa !7, !note.noelle !32
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2, !note.noelle !32
  %131 = load i32, i32* %130, align 4, !tbaa !7, !note.noelle !32
  %132 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !32
  %133 = getelementptr inbounds i32, i32* %132, i64 2, !note.noelle !32
  %134 = load i32, i32* %133, align 4, !tbaa !7, !note.noelle !32
  %135 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 0, !note.noelle !32
  %136 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %22, i64 0, i64 0, !note.noelle !32
  call void @cfftz(i32 %129, i32 %131, i32 %134, [18 x %struct.dcomplex]* %135, [18 x %struct.dcomplex]* %136), !note.noelle !32
  store i32 0, i32* %16, align 4, !tbaa !7, !note.noelle !32
  br label %137, !note.noelle !32

137:                                              ; preds = %195, %128
  %138 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %139 = load i32*, i32** %8, align 8, !tbaa !2, !note.noelle !32
  %140 = getelementptr inbounds i32, i32* %139, i64 2, !note.noelle !32
  %141 = load i32, i32* %140, align 4, !tbaa !7, !note.noelle !32
  %142 = icmp slt i32 %138, %141, !note.noelle !32
  br i1 %142, label %143, label %198, !note.noelle !32

143:                                              ; preds = %137
  store i32 0, i32* %14, align 4, !tbaa !7, !note.noelle !32
  br label %144, !note.noelle !32

144:                                              ; preds = %191, %143
  %145 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %146 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !32
  %147 = icmp slt i32 %145, %146, !note.noelle !32
  br i1 %147, label %148, label %194, !note.noelle !32

148:                                              ; preds = %144
  %149 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %150 = sext i32 %149 to i64, !note.noelle !32
  %151 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %150, !note.noelle !32
  %152 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %153 = sext i32 %152 to i64, !note.noelle !32
  %154 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %151, i64 0, i64 %153, !note.noelle !32
  %155 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %154, i32 0, i32 0, !note.noelle !32
  %156 = load double, double* %155, align 16, !tbaa !19, !note.noelle !32
  %157 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2, !note.noelle !32
  %158 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %159 = sext i32 %158 to i64, !note.noelle !32
  %160 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %157, i64 %159, !note.noelle !32
  %161 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !32
  %162 = sext i32 %161 to i64, !note.noelle !32
  %163 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %160, i64 0, i64 %162, !note.noelle !32
  %164 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %165 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !32
  %166 = add nsw i32 %164, %165, !note.noelle !32
  %167 = sext i32 %166 to i64, !note.noelle !32
  %168 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %163, i64 0, i64 %167, !note.noelle !32
  %169 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %168, i32 0, i32 0, !note.noelle !32
  store double %156, double* %169, align 8, !tbaa !19, !note.noelle !32
  %170 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %171 = sext i32 %170 to i64, !note.noelle !32
  %172 = getelementptr inbounds [512 x [18 x %struct.dcomplex]], [512 x [18 x %struct.dcomplex]]* %21, i64 0, i64 %171, !note.noelle !32
  %173 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %174 = sext i32 %173 to i64, !note.noelle !32
  %175 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %172, i64 0, i64 %174, !note.noelle !32
  %176 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %175, i32 0, i32 1, !note.noelle !32
  %177 = load double, double* %176, align 8, !tbaa !21, !note.noelle !32
  %178 = load [256 x [512 x %struct.dcomplex]]*, [256 x [512 x %struct.dcomplex]]** %10, align 8, !tbaa !2, !note.noelle !32
  %179 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %180 = sext i32 %179 to i64, !note.noelle !32
  %181 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %178, i64 %180, !note.noelle !32
  %182 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !32
  %183 = sext i32 %182 to i64, !note.noelle !32
  %184 = getelementptr inbounds [256 x [512 x %struct.dcomplex]], [256 x [512 x %struct.dcomplex]]* %181, i64 0, i64 %183, !note.noelle !32
  %185 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %186 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !32
  %187 = add nsw i32 %185, %186, !note.noelle !32
  %188 = sext i32 %187 to i64, !note.noelle !32
  %189 = getelementptr inbounds [512 x %struct.dcomplex], [512 x %struct.dcomplex]* %184, i64 0, i64 %188, !note.noelle !32
  %190 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %189, i32 0, i32 1, !note.noelle !32
  store double %177, double* %190, align 8, !tbaa !21, !note.noelle !32
  br label %191, !note.noelle !32

191:                                              ; preds = %148
  %192 = load i32, i32* %14, align 4, !tbaa !7, !note.noelle !32
  %193 = add nsw i32 %192, 1, !note.noelle !32
  store i32 %193, i32* %14, align 4, !tbaa !7, !note.noelle !32
  br label %144, !note.noelle !32

194:                                              ; preds = %144
  br label %195, !note.noelle !32

195:                                              ; preds = %194
  %196 = load i32, i32* %16, align 4, !tbaa !7, !note.noelle !32
  %197 = add nsw i32 %196, 1, !note.noelle !32
  store i32 %197, i32* %16, align 4, !tbaa !7, !note.noelle !32
  br label %137, !note.noelle !32

198:                                              ; preds = %137
  %199 = bitcast [512 x [18 x %struct.dcomplex]]* %22 to i8*, !note.noelle !32
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %199) #6, !note.noelle !32
  %200 = bitcast [512 x [18 x %struct.dcomplex]]* %21 to i8*, !note.noelle !32
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %200) #6, !note.noelle !32
  br label %201, !note.noelle !32

201:                                              ; preds = %198
  %202 = load i32, i32* %20, align 4, !tbaa !7, !note.noelle !32
  %203 = load i32, i32* %17, align 4, !tbaa !7, !note.noelle !32
  %204 = add nsw i32 %203, %202, !note.noelle !32
  store i32 %204, i32* %17, align 4, !tbaa !7, !note.noelle !32
  br label %56, !note.noelle !32

205:                                              ; preds = %56
  br label %206, !note.noelle !32

206:                                              ; preds = %205
  %207 = load i32, i32* %15, align 4, !tbaa !7, !note.noelle !32
  %208 = add nsw i32 %207, 1, !note.noelle !32
  store i32 %208, i32* %15, align 4, !tbaa !7, !note.noelle !32
  br label %49, !note.noelle !32

209:                                              ; preds = %49
  %210 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %210) #6
  %211 = bitcast [512 x [18 x %struct.dcomplex]]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %211) #6
  %212 = bitcast [512 x [18 x %struct.dcomplex]]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 147456, i8* %212) #6
  %213 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %213) #6
  %214 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %214) #6
  %215 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %215) #6
  %216 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %216) #6
  %217 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %217) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ilog2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6
  %9 = load i32, i32* %3, align 4, !tbaa !7
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %24

12:                                               ; preds = %1
  store i32 1, i32* %5, align 4, !tbaa !7
  store i32 2, i32* %4, align 4, !tbaa !7
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = load i32, i32* %3, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4, !tbaa !7
  %19 = shl i32 %18, 1
  store i32 %19, i32* %4, align 4, !tbaa !7
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4, !tbaa !7
  br label %13

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %11
  %25 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #6
  %26 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @cfftz(i32, i32, i32, [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [18 x %struct.dcomplex]*, align 8
  %10 = alloca [18 x %struct.dcomplex]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4, !tbaa !7
  store i32 %1, i32* %7, align 4, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !7
  store [18 x %struct.dcomplex]* %3, [18 x %struct.dcomplex]** %9, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %4, [18 x %struct.dcomplex]** %10, align 8, !tbaa !2
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6
  %16 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6
  %17 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6
  %18 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6
  %19 = load double, double* getelementptr inbounds ([512 x %struct.dcomplex], [512 x %struct.dcomplex]* @u, i64 0, i64 0, i32 0), align 16, !tbaa !19
  %20 = fptosi double %19 to i32
  store i32 %20, i32* %14, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4, !tbaa !7
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %33, label %26

26:                                               ; preds = %23, %5
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4, !tbaa !7
  %31 = load i32, i32* %14, align 4, !tbaa !7
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %26, %23
  %34 = load i32, i32* %6, align 4, !tbaa !7
  %35 = load i32, i32* %7, align 4, !tbaa !7
  %36 = load i32, i32* %14, align 4, !tbaa !7
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.35, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  call void @exit(i32 1) #7
  unreachable

38:                                               ; preds = %29
  store i32 1, i32* %13, align 4, !tbaa !7
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %13, align 4, !tbaa !7
  %41 = load i32, i32* %7, align 4, !tbaa !7
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4, !tbaa !7
  %45 = load i32, i32* %13, align 4, !tbaa !7
  %46 = load i32, i32* %7, align 4, !tbaa !7
  %47 = load i32, i32* %8, align 4, !tbaa !7
  %48 = load i32, i32* @fftblock, align 4, !tbaa !7
  %49 = load i32, i32* @fftblockpad, align 4, !tbaa !7
  %50 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %9, align 8, !tbaa !2
  %51 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %10, align 8, !tbaa !2
  call void @fftz2(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, %struct.dcomplex* getelementptr inbounds ([512 x %struct.dcomplex], [512 x %struct.dcomplex]* @u, i64 0, i64 0), [18 x %struct.dcomplex]* %50, [18 x %struct.dcomplex]* %51)
  %52 = load i32, i32* %13, align 4, !tbaa !7
  %53 = load i32, i32* %7, align 4, !tbaa !7
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %69

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4, !tbaa !7
  %58 = load i32, i32* %13, align 4, !tbaa !7
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %7, align 4, !tbaa !7
  %61 = load i32, i32* %8, align 4, !tbaa !7
  %62 = load i32, i32* @fftblock, align 4, !tbaa !7
  %63 = load i32, i32* @fftblockpad, align 4, !tbaa !7
  %64 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %10, align 8, !tbaa !2
  %65 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %9, align 8, !tbaa !2
  call void @fftz2(i32 %57, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, %struct.dcomplex* getelementptr inbounds ([512 x %struct.dcomplex], [512 x %struct.dcomplex]* @u, i64 0, i64 0), [18 x %struct.dcomplex]* %64, [18 x %struct.dcomplex]* %65)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4, !tbaa !7
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %13, align 4, !tbaa !7
  br label %39

69:                                               ; preds = %55, %39
  %70 = load i32, i32* %7, align 4, !tbaa !7
  %71 = srem i32 %70, 2
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %126

73:                                               ; preds = %69
  store i32 0, i32* %12, align 4, !tbaa !7
  br label %74

74:                                               ; preds = %122, %73
  %75 = load i32, i32* %12, align 4, !tbaa !7
  %76 = load i32, i32* %8, align 4, !tbaa !7
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %74
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %79

79:                                               ; preds = %118, %78
  %80 = load i32, i32* %11, align 4, !tbaa !7
  %81 = load i32, i32* @fftblock, align 4, !tbaa !7
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %121

83:                                               ; preds = %79
  %84 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %10, align 8, !tbaa !2
  %85 = load i32, i32* %12, align 4, !tbaa !7
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %84, i64 %86
  %88 = load i32, i32* %11, align 4, !tbaa !7
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %87, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %90, i32 0, i32 0
  %92 = load double, double* %91, align 8, !tbaa !19
  %93 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %9, align 8, !tbaa !2
  %94 = load i32, i32* %12, align 4, !tbaa !7
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %93, i64 %95
  %97 = load i32, i32* %11, align 4, !tbaa !7
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %96, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %99, i32 0, i32 0
  store double %92, double* %100, align 8, !tbaa !19
  %101 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %10, align 8, !tbaa !2
  %102 = load i32, i32* %12, align 4, !tbaa !7
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %101, i64 %103
  %105 = load i32, i32* %11, align 4, !tbaa !7
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %104, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8, !tbaa !21
  %110 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %9, align 8, !tbaa !2
  %111 = load i32, i32* %12, align 4, !tbaa !7
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %110, i64 %112
  %114 = load i32, i32* %11, align 4, !tbaa !7
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %116, i32 0, i32 1
  store double %109, double* %117, align 8, !tbaa !21
  br label %118

118:                                              ; preds = %83
  %119 = load i32, i32* %11, align 4, !tbaa !7
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4, !tbaa !7
  br label %79

121:                                              ; preds = %79
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4, !tbaa !7
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4, !tbaa !7
  br label %74

125:                                              ; preds = %74
  br label %126

126:                                              ; preds = %125, %69
  %127 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %127) #6
  %128 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %128) #6
  %129 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %129) #6
  %130 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %130) #6
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind uwtable
define internal void @fftz2(i32, i32, i32, i32, i32, i32, %struct.dcomplex*, [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]*) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dcomplex*, align 8
  %17 = alloca [18 x %struct.dcomplex]*, align 8
  %18 = alloca [18 x %struct.dcomplex]*, align 8
  %19 = alloca i32, align 4
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
  %31 = alloca %struct.dcomplex, align 8
  %32 = alloca %struct.dcomplex, align 8
  %33 = alloca %struct.dcomplex, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  store i32 %0, i32* %10, align 4, !tbaa !7
  store i32 %1, i32* %11, align 4, !tbaa !7
  store i32 %2, i32* %12, align 4, !tbaa !7
  store i32 %3, i32* %13, align 4, !tbaa !7
  store i32 %4, i32* %14, align 4, !tbaa !7
  store i32 %5, i32* %15, align 4, !tbaa !7
  store %struct.dcomplex* %6, %struct.dcomplex** %16, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %7, [18 x %struct.dcomplex]** %17, align 8, !tbaa !2
  store [18 x %struct.dcomplex]* %8, [18 x %struct.dcomplex]** %18, align 8, !tbaa !2
  %38 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #6
  %39 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #6
  %40 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #6
  %41 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #6
  %42 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #6
  %43 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #6
  %44 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #6
  %45 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #6
  %46 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #6
  %47 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %47) #6
  %48 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %48) #6
  %49 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %49) #6
  %50 = bitcast %struct.dcomplex* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %50) #6
  %51 = bitcast %struct.dcomplex* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %51) #6
  %52 = bitcast %struct.dcomplex* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %52) #6
  %53 = load i32, i32* %13, align 4, !tbaa !7
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %20, align 4, !tbaa !7
  %55 = load i32, i32* %11, align 4, !tbaa !7
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %9
  store i32 1, i32* %23, align 4, !tbaa !7
  br label %64

59:                                               ; preds = %9
  %60 = load i32, i32* %11, align 4, !tbaa !7
  %61 = sub nsw i32 %60, 1
  %62 = sub nsw i32 %61, 1
  %63 = shl i32 2, %62
  store i32 %63, i32* %23, align 4, !tbaa !7
  br label %64

64:                                               ; preds = %59, %58
  %65 = load i32, i32* %12, align 4, !tbaa !7
  %66 = load i32, i32* %11, align 4, !tbaa !7
  %67 = sub nsw i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %21, align 4, !tbaa !7
  br label %76

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4, !tbaa !7
  %72 = load i32, i32* %11, align 4, !tbaa !7
  %73 = sub nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = shl i32 2, %74
  store i32 %75, i32* %21, align 4, !tbaa !7
  br label %76

76:                                               ; preds = %70, %69
  %77 = load i32, i32* %23, align 4, !tbaa !7
  %78 = mul nsw i32 2, %77
  store i32 %78, i32* %22, align 4, !tbaa !7
  %79 = load i32, i32* %21, align 4, !tbaa !7
  store i32 %79, i32* %24, align 4, !tbaa !7
  store i32 0, i32* %25, align 4, !tbaa !7
  br label %80

80:                                               ; preds = %281, %76
  %81 = load i32, i32* %25, align 4, !tbaa !7
  %82 = load i32, i32* %21, align 4, !tbaa !7
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %284

84:                                               ; preds = %80
  %85 = load i32, i32* %25, align 4, !tbaa !7
  %86 = load i32, i32* %23, align 4, !tbaa !7
  %87 = mul nsw i32 %85, %86
  store i32 %87, i32* %27, align 4, !tbaa !7
  %88 = load i32, i32* %27, align 4, !tbaa !7
  %89 = load i32, i32* %20, align 4, !tbaa !7
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %28, align 4, !tbaa !7
  %91 = load i32, i32* %25, align 4, !tbaa !7
  %92 = load i32, i32* %22, align 4, !tbaa !7
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %29, align 4, !tbaa !7
  %94 = load i32, i32* %29, align 4, !tbaa !7
  %95 = load i32, i32* %23, align 4, !tbaa !7
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %30, align 4, !tbaa !7
  %97 = load i32, i32* %10, align 4, !tbaa !7
  %98 = icmp sge i32 %97, 1
  br i1 %98, label %99, label %118

99:                                               ; preds = %84
  %100 = load %struct.dcomplex*, %struct.dcomplex** %16, align 8, !tbaa !2
  %101 = load i32, i32* %24, align 4, !tbaa !7
  %102 = load i32, i32* %25, align 4, !tbaa !7
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %100, i64 %104
  %106 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %105, i32 0, i32 0
  %107 = load double, double* %106, align 8, !tbaa !19
  %108 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 0
  store double %107, double* %108, align 8, !tbaa !19
  %109 = load %struct.dcomplex*, %struct.dcomplex** %16, align 8, !tbaa !2
  %110 = load i32, i32* %24, align 4, !tbaa !7
  %111 = load i32, i32* %25, align 4, !tbaa !7
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %109, i64 %113
  %115 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %114, i32 0, i32 1
  %116 = load double, double* %115, align 8, !tbaa !21
  %117 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 1
  store double %116, double* %117, align 8, !tbaa !21
  br label %138

118:                                              ; preds = %84
  %119 = load %struct.dcomplex*, %struct.dcomplex** %16, align 8, !tbaa !2
  %120 = load i32, i32* %24, align 4, !tbaa !7
  %121 = load i32, i32* %25, align 4, !tbaa !7
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %119, i64 %123
  %125 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %124, i32 0, i32 0
  %126 = load double, double* %125, align 8, !tbaa !19
  %127 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 0
  store double %126, double* %127, align 8, !tbaa !19
  %128 = load %struct.dcomplex*, %struct.dcomplex** %16, align 8, !tbaa !2
  %129 = load i32, i32* %24, align 4, !tbaa !7
  %130 = load i32, i32* %25, align 4, !tbaa !7
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %128, i64 %132
  %134 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %133, i32 0, i32 1
  %135 = load double, double* %134, align 8, !tbaa !21
  %136 = fsub double -0.000000e+00, %135
  %137 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 1
  store double %136, double* %137, align 8, !tbaa !21
  br label %138

138:                                              ; preds = %118, %99
  store i32 0, i32* %19, align 4, !tbaa !7
  br label %139

139:                                              ; preds = %277, %138
  %140 = load i32, i32* %19, align 4, !tbaa !7
  %141 = load i32, i32* %23, align 4, !tbaa !7
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %280

143:                                              ; preds = %139
  store i32 0, i32* %26, align 4, !tbaa !7
  br label %144

144:                                              ; preds = %273, %143
  %145 = load i32, i32* %26, align 4, !tbaa !7
  %146 = load i32, i32* %14, align 4, !tbaa !7
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %276

148:                                              ; preds = %144
  %149 = bitcast double* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %149) #6
  %150 = bitcast double* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %150) #6
  %151 = bitcast double* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %151) #6
  %152 = bitcast double* %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %152) #6
  %153 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %17, align 8, !tbaa !2
  %154 = load i32, i32* %27, align 4, !tbaa !7
  %155 = load i32, i32* %19, align 4, !tbaa !7
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %153, i64 %157
  %159 = load i32, i32* %26, align 4, !tbaa !7
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %158, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %161, i32 0, i32 0
  %163 = load double, double* %162, align 8, !tbaa !19
  store double %163, double* %34, align 8, !tbaa !9
  %164 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %17, align 8, !tbaa !2
  %165 = load i32, i32* %27, align 4, !tbaa !7
  %166 = load i32, i32* %19, align 4, !tbaa !7
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %164, i64 %168
  %170 = load i32, i32* %26, align 4, !tbaa !7
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %169, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %172, i32 0, i32 1
  %174 = load double, double* %173, align 8, !tbaa !21
  store double %174, double* %35, align 8, !tbaa !9
  %175 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %17, align 8, !tbaa !2
  %176 = load i32, i32* %28, align 4, !tbaa !7
  %177 = load i32, i32* %19, align 4, !tbaa !7
  %178 = add nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %175, i64 %179
  %181 = load i32, i32* %26, align 4, !tbaa !7
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %180, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %183, i32 0, i32 0
  %185 = load double, double* %184, align 8, !tbaa !19
  store double %185, double* %36, align 8, !tbaa !9
  %186 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %17, align 8, !tbaa !2
  %187 = load i32, i32* %28, align 4, !tbaa !7
  %188 = load i32, i32* %19, align 4, !tbaa !7
  %189 = add nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %186, i64 %190
  %192 = load i32, i32* %26, align 4, !tbaa !7
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %191, i64 0, i64 %193
  %195 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %194, i32 0, i32 1
  %196 = load double, double* %195, align 8, !tbaa !21
  store double %196, double* %37, align 8, !tbaa !9
  %197 = load double, double* %34, align 8, !tbaa !9
  %198 = load double, double* %36, align 8, !tbaa !9
  %199 = fadd double %197, %198
  %200 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %18, align 8, !tbaa !2
  %201 = load i32, i32* %29, align 4, !tbaa !7
  %202 = load i32, i32* %19, align 4, !tbaa !7
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %200, i64 %204
  %206 = load i32, i32* %26, align 4, !tbaa !7
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %205, i64 0, i64 %207
  %209 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %208, i32 0, i32 0
  store double %199, double* %209, align 8, !tbaa !19
  %210 = load double, double* %35, align 8, !tbaa !9
  %211 = load double, double* %37, align 8, !tbaa !9
  %212 = fadd double %210, %211
  %213 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %18, align 8, !tbaa !2
  %214 = load i32, i32* %29, align 4, !tbaa !7
  %215 = load i32, i32* %19, align 4, !tbaa !7
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %213, i64 %217
  %219 = load i32, i32* %26, align 4, !tbaa !7
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %218, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %221, i32 0, i32 1
  store double %212, double* %222, align 8, !tbaa !21
  %223 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 0
  %224 = load double, double* %223, align 8, !tbaa !19
  %225 = load double, double* %34, align 8, !tbaa !9
  %226 = load double, double* %36, align 8, !tbaa !9
  %227 = fsub double %225, %226
  %228 = fmul double %224, %227
  %229 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 1
  %230 = load double, double* %229, align 8, !tbaa !21
  %231 = load double, double* %35, align 8, !tbaa !9
  %232 = load double, double* %37, align 8, !tbaa !9
  %233 = fsub double %231, %232
  %234 = fmul double %230, %233
  %235 = fsub double %228, %234
  %236 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %18, align 8, !tbaa !2
  %237 = load i32, i32* %30, align 4, !tbaa !7
  %238 = load i32, i32* %19, align 4, !tbaa !7
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %236, i64 %240
  %242 = load i32, i32* %26, align 4, !tbaa !7
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %241, i64 0, i64 %243
  %245 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %244, i32 0, i32 0
  store double %235, double* %245, align 8, !tbaa !19
  %246 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 0
  %247 = load double, double* %246, align 8, !tbaa !19
  %248 = load double, double* %35, align 8, !tbaa !9
  %249 = load double, double* %37, align 8, !tbaa !9
  %250 = fsub double %248, %249
  %251 = fmul double %247, %250
  %252 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %31, i32 0, i32 1
  %253 = load double, double* %252, align 8, !tbaa !21
  %254 = load double, double* %34, align 8, !tbaa !9
  %255 = load double, double* %36, align 8, !tbaa !9
  %256 = fsub double %254, %255
  %257 = fmul double %253, %256
  %258 = fadd double %251, %257
  %259 = load [18 x %struct.dcomplex]*, [18 x %struct.dcomplex]** %18, align 8, !tbaa !2
  %260 = load i32, i32* %30, align 4, !tbaa !7
  %261 = load i32, i32* %19, align 4, !tbaa !7
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %259, i64 %263
  %265 = load i32, i32* %26, align 4, !tbaa !7
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [18 x %struct.dcomplex], [18 x %struct.dcomplex]* %264, i64 0, i64 %266
  %268 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %267, i32 0, i32 1
  store double %258, double* %268, align 8, !tbaa !21
  %269 = bitcast double* %37 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %269) #6
  %270 = bitcast double* %36 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %270) #6
  %271 = bitcast double* %35 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %271) #6
  %272 = bitcast double* %34 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %272) #6
  br label %273

273:                                              ; preds = %148
  %274 = load i32, i32* %26, align 4, !tbaa !7
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %26, align 4, !tbaa !7
  br label %144

276:                                              ; preds = %144
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %19, align 4, !tbaa !7
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %19, align 4, !tbaa !7
  br label %139

280:                                              ; preds = %139
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %25, align 4, !tbaa !7
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %25, align 4, !tbaa !7
  br label %80

284:                                              ; preds = %80
  %285 = bitcast %struct.dcomplex* %33 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %285) #6
  %286 = bitcast %struct.dcomplex* %32 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %286) #6
  %287 = bitcast %struct.dcomplex* %31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %287) #6
  %288 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %288) #6
  %289 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %289) #6
  %290 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %290) #6
  %291 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %291) #6
  %292 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %292) #6
  %293 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %293) #6
  %294 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %294) #6
  %295 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %295) #6
  %296 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %296) #6
  %297 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %297) #6
  %298 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %298) #6
  %299 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %299) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sin(double) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
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
!17 = !{!"label", !"2"}
!18 = !{!"selected", !"1"}
!19 = !{!20, !10, i64 0}
!20 = !{!"", !10, i64 0, !10, i64 8}
!21 = !{!20, !10, i64 8}
!22 = !{!16, !23, !24, !18}
!23 = !{!"isolated", !"1"}
!24 = !{!"label", !"1"}
!25 = !{!16}
!26 = !{!16, !27, !18}
!27 = !{!"label", !"6"}
!28 = !{!16, !23, !29, !18}
!29 = !{!"label", !"3"}
!30 = !{!16, !23, !31, !18}
!31 = !{!"label", !"4"}
!32 = !{!16, !23, !33, !18}
!33 = !{!"label", !"5"}
