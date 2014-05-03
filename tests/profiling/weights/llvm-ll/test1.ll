; ModuleID = 'source/test1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"test %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @compute2(i32 %a, i32 %b, i32* %c, i32* %z) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32*, align 8
  %z.addr = alloca i32*, align 8
  %test = alloca i32, align 4
  %zzz = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32* %c, i32** %c.addr, align 8
  store i32* %z, i32** %z.addr, align 8
  store i32 5, i32* %test, align 4
  store i32 4, i32* %zzz, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %test, align 4
  %2 = load i32** %c.addr, align 8
  %arrayidx = getelementptr inbounds i32* %2, i64 0
  %3 = load i32* %arrayidx, align 4
  %add = add nsw i32 %3, %1
  store i32 %add, i32* %arrayidx, align 4
  %4 = load i32* %zzz, align 4
  %5 = load i32** %c.addr, align 8
  %arrayidx1 = getelementptr inbounds i32* %5, i64 1
  %6 = load i32* %arrayidx1, align 4
  %add2 = add nsw i32 %6, %4
  store i32 %add2, i32* %arrayidx1, align 4
  %7 = load i32** %z.addr, align 8
  store i32 12, i32* %7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32** %c.addr, align 8
  %arrayidx3 = getelementptr inbounds i32* %9, i64 0
  %10 = load i32* %arrayidx3, align 4
  %11 = load i32** %c.addr, align 8
  %arrayidx4 = getelementptr inbounds i32* %11, i64 1
  %12 = load i32* %arrayidx4, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load i32** %z.addr, align 8
  %14 = load i32* %13, align 4
  %mul5 = mul nsw i32 %mul, %14
  ret i32 %mul5
}

; Function Attrs: nounwind uwtable
define i32 @compute(i32 %a, i32 %b, i32 %d, i32 %e) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %c = alloca i32*, align 8
  %z = alloca i32*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  %call = call noalias i8* @calloc(i64 1, i64 8) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %c, align 8
  %call1 = call noalias i8* @calloc(i64 1, i64 4) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %z, align 8
  %2 = load i32* %a.addr, align 4
  %3 = load i32* %b.addr, align 4
  %4 = load i32** %c, align 8
  %5 = load i32** %z, align 8
  %call2 = call i32 @compute2(i32 %2, i32 %3, i32* %4, i32* %5)
  ret i32 %call2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %x, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %call = call i32 @compute(i32 %1, i32 20, i32 30, i32 40)
  %2 = load i32* %x, align 4
  %add = add nsw i32 %2, %call
  store i32 %add, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32* %x, align 4
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 %4)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
