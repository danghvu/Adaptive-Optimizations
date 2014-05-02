; ModuleID = 'source/detect-cycles.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%class.Graph = type { i32, %"class.std::list"* }
%"class.std::list" = type { %"class.std::_List_base" }
%"class.std::_List_base" = type { %"struct.std::_List_base<int, std::allocator<int> >::_List_impl" }
%"struct.std::_List_base<int, std::allocator<int> >::_List_impl" = type { %"struct.std::_List_node_base" }
%"struct.std::_List_node_base" = type { %"struct.std::_List_node_base"*, %"struct.std::_List_node_base"* }
%"struct.std::_List_iterator" = type { %"struct.std::_List_node_base"* }
%"struct.std::_List_node" = type { %"struct.std::_List_node_base", i32 }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [22 x i8] c"Graph contains cycle\0A\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"Graph doesn't contain cycle\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

@_ZN5GraphC1Ei = alias void (%class.Graph*, i32)* @_ZN5GraphC2Ei

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define void @_ZN5GraphC2Ei(%class.Graph* %this, i32 %V) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.Graph*, align 8
  %V.addr = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  store i32 %V, i32* %V.addr, align 4
  %this1 = load %class.Graph** %this.addr
  %0 = load i32* %V.addr, align 4
  %V2 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  store i32 %0, i32* %V2, align 4
  %1 = load i32* %V.addr, align 4
  %2 = sext i32 %1 to i64
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 16)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = or i1 %4, %7
  %9 = extractvalue { i64, i1 } %6, 0
  %10 = select i1 %8, i64 -1, i64 %9
  %call = call noalias i8* @_Znam(i64 %10) #11
  %11 = bitcast i8* %call to i64*
  store i64 %2, i64* %11
  %12 = getelementptr inbounds i8* %call, i64 8
  %13 = bitcast i8* %12 to %"class.std::list"*
  %isempty = icmp eq i64 %2, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %entry
  %arrayctor.end = getelementptr inbounds %"class.std::list"* %13, i64 %2
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %"class.std::list"* [ %13, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZNSt4listIiSaIiEEC2Ev(%"class.std::list"* %arrayctor.cur)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %"class.std::list"* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %"class.std::list"* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %entry, %invoke.cont
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  store %"class.std::list"* %13, %"class.std::list"** %adj, align 8
  ret void

lpad:                                             ; preds = %arrayctor.loop
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot
  %arraydestroy.isempty = icmp eq %"class.std::list"* %13, %arrayctor.cur
  br i1 %arraydestroy.isempty, label %arraydestroy.done4, label %arraydestroy.body

arraydestroy.body:                                ; preds = %invoke.cont3, %lpad
  %arraydestroy.elementPast = phi %"class.std::list"* [ %arrayctor.cur, %lpad ], [ %arraydestroy.element, %invoke.cont3 ]
  %arraydestroy.element = getelementptr inbounds %"class.std::list"* %arraydestroy.elementPast, i64 -1
  invoke void @_ZNSt4listIiSaIiEED2Ev(%"class.std::list"* %arraydestroy.element)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %arraydestroy.body
  %arraydestroy.done = icmp eq %"class.std::list"* %arraydestroy.element, %13
  br i1 %arraydestroy.done, label %arraydestroy.done4, label %arraydestroy.body

arraydestroy.done4:                               ; preds = %invoke.cont3, %lpad
  call void @_ZdaPv(i8* %call) #12
  br label %eh.resume

eh.resume:                                        ; preds = %arraydestroy.done4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %arraydestroy.body
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #13
  unreachable
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #4

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt4listIiSaIiEEC2Ev(%"class.std::list"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  call void @_ZNSt10_List_baseIiSaIiEEC2Ev(%"class.std::_List_base"* %0)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4listIiSaIiEED2Ev(%"class.std::list"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  call void @_ZNSt10_List_baseIiSaIiEED2Ev(%"class.std::_List_base"* %0)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #7

; Function Attrs: uwtable
define void @_ZN5Graph7addEdgeEii(%class.Graph* %this, i32 %v, i32 %w) #2 align 2 {
entry:
  %this.addr = alloca %class.Graph*, align 8
  %v.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %this1 = load %class.Graph** %this.addr
  %0 = load i32* %v.addr, align 4
  %idxprom = sext i32 %0 to i64
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %1 = load %"class.std::list"** %adj, align 8
  %arrayidx = getelementptr inbounds %"class.std::list"* %1, i64 %idxprom
  call void @_ZNSt4listIiSaIiEE9push_backERKi(%"class.std::list"* %arrayidx, i32* %w.addr)
  %2 = load i32* %w.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %adj3 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %3 = load %"class.std::list"** %adj3, align 8
  %arrayidx4 = getelementptr inbounds %"class.std::list"* %3, i64 %idxprom2
  call void @_ZNSt4listIiSaIiEE9push_backERKi(%"class.std::list"* %arrayidx4, i32* %v.addr)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt4listIiSaIiEE9push_backERKi(%"class.std::list"* %this, i32* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  %__x.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %call = call %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE3endEv(%"class.std::list"* %this1)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call, %"struct.std::_List_node_base"** %coerce.dive
  %0 = load i32** %__x.addr, align 8
  %coerce.dive2 = getelementptr %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::_List_node_base"** %coerce.dive2
  call void @_ZNSt4listIiSaIiEE9_M_insertESt14_List_iteratorIiERKi(%"class.std::list"* %this1, %"struct.std::_List_node_base"* %1, i32* %0)
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @_ZN5Graph12isCyclicUtilEiPbi(%class.Graph* %this, i32 %v, i8* %visited, i32 %parent) #2 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.Graph*, align 8
  %v.addr = alloca i32, align 4
  %visited.addr = alloca i8*, align 8
  %parent.addr = alloca i32, align 4
  %i = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp4 = alloca %"struct.std::_List_iterator", align 8
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  store i8* %visited, i8** %visited.addr, align 8
  store i32 %parent, i32* %parent.addr, align 4
  %this1 = load %class.Graph** %this.addr
  %0 = load i32* %v.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8** %visited.addr, align 8
  %arrayidx = getelementptr inbounds i8* %1, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %i)
  %2 = load i32* %v.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %3 = load %"class.std::list"** %adj, align 8
  %arrayidx3 = getelementptr inbounds %"class.std::list"* %3, i64 %idxprom2
  %call = call %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE5beginEv(%"class.std::list"* %arrayidx3)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call, %"struct.std::_List_node_base"** %coerce.dive
  %4 = bitcast %"struct.std::_List_iterator"* %i to i8*
  %5 = bitcast %"struct.std::_List_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32* %v.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %adj6 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %7 = load %"class.std::list"** %adj6, align 8
  %arrayidx7 = getelementptr inbounds %"class.std::list"* %7, i64 %idxprom5
  %call8 = call %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE3endEv(%"class.std::list"* %arrayidx7)
  %coerce.dive9 = getelementptr %"struct.std::_List_iterator"* %ref.tmp4, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call8, %"struct.std::_List_node_base"** %coerce.dive9
  %call10 = call zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* %ref.tmp4)
  br i1 %call10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call11 = call i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %8 = load i32* %call11
  %idxprom12 = sext i32 %8 to i64
  %9 = load i8** %visited.addr, align 8
  %arrayidx13 = getelementptr inbounds i8* %9, i64 %idxprom12
  %10 = load i8* %arrayidx13, align 1
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call14 = call i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %11 = load i32* %call14
  %12 = load i8** %visited.addr, align 8
  %13 = load i32* %v.addr, align 4
  %call15 = call zeroext i1 @_ZN5Graph12isCyclicUtilEiPbi(%class.Graph* %this1, i32 %11, i8* %12, i32 %13)
  br i1 %call15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end20

if.else:                                          ; preds = %for.body
  %call17 = call i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %14 = load i32* %call17
  %15 = load i32* %parent.addr, align 4
  %cmp = icmp ne i32 %14, %15
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else
  store i1 true, i1* %retval
  br label %return

if.end19:                                         ; preds = %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %call21 = call %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then18, %if.then16
  %16 = load i1* %retval
  ret i1 %16
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_List_node_base"* null, %"struct.std::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE5beginEv(%"class.std::list"* %this) #2 align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %_M_next = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node, i32 0, i32 0
  %1 = load %"struct.std::_List_node_base"** %_M_next, align 8
  call void @_ZNSt14_List_iteratorIiEC2EPSt15_List_node_base(%"struct.std::_List_iterator"* %retval, %"struct.std::_List_node_base"* %1)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_List_node_base"** %coerce.dive
  ret %"struct.std::_List_node_base"* %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* %__x) #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::_List_iterator"* %__x, %"struct.std::_List_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_List_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_List_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::_List_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE3endEv(%"class.std::list"* %this) #2 align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  call void @_ZNSt14_List_iteratorIiEC2EPSt15_List_node_base(%"struct.std::_List_iterator"* %retval, %"struct.std::_List_node_base"* %_M_node)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_List_node_base"** %coerce.dive
  ret %"struct.std::_List_node_base"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_List_node_base"* %0 to %"struct.std::_List_node"*
  %_M_data = getelementptr inbounds %"struct.std::_List_node"* %1, i32 0, i32 1
  ret i32* %_M_data
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %_M_node, align 8
  %_M_next = getelementptr inbounds %"struct.std::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::_List_node_base"** %_M_next, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_List_node_base"* %1, %"struct.std::_List_node_base"** %_M_node2, align 8
  ret %"struct.std::_List_iterator"* %this1
}

