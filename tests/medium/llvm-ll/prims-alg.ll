; ModuleID = 'source/prims-alg.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Edge   Weight\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"%d - %d    %d \0A\00", align 1
@main.graph = private unnamed_addr constant [5 x [5 x i32]] [[5 x i32] [i32 0, i32 2, i32 0, i32 6, i32 0], [5 x i32] [i32 2, i32 0, i32 3, i32 8, i32 5], [5 x i32] [i32 0, i32 3, i32 0, i32 0, i32 7], [5 x i32] [i32 6, i32 8, i32 0, i32 0, i32 9], [5 x i32] [i32 0, i32 5, i32 7, i32 9, i32 0]], align 16

; Function Attrs: nounwind uwtable
define i32 @minKey(i32* %key, i8* %mstSet) #0 {
entry:
  %key.addr = alloca i32*, align 8
  %mstSet.addr = alloca i8*, align 8
  %min = alloca i32, align 4
  %min_index = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %key, i32** %key.addr, align 8
  store i8* %mstSet, i8** %mstSet.addr, align 8
  store i32 2147483647, i32* %min, align 4
  store i32 0, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %v, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %v, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8** %mstSet.addr, align 8
  %arrayidx = getelementptr inbounds i8* %2, i64 %idxprom
  %3 = load i8* %arrayidx, align 1
  %tobool = trunc i8 %3 to i1
  %conv = zext i1 %tobool to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32* %v, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i32** %key.addr, align 8
  %arrayidx4 = getelementptr inbounds i32* %5, i64 %idxprom3
  %6 = load i32* %arrayidx4, align 4
  %7 = load i32* %min, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32* %v, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32** %key.addr, align 8
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
define void @printMST(i32* %parent, i32 %n, [5 x i32]* %graph) #0 {
entry:
  %parent.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %graph.addr = alloca [5 x i32]*, align 8
  %i = alloca i32, align 4
  store i32* %parent, i32** %parent.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store [5 x i32]* %graph, [5 x i32]** %graph.addr, align 8
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32** %parent.addr, align 8
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4
  %4 = load i32* %i, align 4
  %5 = load i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32** %parent.addr, align 8
  %arrayidx2 = getelementptr inbounds i32* %6, i64 %idxprom1
  %7 = load i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load [5 x i32]** %graph.addr, align 8
  %arrayidx5 = getelementptr inbounds [5 x i32]* %9, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [5 x i32]* %arrayidx5, i32 0, i64 %idxprom3
  %10 = load i32* %arrayidx6, align 4
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), i32 %3, i32 %4, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @primMST([5 x i32]* %graph) #0 {
entry:
  %graph.addr = alloca [5 x i32]*, align 8
  %parent = alloca [5 x i32], align 16
  %key = alloca [5 x i32], align 16
  %mstSet = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store [5 x i32]* %graph, [5 x i32]** %graph.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i32]* %key, i32 0, i64 %idxprom
  store i32 2147483647, i32* %arrayidx, align 4
  %2 = load i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i64 %idxprom1
  store i8 0, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [5 x i32]* %key, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [5 x i32]* %parent, i32 0, i64 0
  store i32 -1, i32* %arrayidx4, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc43, %for.end
  %4 = load i32* %count, align 4
  %cmp6 = icmp slt i32 %4, 4
  br i1 %cmp6, label %for.body7, label %for.end45

for.body7:                                        ; preds = %for.cond5
  %arraydecay = getelementptr inbounds [5 x i32]* %key, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i32 0
  %call = call i32 @minKey(i32* %arraydecay, i8* %arraydecay8)
  store i32 %call, i32* %u, align 4
  %5 = load i32* %u, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i64 %idxprom9
  store i8 1, i8* %arrayidx10, align 1
  store i32 0, i32* %v, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc40, %for.body7
  %6 = load i32* %v, align 4
  %cmp12 = icmp slt i32 %6, 5
  br i1 %cmp12, label %for.body13, label %for.end42

for.body13:                                       ; preds = %for.cond11
  %7 = load i32* %v, align 4
  %idxprom14 = sext i32 %7 to i64
  %8 = load i32* %u, align 4
  %idxprom15 = sext i32 %8 to i64
  %9 = load [5 x i32]** %graph.addr, align 8
  %arrayidx16 = getelementptr inbounds [5 x i32]* %9, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [5 x i32]* %arrayidx16, i32 0, i64 %idxprom14
  %10 = load i32* %arrayidx17, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body13
  %11 = load i32* %v, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [5 x i8]* %mstSet, i32 0, i64 %idxprom18
  %12 = load i8* %arrayidx19, align 1
  %tobool20 = trunc i8 %12 to i1
  %conv = zext i1 %tobool20 to i32
  %cmp21 = icmp eq i32 %conv, 0
  br i1 %cmp21, label %land.lhs.true23, label %if.end

land.lhs.true23:                                  ; preds = %land.lhs.true
  %13 = load i32* %v, align 4
  %idxprom24 = sext i32 %13 to i64
  %14 = load i32* %u, align 4
  %idxprom25 = sext i32 %14 to i64
  %15 = load [5 x i32]** %graph.addr, align 8
  %arrayidx26 = getelementptr inbounds [5 x i32]* %15, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [5 x i32]* %arrayidx26, i32 0, i64 %idxprom24
  %16 = load i32* %arrayidx27, align 4
  %17 = load i32* %v, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [5 x i32]* %key, i32 0, i64 %idxprom28
  %18 = load i32* %arrayidx29, align 4
  %cmp30 = icmp slt i32 %16, %18
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true23
  %19 = load i32* %u, align 4
  %20 = load i32* %v, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [5 x i32]* %parent, i32 0, i64 %idxprom32
  store i32 %19, i32* %arrayidx33, align 4
  %21 = load i32* %v, align 4
  %idxprom34 = sext i32 %21 to i64
  %22 = load i32* %u, align 4
  %idxprom35 = sext i32 %22 to i64
  %23 = load [5 x i32]** %graph.addr, align 8
  %arrayidx36 = getelementptr inbounds [5 x i32]* %23, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [5 x i32]* %arrayidx36, i32 0, i64 %idxprom34
  %24 = load i32* %arrayidx37, align 4
  %25 = load i32* %v, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [5 x i32]* %key, i32 0, i64 %idxprom38
  store i32 %24, i32* %arrayidx39, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true23, %land.lhs.true, %for.body13
  br label %for.inc40

for.inc40:                                        ; preds = %if.end
  %26 = load i32* %v, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, i32* %v, align 4
  br label %for.cond11

for.end42:                                        ; preds = %for.cond11
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %27 = load i32* %count, align 4
  %inc44 = add nsw i32 %27, 1
  store i32 %inc44, i32* %count, align 4
  br label %for.cond5

for.end45:                                        ; preds = %for.cond5
  %arraydecay46 = getelementptr inbounds [5 x i32]* %parent, i32 0, i32 0
  %28 = load [5 x i32]** %graph.addr, align 8
  call void @printMST(i32* %arraydecay46, i32 5, [5 x i32]* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %graph = alloca [5 x [5 x i32]], align 16
  store i32 0, i32* %retval
  %0 = bitcast [5 x [5 x i32]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([5 x [5 x i32]]* @main.graph to i8*), i64 100, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [5 x [5 x i32]]* %graph, i32 0, i32 0
  call void @primMST([5 x i32]* %arraydecay)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
