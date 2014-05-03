; ModuleID = 'source/graph-coloring.cpp'
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
@.str = private unnamed_addr constant [8 x i8] c"Vertex \00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c" --->  Color \00", align 1
@.str2 = private unnamed_addr constant [22 x i8] c"Coloring of Graph 1 \0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"\0AColoring of Graph 2 \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

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
define void @_ZN5Graph14greedyColoringEv(%class.Graph* %this) #2 align 2 {
entry:
  %this.addr = alloca %class.Graph*, align 8
  %saved_stack = alloca i8*
  %u = alloca i32, align 4
  %cr = alloca i32, align 4
  %u15 = alloca i32, align 4
  %i = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp23 = alloca %"struct.std::_List_iterator", align 8
  %cr43 = alloca i32, align 4
  %ref.tmp58 = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp65 = alloca %"struct.std::_List_iterator", align 8
  %u90 = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  %this1 = load %class.Graph** %this.addr
  %V = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %0 = load i32* %V, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  %arrayidx = getelementptr inbounds i32* %vla, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 1, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32* %u, align 4
  %V2 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %4 = load i32* %V2, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32* %u, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i32* %vla, i64 %idxprom
  store i32 -1, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32* %u, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %V4 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %7 = load i32* %V4, align 4
  %8 = zext i32 %7 to i64
  %vla5 = alloca i8, i64 %8, align 16
  store i32 0, i32* %cr, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %9 = load i32* %cr, align 4
  %V7 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %10 = load i32* %V7, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body9, label %for.end14

for.body9:                                        ; preds = %for.cond6
  %11 = load i32* %cr, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds i8* %vla5, i64 %idxprom10
  store i8 0, i8* %arrayidx11, align 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %12 = load i32* %cr, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %cr, align 4
  br label %for.cond6

for.end14:                                        ; preds = %for.cond6
  store i32 1, i32* %u15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc87, %for.end14
  %13 = load i32* %u15, align 4
  %V17 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %14 = load i32* %V17, align 4
  %cmp18 = icmp slt i32 %13, %14
  br i1 %cmp18, label %for.body19, label %for.end89

for.body19:                                       ; preds = %for.cond16
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %i)
  %15 = load i32* %u15, align 4
  %idxprom20 = sext i32 %15 to i64
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %16 = load %"class.std::list"** %adj, align 8
  %arrayidx21 = getelementptr inbounds %"class.std::list"* %16, i64 %idxprom20
  %call = call %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE5beginEv(%"class.std::list"* %arrayidx21)
  %coerce.dive = getelementptr %"struct.std::_List_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call, %"struct.std::_List_node_base"** %coerce.dive
  %17 = bitcast %"struct.std::_List_iterator"* %i to i8*
  %18 = bitcast %"struct.std::_List_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc40, %for.body19
  %19 = load i32* %u15, align 4
  %idxprom24 = sext i32 %19 to i64
  %adj25 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %20 = load %"class.std::list"** %adj25, align 8
  %arrayidx26 = getelementptr inbounds %"class.std::list"* %20, i64 %idxprom24
  %call27 = call %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE3endEv(%"class.std::list"* %arrayidx26)
  %coerce.dive28 = getelementptr %"struct.std::_List_iterator"* %ref.tmp23, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call27, %"struct.std::_List_node_base"** %coerce.dive28
  %call29 = call zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* %ref.tmp23)
  br i1 %call29, label %for.body30, label %for.end42

for.body30:                                       ; preds = %for.cond22
  %call31 = call i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %21 = load i32* %call31
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds i32* %vla, i64 %idxprom32
  %22 = load i32* %arrayidx33, align 4
  %cmp34 = icmp ne i32 %22, -1
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.body30
  %call35 = call i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %23 = load i32* %call35
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds i32* %vla, i64 %idxprom36
  %24 = load i32* %arrayidx37, align 4
  %idxprom38 = sext i32 %24 to i64
  %arrayidx39 = getelementptr inbounds i8* %vla5, i64 %idxprom38
  store i8 1, i8* %arrayidx39, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body30
  br label %for.inc40

for.inc40:                                        ; preds = %if.end
  %call41 = call %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %i)
  br label %for.cond22

for.end42:                                        ; preds = %for.cond22
  store i32 0, i32* %cr43, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc53, %for.end42
  %25 = load i32* %cr43, align 4
  %V45 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %26 = load i32* %V45, align 4
  %cmp46 = icmp slt i32 %25, %26
  br i1 %cmp46, label %for.body47, label %for.end55

