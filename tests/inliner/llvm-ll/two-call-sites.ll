; ModuleID = 'source/two-call-sites.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_freq_1 = common global i32 0, align 4
@block_freq_2 = common global i32 0, align 4
@func_freq = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @bar1() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @bar2() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @foo() #0 {
entry:
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* @block_freq_1, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @bar1()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc5, %for.end
  %3 = load i32* %i1, align 4
  %4 = load i32* @block_freq_2, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end7

for.body4:                                        ; preds = %for.cond2
  call void @bar2()
  br label %for.inc5

for.inc5:                                         ; preds = %for.body4
  %5 = load i32* %i1, align 4
  %inc6 = add nsw i32 %5, 1
  store i32 %inc6, i32* %i1, align 4
  br label %for.cond2

for.end7:                                         ; preds = %for.cond2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8** %0, i64 1
  %1 = load i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %1) #2
  store i32 %call, i32* @func_freq, align 4
  %2 = load i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8** %2, i64 2
  %3 = load i8** %arrayidx1, align 8
  %call2 = call i32 @atoi(i8* %3) #2
  store i32 %call2, i32* @block_freq_1, align 4
  %4 = load i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8** %4, i64 3
  %5 = load i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #2
  store i32 %call4, i32* @block_freq_2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32* %i, align 4
  %7 = load i32* @func_freq, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @foo()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