; Function Attrs: uwtable
define zeroext i1 @_ZN5Graph8isCyclicEv(%class.Graph* %this) #2 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.Graph*, align 8
  %visited = alloca i8*, align 8
  %i = alloca i32, align 4
  %u = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  %this1 = load %class.Graph** %this.addr
  %V = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %0 = load i32* %V, align 4
  %1 = sext i32 %0 to i64
  %2 = icmp slt i64 %1, 0
  %3 = select i1 %2, i64 -1, i64 %1
  %call = call noalias i8* @_Znam(i64 %3) #11
  store i8* %call, i8** %visited, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32* %i, align 4
  %V2 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %5 = load i32* %V2, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8** %visited, align 8
  %arrayidx = getelementptr inbounds i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %u, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %9 = load i32* %u, align 4
  %V4 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %10 = load i32* %V4, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond3
  %11 = load i32* %u, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i8** %visited, align 8
  %arrayidx8 = getelementptr inbounds i8* %12, i64 %idxprom7
  %13 = load i8* %arrayidx8, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body6
  %14 = load i32* %u, align 4
  %15 = load i8** %visited, align 8
  %call9 = call zeroext i1 @_ZN5Graph12isCyclicUtilEiPbi(%class.Graph* %this1, i32 %14, i8* %15, i32 -1)
  br i1 %call9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body6
  br label %for.inc10

