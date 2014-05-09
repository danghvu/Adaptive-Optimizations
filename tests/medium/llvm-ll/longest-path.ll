; ModuleID = 'source/longest-path.cpp'
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
%"class.std::_List_base" = type { %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl" }
%"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl" = type { %"struct.std::_List_node_base" }
%"struct.std::_List_node_base" = type { %"struct.std::_List_node_base"*, %"struct.std::_List_node_base"* }
%class.AdjListNode = type { i32, i32 }
%"struct.std::_List_iterator" = type { %"struct.std::_List_node_base"* }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"struct.std::_List_node" = type { %"struct.std::_List_node_base", %class.AdjListNode }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
%"struct.std::_Deque_iterator.3" = type { i32*, i32*, i32*, i32** }
%"class.std::allocator.4" = type { i8 }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.std::allocator.7" = type { i8 }
%"class.__gnu_cxx::new_allocator.8" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [5 x i8] c"INF \00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"Following are longest distances from source vertex \00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
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
  invoke void @_ZNSt4listI11AdjListNodeSaIS0_EEC2Ev(%"class.std::list"* %arrayctor.cur)
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
  invoke void @_ZNSt4listI11AdjListNodeSaIS0_EED2Ev(%"class.std::list"* %arraydestroy.element)
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
define linkonce_odr void @_ZNSt4listI11AdjListNodeSaIS0_EEC2Ev(%"class.std::list"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  call void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EEC2Ev(%"class.std::_List_base"* %0)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4listI11AdjListNodeSaIS0_EED2Ev(%"class.std::list"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  call void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EED2Ev(%"class.std::_List_base"* %0)
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
define void @_ZN5Graph7addEdgeEiii(%class.Graph* %this, i32 %u, i32 %v, i32 %weight) #2 align 2 {
entry:
  %this.addr = alloca %class.Graph*, align 8
  %u.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %weight.addr = alloca i32, align 4
  %node = alloca %class.AdjListNode, align 4
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i32 %weight, i32* %weight.addr, align 4
  %this1 = load %class.Graph** %this.addr
  %0 = load i32* %v.addr, align 4
  %1 = load i32* %weight.addr, align 4
  call void @_ZN11AdjListNodeC2Eii(%class.AdjListNode* %node, i32 %0, i32 %1)
  %2 = load i32* %u.addr, align 4
  %idxprom = sext i32 %2 to i64
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %3 = load %"class.std::list"** %adj, align 8
  %arrayidx = getelementptr inbounds %"class.std::list"* %3, i64 %idxprom
  call void @_ZNSt4listI11AdjListNodeSaIS0_EE9push_backERKS0_(%"class.std::list"* %arrayidx, %class.AdjListNode* %node)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN11AdjListNodeC2Eii(%class.AdjListNode* %this, i32 %_v, i32 %_w) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %class.AdjListNode*, align 8
  %_v.addr = alloca i32, align 4
  %_w.addr = alloca i32, align 4
  store %class.AdjListNode* %this, %class.AdjListNode** %this.addr, align 8
  store i32 %_v, i32* %_v.addr, align 4
  store i32 %_w, i32* %_w.addr, align 4
  %this1 = load %class.AdjListNode** %this.addr
  %0 = load i32* %_v.addr, align 4
  %v = getelementptr inbounds %class.AdjListNode* %this1, i32 0, i32 0
  store i32 %0, i32* %v, align 4
  %1 = load i32* %_w.addr, align 4
  %weight = getelementptr inbounds %class.AdjListNode* %this1, i32 0, i32 1
  store i32 %1, i32* %weight, align 4
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt4listI11AdjListNodeSaIS0_EE9push_backERKS0_(%"class.std::list"* %this, %class.AdjListNode* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  %__x.addr = alloca %class.AdjListNode*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  store %class.AdjListNode* %__x, %class.AdjListNode** %__x.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %call = call %"struct.std::_List_node_base"* @_ZNSt4listI11AdjListNodeSaIS0_EE3endEv(%"class.std::list"* %this1)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call, %"struct.std::_List_node_base"** %coerce.dive
  %0 = load %class.AdjListNode** %__x.addr, align 8
  %coerce.dive2 = getelementptr %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::_List_node_base"** %coerce.dive2
  call void @_ZNSt4listI11AdjListNodeSaIS0_EE9_M_insertESt14_List_iteratorIS0_ERKS0_(%"class.std::list"* %this1, %"struct.std::_List_node_base"* %1, %class.AdjListNode* %0)
  ret void
}

; Function Attrs: uwtable
define void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* %this, i32 %v, i8* %visited, %"class.std::stack"* %Stack) #2 align 2 {
entry:
  %this.addr = alloca %class.Graph*, align 8
  %v.addr = alloca i32, align 4
  %visited.addr = alloca i8*, align 8
  %Stack.addr = alloca %"class.std::stack"*, align 8
  %i = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp4 = alloca %"struct.std::_List_iterator", align 8
  %node = alloca %class.AdjListNode, align 4
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  store i8* %visited, i8** %visited.addr, align 8
  store %"class.std::stack"* %Stack, %"class.std::stack"** %Stack.addr, align 8
  %this1 = load %class.Graph** %this.addr
  %0 = load i32* %v.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8** %visited.addr, align 8
  %arrayidx = getelementptr inbounds i8* %1, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  call void @_ZNSt14_List_iteratorI11AdjListNodeEC2Ev(%"struct.std::_List_iterator"* %i)
  %2 = load i32* %v.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %3 = load %"class.std::list"** %adj, align 8
  %arrayidx3 = getelementptr inbounds %"class.std::list"* %3, i64 %idxprom2
  %call = call %"struct.std::_List_node_base"* @_ZNSt4listI11AdjListNodeSaIS0_EE5beginEv(%"class.std::list"* %arrayidx3)
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
  %call8 = call %"struct.std::_List_node_base"* @_ZNSt4listI11AdjListNodeSaIS0_EE3endEv(%"class.std::list"* %arrayidx7)
  %coerce.dive9 = getelementptr %"struct.std::_List_iterator"* %ref.tmp4, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call8, %"struct.std::_List_node_base"** %coerce.dive9
  %call10 = call zeroext i1 @_ZNKSt14_List_iteratorI11AdjListNodeEneERKS1_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* %ref.tmp4)
  br i1 %call10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call11 = call %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEdeEv(%"struct.std::_List_iterator"* %i)
  %8 = bitcast %class.AdjListNode* %node to i8*
  %9 = bitcast %class.AdjListNode* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false)
  %call12 = call i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %node)
  %idxprom13 = sext i32 %call12 to i64
  %10 = load i8** %visited.addr, align 8
  %arrayidx14 = getelementptr inbounds i8* %10, i64 %idxprom13
  %11 = load i8* %arrayidx14, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call15 = call i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %node)
  %12 = load i8** %visited.addr, align 8
  %13 = load %"class.std::stack"** %Stack.addr, align 8
  call void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* %this1, i32 %call15, i8* %12, %"class.std::stack"* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call16 = call %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorI11AdjListNodeEppEv(%"struct.std::_List_iterator"* %i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %"class.std::stack"** %Stack.addr, align 8
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::stack"* %14, i32* %v.addr)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorI11AdjListNodeEC2Ev(%"struct.std::_List_iterator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_List_node_base"* null, %"struct.std::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node_base"* @_ZNSt4listI11AdjListNodeSaIS0_EE5beginEv(%"class.std::list"* %this) #2 align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl, i32 0, i32 0
  %_M_next = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node, i32 0, i32 0
  %1 = load %"struct.std::_List_node_base"** %_M_next, align 8
  call void @_ZNSt14_List_iteratorI11AdjListNodeEC2EPSt15_List_node_base(%"struct.std::_List_iterator"* %retval, %"struct.std::_List_node_base"* %1)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_List_node_base"** %coerce.dive
  ret %"struct.std::_List_node_base"* %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_List_iteratorI11AdjListNodeEneERKS1_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* %__x) #8 align 2 {
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
define linkonce_odr %"struct.std::_List_node_base"* @_ZNSt4listI11AdjListNodeSaIS0_EE3endEv(%"class.std::list"* %this) #2 align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl, i32 0, i32 0
  call void @_ZNSt14_List_iteratorI11AdjListNodeEC2EPSt15_List_node_base(%"struct.std::_List_iterator"* %retval, %"struct.std::_List_node_base"* %_M_node)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_List_node_base"** %coerce.dive
  ret %"struct.std::_List_node_base"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEdeEv(%"struct.std::_List_iterator"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_List_node_base"* %0 to %"struct.std::_List_node"*
  %_M_data = getelementptr inbounds %"struct.std::_List_node"* %1, i32 0, i32 1
  ret %class.AdjListNode* %_M_data
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %this) #8 align 2 {
entry:
  %this.addr = alloca %class.AdjListNode*, align 8
  store %class.AdjListNode* %this, %class.AdjListNode** %this.addr, align 8
  %this1 = load %class.AdjListNode** %this.addr
  %v = getelementptr inbounds %class.AdjListNode* %this1, i32 0, i32 0
  %0 = load i32* %v, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorI11AdjListNodeEppEv(%"struct.std::_List_iterator"* %this) #8 align 2 {
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
define linkonce_odr void @_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::stack"* %this, i32* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  %__x.addr = alloca i32*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %0 = load i32** %__x.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %c, i32* %0)
  ret void
}

