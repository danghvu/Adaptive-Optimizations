; ModuleID = 'source/single-call-site.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@block_freq = common global i32 0, align 4
@func_freq = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @bar() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @foo() #0 {
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %6, %0
  %2 = load i32* %i, align 4
  %3 = load i32* @block_freq, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %1
  call void @bar()
  br label %6

; <label>:6                                       ; preds = %5
  %7 = load i32* %i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %i, align 4
  br label %1

; <label>:9                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i8*** %3, align 8
  %5 = getelementptr inbounds i8** %4, i64 1
  %6 = load i8** %5, align 8
  %7 = call i32 @atoi(i8* %6) #2
  store i32 %7, i32* @func_freq, align 4
  %8 = load i8*** %3, align 8
  %9 = getelementptr inbounds i8** %8, i64 2
  %10 = load i8** %9, align 8
  %11 = call i32 @atoi(i8* %10) #2
  store i32 %11, i32* @block_freq, align 4
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %17, %0
  %13 = load i32* %i, align 4
  %14 = load i32* @func_freq, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %12
  call void @foo()
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load i32* %i, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %12

; <label>:20                                      ; preds = %12
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }
