; ModuleID = 'source/irreducibleloop1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"A: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"B: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  %0 = load i32* %a, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then
  br label %loop1

loop1:                                            ; preds = %if.then8, %while.body
  %1 = load i32* %a, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %a, align 4
  %2 = load i32* %a, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 %2)
  %3 = load i32* %a, align 4
  %cmp1 = icmp slt i32 %3, 10
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %loop1
  br label %loop2

if.else:                                          ; preds = %loop1
  br label %while.end

while.end:                                        ; preds = %if.else
  br label %if.end

if.else3:                                         ; preds = %entry
  br label %while.body4

while.body4:                                      ; preds = %if.else3
  br label %loop2

loop2:                                            ; preds = %while.body4, %if.then2
  %4 = load i32* %b, align 4
  %inc5 = add nsw i32 %4, 1
  store i32 %inc5, i32* %b, align 4
  %5 = load i32* %b, align 4
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 %5)
  %6 = load i32* %b, align 4
  %cmp7 = icmp slt i32 %6, 10
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %loop2
  br label %loop1

if.else9:                                         ; preds = %loop2
  br label %while.end10

while.end10:                                      ; preds = %if.else9
  br label %if.end

if.end:                                           ; preds = %while.end10, %while.end
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