; Function Attrs: uwtable
define void @_ZN5Graph11longestPathEi(%class.Graph* %this, i32 %s) #2 align 2 {
entry:
  %this.addr = alloca %class.Graph*, align 8
  %s.addr = alloca i32, align 4
  %Stack = alloca %"class.std::stack", align 8
  %ref.tmp = alloca %"class.std::deque", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %saved_stack = alloca i8*
  %visited = alloca i8*, align 8
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i19 = alloca i32, align 4
  %u = alloca i32, align 4
  %i38 = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp44 = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp50 = alloca %"struct.std::_List_iterator", align 8
  %i93 = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %this1 = load %class.Graph** %this.addr
  call void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %ref.tmp)
  invoke void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2ERKS2_(%"class.std::stack"* %Stack, %"class.std::deque"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %ref.tmp)
  %V = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %0 = load i32* %V, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  %V3 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %3 = load i32* %V3, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp slt i64 %4, 0
  %6 = select i1 %5, i64 -1, i64 %4
  %call = invoke noalias i8* @_Znam(i64 %6) #11
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  store i8* %call, i8** %visited, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont5
  %7 = load i32* %i, align 4
  %V6 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %8 = load i32* %V6, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8** %visited, align 8
  %arrayidx = getelementptr inbounds i8* %10, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %entry
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot
  invoke void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %lpad
  br label %eh.resume

lpad4:                                            ; preds = %invoke.cont105, %cond.false, %cond.true, %for.inc88, %invoke.cont81, %invoke.cont78, %invoke.cont76, %if.then73, %invoke.cont68, %invoke.cont62, %invoke.cont60, %for.body59, %invoke.cont54, %for.cond49, %if.then43, %invoke.cont37, %invoke.cont35, %while.body, %while.cond, %if.then, %invoke.cont
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot
  invoke void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* %Stack)
          to label %invoke.cont112 unwind label %terminate.lpad

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc16, %for.end
  %18 = load i32* %i7, align 4
  %V9 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %19 = load i32* %V9, align 4
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %for.body11, label %for.end18

for.body11:                                       ; preds = %for.cond8
  %20 = load i32* %i7, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load i8** %visited, align 8
  %arrayidx13 = getelementptr inbounds i8* %21, i64 %idxprom12
  %22 = load i8* %arrayidx13, align 1
  %tobool = trunc i8 %22 to i1
  %conv = zext i1 %tobool to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  %23 = load i32* %i7, align 4
  %24 = load i8** %visited, align 8
  invoke void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* %this1, i32 %23, i8* %24, %"class.std::stack"* %Stack)
          to label %invoke.cont15 unwind label %lpad4

invoke.cont15:                                    ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont15, %for.body11
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %25 = load i32* %i7, align 4
  %inc17 = add nsw i32 %25, 1
  store i32 %inc17, i32* %i7, align 4
  br label %for.cond8

for.end18:                                        ; preds = %for.cond8
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc26, %for.end18
  %26 = load i32* %i19, align 4
  %V21 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %27 = load i32* %V21, align 4
  %cmp22 = icmp slt i32 %26, %27
  br i1 %cmp22, label %for.body23, label %for.end28

for.body23:                                       ; preds = %for.cond20
  %28 = load i32* %i19, align 4
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds i32* %vla, i64 %idxprom24
  store i32 -2147483648, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body23
  %29 = load i32* %i19, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, i32* %i19, align 4
  br label %for.cond20

for.end28:                                        ; preds = %for.cond20
  %30 = load i32* %s.addr, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds i32* %vla, i64 %idxprom29
  store i32 0, i32* %arrayidx30, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end92, %for.end28
  %call32 = invoke zeroext i1 @_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::stack"* %Stack)
          to label %invoke.cont31 unwind label %lpad4

invoke.cont31:                                    ; preds = %while.cond
  %conv33 = zext i1 %call32 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont31
  %call36 = invoke i32* @_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv(%"class.std::stack"* %Stack)
          to label %invoke.cont35 unwind label %lpad4

invoke.cont35:                                    ; preds = %while.body
  %31 = load i32* %call36
  store i32 %31, i32* %u, align 4
  invoke void @_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv(%"class.std::stack"* %Stack)
          to label %invoke.cont37 unwind label %lpad4

invoke.cont37:                                    ; preds = %invoke.cont35
  invoke void @_ZNSt14_List_iteratorI11AdjListNodeEC2Ev(%"struct.std::_List_iterator"* %i38)
          to label %invoke.cont39 unwind label %lpad4

invoke.cont39:                                    ; preds = %invoke.cont37
  %32 = load i32* %u, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds i32* %vla, i64 %idxprom40
  %33 = load i32* %arrayidx41, align 4
  %cmp42 = icmp ne i32 %33, -2147483648
  br i1 %cmp42, label %if.then43, label %if.end92

if.then43:                                        ; preds = %invoke.cont39
  %34 = load i32* %u, align 4
  %idxprom45 = sext i32 %34 to i64
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %35 = load %"class.std::list"** %adj, align 8
  %arrayidx46 = getelementptr inbounds %"class.std::list"* %35, i64 %idxprom45
  %call48 = invoke %"struct.std::_List_node_base"* @_ZNSt4listI11AdjListNodeSaIS0_EE5beginEv(%"class.std::list"* %arrayidx46)
          to label %invoke.cont47 unwind label %lpad4

invoke.cont47:                                    ; preds = %if.then43
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %ref.tmp44, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call48, %"struct.std::_List_node_base"** %coerce.dive
  %36 = bitcast %"struct.std::_List_iterator"* %i38 to i8*
  %37 = bitcast %"struct.std::_List_iterator"* %ref.tmp44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 8, i1 false)
  br label %for.cond49

for.cond49:                                       ; preds = %invoke.cont89, %invoke.cont47
  %38 = load i32* %u, align 4
  %idxprom51 = sext i32 %38 to i64
  %adj52 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %39 = load %"class.std::list"** %adj52, align 8
  %arrayidx53 = getelementptr inbounds %"class.std::list"* %39, i64 %idxprom51
  %call55 = invoke %"struct.std::_List_node_base"* @_ZNSt4listI11AdjListNodeSaIS0_EE3endEv(%"class.std::list"* %arrayidx53)
          to label %invoke.cont54 unwind label %lpad4

invoke.cont54:                                    ; preds = %for.cond49
  %coerce.dive56 = getelementptr %"struct.std::_List_iterator"* %ref.tmp50, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call55, %"struct.std::_List_node_base"** %coerce.dive56
  %call58 = invoke zeroext i1 @_ZNKSt14_List_iteratorI11AdjListNodeEneERKS1_(%"struct.std::_List_iterator"* %i38, %"struct.std::_List_iterator"* %ref.tmp50)
          to label %invoke.cont57 unwind label %lpad4

invoke.cont57:                                    ; preds = %invoke.cont54
  br i1 %call58, label %for.body59, label %for.end91

for.body59:                                       ; preds = %invoke.cont57
  %call61 = invoke %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* %i38)
          to label %invoke.cont60 unwind label %lpad4

invoke.cont60:                                    ; preds = %for.body59
  %call63 = invoke i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %call61)
          to label %invoke.cont62 unwind label %lpad4

invoke.cont62:                                    ; preds = %invoke.cont60
  %idxprom64 = sext i32 %call63 to i64
  %arrayidx65 = getelementptr inbounds i32* %vla, i64 %idxprom64
  %40 = load i32* %arrayidx65, align 4
  %41 = load i32* %u, align 4
  %idxprom66 = sext i32 %41 to i64
  %arrayidx67 = getelementptr inbounds i32* %vla, i64 %idxprom66
  %42 = load i32* %arrayidx67, align 4
  %call69 = invoke %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* %i38)
          to label %invoke.cont68 unwind label %lpad4

invoke.cont68:                                    ; preds = %invoke.cont62
  %call71 = invoke i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* %call69)
          to label %invoke.cont70 unwind label %lpad4

invoke.cont70:                                    ; preds = %invoke.cont68
  %add = add nsw i32 %42, %call71
  %cmp72 = icmp slt i32 %40, %add
  br i1 %cmp72, label %if.then73, label %if.end87

if.then73:                                        ; preds = %invoke.cont70
  %43 = load i32* %u, align 4
  %idxprom74 = sext i32 %43 to i64
  %arrayidx75 = getelementptr inbounds i32* %vla, i64 %idxprom74
  %44 = load i32* %arrayidx75, align 4
  %call77 = invoke %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* %i38)
          to label %invoke.cont76 unwind label %lpad4

