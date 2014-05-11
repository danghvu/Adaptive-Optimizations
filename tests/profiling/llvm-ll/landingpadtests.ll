; ModuleID = 'source/landingpadtests.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_t = type { i32, double }

@.str = private unnamed_addr constant [58 x i8] c"I'm trying to access a struct I haven't allocated to: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Oops!\0A\00", align 1

; Function Attrs: uwtable
define void @_Z11landingpad1v() #0 {
entry:
  %d = alloca %struct.data_t*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = load %struct.data_t** %d, align 8
  %a = getelementptr inbounds %struct.data_t* %0, i32 0, i32 0
  %1 = load i32* %a, align 4
  %call = invoke i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str, i32 0, i32 0), i32 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8** %exn.slot
  %5 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %call3 = invoke i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont2, %invoke.cont
  ret void

lpad1:                                            ; preds = %catch
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad1
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn5 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn5, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6

terminate.lpad:                                   ; preds = %lpad1
  %9 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #4
  unreachable
}

declare i32 @printf(i8*, ...) #1

declare i32 @__gxx_personality_v0(...)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #2 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #4
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
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
  call void @_Z11landingpad1v()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
