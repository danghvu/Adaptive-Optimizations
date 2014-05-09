; ModuleID = 'source/linear.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Doing Matrix multiplication on size %d x %d\0A\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"Time for iteration %d: %f sec\0A\00", align 1

; Function Attrs: nounwind uwtable
define double** @createMatrix(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %matrix = alloca double**, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32* %size.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to double**
  store double** %1, double*** %matrix, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %size.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %4 = load i32* %size.addr, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 8, %conv2
  %call4 = call noalias i8* @malloc(i64 %mul3) #3
  %5 = bitcast i8* %call4 to double*
  %6 = load i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load double*** %matrix, align 8
  %arrayidx = getelementptr inbounds double** %7, i64 %idxprom
  store double* %5, double** %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %8 = load i32* %j, align 4
  %9 = load i32* %size.addr, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %call9 = call i32 @rand() #3
  %mul10 = mul nsw i32 %call9, 100
  %conv11 = sitofp i32 %mul10 to double
  %10 = load i32* %j, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i32* %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load double*** %matrix, align 8
  %arrayidx14 = getelementptr inbounds double** %12, i64 %idxprom13
  %13 = load double** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds double* %13, i64 %idxprom12
  store double %conv11, double* %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %14 = load i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %15 = load i32* %i, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  %16 = load double*** %matrix, align 8
  ret double** %16
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind uwtable
define void @destroyMatrix(double** %matrix, i32 %size) #0 {
entry:
  %matrix.addr = alloca double**, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double** %matrix, double*** %matrix.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*** %matrix.addr, align 8
  %arrayidx = getelementptr inbounds double** %3, i64 %idxprom
  %4 = load double** %arrayidx, align 8
  %5 = bitcast double* %4 to i8*
  call void @free(i8* %5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double*** %matrix.addr, align 8
  %8 = bitcast double** %7 to i8*
  call void @free(i8* %8) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define double** @matmat(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %mat1 = alloca double**, align 8
  %mat2 = alloca double**, align 8
  %res = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32* %size.addr, align 4
  %call = call double** @createMatrix(i32 %0)
  store double** %call, double*** %mat1, align 8
  %1 = load i32* %size.addr, align 4
  %call1 = call double** @createMatrix(i32 %1)
  store double** %call1, double*** %mat2, align 8
  %2 = load i32* %size.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call2 = call noalias i8* @malloc(i64 %mul) #3
  %3 = bitcast i8* %call2 to double**
  store double** %3, double*** %res, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %4 = load i32* %i, align 4
  %5 = load i32* %size.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %6 = load i32* %size.addr, align 4
  %conv4 = sext i32 %6 to i64
  %mul5 = mul i64 8, %conv4
  %call6 = call noalias i8* @malloc(i64 %mul5) #3
  %7 = bitcast i8* %call6 to double*
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load double*** %res, align 8
  %arrayidx = getelementptr inbounds double** %9, i64 %idxprom
  store double* %7, double** %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %10 = load i32* %j, align 4
  %11 = load i32* %size.addr, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %12 = load i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load double*** %res, align 8
  %arrayidx13 = getelementptr inbounds double** %14, i64 %idxprom12
  %15 = load double** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds double* %15, i64 %idxprom11
  store double 0.000000e+00, double* %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %16 = load i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %17 = load i32* %i, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc49, %for.end17
  %18 = load i32* %i, align 4
  %19 = load i32* %size.addr, align 4
  %cmp19 = icmp slt i32 %18, %19
  br i1 %cmp19, label %for.body21, label %for.end51

for.body21:                                       ; preds = %for.cond18
  store i32 0, i32* %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc46, %for.body21
  %20 = load i32* %j, align 4
  %21 = load i32* %size.addr, align 4
  %cmp23 = icmp slt i32 %20, %21
  br i1 %cmp23, label %for.body25, label %for.end48

for.body25:                                       ; preds = %for.cond22
  store i32 0, i32* %k, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc43, %for.body25
  %22 = load i32* %k, align 4
  %23 = load i32* %size.addr, align 4
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body29, label %for.end45

for.body29:                                       ; preds = %for.cond26
  %24 = load i32* %k, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load double*** %mat1, align 8
  %arrayidx32 = getelementptr inbounds double** %26, i64 %idxprom31
  %27 = load double** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds double* %27, i64 %idxprom30
  %28 = load double* %arrayidx33, align 8
  %29 = load i32* %j, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load i32* %k, align 4
  %idxprom35 = sext i32 %30 to i64
  %31 = load double*** %mat2, align 8
  %arrayidx36 = getelementptr inbounds double** %31, i64 %idxprom35
  %32 = load double** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds double* %32, i64 %idxprom34
  %33 = load double* %arrayidx37, align 8
  %mul38 = fmul double %28, %33
  %34 = load i32* %j, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load i32* %i, align 4
  %idxprom40 = sext i32 %35 to i64
  %36 = load double*** %res, align 8
  %arrayidx41 = getelementptr inbounds double** %36, i64 %idxprom40
  %37 = load double** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds double* %37, i64 %idxprom39
  %38 = load double* %arrayidx42, align 8
  %add = fadd double %38, %mul38
  store double %add, double* %arrayidx42, align 8
  br label %for.inc43

for.inc43:                                        ; preds = %for.body29
  %39 = load i32* %k, align 4
  %inc44 = add nsw i32 %39, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond26

for.end45:                                        ; preds = %for.cond26
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %40 = load i32* %j, align 4
  %inc47 = add nsw i32 %40, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond22

for.end48:                                        ; preds = %for.cond22
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %41 = load i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond18

for.end51:                                        ; preds = %for.cond18
  %42 = load double*** %mat1, align 8
  %43 = load i32* %size.addr, align 4
  call void @destroyMatrix(double** %42, i32 %43)
  %44 = load double*** %mat2, align 8
  %45 = load i32* %size.addr, align 4
  call void @destroyMatrix(double** %44, i32 %45)
  %46 = load double*** %res, align 8
  ret double** %46
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca %struct.timeval, align 8
  %t2 = alloca %struct.timeval, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %res = alloca double**, align 8
  store i32 0, i32* %retval
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  store i32 500, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @gettimeofday(%struct.timeval* %t1, %struct.timezone* null) #3
  %1 = load i32* %size, align 4
  %2 = load i32* %size, align 4
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %2)
  %3 = load i32* %size, align 4
  %call4 = call double** @matmat(i32 %3)
  store double** %call4, double*** %res, align 8
  %4 = load double*** %res, align 8
  %5 = load i32* %size, align 4
  call void @destroyMatrix(double** %4, i32 %5)
  %call5 = call i32 @gettimeofday(%struct.timeval* %t2, %struct.timezone* null) #3
  %6 = load i32* %i, align 4
  %tv_usec = getelementptr inbounds %struct.timeval* %t2, i32 0, i32 1
  %7 = load i64* %tv_usec, align 8
  %tv_usec6 = getelementptr inbounds %struct.timeval* %t1, i32 0, i32 1
  %8 = load i64* %tv_usec6, align 8
  %sub = sub nsw i64 %7, %8
  %conv7 = sitofp i64 %sub to double
  %div = fdiv double %conv7, 1.000000e+06
  %tv_sec = getelementptr inbounds %struct.timeval* %t2, i32 0, i32 0
  %9 = load i64* %tv_sec, align 8
  %tv_sec8 = getelementptr inbounds %struct.timeval* %t1, i32 0, i32 0
  %10 = load i64* %tv_sec8, align 8
  %sub9 = sub nsw i64 %9, %10
  %conv10 = sitofp i64 %sub9 to double
  %add = fadd double %div, %conv10
  %call11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0), i32 %6, double %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