invoke.cont76:                                    ; preds = %if.then73
  %call79 = invoke i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* %call77)
          to label %invoke.cont78 unwind label %lpad4

invoke.cont78:                                    ; preds = %invoke.cont76
  %add80 = add nsw i32 %44, %call79
  %call82 = invoke %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* %i38)
          to label %invoke.cont81 unwind label %lpad4

invoke.cont81:                                    ; preds = %invoke.cont78
  %call84 = invoke i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %call82)
          to label %invoke.cont83 unwind label %lpad4

invoke.cont83:                                    ; preds = %invoke.cont81
  %idxprom85 = sext i32 %call84 to i64
  %arrayidx86 = getelementptr inbounds i32* %vla, i64 %idxprom85
  store i32 %add80, i32* %arrayidx86, align 4
  br label %if.end87

if.end87:                                         ; preds = %invoke.cont83, %invoke.cont70
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %call90 = invoke %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorI11AdjListNodeEppEv(%"struct.std::_List_iterator"* %i38)
          to label %invoke.cont89 unwind label %lpad4

invoke.cont89:                                    ; preds = %for.inc88
  br label %for.cond49

for.end91:                                        ; preds = %invoke.cont57
  br label %if.end92

if.end92:                                         ; preds = %for.end91, %invoke.cont39
  br label %while.cond

while.end:                                        ; preds = %invoke.cont31
  store i32 0, i32* %i93, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc109, %while.end
  %45 = load i32* %i93, align 4
  %V95 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %46 = load i32* %V95, align 4
  %cmp96 = icmp slt i32 %45, %46
  br i1 %cmp96, label %for.body97, label %for.end111

for.body97:                                       ; preds = %for.cond94
  %47 = load i32* %i93, align 4
  %idxprom98 = sext i32 %47 to i64
  %arrayidx99 = getelementptr inbounds i32* %vla, i64 %idxprom98
  %48 = load i32* %arrayidx99, align 4
  %cmp100 = icmp eq i32 %48, -2147483648
  br i1 %cmp100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body97
  %call102 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont101 unwind label %lpad4

invoke.cont101:                                   ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %for.body97
  %49 = load i32* %i93, align 4
  %idxprom103 = sext i32 %49 to i64
  %arrayidx104 = getelementptr inbounds i32* %vla, i64 %idxprom103
  %50 = load i32* %arrayidx104, align 4
  %call106 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %50)
          to label %invoke.cont105 unwind label %lpad4

invoke.cont105:                                   ; preds = %cond.false
  %call108 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %call106, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
          to label %invoke.cont107 unwind label %lpad4

invoke.cont107:                                   ; preds = %invoke.cont105
  br label %cond.end

cond.end:                                         ; preds = %invoke.cont107, %invoke.cont101
  %cond-lvalue = phi %"class.std::basic_ostream"* [ %call102, %invoke.cont101 ], [ %call108, %invoke.cont107 ]
  br label %for.inc109

for.inc109:                                       ; preds = %cond.end
  %51 = load i32* %i93, align 4
  %inc110 = add nsw i32 %51, 1
  store i32 %inc110, i32* %i93, align 4
  br label %for.cond94

for.end111:                                       ; preds = %for.cond94
  %52 = load i8** %saved_stack
  call void @llvm.stackrestore(i8* %52)
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* %Stack)
  ret void

invoke.cont112:                                   ; preds = %lpad4
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont112, %invoke.cont2
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val113 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val113

terminate.lpad:                                   ; preds = %lpad4, %lpad
  %53 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %54 = extractvalue { i8*, i32 } %53, 0
  call void @__clang_call_terminate(i8* %54) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2ERKS2_(%"class.std::stack"* %this, %"class.std::deque"* %__c) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  %__c.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  store %"class.std::deque"* %__c, %"class.std::deque"** %__c.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %0 = load %"class.std::deque"** %__c.addr, align 8
  call void @_ZNSt5dequeIiSaIiEEC2ERKS1_(%"class.std::deque"* %c, %"class.std::deque"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  invoke void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"class.std::deque"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"class.std::deque"* %this1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = invoke %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont3
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this1, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"class.std::allocator.0"* %call)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %1)
  ret void

lpad:                                             ; preds = %invoke.cont4, %invoke.cont3, %invoke.cont, %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %5)
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont6
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7

terminate.lpad:                                   ; preds = %lpad
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #13
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::stack"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %call = call zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %c)
  ret i1 %call
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv(%"class.std::stack"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %call = call i32* @_ZNSt5dequeIiSaIiEE4backEv(%"class.std::deque"* %c)
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv(%"class.std::stack"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE8pop_backEv(%"class.std::deque"* %c)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_List_node_base"* %0 to %"struct.std::_List_node"*
  %_M_data = getelementptr inbounds %"struct.std::_List_node"* %1, i32 0, i32 1
  ret %class.AdjListNode* %_M_data
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* %this) #8 align 2 {
entry:
  %this.addr = alloca %class.AdjListNode*, align 8
  store %class.AdjListNode* %this, %class.AdjListNode** %this.addr, align 8
  %this1 = load %class.AdjListNode** %this.addr
  %weight = getelementptr inbounds %class.AdjListNode* %this1, i32 0, i32 1
  %0 = load i32* %weight, align 4
  ret i32 %0
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %c)
  ret void
}

; Function Attrs: uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %g = alloca %class.Graph, align 8
  %s = alloca i32, align 4
  store i32 0, i32* %retval
  call void @_ZN5GraphC1Ei(%class.Graph* %g, i32 6)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 0, i32 1, i32 5)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 0, i32 2, i32 3)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 1, i32 3, i32 6)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 1, i32 2, i32 2)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 2, i32 4, i32 4)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 2, i32 5, i32 2)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 2, i32 3, i32 7)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 3, i32 5, i32 1)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 3, i32 4, i32 -1)
  call void @_ZN5Graph7addEdgeEiii(%class.Graph* %g, i32 4, i32 5, i32 -2)
  store i32 1, i32* %s, align 4
  %call = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([52 x i8]* @.str2, i32 0, i32 0))
  %0 = load i32* %s, align 4
  %call1 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %0)
  %call2 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %call1, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0))
  %1 = load i32* %s, align 4
  call void @_ZN5Graph11longestPathEi(%class.Graph* %g, i32 %1)
  ret i32 0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE8pop_backEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %1 = load i32** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 1
  %3 = load i32** %_M_first, align 8
  %cmp = icmp ne i32* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4, i32 0, i32 3
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish5, i32 0, i32 0
  %5 = load i32** %_M_cur6, align 8
  %incdec.ptr = getelementptr inbounds i32* %5, i32 -1
  store i32* %incdec.ptr, i32** %_M_cur6, align 8
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7 to %"class.__gnu_cxx::new_allocator.1"*
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %9 = load i32** %_M_cur10, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.1"* %7, i32* %9)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv(%"class.std::deque"* %this1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
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

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 1
  %2 = load i32** %_M_first, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %0, i32* %2)
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish5, i32 0, i32 3
  %5 = load i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32** %5, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish3, i32** %add.ptr)
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl6, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish7, i32 0, i32 2
  %7 = load i32** %_M_last, align 8
  %add.ptr8 = getelementptr inbounds i32* %7, i64 -1
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl9, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish10, i32 0, i32 0
  store i32* %add.ptr8, i32** %_M_cur, align 8
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %10 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl11 to %"class.__gnu_cxx::new_allocator.1"*
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_finish13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl12, i32 0, i32 3
  %_M_cur14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish13, i32 0, i32 0
  %12 = load i32** %_M_cur14, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.1"* %10, i32* %12)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this, i32* %__p) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %2 = load i32** %__p.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* %1, i32* %2, i64 %call)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, i32** %__new_node) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__new_node.addr = alloca i32**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store i32** %__new_node, i32*** %__new_node.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %0 = load i32*** %__new_node.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store i32** %0, i32*** %_M_node, align 8
  %1 = load i32*** %__new_node.addr, align 8
  %2 = load i32** %1, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store i32* %2, i32** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %3 = load i32** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv()
  %add.ptr = getelementptr inbounds i32* %3, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_last, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #2 align 2 {