for.body47:                                       ; preds = %for.cond44
  %27 = load i32* %cr43, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds i8* %vla5, i64 %idxprom48
  %28 = load i8* %arrayidx49, align 1
  %tobool = trunc i8 %28 to i1
  %conv = zext i1 %tobool to i32
  %cmp50 = icmp eq i32 %conv, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.body47
  br label %for.end55

if.end52:                                         ; preds = %for.body47
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %29 = load i32* %cr43, align 4
  %inc54 = add nsw i32 %29, 1
  store i32 %inc54, i32* %cr43, align 4
  br label %for.cond44

for.end55:                                        ; preds = %if.then51, %for.cond44
  %30 = load i32* %cr43, align 4
  %31 = load i32* %u15, align 4
  %idxprom56 = sext i32 %31 to i64
  %arrayidx57 = getelementptr inbounds i32* %vla, i64 %idxprom56
  store i32 %30, i32* %arrayidx57, align 4
  %32 = load i32* %u15, align 4
  %idxprom59 = sext i32 %32 to i64
  %adj60 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %33 = load %"class.std::list"** %adj60, align 8
  %arrayidx61 = getelementptr inbounds %"class.std::list"* %33, i64 %idxprom59
  %call62 = call %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE5beginEv(%"class.std::list"* %arrayidx61)
  %coerce.dive63 = getelementptr %"struct.std::_List_iterator"* %ref.tmp58, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call62, %"struct.std::_List_node_base"** %coerce.dive63
  %34 = bitcast %"struct.std::_List_iterator"* %i to i8*
  %35 = bitcast %"struct.std::_List_iterator"* %ref.tmp58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 8, i32 8, i1 false)
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc84, %for.end55
  %36 = load i32* %u15, align 4
  %idxprom66 = sext i32 %36 to i64
  %adj67 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %37 = load %"class.std::list"** %adj67, align 8
  %arrayidx68 = getelementptr inbounds %"class.std::list"* %37, i64 %idxprom66
  %call69 = call %"struct.std::_List_node_base"* @_ZNSt4listIiSaIiEE3endEv(%"class.std::list"* %arrayidx68)
  %coerce.dive70 = getelementptr %"struct.std::_List_iterator"* %ref.tmp65, i32 0, i32 0
  store %"struct.std::_List_node_base"* %call69, %"struct.std::_List_node_base"** %coerce.dive70
  %call71 = call zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* %ref.tmp65)
  br i1 %call71, label %for.body72, label %for.end86

for.body72:                                       ; preds = %for.cond64
  %call73 = call i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %38 = load i32* %call73
  %idxprom74 = sext i32 %38 to i64
  %arrayidx75 = getelementptr inbounds i32* %vla, i64 %idxprom74
  %39 = load i32* %arrayidx75, align 4
  %cmp76 = icmp ne i32 %39, -1
  br i1 %cmp76, label %if.then77, label %if.end83

if.then77:                                        ; preds = %for.body72
  %call78 = call i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %40 = load i32* %call78
  %idxprom79 = sext i32 %40 to i64
  %arrayidx80 = getelementptr inbounds i32* %vla, i64 %idxprom79
  %41 = load i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %41 to i64
  %arrayidx82 = getelementptr inbounds i8* %vla5, i64 %idxprom81
  store i8 0, i8* %arrayidx82, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %for.body72
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %call85 = call %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %i)
  br label %for.cond64

for.end86:                                        ; preds = %for.cond64
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %42 = load i32* %u15, align 4
  %inc88 = add nsw i32 %42, 1
  store i32 %inc88, i32* %u15, align 4
  br label %for.cond16

for.end89:                                        ; preds = %for.cond16
  store i32 0, i32* %u90, align 4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc102, %for.end89
  %43 = load i32* %u90, align 4
  %V92 = getelementptr inbounds %class.Graph* %this1, i32 0, i32 0
  %44 = load i32* %V92, align 4
  %cmp93 = icmp slt i32 %43, %44
  br i1 %cmp93, label %for.body94, label %for.end104

for.body94:                                       ; preds = %for.cond91
  %call95 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  %45 = load i32* %u90, align 4
  %call96 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call95, i32 %45)
  %call97 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %call96, i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0))
  %46 = load i32* %u90, align 4
  %idxprom98 = sext i32 %46 to i64
  %arrayidx99 = getelementptr inbounds i32* %vla, i64 %idxprom98
  %47 = load i32* %arrayidx99, align 4
  %call100 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call97, i32 %47)
  %call101 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call100, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc102

