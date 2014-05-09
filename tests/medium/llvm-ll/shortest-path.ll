; ModuleID = 'source/shortest-path.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@.str = private unnamed_addr constant [31 x i8] c"Vertex   Distance from Source\0A\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"%d \09\09 %d\0A\00", align 1
@main.graph = private unnamed_addr constant [9 x [9 x i32]] [[9 x i32] [i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0], [9 x i32] [i32 4, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 11, i32 0], [9 x i32] [i32 0, i32 8, i32 0, i32 7, i32 0, i32 4, i32 0, i32 0, i32 2], [9 x i32] [i32 0, i32 0, i32 7, i32 0, i32 9, i32 14, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 9, i32 0, i32 10, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 4, i32 0, i32 10, i32 0, i32 2, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 14, i32 0, i32 2, i32 0, i32 1, i32 6], [9 x i32] [i32 8, i32 11, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 7], [9 x i32] [i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 6, i32 7, i32 0]], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @minDistance(i32* %dist, i8* %sptSet) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %min = alloca i32, align 4
  %min_index = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %dist, i32** %1, align 8
  store i8* %sptSet, i8** %2, align 8
  store i32 2147483647, i32* %min, align 4
  store i32 0, i32* %v, align 4
  br label %3

; <label>:3                                       ; preds = %31, %0
  %4 = load i32* %v, align 4
  %5 = icmp slt i32 %4, 9
  br i1 %5, label %6, label %34

; <label>:6                                       ; preds = %3
  %7 = load i32* %v, align 4
  %8 = sext i32 %7 to i64
  %9 = load i8** %2, align 8
  %10 = getelementptr inbounds i8* %9, i64 %8
  %11 = load i8* %10, align 1
  %12 = trunc i8 %11 to i1
  %13 = zext i1 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

; <label>:15                                      ; preds = %6
  %16 = load i32* %v, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32** %1, align 8
  %19 = getelementptr inbounds i32* %18, i64 %17
  %20 = load i32* %19, align 4
  %21 = load i32* %min, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %15
  %24 = load i32* %v, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32** %1, align 8
  %27 = getelementptr inbounds i32* %26, i64 %25
  %28 = load i32* %27, align 4
  store i32 %28, i32* %min, align 4
  %29 = load i32* %v, align 4
  store i32 %29, i32* %min_index, align 4
  br label %30

; <label>:30                                      ; preds = %23, %15, %6
  br label %31

; <label>:31                                      ; preds = %30
  %32 = load i32* %v, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %v, align 4
  br label %3

; <label>:34                                      ; preds = %3
  %35 = load i32* %min_index, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define void @printSolution(i32* %dist, i32 %n) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %dist, i32** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %15, %0
  %5 = load i32* %i, align 4
  %6 = icmp slt i32 %5, 9
  br i1 %6, label %7, label %18

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %1, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  %13 = load i32* %12, align 4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %8, i32 %13)
  br label %15

; <label>:15                                      ; preds = %7
  %16 = load i32* %i, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %4

; <label>:18                                      ; preds = %4
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @dijkstra([9 x i32]* %graph, i32 %src) #0 {
  %1 = alloca [9 x i32]*, align 8
  %2 = alloca i32, align 4
  %dist = alloca [9 x i32], align 16
  %sptSet = alloca [9 x i8], align 1
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store [9 x i32]* %graph, [9 x i32]** %1, align 8
  store i32 %src, i32* %2, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %13, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 9
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %8
  store i32 2147483647, i32* %9, align 4
  %10 = load i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i64 %11
  store i8 0, i8* %12, align 1
  br label %13

; <label>:13                                      ; preds = %6
  %14 = load i32* %i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4
  br label %3

; <label>:16                                      ; preds = %3
  %17 = load i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %18
  store i32 0, i32* %19, align 4
  store i32 0, i32* %count, align 4
  br label %20

; <label>:20                                      ; preds = %96, %16
  %21 = load i32* %count, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %99

; <label>:23                                      ; preds = %20
  %24 = getelementptr inbounds [9 x i32]* %dist, i32 0, i32 0
  %25 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i32 0
  %26 = call i32 @minDistance(i32* %24, i8* %25)
  store i32 %26, i32* %u, align 4
  %27 = load i32* %u, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i64 %28
  store i8 1, i8* %29, align 1
  store i32 0, i32* %v, align 4
  br label %30

; <label>:30                                      ; preds = %92, %23
  %31 = load i32* %v, align 4
  %32 = icmp slt i32 %31, 9
  br i1 %32, label %33, label %95

; <label>:33                                      ; preds = %30
  %34 = load i32* %v, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i64 %35
  %37 = load i8* %36, align 1
  %38 = trunc i8 %37 to i1
  br i1 %38, label %91, label %39

; <label>:39                                      ; preds = %33
  %40 = load i32* %v, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32* %u, align 4
  %43 = sext i32 %42 to i64
  %44 = load [9 x i32]** %1, align 8
  %45 = getelementptr inbounds [9 x i32]* %44, i64 %43
  %46 = getelementptr inbounds [9 x i32]* %45, i32 0, i64 %41
  %47 = load i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %91

; <label>:49                                      ; preds = %39
  %50 = load i32* %u, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %51
  %53 = load i32* %52, align 4
  %54 = icmp ne i32 %53, 2147483647
  br i1 %54, label %55, label %91

; <label>:55                                      ; preds = %49
  %56 = load i32* %u, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %57
  %59 = load i32* %58, align 4
  %60 = load i32* %v, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32* %u, align 4
  %63 = sext i32 %62 to i64
  %64 = load [9 x i32]** %1, align 8
  %65 = getelementptr inbounds [9 x i32]* %64, i64 %63
  %66 = getelementptr inbounds [9 x i32]* %65, i32 0, i64 %61
  %67 = load i32* %66, align 4
  %68 = add nsw i32 %59, %67
  %69 = load i32* %v, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %70
  %72 = load i32* %71, align 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %91

; <label>:74                                      ; preds = %55
  %75 = load i32* %u, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %76
  %78 = load i32* %77, align 4
  %79 = load i32* %v, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32* %u, align 4
  %82 = sext i32 %81 to i64
  %83 = load [9 x i32]** %1, align 8
  %84 = getelementptr inbounds [9 x i32]* %83, i64 %82
  %85 = getelementptr inbounds [9 x i32]* %84, i32 0, i64 %80
  %86 = load i32* %85, align 4
  %87 = add nsw i32 %78, %86
  %88 = load i32* %v, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %89
  store i32 %87, i32* %90, align 4
  br label %91

; <label>:91                                      ; preds = %74, %55, %49, %39, %33
  br label %92

; <label>:92                                      ; preds = %91
  %93 = load i32* %v, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %v, align 4
  br label %30

; <label>:95                                      ; preds = %30
  br label %96

; <label>:96                                      ; preds = %95
  %97 = load i32* %count, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %count, align 4
  br label %20

; <label>:99                                      ; preds = %20
  %100 = getelementptr inbounds [9 x i32]* %dist, i32 0, i32 0
  call void @printSolution(i32* %100, i32 9)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %graph = alloca [9 x [9 x i32]], align 16
  store i32 0, i32* %1
  %2 = bitcast [9 x [9 x i32]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([9 x [9 x i32]]* @main.graph to i8*), i64 324, i32 16, i1 false)
  %3 = getelementptr inbounds [9 x [9 x i32]]* %graph, i32 0, i32 0
  call void @dijkstra([9 x i32]* %3, i32 0)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 5.1 (clang-503.0.40) (based on LLVM 3.4svn)"}