entry:
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #9 {
entry:
  %__size.addr = alloca i64, align 8
  store i64 %__size, i64* %__size.addr, align 8
  %0 = load i64* %__size.addr, align 8
  %cmp = icmp ult i64 %0, 512
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64* %__size.addr, align 8
  %div = udiv i64 512, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ 1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p, i64) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__p.addr = alloca i32*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  %1 = load i32** %__p.addr, align 8
  %2 = bitcast i32* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt5dequeIiSaIiEE4backEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  call void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret %__tmp, %"class.std::deque"* %this1)
  %call = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEmmEv(%"struct.std::_Deque_iterator"* %__tmp)
  %call2 = call i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %__tmp)
  ret i32* %call2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %_M_finish)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEmmEv(%"struct.std::_Deque_iterator"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %1 = load i32** %_M_first, align 8
  %cmp = icmp eq i32* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %2 = load i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32** %2, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this1, i32** %add.ptr)
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %3 = load i32** %_M_last, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store i32* %3, i32** %_M_cur2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %4 = load i32** %_M_cur3, align 8
  %incdec.ptr = getelementptr inbounds i32* %4, i32 -1
  store i32* %incdec.ptr, i32** %_M_cur3, align 8
  ret %"struct.std::_Deque_iterator"* %this1
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load i32** %_M_cur, align 8
  ret i32* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load i32** %_M_cur2, align 8
  store i32* %1, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %3 = load i32** %_M_first3, align 8
  store i32* %3, i32** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 2
  %5 = load i32** %_M_last4, align 8
  store i32* %5, i32** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %6 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %7 = load i32*** %_M_node5, align 8
  store i32** %7, i32*** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %call = call zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* %_M_finish, %"struct.std::_Deque_iterator"* %_M_start)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #9 {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load i32** %_M_cur, align 8
  %2 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur1 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %3 = load i32** %_M_cur1, align 8
  %cmp = icmp eq i32* %1, %3
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEEC2ERKS1_(%"class.std::deque"* %this, %"class.std::deque"* %__x) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__x.addr = alloca %"class.std::deque"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator.3", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %"class.std::deque"* %__x, %"class.std::deque"** %__x.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %1 = load %"class.std::deque"** %__x.addr, align 8
  %2 = bitcast %"class.std::deque"* %1 to %"class.std::_Deque_base"*
  %call = call %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2)
  %3 = load %"class.std::deque"** %__x.addr, align 8
  %call2 = call i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %3)
  call void @_ZNSt11_Deque_baseIiSaIiEEC2ERKS0_m(%"class.std::_Deque_base"* %0, %"class.std::allocator.0"* %call, i64 %call2)
  %4 = load %"class.std::deque"** %__x.addr, align 8
  invoke void @_ZNKSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator.3"* sret %agg.tmp, %"class.std::deque"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = load %"class.std::deque"** %__x.addr, align 8
  invoke void @_ZNKSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator.3"* sret %agg.tmp3, %"class.std::deque"* %5)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %_M_start)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %7 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call8 = invoke %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %7)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  invoke void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEiET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* sret %tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp3, %"struct.std::_Deque_iterator"* %agg.tmp5, %"class.std::allocator.0"* %call8)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  ret void

lpad:                                             ; preds = %invoke.cont7, %invoke.cont6, %invoke.cont4, %invoke.cont, %entry
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %11)
          to label %invoke.cont10 unwind label %terminate.lpad

invoke.cont10:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont10
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11

terminate.lpad:                                   ; preds = %lpad
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEEC2ERKS0_m(%"class.std::_Deque_base"* %this, %"class.std::allocator.0"* %__a, i64 %__num_elements) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, %"class.std::allocator.0"* %0)
  %1 = load i64* %__num_elements.addr, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %call = call i64 @_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* %_M_finish, %"struct.std::_Deque_iterator"* %_M_start)
  ret i64 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEiET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__first, %"struct.std::_Deque_iterator.3"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result, %"class.std::allocator.0"*) #5 {
entry:
  %.addr = alloca %"class.std::allocator.0"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp to i8*
  %2 = bitcast %"struct.std::_Deque_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp1 to i8*
  %4 = bitcast %"struct.std::_Deque_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt18uninitialized_copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator.3"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.3"* %agg.result, %"struct.std::_Deque_iterator"* %_M_start)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator.3"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.3"* %agg.result, %"struct.std::_Deque_iterator"* %_M_finish)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*** %_M_map, align 8
  %tobool = icmp ne i32** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %1 = load i32*** %_M_node, align 8
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_node4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load i32*** %_M_node4, align 8
  %add.ptr = getelementptr inbounds i32** %2, i64 1
  invoke void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this1, i32** %1, i32** %add.ptr)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 0
  %3 = load i32*** %_M_map6, align 8
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %4 = load i64* %_M_map_size, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this1, i32** %3, i64 %4)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %invoke.cont, %if.then
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl10) #1
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont8, %entry
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl9) #1
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca i32**, align 8
  %__nfinish.addr = alloca i32**, align 8
  %__n = alloca i32**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32** %__nstart, i32*** %__nstart.addr, align 8
  store i32** %__nfinish, i32*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %0 = load i32*** %__nstart.addr, align 8
  store i32** %0, i32*** %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32*** %__n, align 8
  %2 = load i32*** %__nfinish.addr, align 8
  %cmp = icmp ult i32** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*** %__n, align 8
  %4 = load i32** %3, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this1, i32* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32*** %__n, align 8
  %incdec.ptr = getelementptr inbounds i32** %5, i32 1
  store i32** %incdec.ptr, i32*** %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this, i32** %__p, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca i32**, align 8
  %__n.addr = alloca i64, align 8
  %temp.lvalue = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32** %__p, i32*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.4"* sret %temp.lvalue, %"class.std::_Deque_base"* %this1)
  %0 = bitcast %"class.std::allocator.4"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.5"*
  %1 = load i32*** %__p.addr, align 8
  %2 = load i64* %__n.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.5"* %0, i32** %1, i64 %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.4"* %temp.lvalue) #1
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.4"* %temp.lvalue) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #9 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"class.std::allocator.0"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %0) #1
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

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.4"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %call = call %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this1)
  call void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.4"* %agg.result, %"class.std::allocator.0"* %call) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.5"* %this, i32** %__p, i64) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__p.addr = alloca i32**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store i32** %__p, i32*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %1 = load i32*** %__p.addr, align 8
  %2 = bitcast i32** %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPiED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  %this1 = load %"class.std::allocator.4"** %this.addr
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.5"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.4"* %this, %"class.std::allocator.0"*) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %this1 = load %"class.std::allocator.4"** %this.addr
  %1 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %1) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.3"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.3"*, align 8
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator.3"* %this, %"struct.std::_Deque_iterator.3"** %this.addr, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.3"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load i32** %_M_cur2, align 8
  store i32* %1, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %3 = load i32** %_M_first3, align 8
  store i32* %3, i32** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 2
  %5 = load i32** %_M_last4, align 8
  store i32* %5, i32** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 3
  %6 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %7 = load i32*** %_M_node5, align 8
  store i32** %7, i32*** %_M_node, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt18uninitialized_copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__first, %"struct.std::_Deque_iterator.3"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt20__uninitialized_copyILb1EE18uninitialized_copyISt15_Deque_iteratorIiRKiPS3_ES2_IiRiPiEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt20__uninitialized_copyILb1EE18uninitialized_copyISt15_Deque_iteratorIiRKiPS3_ES2_IiRiPiEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__first, %"struct.std::_Deque_iterator.3"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #2 align 2 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt4copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt4copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__first, %"struct.std::_Deque_iterator.3"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp1 to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  call void @_ZNSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator.3"* sret %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp1)
  %2 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp3 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator.3"* sret %agg.tmp2, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp3)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp4, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp4)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__first, %"struct.std::_Deque_iterator.3"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp1 to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  call void @_ZNSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator.3"* sret %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp1)
  %2 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp3 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator.3"* sret %agg.tmp2, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp3)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt12__niter_baseISt15_Deque_iteratorIiRiPiELb0EE3__bES3_(%"struct.std::_Deque_iterator"* sret %agg.tmp4, %"struct.std::_Deque_iterator"* %agg.tmp5)
  call void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator.3"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__it) #8 align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_iterator.3"* %agg.result to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__first, %"struct.std::_Deque_iterator.3"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %__simple = alloca i8, align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.3", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store i8 0, i8* %__simple, align 1
  %0 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Deque_iterator.3"* %agg.tmp1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIiRKiPS4_ES3_IiRiPiEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.3"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator.3"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__it) #8 align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_iterator.3"* %agg.result to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.3"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12__niter_baseISt15_Deque_iteratorIiRiPiELb0EE3__bES3_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #2 align 2 {
