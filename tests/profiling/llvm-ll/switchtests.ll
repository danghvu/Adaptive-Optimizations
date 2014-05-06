; ModuleID = 'source/switchtests.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d is even\0A\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"%d is odd\0A\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"%d %% 5 = 1\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"%d %% 5 = 2\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"%d %% 5 = 3\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"%d is divisible by 4!\0A\00", align 1
@.str6 = private unnamed_addr constant [22 x i8] c"Something went wrong\0A\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"(%d, %d, %d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @switch1() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 5, i32* %x, align 4
  %0 = load i32* %x, align 4
  %rem = srem i32 %0, 2
  store i32 %rem, i32* %y, align 4
  %1 = load i32* %y, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32* %x, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i32 %2)
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %3 = load i32* %x, align 4
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0), i32 %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @switch2() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 6, i32* %x, align 4
  %0 = load i32* %x, align 4
  %rem = srem i32 %0, 4
  store i32 %rem, i32* %y, align 4
  %1 = load i32* %y, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32* %x, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load i32* %x, align 4
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load i32* %x, align 4
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 %4)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %5 = load i32* %x, align 4
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0), i32 %5)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str6, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @switch3() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %x, align 4
  store i32 1, i32* %y, align 4
  store i32 2, i32* %z, align 4
  %0 = load i32* %x, align 4
  switch i32 %0, label %sw.default10 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32* %y, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %sw.bb
  store i32 5, i32* %x, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %sw.bb
  store i32 2, i32* %x, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 0, i32* %x, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1
  br label %sw.epilog11

sw.bb3:                                           ; preds = %entry
  %2 = load i32* %z, align 4
  switch i32 %2, label %sw.epilog9 [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
  ]

sw.bb4:                                           ; preds = %sw.bb3
  store i32 4, i32* %y, align 4
  br label %sw.epilog9

sw.bb5:                                           ; preds = %sw.bb3
  %3 = load i32* %y, align 4
  switch i32 %3, label %sw.default7 [
    i32 1, label %sw.bb6
  ]

sw.bb6:                                           ; preds = %sw.bb5
  store i32 10, i32* %z, align 4
  br label %sw.epilog8

sw.default7:                                      ; preds = %sw.bb5
  store i32 -4, i32* %z, align 4
  br label %sw.epilog8

sw.epilog8:                                       ; preds = %sw.default7, %sw.bb6
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.bb3, %sw.epilog8, %sw.bb4
  br label %sw.default10

sw.default10:                                     ; preds = %entry, %sw.epilog9
  store i32 4, i32* %z, align 4
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.default10, %sw.epilog
  %4 = load i32* %x, align 4
  %5 = load i32* %y, align 4
  %6 = load i32* %z, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0), i32 %4, i32 %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @switch1()
  call void @switch2()
  call void @switch3()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %2 = load i32* %retval
  ret i32 %2
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