for.inc10:                                        ; preds = %if.end
  %16 = load i32* %u, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %u, align 4
  br label %for.cond3

for.end12:                                        ; preds = %for.cond3
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end12, %if.then
  %17 = load i1* %retval
  ret i1 %17
}

; Function Attrs: uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %g1 = alloca %class.Graph, align 8
  %g2 = alloca %class.Graph, align 8
  store i32 0, i32* %retval
  call void @_ZN5GraphC1Ei(%class.Graph* %g1, i32 5)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 1, i32 0)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 0, i32 2)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 2, i32 0)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 0, i32 3)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 3, i32 4)
  %call = call zeroext i1 @_ZN5Graph8isCyclicEv(%class.Graph* %g1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi %"class.std::basic_ostream"* [ %call1, %cond.true ], [ %call2, %cond.false ]
  call void @_ZN5GraphC1Ei(%class.Graph* %g2, i32 3)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 0, i32 1)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 1, i32 2)
  %call3 = call zeroext i1 @_ZN5Graph8isCyclicEv(%class.Graph* %g2)
  br i1 %call3, label %cond.true4, label %cond.false6

cond.true4:                                       ; preds = %cond.end
  %call5 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0))
  br label %cond.end8

cond.false6:                                      ; preds = %cond.end
  %call7 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0))
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.true4
  %cond-lvalue9 = phi %"class.std::basic_ostream"* [ %call5, %cond.true4 ], [ %call7, %cond.false6 ]
  ret i32 0
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIiEC2EPSt15_List_node_base(%"struct.std::_List_iterator"* %this, %"struct.std::_List_node_base"* %__x) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_node_base"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::_List_node_base"* %__x, %"struct.std::_List_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %__x.addr, align 8
  store %"struct.std::_List_node_base"* %0, %"struct.std::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt4listIiSaIiEE9_M_insertESt14_List_iteratorIiERKi(%"class.std::list"* %this, %"struct.std::_List_node_base"* %__position.coerce, i32* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  %__position = alloca %"struct.std::_List_iterator", align 8
  %__x.addr = alloca i32*, align 8
  %__tmp = alloca %"struct.std::_List_node"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_List_node_base"* %__position.coerce, %"struct.std::_List_node_base"** %coerce.dive
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = load i32** %__x.addr, align 8
  %call = call %"struct.std::_List_node"* @_ZNSt4listIiSaIiEE14_M_create_nodeERKi(%"class.std::list"* %this1, i32* %0)
  store %"struct.std::_List_node"* %call, %"struct.std::_List_node"** %__tmp, align 8
  %1 = load %"struct.std::_List_node"** %__tmp, align 8
  %2 = bitcast %"struct.std::_List_node"* %1 to %"struct.std::_List_node_base"*
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %3 = load %"struct.std::_List_node_base"** %_M_node, align 8
  call void @_ZNSt15_List_node_base4hookEPS_(%"struct.std::_List_node_base"* %2, %"struct.std::_List_node_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node"* @_ZNSt4listIiSaIiEE14_M_create_nodeERKi(%"class.std::list"* %this, i32* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  %__x.addr = alloca i32*, align 8
  %__p = alloca %"struct.std::_List_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %call = call %"struct.std::_List_node"* @_ZNSt10_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::_List_base"* %0)
  store %"struct.std::_List_node"* %call, %"struct.std::_List_node"** %__p, align 8
  %1 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  invoke void @_ZNKSt10_List_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::allocator.0"* sret %temp.lvalue, %"class.std::_List_base"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = bitcast %"class.std::allocator.0"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.1"*
  %3 = load %"struct.std::_List_node"** %__p, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node"* %3, i32 0, i32 1
  %4 = load i32** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.1"* %2, i32* %_M_data, i32* %4)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %temp.lvalue) #1
  br label %try.cont

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  br label %catch

lpad2:                                            ; preds = %invoke.cont
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %temp.lvalue) #1
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8** %exn.slot
  %11 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %12 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %13 = load %"struct.std::_List_node"** %__p, align 8
  invoke void @_ZNSt10_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::_List_base"* %12, %"struct.std::_List_node"* %13)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad4