entry:
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %__it)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIiRKiPS4_ES3_IiRiPiEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.3"* byval align 8 %__first, %"struct.std::_Deque_iterator.3"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #2 align 2 {
entry:
  %__n = alloca i64, align 8
  %call = call i64 @_ZStmiIiRKiPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.3"* %__last, %"struct.std::_Deque_iterator.3"* %__first)
  store i64 %call, i64* %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64* %__n, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32* @_ZNKSt15_Deque_iteratorIiRKiPS0_EdeEv(%"struct.std::_Deque_iterator.3"* %__first)
  %1 = load i32* %call1
  %call2 = call i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %__result)
  store i32 %1, i32* %call2
  %call3 = call %"struct.std::_Deque_iterator.3"* @_ZNSt15_Deque_iteratorIiRKiPS0_EppEv(%"struct.std::_Deque_iterator.3"* %__first)
  %call4 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEppEv(%"struct.std::_Deque_iterator"* %__result)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64* %__n, align 8
  %dec = add nsw i64 %2, -1
  store i64 %dec, i64* %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %__result)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZStmiIiRKiPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.3"* %__x, %"struct.std::_Deque_iterator.3"* %__y) #9 {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator.3"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator.3"*, align 8
  store %"struct.std::_Deque_iterator.3"* %__x, %"struct.std::_Deque_iterator.3"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator.3"* %__y, %"struct.std::_Deque_iterator.3"** %__y.addr, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv()
  %0 = load %"struct.std::_Deque_iterator.3"** %__x.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %0, i32 0, i32 3
  %1 = load i32*** %_M_node, align 8
  %2 = load %"struct.std::_Deque_iterator.3"** %__y.addr, align 8
  %_M_node1 = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %2, i32 0, i32 3
  %3 = load i32*** %_M_node1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 1
  %mul = mul nsw i64 %call, %sub
  %4 = load %"struct.std::_Deque_iterator.3"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %4, i32 0, i32 0
  %5 = load i32** %_M_cur, align 8
  %6 = load %"struct.std::_Deque_iterator.3"** %__x.addr, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %6, i32 0, i32 1
  %7 = load i32** %_M_first, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i32* %5 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i32* %7 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 4
  %add = add nsw i64 %mul, %sub.ptr.div5
  %8 = load %"struct.std::_Deque_iterator.3"** %__y.addr, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %8, i32 0, i32 2
  %9 = load i32** %_M_last, align 8
  %10 = load %"struct.std::_Deque_iterator.3"** %__y.addr, align 8
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %10, i32 0, i32 0
  %11 = load i32** %_M_cur6, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i32* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i32* %11 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = sdiv exact i64 %sub.ptr.sub9, 4
  %add11 = add nsw i64 %add, %sub.ptr.div10
  ret i64 %add11
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt15_Deque_iteratorIiRKiPS0_EdeEv(%"struct.std::_Deque_iterator.3"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.3"*, align 8
  store %"struct.std::_Deque_iterator.3"* %this, %"struct.std::_Deque_iterator.3"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.3"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 0
  %0 = load i32** %_M_cur, align 8
  ret i32* %0
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator.3"* @_ZNSt15_Deque_iteratorIiRKiPS0_EppEv(%"struct.std::_Deque_iterator.3"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.3"*, align 8
  store %"struct.std::_Deque_iterator.3"* %this, %"struct.std::_Deque_iterator.3"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.3"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 0
  %0 = load i32** %_M_cur, align 8
  %incdec.ptr = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr, i32** %_M_cur, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 0
  %1 = load i32** %_M_cur2, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 2
  %2 = load i32** %_M_last, align 8
  %cmp = icmp eq i32* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 3
  %3 = load i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32** %3, i64 1
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_E11_M_set_nodeEPPi(%"struct.std::_Deque_iterator.3"* %this1, i32** %add.ptr)
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 1
  %4 = load i32** %_M_first, align 8
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 0
  store i32* %4, i32** %_M_cur3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %"struct.std::_Deque_iterator.3"* %this1
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEppEv(%"struct.std::_Deque_iterator"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load i32** %_M_cur, align 8
  %incdec.ptr = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr, i32** %_M_cur, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %1 = load i32** %_M_cur2, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %2 = load i32** %_M_last, align 8
  %cmp = icmp eq i32* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %3 = load i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32** %3, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this1, i32** %add.ptr)
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %4 = load i32** %_M_first, align 8
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store i32* %4, i32** %_M_cur3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %"struct.std::_Deque_iterator"* %this1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRKiPS0_E11_M_set_nodeEPPi(%"struct.std::_Deque_iterator.3"* %this, i32** %__new_node) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.3"*, align 8
  %__new_node.addr = alloca i32**, align 8
  store %"struct.std::_Deque_iterator.3"* %this, %"struct.std::_Deque_iterator.3"** %this.addr, align 8
  store i32** %__new_node, i32*** %__new_node.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.3"** %this.addr
  %0 = load i32*** %__new_node.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 3
  store i32** %0, i32*** %_M_node, align 8
  %1 = load i32*** %__new_node.addr, align 8
  %2 = load i32** %1, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 1
  store i32* %2, i32** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 1
  %3 = load i32** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv()
  %add.ptr = getelementptr inbounds i32* %3, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.3"* %this1, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_last, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv() #8 align 2 {
entry:
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #5 {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv()
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 3
  %1 = load i32*** %_M_node, align 8
  %2 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_node1 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %3 = load i32*** %_M_node1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 1
  %mul = mul nsw i64 %call, %sub
  %4 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 0
  %5 = load i32** %_M_cur, align 8
  %6 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 1
  %7 = load i32** %_M_first, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i32* %5 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i32* %7 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 4
  %add = add nsw i64 %mul, %sub.ptr.div5
  %8 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 2
  %9 = load i32** %_M_last, align 8
  %10 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 0
  %11 = load i32** %_M_cur6, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i32* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i32* %11 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = sdiv exact i64 %sub.ptr.sub9, 4
  %add11 = add nsw i64 %add, %sub.ptr.div10
  ret i64 %add11
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"class.std::allocator.0"* %__a) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"class.std::allocator.0"*
  %1 = load %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* %1) #1
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 0
  store i32** null, i32*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_start)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_finish)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"class.std::allocator.0"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %5) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp2 = alloca i64, align 8
  %__nstart = alloca i32**, align 8
  %__nfinish = alloca i32**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %0 = load i64* %__num_elements.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %div = udiv i64 %0, %call
  %add = add i64 %div, 1
  store i64 %add, i64* %__num_nodes, align 8
  store i64 8, i64* %ref.tmp
  %1 = load i64* %__num_nodes, align 8
  %add3 = add i64 %1, 2
  store i64 %add3, i64* %ref.tmp2
  %call4 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %ref.tmp, i64* %ref.tmp2)
  %2 = load i64* %call4
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  store i64 %2, i64* %_M_map_size, align 8
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %3 = load i64* %_M_map_size6, align 8
  %call7 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this1, i64 %3)
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8, i32 0, i32 0
  store i32** %call7, i32*** %_M_map, align 8
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl9, i32 0, i32 0
  %4 = load i32*** %_M_map10, align 8
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl11, i32 0, i32 1
  %5 = load i64* %_M_map_size12, align 8
  %6 = load i64* %__num_nodes, align 8
  %sub = sub i64 %5, %6
  %div13 = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds i32** %4, i64 %div13
  store i32** %add.ptr, i32*** %__nstart, align 8
  %7 = load i32*** %__nstart, align 8
  %8 = load i64* %__num_nodes, align 8
  %add.ptr14 = getelementptr inbounds i32** %7, i64 %8
  store i32** %add.ptr14, i32*** %__nfinish, align 8
  %9 = load i32*** %__nstart, align 8
  %10 = load i32*** %__nfinish, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this1, i32** %9, i32** %10)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8** %exn.slot
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl15, i32 0, i32 0
  %15 = load i32*** %_M_map16, align 8
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl17, i32 0, i32 1
  %16 = load i64* %_M_map_size18, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this1, i32** %15, i64 %16)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %catch
  %_M_impl21 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl21, i32 0, i32 0
  store i32** null, i32*** %_M_map22, align 8
  %_M_impl23 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size24 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl23, i32 0, i32 1
  store i64 0, i64* %_M_map_size24, align 8
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad19

lpad19:                                           ; preds = %invoke.cont20, %catch
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont25 unwind label %terminate.lpad

invoke.cont25:                                    ; preds = %lpad19
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  %_M_impl26 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl26, i32 0, i32 2
  %20 = load i32*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start, i32** %20)
  %_M_impl27 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl27, i32 0, i32 3
  %21 = load i32*** %__nfinish, align 8
  %add.ptr28 = getelementptr inbounds i32** %21, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish, i32** %add.ptr28)
  %_M_impl29 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl29, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start30, i32 0, i32 1
  %22 = load i32** %_M_first, align 8
  %_M_impl31 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start32 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl31, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start32, i32 0, i32 0
  store i32* %22, i32** %_M_cur, align 8
  %_M_impl33 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish34 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl33, i32 0, i32 3
  %_M_first35 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish34, i32 0, i32 1
  %23 = load i32** %_M_first35, align 8
  %24 = load i64* %__num_elements.addr, align 8
  %call36 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %rem = urem i64 %24, %call36
  %add.ptr37 = getelementptr inbounds i32* %23, i64 %rem
  %_M_impl38 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish39 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl38, i32 0, i32 3
  %_M_cur40 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish39, i32 0, i32 0
  store i32* %add.ptr37, i32** %_M_cur40, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont25
  %exn41 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn41, 0
  %lpad.val42 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val42

terminate.lpad:                                   ; preds = %lpad19
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont20
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #9 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64** %__a.addr, align 8
  %1 = load i64* %0, align 8
  %2 = load i64** %__b.addr, align 8
  %3 = load i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64** %__b.addr, align 8
  store i64* %4, i64** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64** %__a.addr, align 8
  store i64* %5, i64** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64** %retval
  ret i64* %6
}

