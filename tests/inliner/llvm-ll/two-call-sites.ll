; ModuleID = 'source/two-call-sites.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@block_freq_1 = common global i32 0, align 4
@block_freq_2 = common global i32 0, align 4
@func_freq = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @bar1() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @bar2() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define void @foo() #0 {
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for1.cond

for1.cond:                                        ; preds = %for1.inc, %0
  %1 = load i32* %i, align 4
  %2 = load i32* @block_freq_1, align 4
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %for1.body, label %for2.init

for1.body:                                        ; preds = %for1.cond
  call void @bar1()
  br label %for1.inc

for1.inc:                                         ; preds = %for1.body
  %4 = load i32* %i, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %i, align 4
  br label %for1.cond

for2.init:                                        ; preds = %for1.cond
  store i32 0, i32* %i1, align 4
  br label %for2.cond

for2.cond:                                        ; preds = %15, %for2.init
  %6 = load i32* %i1, align 4 
  %7 = load i32* @block_freq_2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %for2.body, label %end

for2.body:                                        ; preds = %for2.cond
  call void @bar2()
  br label %for2.inc

for2.inc:                                         ; preds = %for2.body
  %9 = load i32* %i1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %i1, align 4
  br label %for2.cond

end:                                              ; preds = %for2.cond
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
  store i32 %11, i32* @block_freq_1, align 4
  %12 = load i8*** %3, align 8
  %13 = getelementptr inbounds i8** %12, i64 3
  %14 = load i8** %13, align 8
  %15 = call i32 @atoi(i8* %14) #2
  store i32 %15, i32* @block_freq_2, align 4
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %21, %0
  %17 = load i32* %i, align 4
  %18 = load i32* @func_freq, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %16
  call void @foo()
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %16

; <label>:24                                      ; preds = %16
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }
