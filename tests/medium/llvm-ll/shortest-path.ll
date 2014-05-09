; ModuleID = 'source/shortest-path.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Vertex   Distance from Source\0A\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"%d \09\09 %d\0A\00", align 1
@main.graph = private unnamed_addr constant [9 x [9 x i32]] [[9 x i32] [i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0], [9 x i32] [i32 4, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 11, i32 0], [9 x i32] [i32 0, i32 8, i32 0, i32 7, i32 0, i32 4, i32 0, i32 0, i32 2], [9 x i32] [i32 0, i32 0, i32 7, i32 0, i32 9, i32 14, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 9, i32 0, i32 10, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 4, i32 0, i32 10, i32 0, i32 2, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 14, i32 0, i32 2, i32 0, i32 1, i32 6], [9 x i32] [i32 8, i32 11, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 7], [9 x i32] [i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 6, i32 7, i32 0]], align 16

; Function Attrs: nounwind uwtable
define i32 @minDistance(i32* %dist, i8* %sptSet) #0 {
entry:
  %dist.addr = alloca i32*, align 8
  %sptSet.addr = alloca i8*, align 8
  %min = alloca i32, align 4
  %min_index = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %dist, i32** %dist.addr, align 8
  store i8* %sptSet, i8** %sptSet.addr, align 8
  store i32 2147483647, i32* %min, align 4
  store i32 0, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %v, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %v, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8** %sptSet.addr, align 8
  %arrayidx = getelementptr inbounds i8* %2, i64 %idxprom
  %3 = load i8* %arrayidx, align 1
  %tobool = trunc i8 %3 to i1
  %conv = zext i1 %tobool to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32* %v, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i32** %dist.addr, align 8
  %arrayidx4 = getelementptr inbounds i32* %5, i64 %idxprom3
  %6 = load i32* %arrayidx4, align 4
  %7 = load i32* %min, align 4
  %cmp5 = icmp sle i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32* %v, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32** %dist.addr, align 8
  %arrayidx8 = getelementptr inbounds i32* %9, i64 %idxprom7
  %10 = load i32* %arrayidx8, align 4
  store i32 %10, i32* %min, align 4
  %11 = load i32* %v, align 4
  store i32 %11, i32* %min_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32* %v, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32* %min_index, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @printSolution(i32* %dist, i32 %n) #0 {
entry:
  %dist.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %dist, i32** %dist.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32** %dist.addr, align 8
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %1, i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dijkstra([9 x i32]* %graph, i32 %src) #0 {
entry:
  %graph.addr = alloca [9 x i32]*, align 8
  %src.addr = alloca i32, align 4
  %dist = alloca [9 x i32], align 16
  %sptSet = alloca [9 x i8], align 1
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store [9 x i32]* %graph, [9 x i32]** %graph.addr, align 8
  store i32 %src, i32* %src.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %idxprom
  store i32 2147483647, i32* %arrayidx, align 4
  %2 = load i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i64 %idxprom1
  store i8 0, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32* %src.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc47, %for.end
  %5 = load i32* %count, align 4
  %cmp6 = icmp slt i32 %5, 8
  br i1 %cmp6, label %for.body7, label %for.end49

for.body7:                                        ; preds = %for.cond5
  %arraydecay = getelementptr inbounds [9 x i32]* %dist, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i32 0
  %call = call i32 @minDistance(i32* %arraydecay, i8* %arraydecay8)
  store i32 %call, i32* %u, align 4
  %6 = load i32* %u, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i64 %idxprom9
  store i8 1, i8* %arrayidx10, align 1
  store i32 0, i32* %v, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc44, %for.body7
  %7 = load i32* %v, align 4
  %cmp12 = icmp slt i32 %7, 9
  br i1 %cmp12, label %for.body13, label %for.end46

for.body13:                                       ; preds = %for.cond11
  %8 = load i32* %v, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [9 x i8]* %sptSet, i32 0, i64 %idxprom14
  %9 = load i8* %arrayidx15, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body13
  %10 = load i32* %v, align 4
  %idxprom16 = sext i32 %10 to i64
  %11 = load i32* %u, align 4
  %idxprom17 = sext i32 %11 to i64
  %12 = load [9 x i32]** %graph.addr, align 8
  %arrayidx18 = getelementptr inbounds [9 x i32]* %12, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [9 x i32]* %arrayidx18, i32 0, i64 %idxprom16
  %13 = load i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %13, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true
  %14 = load i32* %u, align 4
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %idxprom22
  %15 = load i32* %arrayidx23, align 4
  %cmp24 = icmp ne i32 %15, 2147483647
  br i1 %cmp24, label %land.lhs.true25, label %if.end

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %16 = load i32* %u, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %idxprom26
  %17 = load i32* %arrayidx27, align 4
  %18 = load i32* %v, align 4
  %idxprom28 = sext i32 %18 to i64
  %19 = load i32* %u, align 4
  %idxprom29 = sext i32 %19 to i64
  %20 = load [9 x i32]** %graph.addr, align 8
  %arrayidx30 = getelementptr inbounds [9 x i32]* %20, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [9 x i32]* %arrayidx30, i32 0, i64 %idxprom28
  %21 = load i32* %arrayidx31, align 4
  %add = add nsw i32 %17, %21
  %22 = load i32* %v, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %idxprom32
  %23 = load i32* %arrayidx33, align 4
  %cmp34 = icmp slt i32 %add, %23
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true25
  %24 = load i32* %u, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %idxprom35
  %25 = load i32* %arrayidx36, align 4
  %26 = load i32* %v, align 4
  %idxprom37 = sext i32 %26 to i64
  %27 = load i32* %u, align 4
  %idxprom38 = sext i32 %27 to i64
  %28 = load [9 x i32]** %graph.addr, align 8
  %arrayidx39 = getelementptr inbounds [9 x i32]* %28, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [9 x i32]* %arrayidx39, i32 0, i64 %idxprom37
  %29 = load i32* %arrayidx40, align 4
  %add41 = add nsw i32 %25, %29
  %30 = load i32* %v, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [9 x i32]* %dist, i32 0, i64 %idxprom42
  store i32 %add41, i32* %arrayidx43, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true25, %land.lhs.true21, %land.lhs.true, %for.body13
  br label %for.inc44

for.inc44:                                        ; preds = %if.end
  %31 = load i32* %v, align 4
  %inc45 = add nsw i32 %31, 1
  store i32 %inc45, i32* %v, align 4
  br label %for.cond11

for.end46:                                        ; preds = %for.cond11
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %32 = load i32* %count, align 4
  %inc48 = add nsw i32 %32, 1
  store i32 %inc48, i32* %count, align 4
  br label %for.cond5

for.end49:                                        ; preds = %for.cond5
  %arraydecay50 = getelementptr inbounds [9 x i32]* %dist, i32 0, i32 0
  call void @printSolution(i32* %arraydecay50, i32 9)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %graph = alloca [9 x [9 x i32]], align 16
  store i32 0, i32* %retval
  %0 = bitcast [9 x [9 x i32]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([9 x [9 x i32]]* @main.graph to i8*), i64 324, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [9 x [9 x i32]]* %graph, i32 0, i32 0
  call void @dijkstra([9 x i32]* %arraydecay, i32 0)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