; Function Attrs: uwtable
define linkonce_odr i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__n.addr = alloca i64, align 8
  %temp.lvalue = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.4"* sret %temp.lvalue, %"class.std::_Deque_base"* %this1)
  %0 = bitcast %"class.std::allocator.4"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.5"*
  %1 = load i64* %__n.addr, align 8
  %call = invoke i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %0, i64 %1, i8* null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.4"* %temp.lvalue) #1
  ret i32** %call

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.4"* %temp.lvalue) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca i32**, align 8
  %__nfinish.addr = alloca i32**, align 8
  %__cur = alloca i32**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32** %__nstart, i32*** %__nstart.addr, align 8
  store i32** %__nfinish, i32*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %0 = load i32*** %__nstart.addr, align 8
  store i32** %0, i32*** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32*** %__cur, align 8
  %2 = load i32*** %__nfinish.addr, align 8
  %cmp = icmp ult i32** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = invoke i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %3 = load i32*** %__cur, align 8
  store i32* %call, i32** %3, align 8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %4 = load i32*** %__cur, align 8
  %incdec.ptr = getelementptr inbounds i32** %4, i32 1
  store i32** %incdec.ptr, i32*** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.body
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8** %exn.slot
  %8 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %9 = load i32*** %__nstart.addr, align 8
  %10 = load i32*** %__cur, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this1, i32** %9, i32** %10)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad2

for.end:                                          ; preds = %for.cond
  br label %try.cont

lpad2:                                            ; preds = %invoke.cont3, %catch
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad2
  br label %eh.resume

try.cont:                                         ; preds = %for.end
  ret void

eh.resume:                                        ; preds = %invoke.cont4
  %exn5 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn5, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6

terminate.lpad:                                   ; preds = %lpad2
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator.0"*
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %call2 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %1, i64 %call, i8* null)
  ret i32* %call2
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this1) #1
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
  %mul = mul i64 %2, 4
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  ret i64 4611686018427387903
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

; Function Attrs: uwtable
define linkonce_odr i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %this1) #1
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
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32**
  ret i32** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2ERKS_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* %__a) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.0"** %this.addr
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  %1 = load %"class.std::allocator.0"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.0"* %1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"* %2) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store i32** null, i32*** %_M_node, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"*) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator.0"*) #8 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %_M_start)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl)
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this1, i64 0)
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
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"class.std::allocator.0"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* %0) #1
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 0
  store i32** null, i32*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_start)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_finish)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"class.std::allocator.0"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %4) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"** %this.addr
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %0) #1
  ret void
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
define linkonce_odr void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %this, i32* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__x.addr = alloca i32*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %1 = load i32** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 2
  %3 = load i32** %_M_last, align 8
  %add.ptr = getelementptr inbounds i32* %3, i64 -1
  %cmp = icmp ne i32* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4 to %"class.__gnu_cxx::new_allocator.1"*
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 3
  %_M_cur7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish6, i32 0, i32 0
  %7 = load i32** %_M_cur7, align 8
  %8 = load i32** %__x.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.1"* %5, i32* %7, i32* %8)
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %10 = load i32** %_M_cur10, align 8
  %incdec.ptr = getelementptr inbounds i32* %10, i32 1
  store i32* %incdec.ptr, i32** %_M_cur10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32** %__x.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi(%"class.std::deque"* %this1, i32* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi(%"class.std::deque"* %this, i32* %__t) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__t.addr = alloca i32*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i32* %__t, i32** %__t.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this1, i64 1)
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %0)
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32** %2, i64 1
  store i32* %call, i32** %add.ptr, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_finish4 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish4, i32 0, i32 0
  %6 = load i32** %_M_cur, align 8
  %7 = load i32** %__t.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.1"* %4, i32* %6, i32* %7)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 3
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_finish8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7, i32 0, i32 3
  %_M_node9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish8, i32 0, i32 3
  %10 = load i32*** %_M_node9, align 8
  %add.ptr10 = getelementptr inbounds i32** %10, i64 1
  invoke void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish6, i32** %add.ptr10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_finish13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl12, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish13, i32 0, i32 1
  %12 = load i32** %_M_first, align 8
  %13 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl14 = getelementptr inbounds %"class.std::_Deque_base"* %13, i32 0, i32 0
  %_M_finish15 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl14, i32 0, i32 3
  %_M_cur16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish15, i32 0, i32 0
  store i32* %12, i32** %_M_cur16, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont, %entry
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8** %exn.slot
  %17 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %18 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %19 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl17, i32 0, i32 3
  %_M_node19 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish18, i32 0, i32 3
  %20 = load i32*** %_M_node19, align 8
  %add.ptr20 = getelementptr inbounds i32** %20, i64 1
  %21 = load i32** %add.ptr20, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %18, i32* %21)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %catch
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad21

lpad21:                                           ; preds = %invoke.cont22, %catch
  %22 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont23 unwind label %terminate.lpad

invoke.cont23:                                    ; preds = %lpad21
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont11
  ret void

eh.resume:                                        ; preds = %invoke.cont23
  %exn24 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn24, 0
  %lpad.val25 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val25

terminate.lpad:                                   ; preds = %lpad21
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont22
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__nodes_to_add.addr = alloca i64, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i64 %__nodes_to_add, i64* %__nodes_to_add.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = load i64* %__nodes_to_add.addr, align 8
  %add = add i64 %0, 1
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  %2 = load i64* %_M_map_size, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %4 = load i32*** %_M_node, align 8
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3, i32 0, i32 0
  %6 = load i32*** %_M_map, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub i64 %2, %sub.ptr.div
  %cmp = icmp ugt i64 %add, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64* %__nodes_to_add.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this1, i64 %7, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__nodes_to_add.addr = alloca i64, align 8
  %__add_at_front.addr = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca i32**, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca i32**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i64 %__nodes_to_add, i64* %__nodes_to_add.addr, align 8
  %frombool = zext i1 %__add_at_front to i8
  store i8 %frombool, i8* %__add_at_front.addr, align 1
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %1 = load i32*** %_M_node, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %3 = load i32*** %_M_node3, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %__old_num_nodes, align 8
  %4 = load i64* %__old_num_nodes, align 8
  %5 = load i64* %__nodes_to_add.addr, align 8
  %add4 = add i64 %4, %5
  store i64 %add4, i64* %__new_num_nodes, align 8
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %7 = load i64* %_M_map_size, align 8
  %8 = load i64* %__new_num_nodes, align 8
  %mul = mul i64 2, %8
  %cmp = icmp ugt i64 %7, %mul
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl6, i32 0, i32 0
  %10 = load i32*** %_M_map, align 8
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_map_size8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %12 = load i64* %_M_map_size8, align 8
  %13 = load i64* %__new_num_nodes, align 8
  %sub = sub i64 %12, %13
  %div = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds i32** %10, i64 %div
  %14 = load i8* %__add_at_front.addr, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %15 = load i64* %__nodes_to_add.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ 0, %cond.false ]
  %add.ptr9 = getelementptr inbounds i32** %add.ptr, i64 %cond
  store i32** %add.ptr9, i32*** %__new_nstart, align 8
  %16 = load i32*** %__new_nstart, align 8
  %17 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0
  %_M_start11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl10, i32 0, i32 2
  %_M_node12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start11, i32 0, i32 3
  %18 = load i32*** %_M_node12, align 8
  %cmp13 = icmp ult i32** %16, %18
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %cond.end
  %19 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl15, i32 0, i32 2
  %_M_node17 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start16, i32 0, i32 3
  %20 = load i32*** %_M_node17, align 8
  %21 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl18 = getelementptr inbounds %"class.std::_Deque_base"* %21, i32 0, i32 0
  %_M_finish19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl18, i32 0, i32 3
  %_M_node20 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish19, i32 0, i32 3
  %22 = load i32*** %_M_node20, align 8
  %add.ptr21 = getelementptr inbounds i32** %22, i64 1
  %23 = load i32*** %__new_nstart, align 8
  %call = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %20, i32** %add.ptr21, i32** %23)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %24 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl22 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %_M_start23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl22, i32 0, i32 2
  %_M_node24 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start23, i32 0, i32 3
  %25 = load i32*** %_M_node24, align 8
  %26 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0
  %_M_finish26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl25, i32 0, i32 3
  %_M_node27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish26, i32 0, i32 3
  %27 = load i32*** %_M_node27, align 8
  %add.ptr28 = getelementptr inbounds i32** %27, i64 1
  %28 = load i32*** %__new_nstart, align 8
  %29 = load i64* %__old_num_nodes, align 8
  %add.ptr29 = getelementptr inbounds i32** %28, i64 %29
  %call30 = call i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %25, i32** %add.ptr28, i32** %add.ptr29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end65

