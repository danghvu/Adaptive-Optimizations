; ModuleID = 'source/prims-alg.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@.str = private unnamed_addr constant [15 x i8] c"Edge   Weight\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"%d - %d    %d \0A\00", align 1
@main.graph = private unnamed_addr constant [5 x [5 x i32]] [[5 x i32] [i32 0, i32 2, i32 0, i32 6, i32 0], [5 x i32] [i32 2, i32 0, i32 3, i32 8, i32 5], [5 x i32] [i32 0, i32 3, i32 0, i32 0, i32 7], [5 x i32] [i32 6, i32 8, i32 0, i32 0, i32 9], [5 x i32] [i32 0, i32 5, i32 7, i32 9, i32 0]], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @minKey(i32* %key, i8* %mstSet) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %min = alloca i32, align 4
  %min_index = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %key, i32** %1, align 8
  store i8* %mstSet, i8** %2, align 8
  store i32 2147483647, i32* %min, align 4
  store i32 0, i32* %v, align 4
  br label %3

; <label>:3                                       ; preds = %31, %0
  %4 = load i32* %v, align 4
  %5 = icmp slt i32 %4, 5
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
  %22 = icmp slt i32 %20, %21
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
define void @printMST(i32* %parent, i32 %n, [5 x i32]* %graph) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [5 x i32]*, align 8
  %i = alloca i32, align 4
  store i32* %parent, i32** %1, align 8
  store i32 %n, i32* %2, align 4
  store [5 x i32]* %graph, [5 x i32]** %3, align 8
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %28, %0
  %6 = load i32* %i, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %31

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %1, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  %13 = load i32* %12, align 4
  %14 = load i32* %i, align 4
  %15 = load i32* %i, align 4
  %16 = sext i32 %15 to i64
  %17 = load i32** %1, align 8
  %18 = getelementptr inbounds i32* %17, i64 %16
  %19 = load i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load [5 x i32]** %3, align 8
  %24 = getelementptr inbounds [5 x i32]* %23, i64 %22
  %25 = getelementptr inbounds [5 x i32]* %24, i32 0, i64 %20
  %26 = load i32* %25, align 4
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), i32 %13, i32 %14, i32 %26)
  br label %28

; <label>:28                                      ; preds = %8
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %5

; <label>:31                                      ; preds = %5
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @primMST([5 x i32]* %graph) #0 {
  %1 = alloca [5 x i32]*, align 8
  %parent = alloca [5 x i32], align 16
  %key = alloca [5 x i32], align 16
  %mstSet = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store [5 x i32]* %graph, [5 x i32]** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %12, %0
  %3 = load i32* %i, align 4
  %4 = icmp slt i32 %3, 5
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [5 x i32]* %key, i32 0, i64 %7
  store i32 2147483647, i32* %8, align 4
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i64 %10
  store i8 0, i8* %11, align 1
  br label %12

; <label>:12                                      ; preds = %5
  %13 = load i32* %i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %2

; <label>:15                                      ; preds = %2
  %16 = getelementptr inbounds [5 x i32]* %key, i32 0, i64 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [5 x i32]* %parent, i32 0, i64 0
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %count, align 4
  br label %18

; <label>:18                                      ; preds = %84, %15
  %19 = load i32* %count, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %87

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds [5 x i32]* %key, i32 0, i32 0
  %23 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i32 0
  %24 = call i32 @minKey(i32* %22, i8* %23)
  store i32 %24, i32* %u, align 4
  %25 = load i32* %u, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i64 %26
  store i8 1, i8* %27, align 1
  store i32 0, i32* %v, align 4
  br label %28

; <label>:28                                      ; preds = %80, %21
  %29 = load i32* %v, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %83

; <label>:31                                      ; preds = %28
  %32 = load i32* %v, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32* %u, align 4
  %35 = sext i32 %34 to i64
  %36 = load [5 x i32]** %1, align 8
  %37 = getelementptr inbounds [5 x i32]* %36, i64 %35
  %38 = getelementptr inbounds [5 x i32]* %37, i32 0, i64 %33
  %39 = load i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

; <label>:41                                      ; preds = %31
  %42 = load i32* %v, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i64 %43
  %45 = load i8* %44, align 1
  %46 = trunc i8 %45 to i1
  %47 = zext i1 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %79

; <label>:49                                      ; preds = %41
  %50 = load i32* %v, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32* %u, align 4
  %53 = sext i32 %52 to i64
  %54 = load [5 x i32]** %1, align 8
  %55 = getelementptr inbounds [5 x i32]* %54, i64 %53
  %56 = getelementptr inbounds [5 x i32]* %55, i32 0, i64 %51
  %57 = load i32* %56, align 4
  %58 = load i32* %v, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [5 x i32]* %key, i32 0, i64 %59
  %61 = load i32* %60, align 4
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %79

; <label>:63                                      ; preds = %49
  %64 = load i32* %u, align 4
  %65 = load i32* %v, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x i32]* %parent, i32 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i32* %v, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32* %u, align 4
  %71 = sext i32 %70 to i64
  %72 = load [5 x i32]** %1, align 8
  %73 = getelementptr inbounds [5 x i32]* %72, i64 %71
  %74 = getelementptr inbounds [5 x i32]* %73, i32 0, i64 %69
  %75 = load i32* %74, align 4
  %76 = load i32* %v, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x i32]* %key, i32 0, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

; <label>:79                                      ; preds = %63, %49, %41, %31
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load i32* %v, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %v, align 4
  br label %28

; <label>:83                                      ; preds = %28
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i32* %count, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %count, align 4
  br label %18

; <label>:87                                      ; preds = %18
  %88 = getelementptr inbounds [5 x i32]* %parent, i32 0, i32 0
  %89 = load [5 x i32]** %1, align 8
  call void @printMST(i32* %88, i32 5, [5 x i32]* %89)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %graph = alloca [5 x [5 x i32]], align 16
  store i32 0, i32* %1
  %2 = bitcast [5 x [5 x i32]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([5 x [5 x i32]]* @main.graph to i8*), i64 100, i32 16, i1 false)
  %3 = getelementptr inbounds [5 x [5 x i32]]* %graph, i32 0, i32 0
  call void @primMST([5 x i32]* %3)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 5.1 (clang-503.0.40) (based on LLVM 3.4svn)"}