for.inc102:                                       ; preds = %for.body94
  %48 = load i32* %u90, align 4
  %inc103 = add nsw i32 %48, 1
  store i32 %inc103, i32* %u90, align 4
  br label %for.cond91

for.end104:                                       ; preds = %for.cond91
  %49 = load i8** %saved_stack
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %this) unnamed_addr #3 align 2 {
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
define linkonce_odr zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* %__x) #3 align 2 {
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
define linkonce_odr i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %this) #3 align 2 {
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
define linkonce_odr %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %this) #3 align 2 {
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

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #0

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #0

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %g1 = alloca %class.Graph, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %g2 = alloca %class.Graph, align 8
  %cleanup.dest.slot = alloca i32
  store i32 0, i32* %retval
  call void @_ZN5GraphC2Ei(%class.Graph* %g1, i32 5)
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 0, i32 1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 0, i32 2)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 1, i32 2)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 1, i32 3)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont2
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 2, i32 3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont3
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 3, i32 4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  %call = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([22 x i8]* @.str2, i32 0, i32 0))
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont5
  invoke void @_ZN5Graph14greedyColoringEv(%class.Graph* %g1)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  invoke void @_ZN5GraphC2Ei(%class.Graph* %g2, i32 5)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont7
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 0, i32 1)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 0, i32 2)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 1, i32 2)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont11
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 1, i32 4)
          to label %invoke.cont13 unwind label %lpad9

invoke.cont13:                                    ; preds = %invoke.cont12
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 2, i32 4)
          to label %invoke.cont14 unwind label %lpad9

invoke.cont14:                                    ; preds = %invoke.cont13
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 4, i32 3)
          to label %invoke.cont15 unwind label %lpad9

invoke.cont15:                                    ; preds = %invoke.cont14
  %call17 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0))
          to label %invoke.cont16 unwind label %lpad9

invoke.cont16:                                    ; preds = %invoke.cont15
  invoke void @_ZN5Graph14greedyColoringEv(%class.Graph* %g2)
          to label %invoke.cont18 unwind label %lpad9

invoke.cont18:                                    ; preds = %invoke.cont16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  invoke void @_ZN5GraphD2Ev(%class.Graph* %g2)
          to label %invoke.cont19 unwind label %lpad

lpad:                                             ; preds = %invoke.cont18, %invoke.cont7, %invoke.cont6, %invoke.cont5, %invoke.cont4, %invoke.cont3, %invoke.cont2, %invoke.cont1, %invoke.cont, %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont16, %invoke.cont15, %invoke.cont14, %invoke.cont13, %invoke.cont12, %invoke.cont11, %invoke.cont10, %invoke.cont8
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  invoke void @_ZN5GraphD2Ev(%class.Graph* %g2)
          to label %invoke.cont20 unwind label %terminate.lpad

invoke.cont19:                                    ; preds = %invoke.cont18
  call void @_ZN5GraphD2Ev(%class.Graph* %g1)
  %6 = load i32* %retval
  ret i32 %6

invoke.cont20:                                    ; preds = %lpad9
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont20, %lpad
  invoke void @_ZN5GraphD2Ev(%class.Graph* %g1)
          to label %invoke.cont21 unwind label %terminate.lpad

invoke.cont21:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont21
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val22 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val22