if.else31:                                        ; preds = %entry
  %30 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base"* %30, i32 0, i32 0
  %_M_map_size33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl32, i32 0, i32 1
  %31 = load i64* %_M_map_size33, align 8
  %32 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl34 = getelementptr inbounds %"class.std::_Deque_base"* %32, i32 0, i32 0
  %_M_map_size35 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl34, i32 0, i32 1
  %call36 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %_M_map_size35, i64* %__nodes_to_add.addr)
  %33 = load i64* %call36
  %add37 = add i64 %31, %33
  %add38 = add i64 %add37, 2
  store i64 %add38, i64* %__new_map_size, align 8
  %34 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %35 = load i64* %__new_map_size, align 8
  %call39 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %34, i64 %35)
  store i32** %call39, i32*** %__new_map, align 8
  %36 = load i32*** %__new_map, align 8
  %37 = load i64* %__new_map_size, align 8
  %38 = load i64* %__new_num_nodes, align 8
  %sub40 = sub i64 %37, %38
  %div41 = udiv i64 %sub40, 2
  %add.ptr42 = getelementptr inbounds i32** %36, i64 %div41
  %39 = load i8* %__add_at_front.addr, align 1
  %tobool43 = trunc i8 %39 to i1
  br i1 %tobool43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %if.else31
  %40 = load i64* %__nodes_to_add.addr, align 8
  br label %cond.end46

cond.false45:                                     ; preds = %if.else31
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i64 [ %40, %cond.true44 ], [ 0, %cond.false45 ]
  %add.ptr48 = getelementptr inbounds i32** %add.ptr42, i64 %cond47
  store i32** %add.ptr48, i32*** %__new_nstart, align 8
  %41 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl49 = getelementptr inbounds %"class.std::_Deque_base"* %41, i32 0, i32 0
  %_M_start50 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl49, i32 0, i32 2
  %_M_node51 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start50, i32 0, i32 3
  %42 = load i32*** %_M_node51, align 8
  %43 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl52 = getelementptr inbounds %"class.std::_Deque_base"* %43, i32 0, i32 0
  %_M_finish53 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl52, i32 0, i32 3
  %_M_node54 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish53, i32 0, i32 3
  %44 = load i32*** %_M_node54, align 8
  %add.ptr55 = getelementptr inbounds i32** %44, i64 1
  %45 = load i32*** %__new_nstart, align 8
  %call56 = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %42, i32** %add.ptr55, i32** %45)
  %46 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %47 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl57 = getelementptr inbounds %"class.std::_Deque_base"* %47, i32 0, i32 0
  %_M_map58 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl57, i32 0, i32 0
  %48 = load i32*** %_M_map58, align 8
  %49 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl59 = getelementptr inbounds %"class.std::_Deque_base"* %49, i32 0, i32 0
  %_M_map_size60 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl59, i32 0, i32 1
  %50 = load i64* %_M_map_size60, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %46, i32** %48, i64 %50)
  %51 = load i32*** %__new_map, align 8
  %52 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl61 = getelementptr inbounds %"class.std::_Deque_base"* %52, i32 0, i32 0
  %_M_map62 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl61, i32 0, i32 0
  store i32** %51, i32*** %_M_map62, align 8
  %53 = load i64* %__new_map_size, align 8
  %54 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl63 = getelementptr inbounds %"class.std::_Deque_base"* %54, i32 0, i32 0
  %_M_map_size64 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl63, i32 0, i32 1
  store i64 %53, i64* %_M_map_size64, align 8
  br label %if.end65

if.end65:                                         ; preds = %cond.end46, %if.end
  %55 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl66 = getelementptr inbounds %"class.std::_Deque_base"* %55, i32 0, i32 0
  %_M_start67 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl66, i32 0, i32 2
  %56 = load i32*** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start67, i32** %56)
  %57 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl68 = getelementptr inbounds %"class.std::_Deque_base"* %57, i32 0, i32 0
  %_M_finish69 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl68, i32 0, i32 3
  %58 = load i32*** %__new_nstart, align 8
  %59 = load i64* %__old_num_nodes, align 8
  %add.ptr70 = getelementptr inbounds i32** %58, i64 %59
  %add.ptr71 = getelementptr inbounds i32** %add.ptr70, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish69, i32** %add.ptr71)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #5 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32*** %__first.addr, align 8
  %call = call i32** @_ZNSt12__miter_baseIPPiLb0EE3__bES1_(i32** %0)
  %1 = load i32*** %__last.addr, align 8
  %call1 = call i32** @_ZNSt12__miter_baseIPPiLb0EE3__bES1_(i32** %1)
  %2 = load i32*** %__result.addr, align 8
  %call2 = call i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %2)
  ret i32** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #5 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32*** %__first.addr, align 8
  %call = call i32** @_ZNSt12__miter_baseIPPiLb0EE3__bES1_(i32** %0)
  %1 = load i32*** %__last.addr, align 8
  %call1 = call i32** @_ZNSt12__miter_baseIPPiLb0EE3__bES1_(i32** %1)
  %2 = load i32*** %__result.addr, align 8
  %call2 = call i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %2)
  ret i32** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #5 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32*** %__first.addr, align 8
  %call = call i32** @_ZNSt12__niter_baseIPPiLb0EE3__bES1_(i32** %0)
  %1 = load i32*** %__last.addr, align 8
  %call1 = call i32** @_ZNSt12__niter_baseIPPiLb0EE3__bES1_(i32** %1)
  %2 = load i32*** %__result.addr, align 8
  %call2 = call i32** @_ZNSt12__niter_baseIPPiLb0EE3__bES1_(i32** %2)
  %call3 = call i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %call2)
  ret i32** %call3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNSt12__miter_baseIPPiLb0EE3__bES1_(i32** %__it) #8 align 2 {
entry:
  %__it.addr = alloca i32**, align 8
  store i32** %__it, i32*** %__it.addr, align 8
  %0 = load i32*** %__it.addr, align 8
  ret i32** %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #5 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  %__simple = alloca i8, align 1
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i32*** %__first.addr, align 8
  %1 = load i32*** %__last.addr, align 8
  %2 = load i32*** %__result.addr, align 8
  %call = call i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %0, i32** %1, i32** %2)
  ret i32** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNSt12__niter_baseIPPiLb0EE3__bES1_(i32** %__it) #8 align 2 {
