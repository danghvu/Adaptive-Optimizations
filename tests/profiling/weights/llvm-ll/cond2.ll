; ModuleID = 'source/cond2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%d is divisible by 4\0A\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"%d is divisible by 2\0A\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"%d %% 4 = 1\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"%d %% 4 = 3\0A\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"Done!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 6, i32* %x, align 4
  %0 = load i32* %x, align 4
  %rem = srem i32 %0, 4
  store i32 %rem, i32* %y, align 4
  %1 = load i32* %y, align 4
  %rem1 = srem i32 %1, 2
  %cmp = icmp eq i32 %rem1, 0
  br i1 %cmp, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %2 = load i32* %y, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %3 = load i32* %x, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0), i32 %3)
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load i32* %x, align 4
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end12

if.else5:                                         ; preds = %entry
  %5 = load i32* %x, align 4
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %6 = load i32* %x, align 4
  %call8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 %6)
  br label %if.end11

if.else9:                                         ; preds = %if.else5
  %7 = load i32* %x, align 4
  %call10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 %7)
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