lpad4:                                            ; preds = %invoke.cont5, %catch
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %lpad4
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont3
  %17 = load %"struct.std::_List_node"** %__p, align 8
  ret %"struct.std::_List_node"* %17

eh.resume:                                        ; preds = %invoke.cont6
  %exn7 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn7, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val8

terminate.lpad:                                   ; preds = %lpad4
  %18 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  call void @__clang_call_terminate(i8* %19) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

declare void @_ZNSt15_List_node_base4hookEPS_(%"struct.std::_List_node_base"*, %"struct.std::_List_node_base"*) #0

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node"* @_ZNSt10_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::_List_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 1, i8* null)
  ret %"struct.std::_List_node"* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt10_List_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::allocator.0"* noalias sret %agg.result, %"class.std::_List_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %call = call %"class.std::allocator"* @_ZNKSt10_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::_List_base"* %this1)
  call void @_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E(%"class.std::allocator.0"* %agg.result, %"class.std::allocator"* %call) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p, i32* %__val) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__p.addr = alloca i32*, align 8
  %__val.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__val, i32** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  %0 = load i32** %__p.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to i32*
  %3 = load i32** %__val.addr, align 8
  %4 = load i32* %3, align 4
  store i32 %4, i32* %2, align 4
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %5 = phi i32* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"** %this.addr
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %0) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::_List_base"* %this, %"struct.std::_List_node"* %__p) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %__p.addr = alloca %"struct.std::_List_node"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  store %"struct.std::_List_node"* %__p, %"struct.std::_List_node"** %__p.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::_List_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::_List_node"* %2, i64 1)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_List_node"* %__p, i64) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::_List_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::_List_node"* %__p, %"struct.std::_List_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load %"struct.std::_List_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_List_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E(%"class.std::allocator.0"* %this, %"class.std::allocator"*) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.0"** %this.addr
  %1 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %1) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt10_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::_List_base"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 24
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_List_node"*
  ret %"struct.std::_List_node"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 768614336404564650
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #9

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEEC2Ev(%"class.std::_List_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt10_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl)
  invoke void @_ZNSt10_List_baseIiSaIiEE7_M_initEv(%"class.std::_List_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  call void @_ZNSt10_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"*, align 8
  store %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this, %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr
  %0 = bitcast %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::allocator"* %0) #1
  %_M_node = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node_base"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEE7_M_initEv(%"class.std::_List_base"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %_M_impl2 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %_M_next = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node3, i32 0, i32 0
  store %"struct.std::_List_node_base"* %_M_node, %"struct.std::_List_node_base"** %_M_next, align 8
  %_M_impl4 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node5 = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl4, i32 0, i32 0
  %_M_impl6 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node7 = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl6, i32 0, i32 0
  %_M_prev = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node7, i32 0, i32 1
  store %"struct.std::_List_node_base"* %_M_node5, %"struct.std::_List_node_base"** %_M_prev, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this) unnamed_addr #10 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"*, align 8
  store %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this, %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr
  %0 = bitcast %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEED2Ev(%"class.std::_List_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  invoke void @_ZNSt10_List_baseIiSaIiEE8_M_clearEv(%"class.std::_List_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt10_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl) #1
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  %_M_impl2 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt10_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEE8_M_clearEv(%"class.std::_List_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %__cur = alloca %"struct.std::_List_node"*, align 8
  %__tmp = alloca %"struct.std::_List_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %_M_next = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %_M_next, align 8
  %1 = bitcast %"struct.std::_List_node_base"* %0 to %"struct.std::_List_node"*
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %__cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %2 = load %"struct.std::_List_node"** %__cur, align 8
  %3 = bitcast %"struct.std::_List_node"* %2 to %"struct.std::_List_node_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %cmp = icmp ne %"struct.std::_List_node_base"* %3, %_M_node3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %"struct.std::_List_node"** %__cur, align 8
  store %"struct.std::_List_node"* %4, %"struct.std::_List_node"** %__tmp, align 8
  %5 = load %"struct.std::_List_node"** %__cur, align 8
  %6 = bitcast %"struct.std::_List_node"* %5 to %"struct.std::_List_node_base"*
  %_M_next4 = getelementptr inbounds %"struct.std::_List_node_base"* %6, i32 0, i32 0
  %7 = load %"struct.std::_List_node_base"** %_M_next4, align 8
  %8 = bitcast %"struct.std::_List_node_base"* %7 to %"struct.std::_List_node"*
  store %"struct.std::_List_node"* %8, %"struct.std::_List_node"** %__cur, align 8
  call void @_ZNKSt10_List_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::allocator.0"* sret %temp.lvalue, %"class.std::_List_base"* %this1)
  %9 = bitcast %"class.std::allocator.0"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.1"*
  %10 = load %"struct.std::_List_node"** %__tmp, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node"* %10, i32 0, i32 1
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.1"* %9, i32* %_M_data)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %temp.lvalue) #1
  %11 = load %"struct.std::_List_node"** %__tmp, align 8
  call void @_ZNSt10_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::_List_base"* %this1, %"struct.std::_List_node"* %11)
  br label %while.cond

lpad:                                             ; preds = %while.body
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %temp.lvalue) #1
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  %0 = load i32** %__p.addr, align 8
  ret void
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