entry:
  %__it.addr = alloca i32**, align 8
  store i32** %__it, i32*** %__it.addr, align 8
  %0 = load i32*** %__it.addr, align 8
  ret i32** %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #8 align 2 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  %_Num = alloca i64, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32*** %__last.addr, align 8
  %1 = load i32*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i32*** %__result.addr, align 8
  %3 = load i64* %_Num, align 8
  %idx.neg = sub i64 0, %3
  %add.ptr = getelementptr inbounds i32** %2, i64 %idx.neg
  %4 = bitcast i32** %add.ptr to i8*
  %5 = load i32*** %__first.addr, align 8
  %6 = bitcast i32** %5 to i8*
  %7 = load i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  %8 = load i32*** %__result.addr, align 8
  %9 = load i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %9
  %add.ptr2 = getelementptr inbounds i32** %8, i64 %idx.neg1
  ret i32** %add.ptr2
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #5 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32*** %__first.addr, align 8
  %call = call i32** @_ZNSt12__niter_baseIPPiLb0EE3__bES1_(i32** %0)
  %1 = load i32*** %__last.addr, align 8
  %call1 = call i32** @_ZNSt12__niter_baseIPPiLb0EE3__bES1_(i32** %1)
  %2 = load i32*** %__result.addr, align 8
  %call2 = call i32** @_ZNSt12__niter_baseIPPiLb0EE3__bES1_(i32** %2)
  %call3 = call i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %call2)
  ret i32** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #5 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  %__simple = alloca i8, align 1
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i32*** %__first.addr, align 8
  %1 = load i32*** %__last.addr, align 8
  %2 = load i32*** %__result.addr, align 8
  %call = call i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %0, i32** %1, i32** %2)
  ret i32** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #8 align 2 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32*** %__result.addr, align 8
  %1 = bitcast i32** %0 to i8*
  %2 = load i32*** %__first.addr, align 8
  %3 = bitcast i32** %2 to i8*
  %4 = load i32*** %__last.addr, align 8
  %5 = load i32*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %mul = mul i64 8, %sub.ptr.div
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 8, i1 false)
  %6 = load i32*** %__result.addr, align 8
  %7 = load i32*** %__last.addr, align 8
  %8 = load i32*** %__first.addr, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i32** %7 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i32** %8 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %add.ptr = getelementptr inbounds i32** %6, i64 %sub.ptr.div4
  ret i32** %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorI11AdjListNodeEC2EPSt15_List_node_base(%"struct.std::_List_iterator"* %this, %"struct.std::_List_node_base"* %__x) unnamed_addr #8 align 2 {
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
define linkonce_odr void @_ZNSt4listI11AdjListNodeSaIS0_EE9_M_insertESt14_List_iteratorIS0_ERKS0_(%"class.std::list"* %this, %"struct.std::_List_node_base"* %__position.coerce, %class.AdjListNode* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  %__position = alloca %"struct.std::_List_iterator", align 8
  %__x.addr = alloca %class.AdjListNode*, align 8
  %__tmp = alloca %"struct.std::_List_node"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_List_node_base"* %__position.coerce, %"struct.std::_List_node_base"** %coerce.dive
  store %class.AdjListNode* %__x, %class.AdjListNode** %__x.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = load %class.AdjListNode** %__x.addr, align 8
  %call = call %"struct.std::_List_node"* @_ZNSt4listI11AdjListNodeSaIS0_EE14_M_create_nodeERKS0_(%"class.std::list"* %this1, %class.AdjListNode* %0)
  store %"struct.std::_List_node"* %call, %"struct.std::_List_node"** %__tmp, align 8
  %1 = load %"struct.std::_List_node"** %__tmp, align 8
  %2 = bitcast %"struct.std::_List_node"* %1 to %"struct.std::_List_node_base"*
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %3 = load %"struct.std::_List_node_base"** %_M_node, align 8
  call void @_ZNSt15_List_node_base4hookEPS_(%"struct.std::_List_node_base"* %2, %"struct.std::_List_node_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node"* @_ZNSt4listI11AdjListNodeSaIS0_EE14_M_create_nodeERKS0_(%"class.std::list"* %this, %class.AdjListNode* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  %__x.addr = alloca %class.AdjListNode*, align 8
  %__p = alloca %"struct.std::_List_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.7", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  store %class.AdjListNode* %__x, %class.AdjListNode** %__x.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %call = call %"struct.std::_List_node"* @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE11_M_get_nodeEv(%"class.std::_List_base"* %0)
  store %"struct.std::_List_node"* %call, %"struct.std::_List_node"** %__p, align 8
  %1 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  invoke void @_ZNKSt10_List_baseI11AdjListNodeSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::allocator.7"* sret %temp.lvalue, %"class.std::_List_base"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = bitcast %"class.std::allocator.7"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.8"*
  %3 = load %"struct.std::_List_node"** %__p, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node"* %3, i32 0, i32 1
  %4 = load %class.AdjListNode** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator.8"* %2, %class.AdjListNode* %_M_data, %class.AdjListNode* %4)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSaI11AdjListNodeED2Ev(%"class.std::allocator.7"* %temp.lvalue) #1
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
  call void @_ZNSaI11AdjListNodeED2Ev(%"class.std::allocator.7"* %temp.lvalue) #1
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8** %exn.slot
  %11 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %12 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  %13 = load %"struct.std::_List_node"** %__p, align 8
  invoke void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE11_M_put_nodeEPSt10_List_nodeIS0_E(%"class.std::_List_base"* %12, %"struct.std::_List_node"* %13)
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
define linkonce_odr %"struct.std::_List_node"* @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE11_M_get_nodeEv(%"class.std::_List_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 1, i8* null)
  ret %"struct.std::_List_node"* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt10_List_baseI11AdjListNodeSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::allocator.7"* noalias sret %agg.result, %"class.std::_List_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %call = call %"class.std::allocator"* @_ZNKSt10_List_baseI11AdjListNodeSaIS0_EE21_M_get_Node_allocatorEv(%"class.std::_List_base"* %this1)
  call void @_ZNSaI11AdjListNodeEC2ISt10_List_nodeIS_EEERKSaIT_E(%"class.std::allocator.7"* %agg.result, %"class.std::allocator"* %call) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator.8"* %this, %class.AdjListNode* %__p, %class.AdjListNode* %__val) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %__p.addr = alloca %class.AdjListNode*, align 8
  %__val.addr = alloca %class.AdjListNode*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  store %class.AdjListNode* %__p, %class.AdjListNode** %__p.addr, align 8
  store %class.AdjListNode* %__val, %class.AdjListNode** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"** %this.addr
  %0 = load %class.AdjListNode** %__p.addr, align 8
  %1 = bitcast %class.AdjListNode* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %class.AdjListNode*
  %3 = load %class.AdjListNode** %__val.addr, align 8
  %4 = bitcast %class.AdjListNode* %2 to i8*
  %5 = bitcast %class.AdjListNode* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false)
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %6 = phi %class.AdjListNode* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI11AdjListNodeED2Ev(%"class.std::allocator.7"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %this.addr, align 8
  %this1 = load %"class.std::allocator.7"** %this.addr
  %0 = bitcast %"class.std::allocator.7"* %this1 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeED2Ev(%"class.__gnu_cxx::new_allocator.8"* %0) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE11_M_put_nodeEPSt10_List_nodeIS0_E(%"class.std::_List_base"* %this, %"struct.std::_List_node"* %__p) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %__p.addr = alloca %"struct.std::_List_node"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  store %"struct.std::_List_node"* %__p, %"struct.std::_List_node"** %__p.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::_List_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::_List_node"* %2, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_List_node"* %__p, i64) #8 align 2 {
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

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeED2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI11AdjListNodeEC2ISt10_List_nodeIS_EEERKSaIT_E(%"class.std::allocator.7"* %this, %"class.std::allocator"*) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.7"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.7"** %this.addr
  %1 = bitcast %"class.std::allocator.7"* %this1 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %1) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt10_List_baseI11AdjListNodeSaIS0_EE21_M_get_Node_allocatorEv(%"class.std::_List_base"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #1
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
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 768614336404564650
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EEC2Ev(%"class.std::_List_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE10_List_implC2Ev(%"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl)
  invoke void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE7_M_initEv(%"class.std::_List_base"* %this1)
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
  call void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE10_List_implD2Ev(%"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE10_List_implC2Ev(%"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"*, align 8
  store %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %this, %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"** %this.addr
  %0 = bitcast %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.std::allocator"* %0) #1
  %_M_node = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node_base"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE7_M_initEv(%"class.std::_List_base"* %this) #8 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl, i32 0, i32 0
  %_M_impl2 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %_M_next = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node3, i32 0, i32 0
  store %"struct.std::_List_node_base"* %_M_node, %"struct.std::_List_node_base"** %_M_next, align 8
  %_M_impl4 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node5 = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl4, i32 0, i32 0
  %_M_impl6 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node7 = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl6, i32 0, i32 0
  %_M_prev = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node7, i32 0, i32 1
  store %"struct.std::_List_node_base"* %_M_node5, %"struct.std::_List_node_base"** %_M_prev, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE10_List_implD2Ev(%"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %this) unnamed_addr #9 align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"*, align 8
  store %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %this, %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"** %this.addr
  %0 = bitcast %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeI11AdjListNodeEED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeI11AdjListNodeEED2Ev(%"class.std::allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EED2Ev(%"class.std::_List_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  invoke void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE8_M_clearEv(%"class.std::_List_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE10_List_implD2Ev(%"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl) #1
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  %_M_impl2 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE10_List_implD2Ev(%"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl2) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE8_M_clearEv(%"class.std::_List_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  %__cur = alloca %"struct.std::_List_node"*, align 8
  %__tmp = alloca %"struct.std::_List_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.7", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl, i32 0, i32 0
  %_M_next = getelementptr inbounds %"struct.std::_List_node_base"* %_M_node, i32 0, i32 0
  %0 = load %"struct.std::_List_node_base"** %_M_next, align 8
  %1 = bitcast %"struct.std::_List_node_base"* %0 to %"struct.std::_List_node"*
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %__cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %2 = load %"struct.std::_List_node"** %__cur, align 8
  %3 = bitcast %"struct.std::_List_node"* %2 to %"struct.std::_List_node_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::_List_base<AdjListNode, std::allocator<AdjListNode> >::_List_impl"* %_M_impl2, i32 0, i32 0
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
  call void @_ZNKSt10_List_baseI11AdjListNodeSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::allocator.7"* sret %temp.lvalue, %"class.std::_List_base"* %this1)
  %9 = bitcast %"class.std::allocator.7"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.8"*
  %10 = load %"struct.std::_List_node"** %__tmp, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node"* %10, i32 0, i32 1
  invoke void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeE7destroyEPS1_(%"class.__gnu_cxx::new_allocator.8"* %9, %class.AdjListNode* %_M_data)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZNSaI11AdjListNodeED2Ev(%"class.std::allocator.7"* %temp.lvalue) #1
  %11 = load %"struct.std::_List_node"** %__tmp, align 8
  call void @_ZNSt10_List_baseI11AdjListNodeSaIS0_EE11_M_put_nodeEPSt10_List_nodeIS0_E(%"class.std::_List_base"* %this1, %"struct.std::_List_node"* %11)
  br label %while.cond

lpad:                                             ; preds = %while.body
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot
  call void @_ZNSaI11AdjListNodeED2Ev(%"class.std::allocator.7"* %temp.lvalue) #1
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
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI11AdjListNodeE7destroyEPS1_(%"class.__gnu_cxx::new_allocator.8"* %this, %class.AdjListNode* %__p) #8 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %__p.addr = alloca %class.AdjListNode*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  store %class.AdjListNode* %__p, %class.AdjListNode** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"** %this.addr
  %0 = load %class.AdjListNode** %__p.addr, align 8
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
attributes #9 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