terminate.lpad:                                   ; preds = %ehcleanup, %lpad9
  %7 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #11
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN5GraphC2Ei(%class.Graph* %this, i32 %V) unnamed_addr #2 align 2 {
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
  %call = call noalias i8* @_Znam(i64 %10) #12
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
  call void @_ZdaPv(i8* %call) #13
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
  call void @__clang_call_terminate(i8* %18) #11
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define linkonce_odr void @_ZN5GraphD2Ev(%class.Graph* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.Graph*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.Graph* %this, %class.Graph** %this.addr, align 8
  %this1 = load %class.Graph** %this.addr
  %adj = getelementptr inbounds %class.Graph* %this1, i32 0, i32 1
  %0 = load %"class.std::list"** %adj, align 8
  %isnull = icmp eq %"class.std::list"* %0, null
  br i1 %isnull, label %delete.end10, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"class.std::list"* %0 to i8*
  %2 = getelementptr inbounds i8* %1, i64 -8
  %3 = bitcast i8* %2 to i64*
  %4 = load i64* %3
  %delete.end = getelementptr inbounds %"class.std::list"* %0, i64 %4
  %arraydestroy.isempty = icmp eq %"class.std::list"* %0, %delete.end
  br i1 %arraydestroy.isempty, label %arraydestroy.done9, label %arraydestroy.body

arraydestroy.body:                                ; preds = %invoke.cont, %delete.notnull
  %arraydestroy.elementPast = phi %"class.std::list"* [ %delete.end, %delete.notnull ], [ %arraydestroy.element, %invoke.cont ]
  %arraydestroy.element = getelementptr inbounds %"class.std::list"* %arraydestroy.elementPast, i64 -1
  invoke void @_ZNSt4listIiSaIiEED2Ev(%"class.std::list"* %arraydestroy.element)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arraydestroy.body
  %arraydestroy.done8 = icmp eq %"class.std::list"* %arraydestroy.element, %0
  br i1 %arraydestroy.done8, label %arraydestroy.done9, label %arraydestroy.body

arraydestroy.done9:                               ; preds = %invoke.cont, %delete.notnull
  call void @_ZdaPv(i8* %2) #13
  br label %delete.end10

delete.end10:                                     ; preds = %arraydestroy.done9, %entry
  ret void

lpad:                                             ; preds = %arraydestroy.body
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  %arraydestroy.isempty2 = icmp eq %"class.std::list"* %0, %arraydestroy.element
  br i1 %arraydestroy.isempty2, label %arraydestroy.done7, label %arraydestroy.body3

arraydestroy.body3:                               ; preds = %invoke.cont6, %lpad
  %arraydestroy.elementPast4 = phi %"class.std::list"* [ %arraydestroy.element, %lpad ], [ %arraydestroy.element5, %invoke.cont6 ]
  %arraydestroy.element5 = getelementptr inbounds %"class.std::list"* %arraydestroy.elementPast4, i64 -1
  invoke void @_ZNSt4listIiSaIiEED2Ev(%"class.std::list"* %arraydestroy.element5)
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %arraydestroy.body3
  %arraydestroy.done = icmp eq %"class.std::list"* %arraydestroy.element5, %0
  br i1 %arraydestroy.done, label %arraydestroy.done7, label %arraydestroy.body3

arraydestroy.done7:                               ; preds = %invoke.cont6, %lpad
  call void @_ZdaPv(i8* %2) #13
  br label %eh.resume

eh.resume:                                        ; preds = %arraydestroy.done7
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11

terminate.lpad:                                   ; preds = %arraydestroy.body3
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #11
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #11
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIiEC2EPSt15_List_node_base(%"struct.std::_List_iterator"* %this, %"struct.std::_List_node_base"* %__x) unnamed_addr #3 align 2 {
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
  call void @__clang_call_terminate(i8* %19) #11
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
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p, i32* %__val) #3 align 2 {
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
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 align 2 {
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
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_List_node"* %__p, i64) #3 align 2 {
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
declare void @_ZdlPv(i8*) #5

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E(%"class.std::allocator.0"* %this, %"class.std::allocator"*) unnamed_addr #3 align 2 {
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
define linkonce_odr %"class.std::allocator"* @_ZNKSt10_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::_List_base"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_List_base"*, align 8
  store %"class.std::_List_base"* %this, %"class.std::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::_List_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
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
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 768614336404564650
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #8

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4listIiSaIiEED2Ev(%"class.std::list"* %this) unnamed_addr #9 align 2 {
entry:
  %this.addr = alloca %"class.std::list"*, align 8
  store %"class.std::list"* %this, %"class.std::list"** %this.addr, align 8
  %this1 = load %"class.std::list"** %this.addr
  %0 = bitcast %"class.std::list"* %this1 to %"class.std::_List_base"*
  call void @_ZNSt10_List_baseIiSaIiEED2Ev(%"class.std::_List_base"* %0)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

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
define linkonce_odr void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.1"* %this, i32* %__p) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"** %this.addr
  %0 = load i32** %__p.addr, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #8

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
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::_List_base<int, std::allocator<int> >::_List_impl"* %this) unnamed_addr #3 align 2 {
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
define linkonce_odr void @_ZNSt10_List_baseIiSaIiEE7_M_initEv(%"class.std::_List_base"* %this) #3 align 2 {
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

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
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
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
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
attributes #3 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
