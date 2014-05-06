; ModuleID = 'source/irreducibleloop1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @irreducible1() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  %0 = load i32* %a, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  br label %loop1

loop1:                                            ; preds = %if.then6, %if.then
  %1 = load i32* %a, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %a, align 4
  %2 = load i32* %a, align 4
  %cmp1 = icmp slt i32 %2, 10
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %loop1
  br label %loop2

if.else:                                          ; preds = %loop1
  br label %end

if.else3:                                         ; preds = %entry
  br label %loop2

loop2:                                            ; preds = %if.else3, %if.then2
  %3 = load i32* %b, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, i32* %b, align 4
  %4 = load i32* %b, align 4
  %cmp5 = icmp slt i32 %4, 10
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %loop2
  br label %loop1

if.else7:                                         ; preds = %loop2
  br label %end

end:                                              ; preds = %if.else7, %if.else
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
  call void @irreducible1()
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

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
