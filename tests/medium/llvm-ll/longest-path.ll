; ModuleID = 'source/longest-path.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios" }
%"class.std::__1::basic_ios" = type { %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type { %"struct.std::__1::once_flag", i32 }
%"struct.std::__1::once_flag" = type { i64 }
%class.Graph = type { i32, %"class.std::__1::list"* }
%"class.std::__1::list" = type { %"class.std::__1::__list_imp" }
%"class.std::__1::__list_imp" = type { %"struct.std::__1::__list_node_base", %"class.std::__1::__compressed_pair" }
%"struct.std::__1::__list_node_base" = type { %"struct.std::__1::__list_node"*, %"struct.std::__1::__list_node"* }
%"struct.std::__1::__list_node" = type { %"struct.std::__1::__list_node_base", %class.AdjListNode }
%class.AdjListNode = type { i32, i32 }
%"class.std::__1::__compressed_pair" = type { %"class.std::__1::__libcpp_compressed_pair_imp" }
%"class.std::__1::__libcpp_compressed_pair_imp" = type { i64 }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::__libcpp_compressed_pair_imp.19" = type { %"struct.std::__1::__list_node"*, %"class.std::__1::__allocator_destructor" }
%"class.std::__1::__allocator_destructor" = type { %"class.std::__1::allocator"*, i64 }
%"class.std::__1::__compressed_pair.18" = type { %"class.std::__1::__libcpp_compressed_pair_imp.19" }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::stack" = type { %"class.std::__1::deque" }
%"class.std::__1::deque" = type { %"class.std::__1::__deque_base" }
%"class.std::__1::__deque_base" = type { %"struct.std::__1::__split_buffer", i64, %"class.std::__1::__compressed_pair.4" }
%"struct.std::__1::__split_buffer" = type { i32**, i32**, i32**, %"class.std::__1::__compressed_pair.0" }
%"class.std::__1::__compressed_pair.0" = type { %"class.std::__1::__libcpp_compressed_pair_imp.1" }
%"class.std::__1::__libcpp_compressed_pair_imp.1" = type { i32** }
%"class.std::__1::__compressed_pair.4" = type { %"class.std::__1::__libcpp_compressed_pair_imp.5" }
%"class.std::__1::__libcpp_compressed_pair_imp.5" = type { i64 }
%"class.std::__1::__list_iterator" = type { %"struct.std::__1::__list_node"* }
%"struct.std::__1::nullptr_t" = type { i8* }
%"class.std::__1::allocator.6" = type { i8 }
%"class.std::__1::allocator.2" = type { i8 }
%"class.std::__1::__deque_base_common" = type { i8 }
%"class.std::__1::__split_buffer_common" = type { i8 }
%"class.std::__1::ctype" = type { %"class.std::__1::locale::facet", i32*, i8 }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::allocator.10" = type { i8 }
%"class.std::__1::__libcpp_compressed_pair_imp.9" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::__compressed_pair.8" = type { %"class.std::__1::__libcpp_compressed_pair_imp.9" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.8" }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.12, [23 x i8] }
%union.anon.12 = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::__has_destroy.13" = type { i8 }
%"struct.std::__1::__has_destroy" = type { i8 }
%"class.std::__1::__deque_iterator" = type { i32**, i32* }
%"struct.std::__1::__split_buffer.14" = type { i32**, i32**, i32**, %"class.std::__1::__compressed_pair.15" }
%"class.std::__1::__compressed_pair.15" = type { %"class.std::__1::__libcpp_compressed_pair_imp.16" }
%"class.std::__1::__libcpp_compressed_pair_imp.16" = type { i32**, %"class.std::__1::allocator.2"* }
%"class.std::__1::move_iterator" = type { i32** }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::integral_constant.17" = type { i8 }
%"struct.std::__1::is_trivially_destructible" = type { i8 }
%"struct.std::__1::__has_destroy.20" = type { i8 }

@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream"
@.str = private unnamed_addr constant [5 x i8] c"INF \00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"Following are longest distances from source vertex \00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id"

; Function Attrs: ssp uwtable
define void @_ZN5GraphC1Ei(%class.Graph* %this, i32 %V) unnamed_addr #0 align 2 {
  %1 = alloca %class.Graph*, align 8
  %2 = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %1, align 8
  store i32 %V, i32* %2, align 4
  %3 = load %class.Graph** %1
  %4 = load i32* %2, align 4
  call void @_ZN5GraphC2Ei(%class.Graph* %3, i32 %4)
  ret void
}

; Function Attrs: ssp uwtable
define void @_ZN5GraphC2Ei(%class.Graph* %this, i32 %V) unnamed_addr #0 align 2 {
  %1 = alloca i64*, align 8
  %2 = alloca %"class.std::__1::allocator"*, align 8
  %3 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %11 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %12 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %13 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %14 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %15 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %16 = alloca %"class.std::__1::__list_imp"*, align 8
  %17 = alloca %"class.std::__1::list"*, align 8
  %18 = alloca %"class.std::__1::list"*, align 8
  %19 = alloca %class.Graph*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*
  %22 = alloca i32
  store %class.Graph* %this, %class.Graph** %19, align 8
  store i32 %V, i32* %20, align 4
  %23 = load %class.Graph** %19
  %24 = load i32* %20, align 4
  %25 = getelementptr inbounds %class.Graph* %23, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32* %20, align 4
  %27 = sext i32 %26 to i64
  %28 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %27, i64 24)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 8)
  %32 = extractvalue { i64, i1 } %31, 1
  %33 = or i1 %29, %32
  %34 = extractvalue { i64, i1 } %31, 0
  %35 = select i1 %33, i64 -1, i64 %34
  %36 = call noalias i8* @_Znam(i64 %35) #9
  %37 = bitcast i8* %36 to i64*
  store i64 %27, i64* %37
  %38 = getelementptr inbounds i8* %36, i64 8
  %39 = bitcast i8* %38 to %"class.std::__1::list"*
  %40 = icmp eq i64 %27, 0
  br i1 %40, label %80, label %41

; <label>:41                                      ; preds = %0
  %42 = getelementptr inbounds %"class.std::__1::list"* %39, i64 %27
  br label %43

; <label>:43                                      ; preds = %77, %41
  %44 = phi %"class.std::__1::list"* [ %39, %41 ], [ %78, %77 ]
  store %"class.std::__1::list"* %44, %"class.std::__1::list"** %18, align 8
  %45 = load %"class.std::__1::list"** %18
  store %"class.std::__1::list"* %45, %"class.std::__1::list"** %17, align 8
  %46 = load %"class.std::__1::list"** %17
  %47 = bitcast %"class.std::__1::list"* %46 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %47, %"class.std::__1::__list_imp"** %16, align 8
  %48 = load %"class.std::__1::__list_imp"** %16
  %49 = getelementptr inbounds %"class.std::__1::__list_imp"* %48, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %49, %"struct.std::__1::__list_node_base"** %15, align 8
  %50 = load %"struct.std::__1::__list_node_base"** %15
  store %"struct.std::__1::__list_node_base"* %50, %"struct.std::__1::__list_node_base"** %14, align 8
  %51 = load %"struct.std::__1::__list_node_base"** %14
  %52 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %51, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %51, %"struct.std::__1::__list_node_base"** %13, align 8
  %53 = load %"struct.std::__1::__list_node_base"** %13, align 8
  store %"struct.std::__1::__list_node_base"* %53, %"struct.std::__1::__list_node_base"** %12, align 8
  %54 = load %"struct.std::__1::__list_node_base"** %12, align 8
  %55 = bitcast %"struct.std::__1::__list_node_base"* %54 to i8*
  %56 = bitcast i8* %55 to %"struct.std::__1::__list_node_base"*
  %57 = bitcast %"struct.std::__1::__list_node_base"* %56 to %"struct.std::__1::__list_node"*
  store %"struct.std::__1::__list_node"* %57, %"struct.std::__1::__list_node"** %52, align 8
  %58 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %51, i32 0, i32 1
  store %"struct.std::__1::__list_node_base"* %51, %"struct.std::__1::__list_node_base"** %11, align 8
  %59 = load %"struct.std::__1::__list_node_base"** %11, align 8
  store %"struct.std::__1::__list_node_base"* %59, %"struct.std::__1::__list_node_base"** %10, align 8
  %60 = load %"struct.std::__1::__list_node_base"** %10, align 8
  %61 = bitcast %"struct.std::__1::__list_node_base"* %60 to i8*
  %62 = bitcast i8* %61 to %"struct.std::__1::__list_node_base"*
  %63 = bitcast %"struct.std::__1::__list_node_base"* %62 to %"struct.std::__1::__list_node"*
  store %"struct.std::__1::__list_node"* %63, %"struct.std::__1::__list_node"** %58, align 8
  %64 = getelementptr inbounds %"class.std::__1::__list_imp"* %48, i32 0, i32 1
  store %"class.std::__1::__compressed_pair"* %64, %"class.std::__1::__compressed_pair"** %8, align 8
  store i64 0, i64* %9, align 8
  %65 = load %"class.std::__1::__compressed_pair"** %8
  %66 = load i64* %9, align 8
  store %"class.std::__1::__compressed_pair"* %65, %"class.std::__1::__compressed_pair"** %6, align 8
  store i64 %66, i64* %7, align 8
  %67 = load %"class.std::__1::__compressed_pair"** %6
  %68 = bitcast %"class.std::__1::__compressed_pair"* %67 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store i64* %7, i64** %5, align 8
  %69 = load i64** %5, align 8
  %70 = load i64* %69
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %68, %"class.std::__1::__libcpp_compressed_pair_imp"** %3, align 8
  store i64 %70, i64* %4, align 8
  %71 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %3
  %72 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %71 to %"class.std::__1::allocator"*
  store %"class.std::__1::allocator"* %72, %"class.std::__1::allocator"** %2, align 8
  %73 = load %"class.std::__1::allocator"** %2
  %74 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %71, i32 0, i32 0
  store i64* %4, i64** %1, align 8
  %75 = load i64** %1, align 8
  %76 = load i64* %75
  store i64 %76, i64* %74, align 8
  br label %77

; <label>:77                                      ; preds = %43
  %78 = getelementptr inbounds %"class.std::__1::list"* %44, i64 1
  %79 = icmp eq %"class.std::__1::list"* %78, %42
  br i1 %79, label %80, label %43

; <label>:80                                      ; preds = %0, %77
  %81 = getelementptr inbounds %class.Graph* %23, i32 0, i32 1
  store %"class.std::__1::list"* %39, %"class.std::__1::list"** %81, align 8
  ret void
                                                  ; No predecessors!
  %83 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %21
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %22
  %86 = icmp eq %"class.std::__1::list"* %39, %44
  br i1 %86, label %92, label %87

; <label>:87                                      ; preds = %90, %82
  %88 = phi %"class.std::__1::list"* [ %44, %82 ], [ %89, %90 ]
  %89 = getelementptr inbounds %"class.std::__1::list"* %88, i64 -1
  invoke void @_ZNSt3__14listI11AdjListNodeNS_9allocatorIS1_EEED1Ev(%"class.std::__1::list"* %89)
          to label %90 unwind label %98

; <label>:90                                      ; preds = %87
  %91 = icmp eq %"class.std::__1::list"* %89, %39
  br i1 %91, label %92, label %87

; <label>:92                                      ; preds = %90, %82
  call void @_ZdaPv(i8* %36) #10
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i8** %21
  %95 = load i32* %22
  %96 = insertvalue { i8*, i32 } undef, i8* %94, 0
  %97 = insertvalue { i8*, i32 } %96, i32 %95, 1
  resume { i8*, i32 } %97

; <label>:98                                      ; preds = %87
  %99 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #11
  unreachable
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__14listI11AdjListNodeNS_9allocatorIS1_EEED1Ev(%"class.std::__1::list"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__1::list"*, align 8
  store %"class.std::__1::list"* %this, %"class.std::__1::list"** %1, align 8
  %2 = load %"class.std::__1::list"** %1
  call void @_ZNSt3__14listI11AdjListNodeNS_9allocatorIS1_EEED2Ev(%"class.std::__1::list"* %2)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #6
  call void @_ZSt9terminatev() #11
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

; Function Attrs: ssp uwtable
define void @_ZN5Graph7addEdgeEiii(%class.Graph* %this, i32 %u, i32 %v, i32 %weight) #0 align 2 {
  %1 = alloca %class.Graph*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %node = alloca %class.AdjListNode, align 4
  store %class.Graph* %this, %class.Graph** %1, align 8
  store i32 %u, i32* %2, align 4
  store i32 %v, i32* %3, align 4
  store i32 %weight, i32* %4, align 4
  %5 = load %class.Graph** %1
  %6 = load i32* %3, align 4
  %7 = load i32* %4, align 4
  call void @_ZN11AdjListNodeC1Eii(%class.AdjListNode* %node, i32 %6, i32 %7)
  %8 = load i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Graph* %5, i32 0, i32 1
  %11 = load %"class.std::__1::list"** %10, align 8
  %12 = getelementptr inbounds %"class.std::__1::list"* %11, i64 %9
  call void @_ZNSt3__14listI11AdjListNodeNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::list"* %12, %class.AdjListNode* %node)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN11AdjListNodeC1Eii(%class.AdjListNode* %this, i32 %_v, i32 %_w) unnamed_addr #0 align 2 {
  %1 = alloca %class.AdjListNode*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %class.AdjListNode* %this, %class.AdjListNode** %1, align 8
  store i32 %_v, i32* %2, align 4
  store i32 %_w, i32* %3, align 4
  %4 = load %class.AdjListNode** %1
  %5 = load i32* %2, align 4
  %6 = load i32* %3, align 4
  call void @_ZN11AdjListNodeC2Eii(%class.AdjListNode* %4, i32 %5, i32 %6)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__14listI11AdjListNodeNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::list"* %this, %class.AdjListNode* %__x) #0 align 2 {
  %1 = alloca %class.AdjListNode*, align 8
  %2 = alloca %"class.std::__1::allocator"*, align 8
  %3 = alloca %class.AdjListNode*, align 8
  %4 = alloca %class.AdjListNode*, align 8
  %5 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %6 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %7 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %8 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %9 = alloca %"class.std::__1::unique_ptr"*, align 8
  %10 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %11 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %12 = alloca %"class.std::__1::unique_ptr"*, align 8
  %13 = alloca %"struct.std::__1::__list_node"*, align 8
  %14 = alloca %"struct.std::__1::__list_node"*, align 8
  %15 = alloca %"struct.std::__1::__list_node"*, align 8
  %16 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %17 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %18 = alloca %"class.std::__1::__list_imp"*, align 8
  %19 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %20 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %23 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.i = alloca %"struct.std::__1::__list_node"*, align 8
  %24 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %25 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %26 = alloca %"class.std::__1::unique_ptr"*, align 8
  %27 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %28 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %29 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %30 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %31 = alloca %"class.std::__1::allocator"*, align 8
  %32 = alloca %"struct.std::__1::__list_node"*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %"class.std::__1::allocator"*, align 8
  %35 = alloca %"struct.std::__1::__list_node"*, align 8
  %36 = alloca i64, align 8
  %37 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %38 = alloca %"struct.std::__1::__list_node"*, align 8
  %39 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %40 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %41 = alloca %"class.std::__1::unique_ptr"*, align 8
  %42 = alloca %"struct.std::__1::__list_node"*, align 8
  %__tmp.i.i.i1 = alloca %"struct.std::__1::__list_node"*, align 8
  %43 = alloca %"class.std::__1::unique_ptr"*, align 8
  %44 = alloca %"class.std::__1::unique_ptr"*, align 8
  %45 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %46 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %47 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %48 = alloca %"struct.std::__1::__list_node"**, align 8
  %49 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %50 = alloca %"struct.std::__1::__list_node"*, align 8
  %__t2.i.i.i.i.i = alloca %"class.std::__1::__allocator_destructor", align 8
  %51 = alloca %"struct.std::__1::__list_node"**, align 8
  %52 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %53 = alloca %"struct.std::__1::__list_node"*, align 8
  %__t2.i.i.i.i = alloca %"class.std::__1::__allocator_destructor", align 8
  %54 = alloca %"class.std::__1::__allocator_destructor", align 8
  %55 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %56 = alloca %"struct.std::__1::__list_node"*, align 8
  %__t2.i.i.i = alloca %"class.std::__1::__allocator_destructor", align 8
  %57 = alloca %"struct.std::__1::__list_node"**, align 8
  %58 = alloca %"class.std::__1::unique_ptr"*, align 8
  %59 = alloca %"struct.std::__1::__list_node"*, align 8
  %__d.i.i = alloca %"class.std::__1::__allocator_destructor", align 8
  %60 = alloca %"class.std::__1::__allocator_destructor", align 8
  %61 = alloca %"class.std::__1::unique_ptr"*, align 8
  %62 = alloca %"struct.std::__1::__list_node"*, align 8
  %__d.i = alloca %"class.std::__1::__allocator_destructor", align 8
  %63 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %64 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %65 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %66 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %67 = alloca %"class.std::__1::allocator"*, align 8
  %68 = alloca %"struct.std::__1::__list_node"*, align 8
  %69 = alloca i64, align 8
  %70 = alloca %"class.std::__1::allocator"*, align 8
  %71 = alloca %"struct.std::__1::__list_node"*, align 8
  %72 = alloca i64, align 8
  %73 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %74 = alloca %"struct.std::__1::__list_node"*, align 8
  %75 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.19"*, align 8
  %76 = alloca %"class.std::__1::__compressed_pair.18"*, align 8
  %77 = alloca %"class.std::__1::unique_ptr"*, align 8
  %78 = alloca %"struct.std::__1::__list_node"*, align 8
  %__tmp.i.i.i = alloca %"struct.std::__1::__list_node"*, align 8
  %79 = alloca %"class.std::__1::unique_ptr"*, align 8
  %80 = alloca %"class.std::__1::unique_ptr"*, align 8
  %81 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %82 = alloca %"class.std::__1::allocator"*, align 8
  %83 = alloca i64, align 8
  %84 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %85 = alloca %"class.std::__1::allocator"*, align 8
  %86 = alloca i64, align 8
  %87 = alloca %"class.std::__1::allocator"*, align 8
  %88 = alloca i64, align 8
  %89 = alloca i8*, align 8
  %90 = alloca %"class.std::__1::allocator"*, align 8
  %91 = alloca i64, align 8
  %92 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %93 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %94 = alloca %"class.std::__1::__list_imp"*, align 8
  %95 = alloca %"class.std::__1::list"*, align 8
  %96 = alloca %class.AdjListNode*, align 8
  %__na = alloca %"class.std::__1::allocator"*, align 8
  %__hold = alloca %"class.std::__1::unique_ptr", align 8
  %97 = alloca %"class.std::__1::__allocator_destructor", align 8
  %98 = alloca i8*
  %99 = alloca i32
  store %"class.std::__1::list"* %this, %"class.std::__1::list"** %95, align 8
  store %class.AdjListNode* %__x, %class.AdjListNode** %96, align 8
  %100 = load %"class.std::__1::list"** %95
  %101 = bitcast %"class.std::__1::list"* %100 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %101, %"class.std::__1::__list_imp"** %94, align 8
  %102 = load %"class.std::__1::__list_imp"** %94
  %103 = getelementptr inbounds %"class.std::__1::__list_imp"* %102, i32 0, i32 1
  store %"class.std::__1::__compressed_pair"* %103, %"class.std::__1::__compressed_pair"** %93, align 8
  %104 = load %"class.std::__1::__compressed_pair"** %93
  %105 = bitcast %"class.std::__1::__compressed_pair"* %104 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %105, %"class.std::__1::__libcpp_compressed_pair_imp"** %92, align 8
  %106 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %92
  %107 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %106 to %"class.std::__1::allocator"*
  store %"class.std::__1::allocator"* %107, %"class.std::__1::allocator"** %__na, align 8
  %108 = load %"class.std::__1::allocator"** %__na, align 8
  store %"class.std::__1::allocator"* %108, %"class.std::__1::allocator"** %90, align 8
  store i64 1, i64* %91, align 8
  %109 = load %"class.std::__1::allocator"** %90, align 8
  %110 = load i64* %91, align 8
  store %"class.std::__1::allocator"* %109, %"class.std::__1::allocator"** %87, align 8
  store i64 %110, i64* %88, align 8
  store i8* null, i8** %89, align 8
  %111 = load %"class.std::__1::allocator"** %87
  %112 = load i64* %88, align 8
  %113 = mul i64 %112, 24
  %114 = call noalias i8* @_Znwm(i64 %113)
  %115 = bitcast i8* %114 to %"struct.std::__1::__list_node"*
  %116 = load %"class.std::__1::allocator"** %__na, align 8
  store %"class.std::__1::__allocator_destructor"* %97, %"class.std::__1::__allocator_destructor"** %84, align 8
  store %"class.std::__1::allocator"* %116, %"class.std::__1::allocator"** %85, align 8
  store i64 1, i64* %86, align 8
  %117 = load %"class.std::__1::__allocator_destructor"** %84
  %118 = load i64* %86, align 8
  %119 = load %"class.std::__1::allocator"** %85
  store %"class.std::__1::__allocator_destructor"* %117, %"class.std::__1::__allocator_destructor"** %81, align 8
  store %"class.std::__1::allocator"* %119, %"class.std::__1::allocator"** %82, align 8
  store i64 %118, i64* %83, align 8
  %120 = load %"class.std::__1::__allocator_destructor"** %81
  %121 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %120, i32 0, i32 0
  %122 = load %"class.std::__1::allocator"** %82, align 8
  store %"class.std::__1::allocator"* %122, %"class.std::__1::allocator"** %121, align 8
  %123 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %120, i32 0, i32 1
  %124 = load i64* %83, align 8
  store i64 %124, i64* %123, align 8
  %125 = bitcast %"class.std::__1::__allocator_destructor"* %97 to { %"class.std::__1::allocator"*, i64 }*
  %126 = getelementptr { %"class.std::__1::allocator"*, i64 }* %125, i32 0, i32 0
  %127 = load %"class.std::__1::allocator"** %126, align 1
  %128 = getelementptr { %"class.std::__1::allocator"*, i64 }* %125, i32 0, i32 1
  %129 = load i64* %128, align 1
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %61, align 8
  store %"struct.std::__1::__list_node"* %115, %"struct.std::__1::__list_node"** %62, align 8
  %130 = bitcast %"class.std::__1::__allocator_destructor"* %__d.i to { %"class.std::__1::allocator"*, i64 }*
  %131 = getelementptr { %"class.std::__1::allocator"*, i64 }* %130, i32 0, i32 0
  store %"class.std::__1::allocator"* %127, %"class.std::__1::allocator"** %131
  %132 = getelementptr { %"class.std::__1::allocator"*, i64 }* %130, i32 0, i32 1
  store i64 %129, i64* %132
  %133 = load %"class.std::__1::unique_ptr"** %61
  %134 = load %"struct.std::__1::__list_node"** %62, align 8
  %135 = bitcast %"class.std::__1::__allocator_destructor"* %__d.i to { %"class.std::__1::allocator"*, i64 }*
  %136 = getelementptr { %"class.std::__1::allocator"*, i64 }* %135, i32 0, i32 0
  %137 = load %"class.std::__1::allocator"** %136, align 1
  %138 = getelementptr { %"class.std::__1::allocator"*, i64 }* %135, i32 0, i32 1
  %139 = load i64* %138, align 1
  store %"class.std::__1::unique_ptr"* %133, %"class.std::__1::unique_ptr"** %58, align 8
  store %"struct.std::__1::__list_node"* %134, %"struct.std::__1::__list_node"** %59, align 8
  %140 = bitcast %"class.std::__1::__allocator_destructor"* %__d.i.i to { %"class.std::__1::allocator"*, i64 }*
  %141 = getelementptr { %"class.std::__1::allocator"*, i64 }* %140, i32 0, i32 0
  store %"class.std::__1::allocator"* %137, %"class.std::__1::allocator"** %141
  %142 = getelementptr { %"class.std::__1::allocator"*, i64 }* %140, i32 0, i32 1
  store i64 %139, i64* %142
  %143 = load %"class.std::__1::unique_ptr"** %58
  %144 = getelementptr inbounds %"class.std::__1::unique_ptr"* %143, i32 0, i32 0
  store %"struct.std::__1::__list_node"** %59, %"struct.std::__1::__list_node"*** %57, align 8
  %145 = load %"struct.std::__1::__list_node"*** %57, align 8
  %146 = load %"struct.std::__1::__list_node"** %145
  store %"class.std::__1::__allocator_destructor"* %__d.i.i, %"class.std::__1::__allocator_destructor"** %45, align 8
  %147 = load %"class.std::__1::__allocator_destructor"** %45, align 8
  %148 = bitcast %"class.std::__1::__allocator_destructor"* %60 to i8*
  %149 = bitcast %"class.std::__1::__allocator_destructor"* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %149, i64 16, i32 8, i1 false)
  %150 = bitcast %"class.std::__1::__allocator_destructor"* %60 to { %"class.std::__1::allocator"*, i64 }*
  %151 = getelementptr { %"class.std::__1::allocator"*, i64 }* %150, i32 0, i32 0
  %152 = load %"class.std::__1::allocator"** %151, align 1
  %153 = getelementptr { %"class.std::__1::allocator"*, i64 }* %150, i32 0, i32 1
  %154 = load i64* %153, align 1
  store %"class.std::__1::__compressed_pair.18"* %144, %"class.std::__1::__compressed_pair.18"** %55, align 8
  store %"struct.std::__1::__list_node"* %146, %"struct.std::__1::__list_node"** %56, align 8
  %155 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %156 = getelementptr { %"class.std::__1::allocator"*, i64 }* %155, i32 0, i32 0
  store %"class.std::__1::allocator"* %152, %"class.std::__1::allocator"** %156
  %157 = getelementptr { %"class.std::__1::allocator"*, i64 }* %155, i32 0, i32 1
  store i64 %154, i64* %157
  %158 = load %"class.std::__1::__compressed_pair.18"** %55
  %159 = load %"struct.std::__1::__list_node"** %56, align 8
  %160 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %161 = getelementptr { %"class.std::__1::allocator"*, i64 }* %160, i32 0, i32 0
  %162 = load %"class.std::__1::allocator"** %161, align 1
  %163 = getelementptr { %"class.std::__1::allocator"*, i64 }* %160, i32 0, i32 1
  %164 = load i64* %163, align 1
  store %"class.std::__1::__compressed_pair.18"* %158, %"class.std::__1::__compressed_pair.18"** %52, align 8
  store %"struct.std::__1::__list_node"* %159, %"struct.std::__1::__list_node"** %53, align 8
  %165 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %166 = getelementptr { %"class.std::__1::allocator"*, i64 }* %165, i32 0, i32 0
  store %"class.std::__1::allocator"* %162, %"class.std::__1::allocator"** %166
  %167 = getelementptr { %"class.std::__1::allocator"*, i64 }* %165, i32 0, i32 1
  store i64 %164, i64* %167
  %168 = load %"class.std::__1::__compressed_pair.18"** %52
  %169 = bitcast %"class.std::__1::__compressed_pair.18"* %168 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"struct.std::__1::__list_node"** %53, %"struct.std::__1::__list_node"*** %51, align 8
  %170 = load %"struct.std::__1::__list_node"*** %51, align 8
  %171 = load %"struct.std::__1::__list_node"** %170
  store %"class.std::__1::__allocator_destructor"* %__t2.i.i.i.i, %"class.std::__1::__allocator_destructor"** %46, align 8
  %172 = load %"class.std::__1::__allocator_destructor"** %46, align 8
  %173 = bitcast %"class.std::__1::__allocator_destructor"* %54 to i8*
  %174 = bitcast %"class.std::__1::__allocator_destructor"* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %174, i64 16, i32 8, i1 false)
  %175 = bitcast %"class.std::__1::__allocator_destructor"* %54 to { %"class.std::__1::allocator"*, i64 }*
  %176 = getelementptr { %"class.std::__1::allocator"*, i64 }* %175, i32 0, i32 0
  %177 = load %"class.std::__1::allocator"** %176, align 1
  %178 = getelementptr { %"class.std::__1::allocator"*, i64 }* %175, i32 0, i32 1
  %179 = load i64* %178, align 1
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %169, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %49, align 8
  store %"struct.std::__1::__list_node"* %171, %"struct.std::__1::__list_node"** %50, align 8
  %180 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %181 = getelementptr { %"class.std::__1::allocator"*, i64 }* %180, i32 0, i32 0
  store %"class.std::__1::allocator"* %177, %"class.std::__1::allocator"** %181
  %182 = getelementptr { %"class.std::__1::allocator"*, i64 }* %180, i32 0, i32 1
  store i64 %179, i64* %182
  %183 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %49
  %184 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %183, i32 0, i32 0
  store %"struct.std::__1::__list_node"** %50, %"struct.std::__1::__list_node"*** %48, align 8
  %185 = load %"struct.std::__1::__list_node"*** %48, align 8
  %186 = load %"struct.std::__1::__list_node"** %185
  store %"struct.std::__1::__list_node"* %186, %"struct.std::__1::__list_node"** %184, align 8
  %187 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %183, i32 0, i32 1
  store %"class.std::__1::__allocator_destructor"* %__t2.i.i.i.i.i, %"class.std::__1::__allocator_destructor"** %47, align 8
  %188 = load %"class.std::__1::__allocator_destructor"** %47, align 8
  %189 = bitcast %"class.std::__1::__allocator_destructor"* %187 to i8*
  %190 = bitcast %"class.std::__1::__allocator_destructor"* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* %190, i64 16, i32 8, i1 false) #6
  %191 = load %"class.std::__1::allocator"** %__na, align 8
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %26, align 8
  %192 = load %"class.std::__1::unique_ptr"** %26
  %193 = getelementptr inbounds %"class.std::__1::unique_ptr"* %192, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %193, %"class.std::__1::__compressed_pair.18"** %25, align 8
  %194 = load %"class.std::__1::__compressed_pair.18"** %25
  %195 = bitcast %"class.std::__1::__compressed_pair.18"* %194 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %195, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %24, align 8
  %196 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %24
  %197 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %196, i32 0, i32 0
  %198 = load %"struct.std::__1::__list_node"** %197
  %199 = getelementptr inbounds %"struct.std::__1::__list_node"* %198, i32 0, i32 1
  store %class.AdjListNode* %199, %class.AdjListNode** %1, align 8
  %200 = load %class.AdjListNode** %1, align 8
  %201 = bitcast %class.AdjListNode* %200 to i8*
  %202 = bitcast i8* %201 to %class.AdjListNode*
  %203 = load %class.AdjListNode** %96, align 8
  store %"class.std::__1::allocator"* %191, %"class.std::__1::allocator"** %2, align 8
  store %class.AdjListNode* %202, %class.AdjListNode** %3, align 8
  store %class.AdjListNode* %203, %class.AdjListNode** %4, align 8
  %204 = load %class.AdjListNode** %3, align 8
  %205 = bitcast %class.AdjListNode* %204 to i8*
  %206 = icmp eq i8* %205, null
  br i1 %206, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeI11AdjListNodePvEEEEE9constructIS3_S3_EEvRS6_PT_RKT0_.exit, label %207

; <label>:207                                     ; preds = %0
  %208 = bitcast i8* %205 to %class.AdjListNode*
  %209 = load %class.AdjListNode** %4, align 8
  %210 = bitcast %class.AdjListNode* %208 to i8*
  %211 = bitcast %class.AdjListNode* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %211, i64 8, i32 4, i1 false) #6
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeI11AdjListNodePvEEEEE9constructIS3_S3_EEvRS6_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeI11AdjListNodePvEEEEE9constructIS3_S3_EEvRS6_PT_RKT0_.exit: ; preds = %0, %207
  %212 = phi %class.AdjListNode* [ %208, %207 ], [ null, %0 ]
  br label %213

; <label>:213                                     ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeI11AdjListNodePvEEEEE9constructIS3_S3_EEvRS6_PT_RKT0_.exit
  %214 = bitcast %"class.std::__1::list"* %100 to %"class.std::__1::__list_imp"*
  %215 = getelementptr inbounds %"class.std::__1::__list_imp"* %214, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %215, %"struct.std::__1::__list_node_base"** %6, align 8
  %216 = load %"struct.std::__1::__list_node_base"** %6, align 8
  store %"struct.std::__1::__list_node_base"* %216, %"struct.std::__1::__list_node_base"** %5, align 8
  %217 = load %"struct.std::__1::__list_node_base"** %5, align 8
  %218 = bitcast %"struct.std::__1::__list_node_base"* %217 to i8*
  %219 = bitcast i8* %218 to %"struct.std::__1::__list_node_base"*
  %220 = bitcast %"struct.std::__1::__list_node_base"* %219 to %"struct.std::__1::__list_node"*
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %9, align 8
  %221 = load %"class.std::__1::unique_ptr"** %9
  %222 = getelementptr inbounds %"class.std::__1::unique_ptr"* %221, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %222, %"class.std::__1::__compressed_pair.18"** %8, align 8
  %223 = load %"class.std::__1::__compressed_pair.18"** %8
  %224 = bitcast %"class.std::__1::__compressed_pair.18"* %223 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %224, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %7, align 8
  %225 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %7
  %226 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %225, i32 0, i32 0
  %227 = load %"struct.std::__1::__list_node"** %226
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %12, align 8
  %228 = load %"class.std::__1::unique_ptr"** %12
  %229 = getelementptr inbounds %"class.std::__1::unique_ptr"* %228, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %229, %"class.std::__1::__compressed_pair.18"** %11, align 8
  %230 = load %"class.std::__1::__compressed_pair.18"** %11
  %231 = bitcast %"class.std::__1::__compressed_pair.18"* %230 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %231, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %10, align 8
  %232 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %10
  %233 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %232, i32 0, i32 0
  %234 = load %"struct.std::__1::__list_node"** %233
  store %"struct.std::__1::__list_node"* %220, %"struct.std::__1::__list_node"** %13, align 8
  store %"struct.std::__1::__list_node"* %227, %"struct.std::__1::__list_node"** %14, align 8
  store %"struct.std::__1::__list_node"* %234, %"struct.std::__1::__list_node"** %15, align 8
  %235 = load %"struct.std::__1::__list_node"** %14, align 8
  %236 = load %"struct.std::__1::__list_node"** %13, align 8
  %237 = bitcast %"struct.std::__1::__list_node"* %236 to %"struct.std::__1::__list_node_base"*
  %238 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %237, i32 0, i32 0
  %239 = load %"struct.std::__1::__list_node"** %238, align 8
  %240 = bitcast %"struct.std::__1::__list_node"* %239 to %"struct.std::__1::__list_node_base"*
  %241 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %240, i32 0, i32 1
  store %"struct.std::__1::__list_node"* %235, %"struct.std::__1::__list_node"** %241, align 8
  %242 = load %"struct.std::__1::__list_node"** %13, align 8
  %243 = bitcast %"struct.std::__1::__list_node"* %242 to %"struct.std::__1::__list_node_base"*
  %244 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %243, i32 0, i32 0
  %245 = load %"struct.std::__1::__list_node"** %244, align 8
  %246 = load %"struct.std::__1::__list_node"** %14, align 8
  %247 = bitcast %"struct.std::__1::__list_node"* %246 to %"struct.std::__1::__list_node_base"*
  %248 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %247, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %245, %"struct.std::__1::__list_node"** %248, align 8
  %249 = load %"struct.std::__1::__list_node"** %15, align 8
  %250 = load %"struct.std::__1::__list_node"** %13, align 8
  %251 = bitcast %"struct.std::__1::__list_node"* %250 to %"struct.std::__1::__list_node_base"*
  %252 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %251, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %249, %"struct.std::__1::__list_node"** %252, align 8
  %253 = load %"struct.std::__1::__list_node"** %13, align 8
  %254 = load %"struct.std::__1::__list_node"** %15, align 8
  %255 = bitcast %"struct.std::__1::__list_node"* %254 to %"struct.std::__1::__list_node_base"*
  %256 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %255, i32 0, i32 1
  store %"struct.std::__1::__list_node"* %253, %"struct.std::__1::__list_node"** %256, align 8
  br label %257

; <label>:257                                     ; preds = %213
  %258 = bitcast %"class.std::__1::list"* %100 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %258, %"class.std::__1::__list_imp"** %18, align 8
  %259 = load %"class.std::__1::__list_imp"** %18
  %260 = getelementptr inbounds %"class.std::__1::__list_imp"* %259, i32 0, i32 1
  store %"class.std::__1::__compressed_pair"* %260, %"class.std::__1::__compressed_pair"** %17, align 8
  %261 = load %"class.std::__1::__compressed_pair"** %17
  %262 = bitcast %"class.std::__1::__compressed_pair"* %261 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %262, %"class.std::__1::__libcpp_compressed_pair_imp"** %16, align 8
  %263 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %16
  %264 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %263, i32 0, i32 0
  %265 = load i64* %264
  %266 = add i64 %265, 1
  store i64 %266, i64* %264
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %23, align 8
  %267 = load %"class.std::__1::unique_ptr"** %23
  %268 = getelementptr inbounds %"class.std::__1::unique_ptr"* %267, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %268, %"class.std::__1::__compressed_pair.18"** %22, align 8
  %269 = load %"class.std::__1::__compressed_pair.18"** %22
  %270 = bitcast %"class.std::__1::__compressed_pair.18"* %269 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %270, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %21, align 8
  %271 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %21
  %272 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %271, i32 0, i32 0
  %273 = load %"struct.std::__1::__list_node"** %272
  store %"struct.std::__1::__list_node"* %273, %"struct.std::__1::__list_node"** %__t.i, align 8
  %274 = getelementptr inbounds %"class.std::__1::unique_ptr"* %267, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %274, %"class.std::__1::__compressed_pair.18"** %20, align 8
  %275 = load %"class.std::__1::__compressed_pair.18"** %20
  %276 = bitcast %"class.std::__1::__compressed_pair.18"* %275 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %276, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %19, align 8
  %277 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %19
  %278 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %277, i32 0, i32 0
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %278
  %279 = load %"struct.std::__1::__list_node"** %__t.i, align 8
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %44, align 8
  %280 = load %"class.std::__1::unique_ptr"** %44
  store %"class.std::__1::unique_ptr"* %280, %"class.std::__1::unique_ptr"** %43, align 8
  %281 = load %"class.std::__1::unique_ptr"** %43
  store %"class.std::__1::unique_ptr"* %281, %"class.std::__1::unique_ptr"** %41, align 8
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %42, align 8
  %282 = load %"class.std::__1::unique_ptr"** %41
  %283 = getelementptr inbounds %"class.std::__1::unique_ptr"* %282, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %283, %"class.std::__1::__compressed_pair.18"** %40, align 8
  %284 = load %"class.std::__1::__compressed_pair.18"** %40
  %285 = bitcast %"class.std::__1::__compressed_pair.18"* %284 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %285, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %39, align 8
  %286 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %39
  %287 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %286, i32 0, i32 0
  %288 = load %"struct.std::__1::__list_node"** %287
  store %"struct.std::__1::__list_node"* %288, %"struct.std::__1::__list_node"** %__tmp.i.i.i1, align 8
  %289 = load %"struct.std::__1::__list_node"** %42, align 8
  %290 = getelementptr inbounds %"class.std::__1::unique_ptr"* %282, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %290, %"class.std::__1::__compressed_pair.18"** %30, align 8
  %291 = load %"class.std::__1::__compressed_pair.18"** %30
  %292 = bitcast %"class.std::__1::__compressed_pair.18"* %291 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %292, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %29, align 8
  %293 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %29
  %294 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %293, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %289, %"struct.std::__1::__list_node"** %294
  %295 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i1, align 8
  %296 = icmp ne %"struct.std::__1::__list_node"* %295, null
  br i1 %296, label %297, label %_ZNSt3__110unique_ptrINS_11__list_nodeI11AdjListNodePvEENS_22__allocator_destructorINS_9allocatorIS4_EEEEED1Ev.exit2

; <label>:297                                     ; preds = %257
  %298 = getelementptr inbounds %"class.std::__1::unique_ptr"* %282, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %298, %"class.std::__1::__compressed_pair.18"** %28, align 8
  %299 = load %"class.std::__1::__compressed_pair.18"** %28
  %300 = bitcast %"class.std::__1::__compressed_pair.18"* %299 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %300, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %27, align 8
  %301 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %27
  %302 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %301, i32 0, i32 1
  %303 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i1, align 8
  store %"class.std::__1::__allocator_destructor"* %302, %"class.std::__1::__allocator_destructor"** %37, align 8
  store %"struct.std::__1::__list_node"* %303, %"struct.std::__1::__list_node"** %38, align 8
  %304 = load %"class.std::__1::__allocator_destructor"** %37
  %305 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %304, i32 0, i32 0
  %306 = load %"class.std::__1::allocator"** %305, align 8
  %307 = load %"struct.std::__1::__list_node"** %38, align 8
  %308 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %304, i32 0, i32 1
  %309 = load i64* %308, align 8
  store %"class.std::__1::allocator"* %306, %"class.std::__1::allocator"** %34, align 8
  store %"struct.std::__1::__list_node"* %307, %"struct.std::__1::__list_node"** %35, align 8
  store i64 %309, i64* %36, align 8
  %310 = load %"class.std::__1::allocator"** %34, align 8
  %311 = load %"struct.std::__1::__list_node"** %35, align 8
  %312 = load i64* %36, align 8
  store %"class.std::__1::allocator"* %310, %"class.std::__1::allocator"** %31, align 8
  store %"struct.std::__1::__list_node"* %311, %"struct.std::__1::__list_node"** %32, align 8
  store i64 %312, i64* %33, align 8
  %313 = load %"class.std::__1::allocator"** %31
  %314 = load %"struct.std::__1::__list_node"** %32, align 8
  %315 = bitcast %"struct.std::__1::__list_node"* %314 to i8*
  call void @_ZdlPv(i8* %315) #6
  br label %_ZNSt3__110unique_ptrINS_11__list_nodeI11AdjListNodePvEENS_22__allocator_destructorINS_9allocatorIS4_EEEEED1Ev.exit2

_ZNSt3__110unique_ptrINS_11__list_nodeI11AdjListNodePvEENS_22__allocator_destructorINS_9allocatorIS4_EEEEED1Ev.exit2: ; preds = %257, %297
  ret void
                                                  ; No predecessors!
  %317 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %318 = extractvalue { i8*, i32 } %317, 0
  store i8* %318, i8** %98
  %319 = extractvalue { i8*, i32 } %317, 1
  store i32 %319, i32* %99
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %80, align 8
  %320 = load %"class.std::__1::unique_ptr"** %80
  store %"class.std::__1::unique_ptr"* %320, %"class.std::__1::unique_ptr"** %79, align 8
  %321 = load %"class.std::__1::unique_ptr"** %79
  store %"class.std::__1::unique_ptr"* %321, %"class.std::__1::unique_ptr"** %77, align 8
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %78, align 8
  %322 = load %"class.std::__1::unique_ptr"** %77
  %323 = getelementptr inbounds %"class.std::__1::unique_ptr"* %322, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %323, %"class.std::__1::__compressed_pair.18"** %76, align 8
  %324 = load %"class.std::__1::__compressed_pair.18"** %76
  %325 = bitcast %"class.std::__1::__compressed_pair.18"* %324 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %325, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %75, align 8
  %326 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %75
  %327 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %326, i32 0, i32 0
  %328 = load %"struct.std::__1::__list_node"** %327
  store %"struct.std::__1::__list_node"* %328, %"struct.std::__1::__list_node"** %__tmp.i.i.i, align 8
  %329 = load %"struct.std::__1::__list_node"** %78, align 8
  %330 = getelementptr inbounds %"class.std::__1::unique_ptr"* %322, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %330, %"class.std::__1::__compressed_pair.18"** %66, align 8
  %331 = load %"class.std::__1::__compressed_pair.18"** %66
  %332 = bitcast %"class.std::__1::__compressed_pair.18"* %331 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %332, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %65, align 8
  %333 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %65
  %334 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %333, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %329, %"struct.std::__1::__list_node"** %334
  %335 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i, align 8
  %336 = icmp ne %"struct.std::__1::__list_node"* %335, null
  br i1 %336, label %337, label %_ZNSt3__110unique_ptrINS_11__list_nodeI11AdjListNodePvEENS_22__allocator_destructorINS_9allocatorIS4_EEEEED1Ev.exit

; <label>:337                                     ; preds = %316
  %338 = getelementptr inbounds %"class.std::__1::unique_ptr"* %322, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.18"* %338, %"class.std::__1::__compressed_pair.18"** %64, align 8
  %339 = load %"class.std::__1::__compressed_pair.18"** %64
  %340 = bitcast %"class.std::__1::__compressed_pair.18"* %339 to %"class.std::__1::__libcpp_compressed_pair_imp.19"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.19"* %340, %"class.std::__1::__libcpp_compressed_pair_imp.19"** %63, align 8
  %341 = load %"class.std::__1::__libcpp_compressed_pair_imp.19"** %63
  %342 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.19"* %341, i32 0, i32 1
  %343 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i, align 8
  store %"class.std::__1::__allocator_destructor"* %342, %"class.std::__1::__allocator_destructor"** %73, align 8
  store %"struct.std::__1::__list_node"* %343, %"struct.std::__1::__list_node"** %74, align 8
  %344 = load %"class.std::__1::__allocator_destructor"** %73
  %345 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %344, i32 0, i32 0
  %346 = load %"class.std::__1::allocator"** %345, align 8
  %347 = load %"struct.std::__1::__list_node"** %74, align 8
  %348 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %344, i32 0, i32 1
  %349 = load i64* %348, align 8
  store %"class.std::__1::allocator"* %346, %"class.std::__1::allocator"** %70, align 8
  store %"struct.std::__1::__list_node"* %347, %"struct.std::__1::__list_node"** %71, align 8
  store i64 %349, i64* %72, align 8
  %350 = load %"class.std::__1::allocator"** %70, align 8
  %351 = load %"struct.std::__1::__list_node"** %71, align 8
  %352 = load i64* %72, align 8
  store %"class.std::__1::allocator"* %350, %"class.std::__1::allocator"** %67, align 8
  store %"struct.std::__1::__list_node"* %351, %"struct.std::__1::__list_node"** %68, align 8
  store i64 %352, i64* %69, align 8
  %353 = load %"class.std::__1::allocator"** %67
  %354 = load %"struct.std::__1::__list_node"** %68, align 8
  %355 = bitcast %"struct.std::__1::__list_node"* %354 to i8*
  call void @_ZdlPv(i8* %355) #6
  br label %_ZNSt3__110unique_ptrINS_11__list_nodeI11AdjListNodePvEENS_22__allocator_destructorINS_9allocatorIS4_EEEEED1Ev.exit

_ZNSt3__110unique_ptrINS_11__list_nodeI11AdjListNodePvEENS_22__allocator_destructorINS_9allocatorIS4_EEEEED1Ev.exit: ; preds = %316, %337
  br label %356

; <label>:356                                     ; preds = %_ZNSt3__110unique_ptrINS_11__list_nodeI11AdjListNodePvEENS_22__allocator_destructorINS_9allocatorIS4_EEEEED1Ev.exit
  br label %357

; <label>:357                                     ; preds = %356
  %358 = load i8** %98
  %359 = load i32* %99
  %360 = insertvalue { i8*, i32 } undef, i8* %358, 0
  %361 = insertvalue { i8*, i32 } %360, i32 %359, 1
  resume { i8*, i32 } %361
                                                  ; No predecessors!
  %363 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %364 = extractvalue { i8*, i32 } %363, 0
  call void @__clang_call_terminate(i8* %364) #11
  unreachable
}

; Function Attrs: ssp uwtable
define void @_ZN5Graph19topologicalSortUtilEiPbRNSt3__15stackIiNS1_5dequeIiNS1_9allocatorIiEEEEEE(%class.Graph* %this, i32 %v, i8* %visited, %"class.std::__1::stack"* %Stack) #0 align 2 {
  %1 = alloca %"class.std::__1::__list_iterator"*, align 8
  %2 = alloca %"class.std::__1::__list_iterator"*, align 8
  %3 = alloca %"class.std::__1::__list_iterator"*, align 8
  %4 = alloca %"class.std::__1::__list_iterator"*, align 8
  %5 = alloca %"class.std::__1::__list_iterator"*, align 8
  %6 = alloca %"class.std::__1::__list_iterator"*, align 8
  %7 = alloca %"struct.std::__1::__list_node"*, align 8
  %8 = alloca %"class.std::__1::__list_iterator"*, align 8
  %9 = alloca %"struct.std::__1::__list_node"*, align 8
  %10 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %11 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %12 = alloca %"class.std::__1::__list_iterator", align 8
  %13 = alloca %"class.std::__1::__list_imp"*, align 8
  %14 = alloca %"class.std::__1::__list_iterator", align 8
  %15 = alloca %"class.std::__1::list"*, align 8
  %16 = alloca %"class.std::__1::stack"*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %"class.std::__1::__list_iterator"*, align 8
  %19 = alloca %"class.std::__1::__list_iterator"*, align 8
  %20 = alloca %"struct.std::__1::__list_node"*, align 8
  %21 = alloca %"class.std::__1::__list_iterator"*, align 8
  %22 = alloca %"struct.std::__1::__list_node"*, align 8
  %23 = alloca %"class.std::__1::__list_iterator", align 8
  %24 = alloca %"class.std::__1::__list_imp"*, align 8
  %25 = alloca %"class.std::__1::__list_iterator", align 8
  %26 = alloca %"class.std::__1::list"*, align 8
  %27 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %28 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %"struct.std::__1::nullptr_t", align 8
  %33 = alloca %"class.std::__1::__list_iterator"*, align 8
  %34 = alloca i8*
  %35 = alloca i32
  %36 = alloca %"struct.std::__1::nullptr_t", align 8
  %37 = alloca %"class.std::__1::__list_iterator"*, align 8
  %38 = alloca %class.Graph*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca %"class.std::__1::stack"*, align 8
  %i = alloca %"class.std::__1::__list_iterator", align 8
  %42 = alloca %"class.std::__1::__list_iterator", align 8
  %43 = alloca %"class.std::__1::__list_iterator", align 8
  %node = alloca %class.AdjListNode, align 4
  store %class.Graph* %this, %class.Graph** %38, align 8
  store i32 %v, i32* %39, align 4
  store i8* %visited, i8** %40, align 8
  store %"class.std::__1::stack"* %Stack, %"class.std::__1::stack"** %41, align 8
  %44 = load %class.Graph** %38
  %45 = load i32* %39, align 4
  %46 = sext i32 %45 to i64
  %47 = load i8** %40, align 8
  %48 = getelementptr inbounds i8* %47, i64 %46
  store i8 1, i8* %48, align 1
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %37, align 8
  %49 = load %"class.std::__1::__list_iterator"** %37
  store %"class.std::__1::__list_iterator"* %49, %"class.std::__1::__list_iterator"** %33, align 8
  %50 = load %"class.std::__1::__list_iterator"** %33
  %51 = getelementptr inbounds %"class.std::__1::__list_iterator"* %50, i32 0, i32 0
  store %"struct.std::__1::nullptr_t"* %32, %"struct.std::__1::nullptr_t"** %30, align 8
  store i64 -1, i64* %31, align 8
  %52 = load %"struct.std::__1::nullptr_t"** %30
  %53 = load i64* %31, align 8
  store %"struct.std::__1::nullptr_t"* %52, %"struct.std::__1::nullptr_t"** %28, align 8
  store i64 %53, i64* %29, align 8
  %54 = load %"struct.std::__1::nullptr_t"** %28
  %55 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %54, i32 0, i32 0
  store i8* null, i8** %55, align 8
  %56 = getelementptr %"struct.std::__1::nullptr_t"* %32, i32 0, i32 0
  %57 = load i8** %56
  %58 = getelementptr %"struct.std::__1::nullptr_t"* %36, i32 0, i32 0
  store i8* %57, i8** %58
  store %"struct.std::__1::nullptr_t"* %36, %"struct.std::__1::nullptr_t"** %27, align 8
  %59 = load %"struct.std::__1::nullptr_t"** %27
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %51, align 8
  %60 = load i32* %39, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %class.Graph* %44, i32 0, i32 1
  %63 = load %"class.std::__1::list"** %62, align 8
  %64 = getelementptr inbounds %"class.std::__1::list"* %63, i64 %61
  store %"class.std::__1::list"* %64, %"class.std::__1::list"** %26, align 8
  %65 = load %"class.std::__1::list"** %26
  %66 = bitcast %"class.std::__1::list"* %65 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %66, %"class.std::__1::__list_imp"** %24, align 8
  %67 = load %"class.std::__1::__list_imp"** %24
  %68 = getelementptr inbounds %"class.std::__1::__list_imp"* %67, i32 0, i32 0
  %69 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %68, i32 0, i32 1
  %70 = load %"struct.std::__1::__list_node"** %69, align 8
  store %"class.std::__1::__list_iterator"* %23, %"class.std::__1::__list_iterator"** %21, align 8
  store %"struct.std::__1::__list_node"* %70, %"struct.std::__1::__list_node"** %22, align 8
  %71 = load %"class.std::__1::__list_iterator"** %21
  %72 = load %"struct.std::__1::__list_node"** %22, align 8
  store %"class.std::__1::__list_iterator"* %71, %"class.std::__1::__list_iterator"** %19, align 8
  store %"struct.std::__1::__list_node"* %72, %"struct.std::__1::__list_node"** %20, align 8
  %73 = load %"class.std::__1::__list_iterator"** %19
  %74 = getelementptr inbounds %"class.std::__1::__list_iterator"* %73, i32 0, i32 0
  %75 = load %"struct.std::__1::__list_node"** %20, align 8
  store %"struct.std::__1::__list_node"* %75, %"struct.std::__1::__list_node"** %74, align 8
  %76 = getelementptr %"class.std::__1::__list_iterator"* %23, i32 0, i32 0
  %77 = load %"struct.std::__1::__list_node"** %76
  %78 = getelementptr %"class.std::__1::__list_iterator"* %25, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %77, %"struct.std::__1::__list_node"** %78
  %79 = getelementptr %"class.std::__1::__list_iterator"* %25, i32 0, i32 0
  %80 = load %"struct.std::__1::__list_node"** %79
  %81 = getelementptr %"class.std::__1::__list_iterator"* %42, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %80, %"struct.std::__1::__list_node"** %81
  %82 = bitcast %"class.std::__1::__list_iterator"* %i to i8*
  %83 = bitcast %"class.std::__1::__list_iterator"* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 8, i32 8, i1 false)
  br label %84

; <label>:84                                      ; preds = %138, %0
  %85 = load i32* %39, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %class.Graph* %44, i32 0, i32 1
  %88 = load %"class.std::__1::list"** %87, align 8
  %89 = getelementptr inbounds %"class.std::__1::list"* %88, i64 %86
  store %"class.std::__1::list"* %89, %"class.std::__1::list"** %15, align 8
  %90 = load %"class.std::__1::list"** %15
  %91 = bitcast %"class.std::__1::list"* %90 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %91, %"class.std::__1::__list_imp"** %13, align 8
  %92 = load %"class.std::__1::__list_imp"** %13
  %93 = getelementptr inbounds %"class.std::__1::__list_imp"* %92, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %93, %"struct.std::__1::__list_node_base"** %11, align 8
  %94 = load %"struct.std::__1::__list_node_base"** %11, align 8
  store %"struct.std::__1::__list_node_base"* %94, %"struct.std::__1::__list_node_base"** %10, align 8
  %95 = load %"struct.std::__1::__list_node_base"** %10, align 8
  %96 = bitcast %"struct.std::__1::__list_node_base"* %95 to i8*
  %97 = bitcast i8* %96 to %"struct.std::__1::__list_node_base"*
  %98 = bitcast %"struct.std::__1::__list_node_base"* %97 to %"struct.std::__1::__list_node"*
  store %"class.std::__1::__list_iterator"* %12, %"class.std::__1::__list_iterator"** %8, align 8
  store %"struct.std::__1::__list_node"* %98, %"struct.std::__1::__list_node"** %9, align 8
  %99 = load %"class.std::__1::__list_iterator"** %8
  %100 = load %"struct.std::__1::__list_node"** %9, align 8
  store %"class.std::__1::__list_iterator"* %99, %"class.std::__1::__list_iterator"** %6, align 8
  store %"struct.std::__1::__list_node"* %100, %"struct.std::__1::__list_node"** %7, align 8
  %101 = load %"class.std::__1::__list_iterator"** %6
  %102 = getelementptr inbounds %"class.std::__1::__list_iterator"* %101, i32 0, i32 0
  %103 = load %"struct.std::__1::__list_node"** %7, align 8
  store %"struct.std::__1::__list_node"* %103, %"struct.std::__1::__list_node"** %102, align 8
  %104 = getelementptr %"class.std::__1::__list_iterator"* %12, i32 0, i32 0
  %105 = load %"struct.std::__1::__list_node"** %104
  %106 = getelementptr %"class.std::__1::__list_iterator"* %14, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %105, %"struct.std::__1::__list_node"** %106
  %107 = getelementptr %"class.std::__1::__list_iterator"* %14, i32 0, i32 0
  %108 = load %"struct.std::__1::__list_node"** %107
  %109 = getelementptr %"class.std::__1::__list_iterator"* %43, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %108, %"struct.std::__1::__list_node"** %109
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %4, align 8
  store %"class.std::__1::__list_iterator"* %43, %"class.std::__1::__list_iterator"** %5, align 8
  %110 = load %"class.std::__1::__list_iterator"** %4, align 8
  %111 = load %"class.std::__1::__list_iterator"** %5, align 8
  store %"class.std::__1::__list_iterator"* %110, %"class.std::__1::__list_iterator"** %2, align 8
  store %"class.std::__1::__list_iterator"* %111, %"class.std::__1::__list_iterator"** %3, align 8
  %112 = load %"class.std::__1::__list_iterator"** %2, align 8
  %113 = getelementptr inbounds %"class.std::__1::__list_iterator"* %112, i32 0, i32 0
  %114 = load %"struct.std::__1::__list_node"** %113, align 8
  %115 = load %"class.std::__1::__list_iterator"** %3, align 8
  %116 = getelementptr inbounds %"class.std::__1::__list_iterator"* %115, i32 0, i32 0
  %117 = load %"struct.std::__1::__list_node"** %116, align 8
  %118 = icmp eq %"struct.std::__1::__list_node"* %114, %117
  %119 = xor i1 %118, true
  br i1 %119, label %120, label %146

; <label>:120                                     ; preds = %84
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %1, align 8
  %121 = load %"class.std::__1::__list_iterator"** %1
  %122 = getelementptr inbounds %"class.std::__1::__list_iterator"* %121, i32 0, i32 0
  %123 = load %"struct.std::__1::__list_node"** %122, align 8
  %124 = getelementptr inbounds %"struct.std::__1::__list_node"* %123, i32 0, i32 1
  %125 = bitcast %class.AdjListNode* %node to i8*
  %126 = bitcast %class.AdjListNode* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 8, i32 4, i1 false)
  %127 = call i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %node)
  %128 = sext i32 %127 to i64
  %129 = load i8** %40, align 8
  %130 = getelementptr inbounds i8* %129, i64 %128
  %131 = load i8* %130, align 1
  %132 = trunc i8 %131 to i1
  br i1 %132, label %137, label %133

; <label>:133                                     ; preds = %120
  %134 = call i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %node)
  %135 = load i8** %40, align 8
  %136 = load %"class.std::__1::stack"** %41, align 8
  call void @_ZN5Graph19topologicalSortUtilEiPbRNSt3__15stackIiNS1_5dequeIiNS1_9allocatorIiEEEEEE(%class.Graph* %44, i32 %134, i8* %135, %"class.std::__1::stack"* %136)
  br label %137

; <label>:137                                     ; preds = %133, %120
  br label %138

; <label>:138                                     ; preds = %137
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %18, align 8
  %139 = load %"class.std::__1::__list_iterator"** %18
  %140 = getelementptr inbounds %"class.std::__1::__list_iterator"* %139, i32 0, i32 0
  %141 = load %"struct.std::__1::__list_node"** %140, align 8
  %142 = bitcast %"struct.std::__1::__list_node"* %141 to %"struct.std::__1::__list_node_base"*
  %143 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %142, i32 0, i32 1
  %144 = load %"struct.std::__1::__list_node"** %143, align 8
  %145 = getelementptr inbounds %"class.std::__1::__list_iterator"* %139, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %144, %"struct.std::__1::__list_node"** %145, align 8
  br label %84

; <label>:146                                     ; preds = %84
  %147 = load %"class.std::__1::stack"** %41, align 8
  store %"class.std::__1::stack"* %147, %"class.std::__1::stack"** %16, align 8
  store i32* %39, i32** %17, align 8
  %148 = load %"class.std::__1::stack"** %16
  %149 = getelementptr inbounds %"class.std::__1::stack"* %148, i32 0, i32 0
  %150 = load i32** %17, align 8
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::deque"* %149, i32* %150)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind ssp uwtable
define linkonce_odr i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %this) #7 align 2 {
  %1 = alloca %class.AdjListNode*, align 8
  store %class.AdjListNode* %this, %class.AdjListNode** %1, align 8
  %2 = load %class.AdjListNode** %1
  %3 = getelementptr inbounds %class.AdjListNode* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  ret i32 %4
}

; Function Attrs: ssp uwtable
define void @_ZN5Graph11longestPathEi(%class.Graph* %this, i32 %s) #0 align 2 {
  %1 = alloca %class.AdjListNode*, align 8
  %2 = alloca %class.AdjListNode*, align 8
  %3 = alloca %"class.std::__1::__list_iterator"*, align 8
  %4 = alloca %class.AdjListNode*, align 8
  %5 = alloca %class.AdjListNode*, align 8
  %6 = alloca %"class.std::__1::__list_iterator"*, align 8
  %7 = alloca %class.AdjListNode*, align 8
  %8 = alloca %class.AdjListNode*, align 8
  %9 = alloca %"class.std::__1::__list_iterator"*, align 8
  %10 = alloca %"class.std::__1::__list_iterator"*, align 8
  %11 = alloca %"class.std::__1::__list_iterator"*, align 8
  %12 = alloca %"class.std::__1::__list_iterator"*, align 8
  %13 = alloca %"class.std::__1::__list_iterator"*, align 8
  %14 = alloca %class.AdjListNode*, align 8
  %15 = alloca %class.AdjListNode*, align 8
  %16 = alloca %"class.std::__1::__list_iterator"*, align 8
  %17 = alloca %"class.std::__1::__list_iterator"*, align 8
  %18 = alloca %"struct.std::__1::__list_node"*, align 8
  %19 = alloca %"class.std::__1::__list_iterator"*, align 8
  %20 = alloca %"struct.std::__1::__list_node"*, align 8
  %21 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %22 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %23 = alloca %"class.std::__1::__list_iterator", align 8
  %24 = alloca %"class.std::__1::__list_imp"*, align 8
  %25 = alloca %"class.std::__1::__list_iterator", align 8
  %26 = alloca %"class.std::__1::list"*, align 8
  %27 = alloca %"class.std::__1::__list_iterator"*, align 8
  %28 = alloca %"class.std::__1::__list_iterator"*, align 8
  %29 = alloca %"struct.std::__1::__list_node"*, align 8
  %30 = alloca %"class.std::__1::__list_iterator"*, align 8
  %31 = alloca %"struct.std::__1::__list_node"*, align 8
  %32 = alloca %"class.std::__1::__list_iterator", align 8
  %33 = alloca %"class.std::__1::__list_imp"*, align 8
  %34 = alloca %"class.std::__1::__list_iterator", align 8
  %35 = alloca %"class.std::__1::list"*, align 8
  %36 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %37 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %38 = alloca i64, align 8
  %39 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %40 = alloca i64, align 8
  %41 = alloca %"struct.std::__1::nullptr_t", align 8
  %42 = alloca %"class.std::__1::__list_iterator"*, align 8
  %43 = alloca i8*
  %44 = alloca i32
  %45 = alloca %"struct.std::__1::nullptr_t", align 8
  %46 = alloca %"class.std::__1::__list_iterator"*, align 8
  %47 = alloca %"class.std::__1::stack"*, align 8
  %48 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %49 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %50 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %51 = alloca %"class.std::__1::__deque_base"*, align 8
  %52 = alloca %"class.std::__1::deque"*, align 8
  %__p.i.i = alloca i64, align 8
  %53 = alloca %"class.std::__1::stack"*, align 8
  %54 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %55 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %56 = alloca %"class.std::__1::__deque_base"*, align 8
  %57 = alloca %"class.std::__1::deque"*, align 8
  %58 = alloca %"class.std::__1::stack"*, align 8
  %59 = alloca i64*, align 8
  %60 = alloca %"class.std::__1::allocator.6"*, align 8
  %61 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64*, align 8
  %64 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %65 = alloca i64, align 8
  %66 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %67 = alloca i64, align 8
  %68 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %69 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %70 = alloca i64, align 8
  %71 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %72 = alloca i64, align 8
  %73 = alloca %"struct.std::__1::nullptr_t", align 8
  %74 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %75 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %76 = alloca i64, align 8
  %77 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %78 = alloca i64, align 8
  %79 = alloca %"struct.std::__1::nullptr_t", align 8
  %80 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %81 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %82 = alloca i64, align 8
  %83 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %84 = alloca i64, align 8
  %85 = alloca %"struct.std::__1::nullptr_t", align 8
  %86 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %87 = alloca i32***, align 8
  %88 = alloca %"class.std::__1::allocator.2"*, align 8
  %89 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %90 = alloca i32**, align 8
  %91 = alloca i32***, align 8
  %92 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %93 = alloca i32**, align 8
  %94 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %95 = alloca i32**, align 8
  %96 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %97 = alloca i64, align 8
  %98 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %99 = alloca i64, align 8
  %100 = alloca %"struct.std::__1::nullptr_t", align 8
  %101 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %102 = alloca %"struct.std::__1::nullptr_t", align 8
  %103 = alloca %"struct.std::__1::nullptr_t", align 8
  %104 = alloca %"struct.std::__1::nullptr_t", align 8
  %105 = alloca %"struct.std::__1::nullptr_t", align 8
  %106 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %107 = alloca %"class.std::__1::__deque_base"*, align 8
  %108 = alloca i8*
  %109 = alloca i32
  %110 = alloca %"class.std::__1::deque"*, align 8
  %111 = alloca %"class.std::__1::deque"*, align 8
  %112 = alloca %"class.std::__1::stack"*, align 8
  %113 = alloca %"class.std::__1::stack"*, align 8
  %114 = alloca %class.Graph*, align 8
  %115 = alloca i32, align 4
  %Stack = alloca %"class.std::__1::stack", align 8
  %116 = alloca i8*
  %visited = alloca i8*, align 8
  %117 = alloca i8*
  %118 = alloca i32
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %u = alloca i32, align 4
  %i3 = alloca %"class.std::__1::__list_iterator", align 8
  %119 = alloca %"class.std::__1::__list_iterator", align 8
  %120 = alloca %"class.std::__1::__list_iterator", align 8
  %i4 = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %114, align 8
  store i32 %s, i32* %115, align 4
  %121 = load %class.Graph** %114
  store %"class.std::__1::stack"* %Stack, %"class.std::__1::stack"** %113, align 8
  %122 = load %"class.std::__1::stack"** %113
  store %"class.std::__1::stack"* %122, %"class.std::__1::stack"** %112, align 8
  %123 = load %"class.std::__1::stack"** %112
  %124 = getelementptr inbounds %"class.std::__1::stack"* %123, i32 0, i32 0
  store %"class.std::__1::deque"* %124, %"class.std::__1::deque"** %111, align 8
  %125 = load %"class.std::__1::deque"** %111
  store %"class.std::__1::deque"* %125, %"class.std::__1::deque"** %110, align 8
  %126 = load %"class.std::__1::deque"** %110
  %127 = bitcast %"class.std::__1::deque"* %126 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %127, %"class.std::__1::__deque_base"** %107, align 8
  %128 = load %"class.std::__1::__deque_base"** %107
  %129 = bitcast %"class.std::__1::__deque_base"* %128 to %"class.std::__1::__deque_base_common"*
  %130 = getelementptr inbounds %"class.std::__1::__deque_base"* %128, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %130, %"struct.std::__1::__split_buffer"** %106, align 8
  %131 = load %"struct.std::__1::__split_buffer"** %106
  store %"struct.std::__1::__split_buffer"* %131, %"struct.std::__1::__split_buffer"** %101, align 8
  %132 = load %"struct.std::__1::__split_buffer"** %101
  %133 = bitcast %"struct.std::__1::__split_buffer"* %132 to %"class.std::__1::__split_buffer_common"*
  %134 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %132, i32 0, i32 0
  store %"struct.std::__1::nullptr_t"* %100, %"struct.std::__1::nullptr_t"** %98, align 8
  store i64 -1, i64* %99, align 8
  %135 = load %"struct.std::__1::nullptr_t"** %98
  %136 = load i64* %99, align 8
  store %"struct.std::__1::nullptr_t"* %135, %"struct.std::__1::nullptr_t"** %96, align 8
  store i64 %136, i64* %97, align 8
  %137 = load %"struct.std::__1::nullptr_t"** %96
  %138 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %137, i32 0, i32 0
  store i8* null, i8** %138, align 8
  %139 = getelementptr %"struct.std::__1::nullptr_t"* %100, i32 0, i32 0
  %140 = load i8** %139
  %141 = getelementptr %"struct.std::__1::nullptr_t"* %102, i32 0, i32 0
  store i8* %140, i8** %141
  store %"struct.std::__1::nullptr_t"* %102, %"struct.std::__1::nullptr_t"** %68, align 8
  %142 = load %"struct.std::__1::nullptr_t"** %68
  store i32** null, i32*** %134, align 8
  %143 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %132, i32 0, i32 1
  store %"struct.std::__1::nullptr_t"* %73, %"struct.std::__1::nullptr_t"** %71, align 8
  store i64 -1, i64* %72, align 8
  %144 = load %"struct.std::__1::nullptr_t"** %71
  %145 = load i64* %72, align 8
  store %"struct.std::__1::nullptr_t"* %144, %"struct.std::__1::nullptr_t"** %69, align 8
  store i64 %145, i64* %70, align 8
  %146 = load %"struct.std::__1::nullptr_t"** %69
  %147 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %146, i32 0, i32 0
  store i8* null, i8** %147, align 8
  %148 = getelementptr %"struct.std::__1::nullptr_t"* %73, i32 0, i32 0
  %149 = load i8** %148
  %150 = getelementptr %"struct.std::__1::nullptr_t"* %103, i32 0, i32 0
  store i8* %149, i8** %150
  store %"struct.std::__1::nullptr_t"* %103, %"struct.std::__1::nullptr_t"** %74, align 8
  %151 = load %"struct.std::__1::nullptr_t"** %74
  store i32** null, i32*** %143, align 8
  %152 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %132, i32 0, i32 2
  store %"struct.std::__1::nullptr_t"* %79, %"struct.std::__1::nullptr_t"** %77, align 8
  store i64 -1, i64* %78, align 8
  %153 = load %"struct.std::__1::nullptr_t"** %77
  %154 = load i64* %78, align 8
  store %"struct.std::__1::nullptr_t"* %153, %"struct.std::__1::nullptr_t"** %75, align 8
  store i64 %154, i64* %76, align 8
  %155 = load %"struct.std::__1::nullptr_t"** %75
  %156 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %155, i32 0, i32 0
  store i8* null, i8** %156, align 8
  %157 = getelementptr %"struct.std::__1::nullptr_t"* %79, i32 0, i32 0
  %158 = load i8** %157
  %159 = getelementptr %"struct.std::__1::nullptr_t"* %104, i32 0, i32 0
  store i8* %158, i8** %159
  store %"struct.std::__1::nullptr_t"* %104, %"struct.std::__1::nullptr_t"** %80, align 8
  %160 = load %"struct.std::__1::nullptr_t"** %80
  store i32** null, i32*** %152, align 8
  %161 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %132, i32 0, i32 3
  store %"struct.std::__1::nullptr_t"* %85, %"struct.std::__1::nullptr_t"** %83, align 8
  store i64 -1, i64* %84, align 8
  %162 = load %"struct.std::__1::nullptr_t"** %83
  %163 = load i64* %84, align 8
  store %"struct.std::__1::nullptr_t"* %162, %"struct.std::__1::nullptr_t"** %81, align 8
  store i64 %163, i64* %82, align 8
  %164 = load %"struct.std::__1::nullptr_t"** %81
  %165 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %164, i32 0, i32 0
  store i8* null, i8** %165, align 8
  %166 = getelementptr %"struct.std::__1::nullptr_t"* %85, i32 0, i32 0
  %167 = load i8** %166
  %168 = getelementptr %"struct.std::__1::nullptr_t"* %105, i32 0, i32 0
  store i8* %167, i8** %168
  store %"struct.std::__1::nullptr_t"* %105, %"struct.std::__1::nullptr_t"** %86, align 8
  %169 = load %"struct.std::__1::nullptr_t"** %86
  store %"class.std::__1::__compressed_pair.0"* %161, %"class.std::__1::__compressed_pair.0"** %94, align 8
  store i32** null, i32*** %95, align 8
  %170 = load %"class.std::__1::__compressed_pair.0"** %94
  %171 = load i32*** %95, align 8
  store %"class.std::__1::__compressed_pair.0"* %170, %"class.std::__1::__compressed_pair.0"** %92, align 8
  store i32** %171, i32*** %93, align 8
  %172 = load %"class.std::__1::__compressed_pair.0"** %92
  %173 = bitcast %"class.std::__1::__compressed_pair.0"* %172 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store i32*** %93, i32**** %91, align 8
  %174 = load i32**** %91, align 8
  %175 = load i32*** %174
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %173, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %89, align 8
  store i32** %175, i32*** %90, align 8
  %176 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %89
  %177 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %176 to %"class.std::__1::allocator.2"*
  store %"class.std::__1::allocator.2"* %177, %"class.std::__1::allocator.2"** %88, align 8
  %178 = load %"class.std::__1::allocator.2"** %88
  %179 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %176, i32 0, i32 0
  store i32*** %90, i32**** %87, align 8
  %180 = load i32**** %87, align 8
  %181 = load i32*** %180
  store i32** %181, i32*** %179, align 8
  %182 = getelementptr inbounds %"class.std::__1::__deque_base"* %128, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = getelementptr inbounds %"class.std::__1::__deque_base"* %128, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %183, %"class.std::__1::__compressed_pair.4"** %66, align 8
  store i64 0, i64* %67, align 8
  %184 = load %"class.std::__1::__compressed_pair.4"** %66
  %185 = load i64* %67, align 8
  store %"class.std::__1::__compressed_pair.4"* %184, %"class.std::__1::__compressed_pair.4"** %64, align 8
  store i64 %185, i64* %65, align 8
  %186 = load %"class.std::__1::__compressed_pair.4"** %64
  %187 = bitcast %"class.std::__1::__compressed_pair.4"* %186 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store i64* %65, i64** %63, align 8
  %188 = load i64** %63, align 8
  %189 = load i64* %188
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %187, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %61, align 8
  store i64 %189, i64* %62, align 8
  %190 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %61
  %191 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.5"* %190 to %"class.std::__1::allocator.6"*
  store %"class.std::__1::allocator.6"* %191, %"class.std::__1::allocator.6"** %60, align 8
  %192 = load %"class.std::__1::allocator.6"** %60
  %193 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %190, i32 0, i32 0
  store i64* %62, i64** %59, align 8
  %194 = load i64** %59, align 8
  %195 = load i64* %194
  store i64 %195, i64* %193, align 8
  %196 = getelementptr inbounds %class.Graph* %121, i32 0, i32 0
  %197 = load i32* %196, align 4
  %198 = zext i32 %197 to i64
  %199 = call i8* @llvm.stacksave()
  store i8* %199, i8** %116
  %200 = alloca i32, i64 %198, align 16
  %201 = getelementptr inbounds %class.Graph* %121, i32 0, i32 0
  %202 = load i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp slt i64 %203, 0
  %205 = select i1 %204, i64 -1, i64 %203
  %206 = invoke noalias i8* @_Znam(i64 %205) #9
          to label %207 unwind label %221

; <label>:207                                     ; preds = %0
  store i8* %206, i8** %visited, align 8
  store i32 0, i32* %i, align 4
  br label %208

; <label>:208                                     ; preds = %218, %207
  %209 = load i32* %i, align 4
  %210 = getelementptr inbounds %class.Graph* %121, i32 0, i32 0
  %211 = load i32* %210, align 4
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %225

; <label>:213                                     ; preds = %208
  %214 = load i32* %i, align 4
  %215 = sext i32 %214 to i64
  %216 = load i8** %visited, align 8
  %217 = getelementptr inbounds i8* %216, i64 %215
  store i8 0, i8* %217, align 1
  br label %218

; <label>:218                                     ; preds = %213
  %219 = load i32* %i, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %i, align 4
  br label %208

; <label>:221                                     ; preds = %310, %488, %482, %479, %450, %438, %420, %402, %240, %0
  %222 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %223 = extractvalue { i8*, i32 } %222, 0
  store i8* %223, i8** %117
  %224 = extractvalue { i8*, i32 } %222, 1
  store i32 %224, i32* %118
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(%"class.std::__1::stack"* %Stack)
          to label %498 unwind label %504

; <label>:225                                     ; preds = %208
  store i32 0, i32* %i1, align 4
  br label %226

; <label>:226                                     ; preds = %245, %225
  %227 = load i32* %i1, align 4
  %228 = getelementptr inbounds %class.Graph* %121, i32 0, i32 0
  %229 = load i32* %228, align 4
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %231, label %248

; <label>:231                                     ; preds = %226
  %232 = load i32* %i1, align 4
  %233 = sext i32 %232 to i64
  %234 = load i8** %visited, align 8
  %235 = getelementptr inbounds i8* %234, i64 %233
  %236 = load i8* %235, align 1
  %237 = trunc i8 %236 to i1
  %238 = zext i1 %237 to i32
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

; <label>:240                                     ; preds = %231
  %241 = load i32* %i1, align 4
  %242 = load i8** %visited, align 8
  invoke void @_ZN5Graph19topologicalSortUtilEiPbRNSt3__15stackIiNS1_5dequeIiNS1_9allocatorIiEEEEEE(%class.Graph* %121, i32 %241, i8* %242, %"class.std::__1::stack"* %Stack)
          to label %243 unwind label %221

; <label>:243                                     ; preds = %240
  br label %244

; <label>:244                                     ; preds = %243, %231
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32* %i1, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %i1, align 4
  br label %226

; <label>:248                                     ; preds = %226
  store i32 0, i32* %i2, align 4
  br label %249

; <label>:249                                     ; preds = %258, %248
  %250 = load i32* %i2, align 4
  %251 = getelementptr inbounds %class.Graph* %121, i32 0, i32 0
  %252 = load i32* %251, align 4
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %261

; <label>:254                                     ; preds = %249
  %255 = load i32* %i2, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32* %200, i64 %256
  store i32 -2147483648, i32* %257, align 4
  br label %258

; <label>:258                                     ; preds = %254
  %259 = load i32* %i2, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %i2, align 4
  br label %249

; <label>:261                                     ; preds = %249
  %262 = load i32* %115, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32* %200, i64 %263
  store i32 0, i32* %264, align 4
  br label %265

; <label>:265                                     ; preds = %466, %261
  store %"class.std::__1::stack"* %Stack, %"class.std::__1::stack"** %58, align 8
  %266 = load %"class.std::__1::stack"** %58
  %267 = getelementptr inbounds %"class.std::__1::stack"* %266, i32 0, i32 0
  store %"class.std::__1::deque"* %267, %"class.std::__1::deque"** %57, align 8
  %268 = load %"class.std::__1::deque"** %57
  %269 = bitcast %"class.std::__1::deque"* %268 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %269, %"class.std::__1::__deque_base"** %56, align 8
  %270 = load %"class.std::__1::__deque_base"** %56
  %271 = getelementptr inbounds %"class.std::__1::__deque_base"* %270, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %271, %"class.std::__1::__compressed_pair.4"** %55, align 8
  %272 = load %"class.std::__1::__compressed_pair.4"** %55
  %273 = bitcast %"class.std::__1::__compressed_pair.4"* %272 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %273, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %54, align 8
  %274 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %54
  %275 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %274, i32 0, i32 0
  %276 = load i64* %275
  %277 = icmp eq i64 %276, 0
  br label %278

; <label>:278                                     ; preds = %265
  %279 = zext i1 %277 to i32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %467

; <label>:281                                     ; preds = %278
  store %"class.std::__1::stack"* %Stack, %"class.std::__1::stack"** %53, align 8
  %282 = load %"class.std::__1::stack"** %53
  %283 = getelementptr inbounds %"class.std::__1::stack"* %282, i32 0, i32 0
  store %"class.std::__1::deque"* %283, %"class.std::__1::deque"** %52, align 8
  %284 = load %"class.std::__1::deque"** %52
  %285 = bitcast %"class.std::__1::deque"* %284 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %285, %"class.std::__1::__deque_base"** %51, align 8
  %286 = load %"class.std::__1::__deque_base"** %51
  %287 = getelementptr inbounds %"class.std::__1::__deque_base"* %286, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %287, %"class.std::__1::__compressed_pair.4"** %50, align 8
  %288 = load %"class.std::__1::__compressed_pair.4"** %50
  %289 = bitcast %"class.std::__1::__compressed_pair.4"* %288 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %289, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %49, align 8
  %290 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %49
  %291 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %290, i32 0, i32 0
  %292 = load i64* %291
  %293 = bitcast %"class.std::__1::deque"* %284 to %"class.std::__1::__deque_base"*
  %294 = getelementptr inbounds %"class.std::__1::__deque_base"* %293, i32 0, i32 1
  %295 = load i64* %294, align 8
  %296 = add i64 %292, %295
  %297 = sub i64 %296, 1
  store i64 %297, i64* %__p.i.i, align 8
  %298 = bitcast %"class.std::__1::deque"* %284 to %"class.std::__1::__deque_base"*
  %299 = getelementptr inbounds %"class.std::__1::__deque_base"* %298, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %299, %"struct.std::__1::__split_buffer"** %48, align 8
  %300 = load %"struct.std::__1::__split_buffer"** %48
  %301 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %300, i32 0, i32 1
  %302 = load i32*** %301, align 8
  %303 = load i64* %__p.i.i, align 8
  %304 = udiv i64 %303, 1024
  %305 = getelementptr inbounds i32** %302, i64 %304
  %306 = load i32** %305, align 8
  %307 = load i64* %__p.i.i, align 8
  %308 = urem i64 %307, 1024
  %309 = getelementptr inbounds i32* %306, i64 %308
  br label %310

; <label>:310                                     ; preds = %281
  %311 = load i32* %309
  store i32 %311, i32* %u, align 4
  store %"class.std::__1::stack"* %Stack, %"class.std::__1::stack"** %47, align 8
  %312 = load %"class.std::__1::stack"** %47
  %313 = getelementptr inbounds %"class.std::__1::stack"* %312, i32 0, i32 0
  invoke void @_ZNSt3__15dequeIiNS_9allocatorIiEEE8pop_backEv(%"class.std::__1::deque"* %313)
          to label %_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popEv.exit unwind label %221

_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popEv.exit: ; preds = %310
  br label %314

; <label>:314                                     ; preds = %_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popEv.exit
  store %"class.std::__1::__list_iterator"* %i3, %"class.std::__1::__list_iterator"** %46, align 8
  %315 = load %"class.std::__1::__list_iterator"** %46
  store %"class.std::__1::__list_iterator"* %315, %"class.std::__1::__list_iterator"** %42, align 8
  %316 = load %"class.std::__1::__list_iterator"** %42
  %317 = getelementptr inbounds %"class.std::__1::__list_iterator"* %316, i32 0, i32 0
  store %"struct.std::__1::nullptr_t"* %41, %"struct.std::__1::nullptr_t"** %39, align 8
  store i64 -1, i64* %40, align 8
  %318 = load %"struct.std::__1::nullptr_t"** %39
  %319 = load i64* %40, align 8
  store %"struct.std::__1::nullptr_t"* %318, %"struct.std::__1::nullptr_t"** %37, align 8
  store i64 %319, i64* %38, align 8
  %320 = load %"struct.std::__1::nullptr_t"** %37
  %321 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %320, i32 0, i32 0
  store i8* null, i8** %321, align 8
  %322 = getelementptr %"struct.std::__1::nullptr_t"* %41, i32 0, i32 0
  %323 = load i8** %322
  %324 = getelementptr %"struct.std::__1::nullptr_t"* %45, i32 0, i32 0
  store i8* %323, i8** %324
  store %"struct.std::__1::nullptr_t"* %45, %"struct.std::__1::nullptr_t"** %36, align 8
  %325 = load %"struct.std::__1::nullptr_t"** %36
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %317, align 8
  %326 = load i32* %u, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32* %200, i64 %327
  %329 = load i32* %328, align 4
  %330 = icmp ne i32 %329, -2147483648
  br i1 %330, label %331, label %466

; <label>:331                                     ; preds = %314
  %332 = load i32* %u, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %class.Graph* %121, i32 0, i32 1
  %335 = load %"class.std::__1::list"** %334, align 8
  %336 = getelementptr inbounds %"class.std::__1::list"* %335, i64 %333
  store %"class.std::__1::list"* %336, %"class.std::__1::list"** %35, align 8
  %337 = load %"class.std::__1::list"** %35
  %338 = bitcast %"class.std::__1::list"* %337 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %338, %"class.std::__1::__list_imp"** %33, align 8
  %339 = load %"class.std::__1::__list_imp"** %33
  %340 = getelementptr inbounds %"class.std::__1::__list_imp"* %339, i32 0, i32 0
  %341 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %340, i32 0, i32 1
  %342 = load %"struct.std::__1::__list_node"** %341, align 8
  store %"class.std::__1::__list_iterator"* %32, %"class.std::__1::__list_iterator"** %30, align 8
  store %"struct.std::__1::__list_node"* %342, %"struct.std::__1::__list_node"** %31, align 8
  %343 = load %"class.std::__1::__list_iterator"** %30
  %344 = load %"struct.std::__1::__list_node"** %31, align 8
  store %"class.std::__1::__list_iterator"* %343, %"class.std::__1::__list_iterator"** %28, align 8
  store %"struct.std::__1::__list_node"* %344, %"struct.std::__1::__list_node"** %29, align 8
  %345 = load %"class.std::__1::__list_iterator"** %28
  %346 = getelementptr inbounds %"class.std::__1::__list_iterator"* %345, i32 0, i32 0
  %347 = load %"struct.std::__1::__list_node"** %29, align 8
  store %"struct.std::__1::__list_node"* %347, %"struct.std::__1::__list_node"** %346, align 8
  %348 = getelementptr %"class.std::__1::__list_iterator"* %32, i32 0, i32 0
  %349 = load %"struct.std::__1::__list_node"** %348
  %350 = getelementptr %"class.std::__1::__list_iterator"* %34, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %349, %"struct.std::__1::__list_node"** %350
  %351 = getelementptr %"class.std::__1::__list_iterator"* %34, i32 0, i32 0
  %352 = load %"struct.std::__1::__list_node"** %351
  %353 = getelementptr %"class.std::__1::__list_iterator"* %119, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %352, %"struct.std::__1::__list_node"** %353
  %354 = bitcast %"class.std::__1::__list_iterator"* %i3 to i8*
  %355 = bitcast %"class.std::__1::__list_iterator"* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %354, i8* %355, i64 8, i32 8, i1 false)
  br label %356

; <label>:356                                     ; preds = %464, %331
  %357 = load i32* %u, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %class.Graph* %121, i32 0, i32 1
  %360 = load %"class.std::__1::list"** %359, align 8
  %361 = getelementptr inbounds %"class.std::__1::list"* %360, i64 %358
  store %"class.std::__1::list"* %361, %"class.std::__1::list"** %26, align 8
  %362 = load %"class.std::__1::list"** %26
  %363 = bitcast %"class.std::__1::list"* %362 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %363, %"class.std::__1::__list_imp"** %24, align 8
  %364 = load %"class.std::__1::__list_imp"** %24
  %365 = getelementptr inbounds %"class.std::__1::__list_imp"* %364, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %365, %"struct.std::__1::__list_node_base"** %22, align 8
  %366 = load %"struct.std::__1::__list_node_base"** %22, align 8
  store %"struct.std::__1::__list_node_base"* %366, %"struct.std::__1::__list_node_base"** %21, align 8
  %367 = load %"struct.std::__1::__list_node_base"** %21, align 8
  %368 = bitcast %"struct.std::__1::__list_node_base"* %367 to i8*
  %369 = bitcast i8* %368 to %"struct.std::__1::__list_node_base"*
  %370 = bitcast %"struct.std::__1::__list_node_base"* %369 to %"struct.std::__1::__list_node"*
  store %"class.std::__1::__list_iterator"* %23, %"class.std::__1::__list_iterator"** %19, align 8
  store %"struct.std::__1::__list_node"* %370, %"struct.std::__1::__list_node"** %20, align 8
  %371 = load %"class.std::__1::__list_iterator"** %19
  %372 = load %"struct.std::__1::__list_node"** %20, align 8
  store %"class.std::__1::__list_iterator"* %371, %"class.std::__1::__list_iterator"** %17, align 8
  store %"struct.std::__1::__list_node"* %372, %"struct.std::__1::__list_node"** %18, align 8
  %373 = load %"class.std::__1::__list_iterator"** %17
  %374 = getelementptr inbounds %"class.std::__1::__list_iterator"* %373, i32 0, i32 0
  %375 = load %"struct.std::__1::__list_node"** %18, align 8
  store %"struct.std::__1::__list_node"* %375, %"struct.std::__1::__list_node"** %374, align 8
  %376 = getelementptr %"class.std::__1::__list_iterator"* %23, i32 0, i32 0
  %377 = load %"struct.std::__1::__list_node"** %376
  %378 = getelementptr %"class.std::__1::__list_iterator"* %25, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %377, %"struct.std::__1::__list_node"** %378
  %379 = getelementptr %"class.std::__1::__list_iterator"* %25, i32 0, i32 0
  %380 = load %"struct.std::__1::__list_node"** %379
  %381 = getelementptr %"class.std::__1::__list_iterator"* %120, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %380, %"struct.std::__1::__list_node"** %381
  store %"class.std::__1::__list_iterator"* %i3, %"class.std::__1::__list_iterator"** %12, align 8
  store %"class.std::__1::__list_iterator"* %120, %"class.std::__1::__list_iterator"** %13, align 8
  %382 = load %"class.std::__1::__list_iterator"** %12, align 8
  %383 = load %"class.std::__1::__list_iterator"** %13, align 8
  store %"class.std::__1::__list_iterator"* %382, %"class.std::__1::__list_iterator"** %10, align 8
  store %"class.std::__1::__list_iterator"* %383, %"class.std::__1::__list_iterator"** %11, align 8
  %384 = load %"class.std::__1::__list_iterator"** %10, align 8
  %385 = getelementptr inbounds %"class.std::__1::__list_iterator"* %384, i32 0, i32 0
  %386 = load %"struct.std::__1::__list_node"** %385, align 8
  %387 = load %"class.std::__1::__list_iterator"** %11, align 8
  %388 = getelementptr inbounds %"class.std::__1::__list_iterator"* %387, i32 0, i32 0
  %389 = load %"struct.std::__1::__list_node"** %388, align 8
  %390 = icmp eq %"struct.std::__1::__list_node"* %386, %389
  %391 = xor i1 %390, true
  br label %392

; <label>:392                                     ; preds = %356
  br i1 %391, label %393, label %465

; <label>:393                                     ; preds = %392
  store %"class.std::__1::__list_iterator"* %i3, %"class.std::__1::__list_iterator"** %6, align 8
  %394 = load %"class.std::__1::__list_iterator"** %6
  %395 = getelementptr inbounds %"class.std::__1::__list_iterator"* %394, i32 0, i32 0
  %396 = load %"struct.std::__1::__list_node"** %395, align 8
  %397 = getelementptr inbounds %"struct.std::__1::__list_node"* %396, i32 0, i32 1
  store %class.AdjListNode* %397, %class.AdjListNode** %5, align 8
  %398 = load %class.AdjListNode** %5, align 8
  store %class.AdjListNode* %398, %class.AdjListNode** %4, align 8
  %399 = load %class.AdjListNode** %4, align 8
  %400 = bitcast %class.AdjListNode* %399 to i8*
  %401 = bitcast i8* %400 to %class.AdjListNode*
  br label %402

; <label>:402                                     ; preds = %393
  %403 = invoke i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %401)
          to label %404 unwind label %221

; <label>:404                                     ; preds = %402
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds i32* %200, i64 %405
  %407 = load i32* %406, align 4
  %408 = load i32* %u, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32* %200, i64 %409
  %411 = load i32* %410, align 4
  store %"class.std::__1::__list_iterator"* %i3, %"class.std::__1::__list_iterator"** %3, align 8
  %412 = load %"class.std::__1::__list_iterator"** %3
  %413 = getelementptr inbounds %"class.std::__1::__list_iterator"* %412, i32 0, i32 0
  %414 = load %"struct.std::__1::__list_node"** %413, align 8
  %415 = getelementptr inbounds %"struct.std::__1::__list_node"* %414, i32 0, i32 1
  store %class.AdjListNode* %415, %class.AdjListNode** %2, align 8
  %416 = load %class.AdjListNode** %2, align 8
  store %class.AdjListNode* %416, %class.AdjListNode** %1, align 8
  %417 = load %class.AdjListNode** %1, align 8
  %418 = bitcast %class.AdjListNode* %417 to i8*
  %419 = bitcast i8* %418 to %class.AdjListNode*
  br label %420

; <label>:420                                     ; preds = %404
  %421 = invoke i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* %419)
          to label %422 unwind label %221

; <label>:422                                     ; preds = %420
  %423 = add nsw i32 %411, %421
  %424 = icmp slt i32 %407, %423
  br i1 %424, label %425, label %455

; <label>:425                                     ; preds = %422
  %426 = load i32* %u, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32* %200, i64 %427
  %429 = load i32* %428, align 4
  store %"class.std::__1::__list_iterator"* %i3, %"class.std::__1::__list_iterator"** %9, align 8
  %430 = load %"class.std::__1::__list_iterator"** %9
  %431 = getelementptr inbounds %"class.std::__1::__list_iterator"* %430, i32 0, i32 0
  %432 = load %"struct.std::__1::__list_node"** %431, align 8
  %433 = getelementptr inbounds %"struct.std::__1::__list_node"* %432, i32 0, i32 1
  store %class.AdjListNode* %433, %class.AdjListNode** %8, align 8
  %434 = load %class.AdjListNode** %8, align 8
  store %class.AdjListNode* %434, %class.AdjListNode** %7, align 8
  %435 = load %class.AdjListNode** %7, align 8
  %436 = bitcast %class.AdjListNode* %435 to i8*
  %437 = bitcast i8* %436 to %class.AdjListNode*
  br label %438

; <label>:438                                     ; preds = %425
  %439 = invoke i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* %437)
          to label %440 unwind label %221

; <label>:440                                     ; preds = %438
  %441 = add nsw i32 %429, %439
  store %"class.std::__1::__list_iterator"* %i3, %"class.std::__1::__list_iterator"** %16, align 8
  %442 = load %"class.std::__1::__list_iterator"** %16
  %443 = getelementptr inbounds %"class.std::__1::__list_iterator"* %442, i32 0, i32 0
  %444 = load %"struct.std::__1::__list_node"** %443, align 8
  %445 = getelementptr inbounds %"struct.std::__1::__list_node"* %444, i32 0, i32 1
  store %class.AdjListNode* %445, %class.AdjListNode** %15, align 8
  %446 = load %class.AdjListNode** %15, align 8
  store %class.AdjListNode* %446, %class.AdjListNode** %14, align 8
  %447 = load %class.AdjListNode** %14, align 8
  %448 = bitcast %class.AdjListNode* %447 to i8*
  %449 = bitcast i8* %448 to %class.AdjListNode*
  br label %450

; <label>:450                                     ; preds = %440
  %451 = invoke i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* %449)
          to label %452 unwind label %221

; <label>:452                                     ; preds = %450
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds i32* %200, i64 %453
  store i32 %441, i32* %454, align 4
  br label %455

; <label>:455                                     ; preds = %452, %422
  br label %456

; <label>:456                                     ; preds = %455
  store %"class.std::__1::__list_iterator"* %i3, %"class.std::__1::__list_iterator"** %27, align 8
  %457 = load %"class.std::__1::__list_iterator"** %27
  %458 = getelementptr inbounds %"class.std::__1::__list_iterator"* %457, i32 0, i32 0
  %459 = load %"struct.std::__1::__list_node"** %458, align 8
  %460 = bitcast %"struct.std::__1::__list_node"* %459 to %"struct.std::__1::__list_node_base"*
  %461 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %460, i32 0, i32 1
  %462 = load %"struct.std::__1::__list_node"** %461, align 8
  %463 = getelementptr inbounds %"class.std::__1::__list_iterator"* %457, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %462, %"struct.std::__1::__list_node"** %463, align 8
  br label %464

; <label>:464                                     ; preds = %456
  br label %356

; <label>:465                                     ; preds = %392
  br label %466

; <label>:466                                     ; preds = %465, %314
  br label %265

; <label>:467                                     ; preds = %278
  store i32 0, i32* %i4, align 4
  br label %468

; <label>:468                                     ; preds = %493, %467
  %469 = load i32* %i4, align 4
  %470 = getelementptr inbounds %class.Graph* %121, i32 0, i32 0
  %471 = load i32* %470, align 4
  %472 = icmp slt i32 %469, %471
  br i1 %472, label %473, label %496

; <label>:473                                     ; preds = %468
  %474 = load i32* %i4, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32* %200, i64 %475
  %477 = load i32* %476, align 4
  %478 = icmp eq i32 %477, -2147483648
  br i1 %478, label %479, label %482

; <label>:479                                     ; preds = %473
  %480 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
          to label %481 unwind label %221

; <label>:481                                     ; preds = %479
  br label %491

; <label>:482                                     ; preds = %473
  %483 = load i32* %i4, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32* %200, i64 %484
  %486 = load i32* %485, align 4
  %487 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i32 %486)
          to label %488 unwind label %221

; <label>:488                                     ; preds = %482
  %489 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* %487, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
          to label %490 unwind label %221

; <label>:490                                     ; preds = %488
  br label %491

; <label>:491                                     ; preds = %490, %481
  %492 = phi %"class.std::__1::basic_ostream"* [ %480, %481 ], [ %489, %490 ]
  br label %493

; <label>:493                                     ; preds = %491
  %494 = load i32* %i4, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %i4, align 4
  br label %468

; <label>:496                                     ; preds = %468
  %497 = load i8** %116
  call void @llvm.stackrestore(i8* %497)
  call void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(%"class.std::__1::stack"* %Stack)
  ret void

; <label>:498                                     ; preds = %221
  br label %499

; <label>:499                                     ; preds = %498
  %500 = load i8** %117
  %501 = load i32* %118
  %502 = insertvalue { i8*, i32 } undef, i8* %500, 0
  %503 = insertvalue { i8*, i32 } %502, i32 %501, 1
  resume { i8*, i32 } %503

; <label>:504                                     ; preds = %221
  %505 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %506 = extractvalue { i8*, i32 } %505, 0
  call void @__clang_call_terminate(i8* %506) #11
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind ssp uwtable
define linkonce_odr i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* %this) #7 align 2 {
  %1 = alloca %class.AdjListNode*, align 8
  store %class.AdjListNode* %this, %class.AdjListNode** %1, align 8
  %2 = load %class.AdjListNode** %1
  %3 = getelementptr inbounds %class.AdjListNode* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

; Function Attrs: ssp uwtable
define linkonce_odr %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* %__os, i8* %__str) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::__1::ctype"*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__1::locale"*, align 8
  %6 = alloca %"class.std::__1::basic_ios"*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.std::__1::locale", align 8
  %9 = alloca i8*
  %10 = alloca i32
  %11 = alloca %"class.std::__1::basic_ios"*, align 8
  %12 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %13 = alloca %"class.std::__1::ios_base"*, align 8
  %14 = alloca %"class.std::__1::ios_base"*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %"class.std::__1::basic_ios"*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %"class.std::__1::ios_base"*, align 8
  %19 = alloca %"class.std::__1::basic_ios"*, align 8
  %20 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %21 = alloca %"class.std::__1::basic_ostream"*, align 8
  %22 = alloca i8*
  %23 = alloca i32
  %24 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %25 = alloca %"class.std::__1::basic_ostream"*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, align 8
  %28 = alloca %"class.std::__1::basic_ostream"*, align 8
  %29 = alloca i8*, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %30 = alloca i8*
  %31 = alloca i32
  %__len = alloca i64, align 8
  %32 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %33 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %28, align 8
  store i8* %__str, i8** %29, align 8
  %34 = load %"class.std::__1::basic_ostream"** %28, align 8
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream"* %34)
          to label %35 unwind label %178

; <label>:35                                      ; preds = %0
  store %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %27, align 8
  %36 = load %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %27
  %37 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %36, i32 0, i32 0
  %38 = load i8* %37, align 1
  %39 = trunc i8 %38 to i1
  br label %40

; <label>:40                                      ; preds = %35
  br i1 %39, label %41, label %187

; <label>:41                                      ; preds = %40
  %42 = load i8** %29, align 8
  store i8* %42, i8** %26, align 8
  %43 = load i8** %26, align 8
  %44 = invoke i64 @strlen(i8* %43)
          to label %_ZNSt3__111char_traitsIcE6lengthEPKc.exit unwind label %182

_ZNSt3__111char_traitsIcE6lengthEPKc.exit:        ; preds = %41
  br label %45

; <label>:45                                      ; preds = %_ZNSt3__111char_traitsIcE6lengthEPKc.exit
  store i64 %44, i64* %__len, align 8
  %46 = load %"class.std::__1::basic_ostream"** %28, align 8
  store %"class.std::__1::ostreambuf_iterator"* %32, %"class.std::__1::ostreambuf_iterator"** %24, align 8
  store %"class.std::__1::basic_ostream"* %46, %"class.std::__1::basic_ostream"** %25, align 8
  %47 = load %"class.std::__1::ostreambuf_iterator"** %24
  %48 = load %"class.std::__1::basic_ostream"** %25
  store %"class.std::__1::ostreambuf_iterator"* %47, %"class.std::__1::ostreambuf_iterator"** %20, align 8
  store %"class.std::__1::basic_ostream"* %48, %"class.std::__1::basic_ostream"** %21, align 8
  %49 = load %"class.std::__1::ostreambuf_iterator"** %20
  %50 = bitcast %"class.std::__1::ostreambuf_iterator"* %49 to %"struct.std::__1::iterator"*
  %51 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %49, i32 0, i32 0
  %52 = load %"class.std::__1::basic_ostream"** %21, align 8
  %53 = bitcast %"class.std::__1::basic_ostream"* %52 to i8**
  %54 = load i8** %53
  %55 = getelementptr i8* %54, i64 -24
  %56 = bitcast i8* %55 to i64*
  %57 = load i64* %56
  %58 = bitcast %"class.std::__1::basic_ostream"* %52 to i8*
  %59 = getelementptr inbounds i8* %58, i64 %57
  %60 = bitcast i8* %59 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %60, %"class.std::__1::basic_ios"** %19, align 8
  %61 = load %"class.std::__1::basic_ios"** %19
  %62 = bitcast %"class.std::__1::basic_ios"* %61 to %"class.std::__1::ios_base"*
  store %"class.std::__1::ios_base"* %62, %"class.std::__1::ios_base"** %18, align 8
  %63 = load %"class.std::__1::ios_base"** %18
  %64 = getelementptr inbounds %"class.std::__1::ios_base"* %63, i32 0, i32 6
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %66, %"class.std::__1::basic_streambuf"** %51, align 8
  %67 = load i8** %29, align 8
  %68 = load %"class.std::__1::basic_ostream"** %28, align 8
  %69 = bitcast %"class.std::__1::basic_ostream"* %68 to i8**
  %70 = load i8** %69
  %71 = getelementptr i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64* %72
  %74 = bitcast %"class.std::__1::basic_ostream"* %68 to i8*
  %75 = getelementptr inbounds i8* %74, i64 %73
  %76 = bitcast i8* %75 to %"class.std::__1::ios_base"*
  store %"class.std::__1::ios_base"* %76, %"class.std::__1::ios_base"** %13, align 8
  %77 = load %"class.std::__1::ios_base"** %13
  %78 = getelementptr inbounds %"class.std::__1::ios_base"* %77, i32 0, i32 1
  %79 = load i32* %78, align 4
  br label %80

; <label>:80                                      ; preds = %45
  %81 = and i32 %79, 176
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %87

; <label>:83                                      ; preds = %80
  %84 = load i8** %29, align 8
  %85 = load i64* %__len, align 8
  %86 = getelementptr inbounds i8* %84, i64 %85
  br label %89

; <label>:87                                      ; preds = %80
  %88 = load i8** %29, align 8
  br label %89

; <label>:89                                      ; preds = %87, %83
  %90 = phi i8* [ %86, %83 ], [ %88, %87 ]
  %91 = load i8** %29, align 8
  %92 = load i64* %__len, align 8
  %93 = getelementptr inbounds i8* %91, i64 %92
  %94 = load %"class.std::__1::basic_ostream"** %28, align 8
  %95 = bitcast %"class.std::__1::basic_ostream"* %94 to i8**
  %96 = load i8** %95
  %97 = getelementptr i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64* %98
  %100 = bitcast %"class.std::__1::basic_ostream"* %94 to i8*
  %101 = getelementptr inbounds i8* %100, i64 %99
  %102 = bitcast i8* %101 to %"class.std::__1::ios_base"*
  %103 = load %"class.std::__1::basic_ostream"** %28, align 8
  %104 = bitcast %"class.std::__1::basic_ostream"* %103 to i8**
  %105 = load i8** %104
  %106 = getelementptr i8* %105, i64 -24
  %107 = bitcast i8* %106 to i64*
  %108 = load i64* %107
  %109 = bitcast %"class.std::__1::basic_ostream"* %103 to i8*
  %110 = getelementptr inbounds i8* %109, i64 %108
  %111 = bitcast i8* %110 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %111, %"class.std::__1::basic_ios"** %11, align 8
  %112 = load %"class.std::__1::basic_ios"** %11
  %113 = getelementptr inbounds %"class.std::__1::basic_ios"* %112, i32 0, i32 2
  %114 = load i32* %113, align 4
  store i32 -1, i32* %1, align 4
  store i32 %114, i32* %2, align 4
  %115 = load i32* %1, align 4
  %116 = load i32* %2, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit

; <label>:118                                     ; preds = %89
  store %"class.std::__1::basic_ios"* %112, %"class.std::__1::basic_ios"** %6, align 8
  store i8 32, i8* %7, align 1
  %119 = load %"class.std::__1::basic_ios"** %6
  %120 = bitcast %"class.std::__1::basic_ios"* %119 to %"class.std::__1::ios_base"*
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %8, %"class.std::__1::ios_base"* %120)
          to label %.noexc unwind label %182

.noexc:                                           ; preds = %118
  store %"class.std::__1::locale"* %8, %"class.std::__1::locale"** %5, align 8
  %121 = load %"class.std::__1::locale"** %5, align 8
  %122 = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %121, %"class.std::__1::locale::id"* @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i unwind label %132

_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i: ; preds = %.noexc
  %123 = bitcast %"class.std::__1::locale::facet"* %122 to %"class.std::__1::ctype"*
  %124 = load i8* %7, align 1
  store %"class.std::__1::ctype"* %123, %"class.std::__1::ctype"** %3, align 8
  store i8 %124, i8* %4, align 1
  %125 = load %"class.std::__1::ctype"** %3
  %126 = bitcast %"class.std::__1::ctype"* %125 to i8 (%"class.std::__1::ctype"*, i8)***
  %127 = load i8 (%"class.std::__1::ctype"*, i8)*** %126
  %128 = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)** %127, i64 7
  %129 = load i8 (%"class.std::__1::ctype"*, i8)** %128
  %130 = load i8* %4, align 1
  %131 = invoke signext i8 %129(%"class.std::__1::ctype"* %125, i8 signext %130)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %132

; <label>:132                                     ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i, %.noexc
  %133 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
          catch i8* null
  %134 = extractvalue { i8*, i32 } %133, 0
  store i8* %134, i8** %9
  %135 = extractvalue { i8*, i32 } %133, 1
  store i32 %135, i32* %10
  invoke void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %8)
          to label %136 unwind label %141

; <label>:136                                     ; preds = %132
  %137 = load i8** %9
  %138 = load i32* %10
  %139 = insertvalue { i8*, i32 } undef, i8* %137, 0
  %140 = insertvalue { i8*, i32 } %139, i32 %138, 1
  br label %.body

; <label>:141                                     ; preds = %132
  %142 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
          catch i8* null
  %143 = extractvalue { i8*, i32 } %142, 0
  call void @__clang_call_terminate(i8* %143) #11
  unreachable

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
  invoke void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %8)
          to label %.noexc1 unwind label %182

.noexc1:                                          ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
  %144 = sext i8 %131 to i32
  %145 = getelementptr inbounds %"class.std::__1::basic_ios"* %112, i32 0, i32 2
  store i32 %144, i32* %145, align 4
  br label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit: ; preds = %89, %.noexc1
  %146 = getelementptr inbounds %"class.std::__1::basic_ios"* %112, i32 0, i32 2
  %147 = load i32* %146, align 4
  %148 = trunc i32 %147 to i8
  br label %149

; <label>:149                                     ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit
  %150 = getelementptr %"class.std::__1::ostreambuf_iterator"* %32, i32 0, i32 0
  %151 = load %"class.std::__1::basic_streambuf"** %150
  %152 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %151, i8* %67, i8* %90, i8* %93, %"class.std::__1::ios_base"* %102, i8 signext %148)
          to label %153 unwind label %182

; <label>:153                                     ; preds = %149
  %154 = getelementptr %"class.std::__1::ostreambuf_iterator"* %33, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %152, %"class.std::__1::basic_streambuf"** %154
  store %"class.std::__1::ostreambuf_iterator"* %33, %"class.std::__1::ostreambuf_iterator"** %12, align 8
  %155 = load %"class.std::__1::ostreambuf_iterator"** %12
  %156 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %155, i32 0, i32 0
  %157 = load %"class.std::__1::basic_streambuf"** %156, align 8
  %158 = icmp eq %"class.std::__1::basic_streambuf"* %157, null
  br i1 %158, label %159, label %186

; <label>:159                                     ; preds = %153
  %160 = load %"class.std::__1::basic_ostream"** %28, align 8
  %161 = bitcast %"class.std::__1::basic_ostream"* %160 to i8**
  %162 = load i8** %161
  %163 = getelementptr i8* %162, i64 -24
  %164 = bitcast i8* %163 to i64*
  %165 = load i64* %164
  %166 = bitcast %"class.std::__1::basic_ostream"* %160 to i8*
  %167 = getelementptr inbounds i8* %166, i64 %165
  %168 = bitcast i8* %167 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %168, %"class.std::__1::basic_ios"** %16, align 8
  store i32 5, i32* %17, align 4
  %169 = load %"class.std::__1::basic_ios"** %16
  %170 = bitcast %"class.std::__1::basic_ios"* %169 to %"class.std::__1::ios_base"*
  %171 = load i32* %17, align 4
  store %"class.std::__1::ios_base"* %170, %"class.std::__1::ios_base"** %14, align 8
  store i32 %171, i32* %15, align 4
  %172 = load %"class.std::__1::ios_base"** %14
  %173 = getelementptr inbounds %"class.std::__1::ios_base"* %172, i32 0, i32 4
  %174 = load i32* %173, align 4
  %175 = load i32* %15, align 4
  %176 = or i32 %174, %175
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %172, i32 %176)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit unwind label %182

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit: ; preds = %159
  br label %177

; <label>:177                                     ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
  br label %186

; <label>:178                                     ; preds = %187, %0
  %179 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %180 = extractvalue { i8*, i32 } %179, 0
  store i8* %180, i8** %30
  %181 = extractvalue { i8*, i32 } %179, 1
  store i32 %181, i32* %31
  br label %190

; <label>:182                                     ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %118, %159, %41, %149
  %183 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  br label %.body

.body:                                            ; preds = %136, %182
  %eh.lpad-body = phi { i8*, i32 } [ %183, %182 ], [ %140, %136 ]
  %184 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  store i8* %184, i8** %30
  %185 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  store i32 %185, i32* %31
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s)
          to label %189 unwind label %215

; <label>:186                                     ; preds = %177, %153
  br label %187

; <label>:187                                     ; preds = %186, %40
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s)
          to label %188 unwind label %178

; <label>:188                                     ; preds = %187
  br label %203

; <label>:189                                     ; preds = %.body
  br label %190

; <label>:190                                     ; preds = %189, %178
  %191 = load i8** %30
  %192 = call i8* @__cxa_begin_catch(i8* %191) #6
  %193 = load %"class.std::__1::basic_ostream"** %28, align 8
  %194 = bitcast %"class.std::__1::basic_ostream"* %193 to i8**
  %195 = load i8** %194
  %196 = getelementptr i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64* %197
  %199 = bitcast %"class.std::__1::basic_ostream"* %193 to i8*
  %200 = getelementptr inbounds i8* %199, i64 %198
  %201 = bitcast i8* %200 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %201)
          to label %202 unwind label %205

; <label>:202                                     ; preds = %190
  call void @__cxa_end_catch()
  br label %203

; <label>:203                                     ; preds = %202, %188
  %204 = load %"class.std::__1::basic_ostream"** %28, align 8
  ret %"class.std::__1::basic_ostream"* %204

; <label>:205                                     ; preds = %190
  %206 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %207 = extractvalue { i8*, i32 } %206, 0
  store i8* %207, i8** %30
  %208 = extractvalue { i8*, i32 } %206, 1
  store i32 %208, i32* %31
  invoke void @__cxa_end_catch()
          to label %209 unwind label %215

; <label>:209                                     ; preds = %205
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i8** %30
  %212 = load i32* %31
  %213 = insertvalue { i8*, i32 } undef, i8* %211, 0
  %214 = insertvalue { i8*, i32 } %213, i32 %212, 1
  resume { i8*, i32 } %214

; <label>:215                                     ; preds = %205, %.body
  %216 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %217 = extractvalue { i8*, i32 } %216, 0
  call void @__clang_call_terminate(i8* %217) #11
  unreachable
}

declare %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #8

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(%"class.std::__1::stack"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__1::stack"*, align 8
  store %"class.std::__1::stack"* %this, %"class.std::__1::stack"** %1, align 8
  %2 = load %"class.std::__1::stack"** %1
  call void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED2Ev(%"class.std::__1::stack"* %2)
  ret void
}

; Function Attrs: ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %g = alloca %class.Graph, align 8
  %s = alloca i32, align 4
  store i32 0, i32* %1
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
  %2 = call %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i8* getelementptr inbounds ([52 x i8]* @.str2, i32 0, i32 0))
  %3 = load i32* %s, align 4
  %4 = call %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %2, i32 %3)
  %5 = call %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* %4, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0))
  %6 = load i32* %s, align 4
  call void @_ZN5Graph11longestPathEi(%class.Graph* %g, i32 %6)
  ret i32 0
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"*) #8

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* %__iob, i8 signext %__fl) #0 {
  %1 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %2 = alloca %"class.std::__1::allocator.10"*, align 8
  %3 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.9"*, align 8
  %4 = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  %5 = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  %6 = alloca %"class.std::__1::basic_string"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::__1::basic_string"*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.9"*, align 8
  %14 = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  %15 = alloca %"class.std::__1::basic_string"*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.9"*, align 8
  %19 = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  %20 = alloca %"class.std::__1::basic_string"*, align 8
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.9"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.8"*, align 8
  %23 = alloca %"class.std::__1::basic_string"*, align 8
  %24 = alloca %"class.std::__1::basic_string"*, align 8
  %25 = alloca %"class.std::__1::basic_string"*, align 8
  %26 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %"struct.std::__1::nullptr_t", align 8
  %31 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %38 = alloca i64, align 8
  %39 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %40 = alloca i64, align 8
  %41 = alloca %"struct.std::__1::nullptr_t", align 8
  %42 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %43 = alloca %"class.std::__1::ios_base"*, align 8
  %44 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i64, align 8
  %47 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %48 = alloca i64, align 8
  %49 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %50 = alloca i64, align 8
  %51 = alloca %"struct.std::__1::nullptr_t", align 8
  %52 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %53 = alloca %"class.std::__1::ios_base"*, align 8
  %54 = alloca i64, align 8
  %__r.i = alloca i64, align 8
  %55 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %56 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %57 = alloca i64, align 8
  %58 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %59 = alloca i64, align 8
  %60 = alloca %"struct.std::__1::nullptr_t", align 8
  %61 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %62 = alloca i8*, align 8
  %63 = alloca i8*, align 8
  %64 = alloca i8*, align 8
  %65 = alloca %"class.std::__1::ios_base"*, align 8
  %66 = alloca i8, align 1
  %67 = alloca %"struct.std::__1::nullptr_t", align 8
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %68 = alloca %"struct.std::__1::nullptr_t", align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %69 = alloca i8*
  %70 = alloca i32
  %71 = alloca %"struct.std::__1::nullptr_t", align 8
  %72 = alloca i32
  %73 = alloca %"struct.std::__1::nullptr_t", align 8
  %74 = getelementptr %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %__s.coerce, %"class.std::__1::basic_streambuf"** %74
  store i8* %__ob, i8** %62, align 8
  store i8* %__op, i8** %63, align 8
  store i8* %__oe, i8** %64, align 8
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %65, align 8
  store i8 %__fl, i8* %66, align 1
  %75 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %76 = load %"class.std::__1::basic_streambuf"** %75, align 8
  store %"struct.std::__1::nullptr_t"* %60, %"struct.std::__1::nullptr_t"** %58, align 8
  store i64 -1, i64* %59, align 8
  %77 = load %"struct.std::__1::nullptr_t"** %58
  %78 = load i64* %59, align 8
  store %"struct.std::__1::nullptr_t"* %77, %"struct.std::__1::nullptr_t"** %56, align 8
  store i64 %78, i64* %57, align 8
  %79 = load %"struct.std::__1::nullptr_t"** %56
  %80 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %79, i32 0, i32 0
  store i8* null, i8** %80, align 8
  %81 = getelementptr %"struct.std::__1::nullptr_t"* %60, i32 0, i32 0
  %82 = load i8** %81
  %83 = getelementptr %"struct.std::__1::nullptr_t"* %67, i32 0, i32 0
  store i8* %82, i8** %83
  store %"struct.std::__1::nullptr_t"* %67, %"struct.std::__1::nullptr_t"** %55, align 8
  %84 = load %"struct.std::__1::nullptr_t"** %55
  %85 = icmp eq %"class.std::__1::basic_streambuf"* %76, null
  br i1 %85, label %86, label %89

; <label>:86                                      ; preds = %0
  %87 = bitcast %"class.std::__1::ostreambuf_iterator"* %61 to i8*
  %88 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 8, i32 8, i1 false)
  br label %288

; <label>:89                                      ; preds = %0
  %90 = load i8** %64, align 8
  %91 = load i8** %62, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  store i64 %94, i64* %__sz, align 8
  %95 = load %"class.std::__1::ios_base"** %65, align 8
  store %"class.std::__1::ios_base"* %95, %"class.std::__1::ios_base"** %43, align 8
  %96 = load %"class.std::__1::ios_base"** %43
  %97 = getelementptr inbounds %"class.std::__1::ios_base"* %96, i32 0, i32 3
  %98 = load i64* %97, align 8
  store i64 %98, i64* %__ns, align 8
  %99 = load i64* %__ns, align 8
  %100 = load i64* %__sz, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %106

; <label>:102                                     ; preds = %89
  %103 = load i64* %__sz, align 8
  %104 = load i64* %__ns, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %__ns, align 8
  br label %107

; <label>:106                                     ; preds = %89
  store i64 0, i64* %__ns, align 8
  br label %107

; <label>:107                                     ; preds = %106, %102
  %108 = load i8** %63, align 8
  %109 = load i8** %62, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  store i64 %112, i64* %__np, align 8
  %113 = load i64* %__np, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %143

; <label>:115                                     ; preds = %107
  %116 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %117 = load %"class.std::__1::basic_streambuf"** %116, align 8
  %118 = load i8** %62, align 8
  %119 = load i64* %__np, align 8
  store %"class.std::__1::basic_streambuf"* %117, %"class.std::__1::basic_streambuf"** %31, align 8
  store i8* %118, i8** %32, align 8
  store i64 %119, i64* %33, align 8
  %120 = load %"class.std::__1::basic_streambuf"** %31
  %121 = bitcast %"class.std::__1::basic_streambuf"* %120 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %122 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %121
  %123 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %122, i64 12
  %124 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %123
  %125 = load i8** %32, align 8
  %126 = load i64* %33, align 8
  %127 = call i64 %124(%"class.std::__1::basic_streambuf"* %120, i8* %125, i64 %126)
  %128 = load i64* %__np, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %142

; <label>:130                                     ; preds = %115
  store %"struct.std::__1::nullptr_t"* %30, %"struct.std::__1::nullptr_t"** %28, align 8
  store i64 -1, i64* %29, align 8
  %131 = load %"struct.std::__1::nullptr_t"** %28
  %132 = load i64* %29, align 8
  store %"struct.std::__1::nullptr_t"* %131, %"struct.std::__1::nullptr_t"** %26, align 8
  store i64 %132, i64* %27, align 8
  %133 = load %"struct.std::__1::nullptr_t"** %26
  %134 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %133, i32 0, i32 0
  store i8* null, i8** %134, align 8
  %135 = getelementptr %"struct.std::__1::nullptr_t"* %30, i32 0, i32 0
  %136 = load i8** %135
  %137 = getelementptr %"struct.std::__1::nullptr_t"* %68, i32 0, i32 0
  store i8* %136, i8** %137
  store %"struct.std::__1::nullptr_t"* %68, %"struct.std::__1::nullptr_t"** %1, align 8
  %138 = load %"struct.std::__1::nullptr_t"** %1
  %139 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %139, align 8
  %140 = bitcast %"class.std::__1::ostreambuf_iterator"* %61 to i8*
  %141 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 8, i32 8, i1 false)
  br label %288

; <label>:142                                     ; preds = %115
  br label %143

; <label>:143                                     ; preds = %142, %107
  %144 = load i64* %__ns, align 8
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %242

; <label>:146                                     ; preds = %143
  %147 = load i64* %__ns, align 8
  %148 = load i8* %66, align 1
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %9, align 8
  store i64 %147, i64* %10, align 8
  store i8 %148, i8* %11, align 1
  %149 = load %"class.std::__1::basic_string"** %9
  %150 = load i64* %10, align 8
  %151 = load i8* %11, align 1
  store %"class.std::__1::basic_string"* %149, %"class.std::__1::basic_string"** %6, align 8
  store i64 %150, i64* %7, align 8
  store i8 %151, i8* %8, align 1
  %152 = load %"class.std::__1::basic_string"** %6
  %153 = bitcast %"class.std::__1::basic_string"* %152 to %"class.std::__1::__basic_string_common"*
  %154 = getelementptr inbounds %"class.std::__1::basic_string"* %152, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.8"* %154, %"class.std::__1::__compressed_pair.8"** %5, align 8
  %155 = load %"class.std::__1::__compressed_pair.8"** %5
  store %"class.std::__1::__compressed_pair.8"* %155, %"class.std::__1::__compressed_pair.8"** %4, align 8
  %156 = load %"class.std::__1::__compressed_pair.8"** %4
  %157 = bitcast %"class.std::__1::__compressed_pair.8"* %156 to %"class.std::__1::__libcpp_compressed_pair_imp.9"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.9"* %157, %"class.std::__1::__libcpp_compressed_pair_imp.9"** %3, align 8
  %158 = load %"class.std::__1::__libcpp_compressed_pair_imp.9"** %3
  %159 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.9"* %158 to %"class.std::__1::allocator.10"*
  store %"class.std::__1::allocator.10"* %159, %"class.std::__1::allocator.10"** %2, align 8
  %160 = load %"class.std::__1::allocator.10"** %2
  %161 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.9"* %158, i32 0, i32 0
  %162 = load i64* %7, align 8
  %163 = load i8* %8, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %152, i64 %162, i8 signext %163)
  %164 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %165 = load %"class.std::__1::basic_streambuf"** %164, align 8
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %25, align 8
  %166 = load %"class.std::__1::basic_string"** %25
  store %"class.std::__1::basic_string"* %166, %"class.std::__1::basic_string"** %24, align 8
  %167 = load %"class.std::__1::basic_string"** %24
  store %"class.std::__1::basic_string"* %167, %"class.std::__1::basic_string"** %23, align 8
  %168 = load %"class.std::__1::basic_string"** %23
  %169 = getelementptr inbounds %"class.std::__1::basic_string"* %168, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.8"* %169, %"class.std::__1::__compressed_pair.8"** %22, align 8
  %170 = load %"class.std::__1::__compressed_pair.8"** %22
  %171 = bitcast %"class.std::__1::__compressed_pair.8"* %170 to %"class.std::__1::__libcpp_compressed_pair_imp.9"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.9"* %171, %"class.std::__1::__libcpp_compressed_pair_imp.9"** %21, align 8
  %172 = load %"class.std::__1::__libcpp_compressed_pair_imp.9"** %21
  %173 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.9"* %172, i32 0, i32 0
  %174 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %173, i32 0, i32 0
  %175 = bitcast %union.anon* %174 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %176 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %175, i32 0, i32 0
  %177 = bitcast %union.anon.12* %176 to i8*
  %178 = load i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

; <label>:182                                     ; preds = %146
  store %"class.std::__1::basic_string"* %167, %"class.std::__1::basic_string"** %15, align 8
  %183 = load %"class.std::__1::basic_string"** %15
  %184 = getelementptr inbounds %"class.std::__1::basic_string"* %183, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.8"* %184, %"class.std::__1::__compressed_pair.8"** %14, align 8
  %185 = load %"class.std::__1::__compressed_pair.8"** %14
  %186 = bitcast %"class.std::__1::__compressed_pair.8"* %185 to %"class.std::__1::__libcpp_compressed_pair_imp.9"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.9"* %186, %"class.std::__1::__libcpp_compressed_pair_imp.9"** %13, align 8
  %187 = load %"class.std::__1::__libcpp_compressed_pair_imp.9"** %13
  %188 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.9"* %187, i32 0, i32 0
  %189 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %188, i32 0, i32 0
  %190 = bitcast %union.anon* %189 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %191 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %190, i32 0, i32 2
  %192 = load i8** %191, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

; <label>:193                                     ; preds = %146
  store %"class.std::__1::basic_string"* %167, %"class.std::__1::basic_string"** %20, align 8
  %194 = load %"class.std::__1::basic_string"** %20
  %195 = getelementptr inbounds %"class.std::__1::basic_string"* %194, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.8"* %195, %"class.std::__1::__compressed_pair.8"** %19, align 8
  %196 = load %"class.std::__1::__compressed_pair.8"** %19
  %197 = bitcast %"class.std::__1::__compressed_pair.8"* %196 to %"class.std::__1::__libcpp_compressed_pair_imp.9"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.9"* %197, %"class.std::__1::__libcpp_compressed_pair_imp.9"** %18, align 8
  %198 = load %"class.std::__1::__libcpp_compressed_pair_imp.9"** %18
  %199 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.9"* %198, i32 0, i32 0
  %200 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %199, i32 0, i32 0
  %201 = bitcast %union.anon* %200 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %202 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %201, i32 0, i32 1
  %203 = getelementptr inbounds [23 x i8]* %202, i32 0, i64 0
  store i8* %203, i8** %17, align 8
  %204 = load i8** %17, align 8
  store i8* %204, i8** %16, align 8
  %205 = load i8** %16, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit: ; preds = %182, %193
  %206 = phi i8* [ %192, %182 ], [ %205, %193 ]
  store i8* %206, i8** %12, align 8
  %207 = load i8** %12, align 8
  %208 = load i64* %__ns, align 8
  store %"class.std::__1::basic_streambuf"* %165, %"class.std::__1::basic_streambuf"** %34, align 8
  store i8* %207, i8** %35, align 8
  store i64 %208, i64* %36, align 8
  %209 = load %"class.std::__1::basic_streambuf"** %34
  %210 = bitcast %"class.std::__1::basic_streambuf"* %209 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %211 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %210
  %212 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %211, i64 12
  %213 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %212
  %214 = load i8** %35, align 8
  %215 = load i64* %36, align 8
  %216 = invoke i64 %213(%"class.std::__1::basic_streambuf"* %209, i8* %214, i64 %215)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit unwind label %234

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit: ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  br label %217

; <label>:217                                     ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
  %218 = load i64* %__ns, align 8
  %219 = icmp ne i64 %216, %218
  br i1 %219, label %220, label %238

; <label>:220                                     ; preds = %217
  store %"struct.std::__1::nullptr_t"* %41, %"struct.std::__1::nullptr_t"** %39, align 8
  store i64 -1, i64* %40, align 8
  %221 = load %"struct.std::__1::nullptr_t"** %39
  %222 = load i64* %40, align 8
  store %"struct.std::__1::nullptr_t"* %221, %"struct.std::__1::nullptr_t"** %37, align 8
  store i64 %222, i64* %38, align 8
  %223 = load %"struct.std::__1::nullptr_t"** %37
  %224 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %223, i32 0, i32 0
  store i8* null, i8** %224, align 8
  %225 = getelementptr %"struct.std::__1::nullptr_t"* %41, i32 0, i32 0
  %226 = load i8** %225
  br label %227

; <label>:227                                     ; preds = %220
  %228 = getelementptr %"struct.std::__1::nullptr_t"* %71, i32 0, i32 0
  store i8* %226, i8** %228
  store %"struct.std::__1::nullptr_t"* %71, %"struct.std::__1::nullptr_t"** %42, align 8
  %229 = load %"struct.std::__1::nullptr_t"** %42
  br label %230

; <label>:230                                     ; preds = %227
  %231 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %231, align 8
  %232 = bitcast %"class.std::__1::ostreambuf_iterator"* %61 to i8*
  %233 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %232, i8* %233, i64 8, i32 8, i1 false)
  store i32 1, i32* %72
  br label %239

; <label>:234                                     ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  %235 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %236 = extractvalue { i8*, i32 } %235, 0
  store i8* %236, i8** %69
  %237 = extractvalue { i8*, i32 } %235, 1
  store i32 %237, i32* %70
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp)
          to label %241 unwind label %296

; <label>:238                                     ; preds = %217
  store i32 0, i32* %72
  br label %239

; <label>:239                                     ; preds = %238, %230
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp)
  %cleanup.dest = load i32* %72
  switch i32 %cleanup.dest, label %299 [
    i32 0, label %240
    i32 1, label %288
  ]

; <label>:240                                     ; preds = %239
  br label %242

; <label>:241                                     ; preds = %234
  br label %291

; <label>:242                                     ; preds = %240, %143
  %243 = load i8** %64, align 8
  %244 = load i8** %63, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  store i64 %247, i64* %__np, align 8
  %248 = load i64* %__np, align 8
  %249 = icmp sgt i64 %248, 0
  br i1 %249, label %250, label %278

; <label>:250                                     ; preds = %242
  %251 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %252 = load %"class.std::__1::basic_streambuf"** %251, align 8
  %253 = load i8** %63, align 8
  %254 = load i64* %__np, align 8
  store %"class.std::__1::basic_streambuf"* %252, %"class.std::__1::basic_streambuf"** %44, align 8
  store i8* %253, i8** %45, align 8
  store i64 %254, i64* %46, align 8
  %255 = load %"class.std::__1::basic_streambuf"** %44
  %256 = bitcast %"class.std::__1::basic_streambuf"* %255 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %257 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %256
  %258 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %257, i64 12
  %259 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %258
  %260 = load i8** %45, align 8
  %261 = load i64* %46, align 8
  %262 = call i64 %259(%"class.std::__1::basic_streambuf"* %255, i8* %260, i64 %261)
  %263 = load i64* %__np, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %277

; <label>:265                                     ; preds = %250
  store %"struct.std::__1::nullptr_t"* %51, %"struct.std::__1::nullptr_t"** %49, align 8
  store i64 -1, i64* %50, align 8
  %266 = load %"struct.std::__1::nullptr_t"** %49
  %267 = load i64* %50, align 8
  store %"struct.std::__1::nullptr_t"* %266, %"struct.std::__1::nullptr_t"** %47, align 8
  store i64 %267, i64* %48, align 8
  %268 = load %"struct.std::__1::nullptr_t"** %47
  %269 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %268, i32 0, i32 0
  store i8* null, i8** %269, align 8
  %270 = getelementptr %"struct.std::__1::nullptr_t"* %51, i32 0, i32 0
  %271 = load i8** %270
  %272 = getelementptr %"struct.std::__1::nullptr_t"* %73, i32 0, i32 0
  store i8* %271, i8** %272
  store %"struct.std::__1::nullptr_t"* %73, %"struct.std::__1::nullptr_t"** %52, align 8
  %273 = load %"struct.std::__1::nullptr_t"** %52
  %274 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %274, align 8
  %275 = bitcast %"class.std::__1::ostreambuf_iterator"* %61 to i8*
  %276 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %275, i8* %276, i64 8, i32 8, i1 false)
  br label %288

; <label>:277                                     ; preds = %250
  br label %278

; <label>:278                                     ; preds = %277, %242
  %279 = load %"class.std::__1::ios_base"** %65, align 8
  store %"class.std::__1::ios_base"* %279, %"class.std::__1::ios_base"** %53, align 8
  store i64 0, i64* %54, align 8
  %280 = load %"class.std::__1::ios_base"** %53
  %281 = getelementptr inbounds %"class.std::__1::ios_base"* %280, i32 0, i32 3
  %282 = load i64* %281, align 8
  store i64 %282, i64* %__r.i, align 8
  %283 = load i64* %54, align 8
  %284 = getelementptr inbounds %"class.std::__1::ios_base"* %280, i32 0, i32 3
  store i64 %283, i64* %284, align 8
  %285 = load i64* %__r.i, align 8
  %286 = bitcast %"class.std::__1::ostreambuf_iterator"* %61 to i8*
  %287 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %286, i8* %287, i64 8, i32 8, i1 false)
  br label %288

; <label>:288                                     ; preds = %278, %265, %239, %130, %86
  %289 = getelementptr %"class.std::__1::ostreambuf_iterator"* %61, i32 0, i32 0
  %290 = load %"class.std::__1::basic_streambuf"** %289
  ret %"class.std::__1::basic_streambuf"* %290

; <label>:291                                     ; preds = %241
  %292 = load i8** %69
  %293 = load i32* %70
  %294 = insertvalue { i8*, i32 } undef, i8* %292, 0
  %295 = insertvalue { i8*, i32 } %294, i32 %293, 1
  resume { i8*, i32 } %295

; <label>:296                                     ; preds = %234
  %297 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %298 = extractvalue { i8*, i32 } %297, 0
  call void @__clang_call_terminate(i8* %298) #11
  unreachable

; <label>:299                                     ; preds = %239
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) #8

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #8

declare void @__cxa_end_catch()

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #8

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #8

declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) #8

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"*) #8

declare void @__cxa_call_unexpected(i8*)

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) #8

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #8

declare i64 @strlen(i8*) #8

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEE8pop_backEv(%"class.std::__1::deque"* %this) #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.std::__1::allocator.6"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"class.std::__1::allocator.6"*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %"struct.std::__1::integral_constant", align 1
  %8 = alloca %"struct.std::__1::__has_destroy.13", align 1
  %9 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %10 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %11 = alloca %"class.std::__1::__deque_base"*, align 8
  %12 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %13 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %14 = alloca %"class.std::__1::__deque_base"*, align 8
  %15 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %16 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %17 = alloca %"class.std::__1::deque"*, align 8
  %18 = alloca %"class.std::__1::deque"*, align 8
  %19 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %20 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %21 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %22 = alloca %"class.std::__1::__deque_base"*, align 8
  %23 = alloca %"class.std::__1::allocator.6"*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %"class.std::__1::allocator.6"*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32**, align 8
  %30 = alloca %"class.std::__1::allocator.2"*, align 8
  %31 = alloca i32**, align 8
  %32 = alloca %"class.std::__1::allocator.2"*, align 8
  %33 = alloca i32**, align 8
  %34 = alloca %"struct.std::__1::integral_constant", align 1
  %35 = alloca %"struct.std::__1::__has_destroy", align 1
  %36 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %37 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %38 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %39 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %40 = alloca i32**, align 8
  %41 = alloca %"struct.std::__1::integral_constant", align 1
  %42 = alloca i8*
  %43 = alloca i32
  %44 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %45 = alloca i32**, align 8
  %46 = alloca %"struct.std::__1::integral_constant", align 1
  %47 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %48 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %49 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %50 = alloca %"class.std::__1::__deque_base"*, align 8
  %51 = alloca %"class.std::__1::deque"*, align 8
  %__a = alloca %"class.std::__1::allocator.6"*, align 8
  %__p = alloca i64, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %51, align 8
  %52 = load %"class.std::__1::deque"** %51
  %53 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %53, %"class.std::__1::__deque_base"** %50, align 8
  %54 = load %"class.std::__1::__deque_base"** %50
  %55 = getelementptr inbounds %"class.std::__1::__deque_base"* %54, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %55, %"class.std::__1::__compressed_pair.4"** %49, align 8
  %56 = load %"class.std::__1::__compressed_pair.4"** %49
  %57 = bitcast %"class.std::__1::__compressed_pair.4"* %56 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %57, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %48, align 8
  %58 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %48
  %59 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.5"* %58 to %"class.std::__1::allocator.6"*
  store %"class.std::__1::allocator.6"* %59, %"class.std::__1::allocator.6"** %__a, align 8
  %60 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %60, %"class.std::__1::__deque_base"** %22, align 8
  %61 = load %"class.std::__1::__deque_base"** %22
  %62 = getelementptr inbounds %"class.std::__1::__deque_base"* %61, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %62, %"class.std::__1::__compressed_pair.4"** %21, align 8
  %63 = load %"class.std::__1::__compressed_pair.4"** %21
  %64 = bitcast %"class.std::__1::__compressed_pair.4"* %63 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %64, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %20, align 8
  %65 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %20
  %66 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %65, i32 0, i32 0
  %67 = load i64* %66
  %68 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %69 = getelementptr inbounds %"class.std::__1::__deque_base"* %68, i32 0, i32 1
  %70 = load i64* %69, align 8
  %71 = add i64 %67, %70
  %72 = sub i64 %71, 1
  store i64 %72, i64* %__p, align 8
  %73 = load %"class.std::__1::allocator.6"** %__a, align 8
  %74 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %75 = getelementptr inbounds %"class.std::__1::__deque_base"* %74, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %75, %"struct.std::__1::__split_buffer"** %1, align 8
  %76 = load %"struct.std::__1::__split_buffer"** %1
  %77 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %76, i32 0, i32 1
  %78 = load i32*** %77, align 8
  %79 = load i64* %__p, align 8
  %80 = udiv i64 %79, 1024
  %81 = getelementptr inbounds i32** %78, i64 %80
  %82 = load i32** %81, align 8
  %83 = load i64* %__p, align 8
  %84 = urem i64 %83, 1024
  %85 = getelementptr inbounds i32* %82, i64 %84
  store i32* %85, i32** %2, align 8
  %86 = load i32** %2, align 8
  store %"class.std::__1::allocator.6"* %73, %"class.std::__1::allocator.6"** %5, align 8
  store i32* %86, i32** %6, align 8
  %87 = bitcast %"struct.std::__1::__has_destroy.13"* %8 to %"struct.std::__1::integral_constant"*
  %88 = load %"class.std::__1::allocator.6"** %5, align 8
  %89 = load i32** %6, align 8
  store %"class.std::__1::allocator.6"* %88, %"class.std::__1::allocator.6"** %3, align 8
  store i32* %89, i32** %4, align 8
  %90 = load i32** %4, align 8
  %91 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %91, %"class.std::__1::__deque_base"** %11, align 8
  %92 = load %"class.std::__1::__deque_base"** %11
  %93 = getelementptr inbounds %"class.std::__1::__deque_base"* %92, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %93, %"class.std::__1::__compressed_pair.4"** %10, align 8
  %94 = load %"class.std::__1::__compressed_pair.4"** %10
  %95 = bitcast %"class.std::__1::__compressed_pair.4"* %94 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %95, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %9, align 8
  %96 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %9
  %97 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %96, i32 0, i32 0
  %98 = load i64* %97
  %99 = add i64 %98, -1
  store i64 %99, i64* %97
  store %"class.std::__1::deque"* %52, %"class.std::__1::deque"** %18, align 8
  %100 = load %"class.std::__1::deque"** %18
  store %"class.std::__1::deque"* %100, %"class.std::__1::deque"** %17, align 8
  %101 = load %"class.std::__1::deque"** %17
  %102 = bitcast %"class.std::__1::deque"* %101 to %"class.std::__1::__deque_base"*
  %103 = getelementptr inbounds %"class.std::__1::__deque_base"* %102, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %103, %"struct.std::__1::__split_buffer"** %16, align 8
  %104 = load %"struct.std::__1::__split_buffer"** %16
  %105 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %104, i32 0, i32 2
  %106 = load i32*** %105, align 8
  %107 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %104, i32 0, i32 1
  %108 = load i32*** %107, align 8
  %109 = ptrtoint i32** %106 to i64
  %110 = ptrtoint i32** %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %0
  br label %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit

; <label>:115                                     ; preds = %0
  %116 = bitcast %"class.std::__1::deque"* %101 to %"class.std::__1::__deque_base"*
  %117 = getelementptr inbounds %"class.std::__1::__deque_base"* %116, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %117, %"struct.std::__1::__split_buffer"** %15, align 8
  %118 = load %"struct.std::__1::__split_buffer"** %15
  %119 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %118, i32 0, i32 2
  %120 = load i32*** %119, align 8
  %121 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %118, i32 0, i32 1
  %122 = load i32*** %121, align 8
  %123 = ptrtoint i32** %120 to i64
  %124 = ptrtoint i32** %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 8
  %127 = mul i64 %126, 1024
  %128 = sub i64 %127, 1
  br label %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit

_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit: ; preds = %114, %115
  %129 = phi i64 [ 0, %114 ], [ %128, %115 ]
  %130 = bitcast %"class.std::__1::deque"* %100 to %"class.std::__1::__deque_base"*
  %131 = getelementptr inbounds %"class.std::__1::__deque_base"* %130, i32 0, i32 1
  %132 = load i64* %131, align 8
  %133 = bitcast %"class.std::__1::deque"* %100 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %133, %"class.std::__1::__deque_base"** %14, align 8
  %134 = load %"class.std::__1::__deque_base"** %14
  %135 = getelementptr inbounds %"class.std::__1::__deque_base"* %134, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %135, %"class.std::__1::__compressed_pair.4"** %13, align 8
  %136 = load %"class.std::__1::__compressed_pair.4"** %13
  %137 = bitcast %"class.std::__1::__compressed_pair.4"* %136 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %137, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %12, align 8
  %138 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %12
  %139 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %138, i32 0, i32 0
  %140 = load i64* %139
  %141 = add i64 %132, %140
  %142 = sub i64 %129, %141
  %143 = icmp uge i64 %142, 2048
  br i1 %143, label %144, label %188

; <label>:144                                     ; preds = %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit
  %145 = load %"class.std::__1::allocator.6"** %__a, align 8
  %146 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %147 = getelementptr inbounds %"class.std::__1::__deque_base"* %146, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %147, %"struct.std::__1::__split_buffer"** %19, align 8
  %148 = load %"struct.std::__1::__split_buffer"** %19
  %149 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %148, i32 0, i32 2
  %150 = load i32*** %149, align 8
  %151 = getelementptr inbounds i32** %150, i64 -1
  %152 = load i32** %151
  store %"class.std::__1::allocator.6"* %145, %"class.std::__1::allocator.6"** %26, align 8
  store i32* %152, i32** %27, align 8
  store i64 1024, i64* %28, align 8
  %153 = load %"class.std::__1::allocator.6"** %26, align 8
  %154 = load i32** %27, align 8
  %155 = load i64* %28, align 8
  store %"class.std::__1::allocator.6"* %153, %"class.std::__1::allocator.6"** %23, align 8
  store i32* %154, i32** %24, align 8
  store i64 %155, i64* %25, align 8
  %156 = load %"class.std::__1::allocator.6"** %23
  %157 = load i32** %24, align 8
  %158 = bitcast i32* %157 to i8*
  call void @_ZdlPv(i8* %158) #6
  %159 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %160 = getelementptr inbounds %"class.std::__1::__deque_base"* %159, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %160, %"struct.std::__1::__split_buffer"** %47, align 8
  %161 = load %"struct.std::__1::__split_buffer"** %47
  %162 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %161, i32 0, i32 2
  %163 = load i32*** %162, align 8
  %164 = getelementptr inbounds i32** %163, i64 -1
  store %"struct.std::__1::__split_buffer"* %161, %"struct.std::__1::__split_buffer"** %44, align 8
  store i32** %164, i32*** %45, align 8
  %165 = load %"struct.std::__1::__split_buffer"** %44
  %166 = load i32*** %45, align 8
  store %"struct.std::__1::__split_buffer"* %165, %"struct.std::__1::__split_buffer"** %39, align 8
  store i32** %166, i32*** %40, align 8
  %167 = load %"struct.std::__1::__split_buffer"** %39
  br label %168

; <label>:168                                     ; preds = %173, %144
  %169 = load i32*** %40, align 8
  %170 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %167, i32 0, i32 2
  %171 = load i32*** %170, align 8
  %172 = icmp ne i32** %169, %171
  br i1 %172, label %173, label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8pop_backEv.exit

; <label>:173                                     ; preds = %168
  store %"struct.std::__1::__split_buffer"* %167, %"struct.std::__1::__split_buffer"** %38, align 8
  %174 = load %"struct.std::__1::__split_buffer"** %38
  %175 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %174, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %175, %"class.std::__1::__compressed_pair.0"** %37, align 8
  %176 = load %"class.std::__1::__compressed_pair.0"** %37
  %177 = bitcast %"class.std::__1::__compressed_pair.0"* %176 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %177, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %36, align 8
  %178 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %36
  %179 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %178 to %"class.std::__1::allocator.2"*
  %180 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %167, i32 0, i32 2
  %181 = load i32*** %180, align 8
  %182 = getelementptr inbounds i32** %181, i32 -1
  store i32** %182, i32*** %180, align 8
  store i32** %182, i32*** %29, align 8
  %183 = load i32*** %29, align 8
  store %"class.std::__1::allocator.2"* %179, %"class.std::__1::allocator.2"** %32, align 8
  store i32** %183, i32*** %33, align 8
  %184 = bitcast %"struct.std::__1::__has_destroy"* %35 to %"struct.std::__1::integral_constant"*
  %185 = load %"class.std::__1::allocator.2"** %32, align 8
  %186 = load i32*** %33, align 8
  store %"class.std::__1::allocator.2"* %185, %"class.std::__1::allocator.2"** %30, align 8
  store i32** %186, i32*** %31, align 8
  %187 = load i32*** %31, align 8
  br label %168

_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8pop_backEv.exit: ; preds = %168
  br label %188

; <label>:188                                     ; preds = %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8pop_backEv.exit, %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %1, align 8
  %2 = load %"struct.std::__1::__split_buffer"** %1
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED2Ev(%"struct.std::__1::__split_buffer"* %2)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED2Ev(%"struct.std::__1::__split_buffer"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %4 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %5 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %6 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %7 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %8 = alloca %"class.std::__1::allocator.2"*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::__1::allocator.2"*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %"class.std::__1::allocator.2"*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca %"class.std::__1::allocator.2"*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca %"struct.std::__1::integral_constant", align 1
  %20 = alloca %"struct.std::__1::__has_destroy", align 1
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %23 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %24 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca %"struct.std::__1::integral_constant", align 1
  %27 = alloca i8*
  %28 = alloca i32
  %29 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %30 = alloca i32**, align 8
  %31 = alloca %"struct.std::__1::integral_constant", align 1
  %32 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %33 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %33, align 8
  %34 = load %"struct.std::__1::__split_buffer"** %33
  store %"struct.std::__1::__split_buffer"* %34, %"struct.std::__1::__split_buffer"** %32, align 8
  %35 = load %"struct.std::__1::__split_buffer"** %32
  %36 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %35, i32 0, i32 1
  %37 = load i32*** %36, align 8
  store %"struct.std::__1::__split_buffer"* %35, %"struct.std::__1::__split_buffer"** %29, align 8
  store i32** %37, i32*** %30, align 8
  %38 = load %"struct.std::__1::__split_buffer"** %29
  %39 = load i32*** %30, align 8
  store %"struct.std::__1::__split_buffer"* %38, %"struct.std::__1::__split_buffer"** %24, align 8
  store i32** %39, i32*** %25, align 8
  %40 = load %"struct.std::__1::__split_buffer"** %24
  br label %41

; <label>:41                                      ; preds = %46, %0
  %42 = load i32*** %25, align 8
  %43 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %40, i32 0, i32 2
  %44 = load i32*** %43, align 8
  %45 = icmp ne i32** %42, %44
  br i1 %45, label %46, label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearEv.exit

; <label>:46                                      ; preds = %41
  store %"struct.std::__1::__split_buffer"* %40, %"struct.std::__1::__split_buffer"** %23, align 8
  %47 = load %"struct.std::__1::__split_buffer"** %23
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %47, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %48, %"class.std::__1::__compressed_pair.0"** %22, align 8
  %49 = load %"class.std::__1::__compressed_pair.0"** %22
  %50 = bitcast %"class.std::__1::__compressed_pair.0"* %49 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %50, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %21, align 8
  %51 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %21
  %52 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %51 to %"class.std::__1::allocator.2"*
  %53 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %40, i32 0, i32 2
  %54 = load i32*** %53, align 8
  %55 = getelementptr inbounds i32** %54, i32 -1
  store i32** %55, i32*** %53, align 8
  store i32** %55, i32*** %14, align 8
  %56 = load i32*** %14, align 8
  store %"class.std::__1::allocator.2"* %52, %"class.std::__1::allocator.2"** %17, align 8
  store i32** %56, i32*** %18, align 8
  %57 = bitcast %"struct.std::__1::__has_destroy"* %20 to %"struct.std::__1::integral_constant"*
  %58 = load %"class.std::__1::allocator.2"** %17, align 8
  %59 = load i32*** %18, align 8
  store %"class.std::__1::allocator.2"* %58, %"class.std::__1::allocator.2"** %15, align 8
  store i32** %59, i32*** %16, align 8
  %60 = load i32*** %16, align 8
  br label %41

_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearEv.exit: ; preds = %41
  %61 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 0
  %62 = load i32*** %61, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %64, label %93

; <label>:64                                      ; preds = %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearEv.exit
  store %"struct.std::__1::__split_buffer"* %34, %"struct.std::__1::__split_buffer"** %7, align 8
  %65 = load %"struct.std::__1::__split_buffer"** %7
  %66 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %65, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %66, %"class.std::__1::__compressed_pair.0"** %6, align 8
  %67 = load %"class.std::__1::__compressed_pair.0"** %6
  %68 = bitcast %"class.std::__1::__compressed_pair.0"* %67 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %68, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %5, align 8
  %69 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %5
  %70 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %69 to %"class.std::__1::allocator.2"*
  %71 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 0
  %72 = load i32*** %71, align 8
  store %"struct.std::__1::__split_buffer"* %34, %"struct.std::__1::__split_buffer"** %4, align 8
  %73 = load %"struct.std::__1::__split_buffer"** %4
  store %"struct.std::__1::__split_buffer"* %73, %"struct.std::__1::__split_buffer"** %3, align 8
  %74 = load %"struct.std::__1::__split_buffer"** %3
  %75 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %74, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %75, %"class.std::__1::__compressed_pair.0"** %2, align 8
  %76 = load %"class.std::__1::__compressed_pair.0"** %2
  %77 = bitcast %"class.std::__1::__compressed_pair.0"* %76 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %77, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %1, align 8
  %78 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %1
  %79 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %78, i32 0, i32 0
  %80 = load i32*** %79
  %81 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %73, i32 0, i32 0
  %82 = load i32*** %81, align 8
  %83 = ptrtoint i32** %80 to i64
  %84 = ptrtoint i32** %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 8
  store %"class.std::__1::allocator.2"* %70, %"class.std::__1::allocator.2"** %11, align 8
  store i32** %72, i32*** %12, align 8
  store i64 %86, i64* %13, align 8
  %87 = load %"class.std::__1::allocator.2"** %11, align 8
  %88 = load i32*** %12, align 8
  %89 = load i64* %13, align 8
  store %"class.std::__1::allocator.2"* %87, %"class.std::__1::allocator.2"** %8, align 8
  store i32** %88, i32*** %9, align 8
  store i64 %89, i64* %10, align 8
  %90 = load %"class.std::__1::allocator.2"** %8
  %91 = load i32*** %9, align 8
  %92 = bitcast i32** %91 to i8*
  call void @_ZdlPv(i8* %92) #6
  br label %93

; <label>:93                                      ; preds = %64, %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearEv.exit
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::deque"* %this, i32* %__v) #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %3 = alloca %"class.std::__1::__deque_base"*, align 8
  %4 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %5 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %6 = alloca %"class.std::__1::deque"*, align 8
  %7 = alloca %"class.std::__1::deque"*, align 8
  %8 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %"class.std::__1::allocator.6"*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %14 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %15 = alloca %"class.std::__1::__deque_base"*, align 8
  %16 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %17 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %18 = alloca %"class.std::__1::__deque_base"*, align 8
  %19 = alloca %"class.std::__1::deque"*, align 8
  %20 = alloca i32*, align 8
  %__a = alloca %"class.std::__1::allocator.6"*, align 8
  %21 = alloca %"class.std::__1::__deque_iterator", align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %19, align 8
  store i32* %__v, i32** %20, align 8
  %22 = load %"class.std::__1::deque"** %19
  %23 = bitcast %"class.std::__1::deque"* %22 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %23, %"class.std::__1::__deque_base"** %18, align 8
  %24 = load %"class.std::__1::__deque_base"** %18
  %25 = getelementptr inbounds %"class.std::__1::__deque_base"* %24, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %25, %"class.std::__1::__compressed_pair.4"** %17, align 8
  %26 = load %"class.std::__1::__compressed_pair.4"** %17
  %27 = bitcast %"class.std::__1::__compressed_pair.4"* %26 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %27, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %16, align 8
  %28 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %16
  %29 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.5"* %28 to %"class.std::__1::allocator.6"*
  store %"class.std::__1::allocator.6"* %29, %"class.std::__1::allocator.6"** %__a, align 8
  store %"class.std::__1::deque"* %22, %"class.std::__1::deque"** %7, align 8
  %30 = load %"class.std::__1::deque"** %7
  store %"class.std::__1::deque"* %30, %"class.std::__1::deque"** %6, align 8
  %31 = load %"class.std::__1::deque"** %6
  %32 = bitcast %"class.std::__1::deque"* %31 to %"class.std::__1::__deque_base"*
  %33 = getelementptr inbounds %"class.std::__1::__deque_base"* %32, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %33, %"struct.std::__1::__split_buffer"** %5, align 8
  %34 = load %"struct.std::__1::__split_buffer"** %5
  %35 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 2
  %36 = load i32*** %35, align 8
  %37 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 1
  %38 = load i32*** %37, align 8
  %39 = ptrtoint i32** %36 to i64
  %40 = ptrtoint i32** %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %0
  br label %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit

; <label>:45                                      ; preds = %0
  %46 = bitcast %"class.std::__1::deque"* %31 to %"class.std::__1::__deque_base"*
  %47 = getelementptr inbounds %"class.std::__1::__deque_base"* %46, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %47, %"struct.std::__1::__split_buffer"** %4, align 8
  %48 = load %"struct.std::__1::__split_buffer"** %4
  %49 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %48, i32 0, i32 2
  %50 = load i32*** %49, align 8
  %51 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %48, i32 0, i32 1
  %52 = load i32*** %51, align 8
  %53 = ptrtoint i32** %50 to i64
  %54 = ptrtoint i32** %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = mul i64 %56, 1024
  %58 = sub i64 %57, 1
  br label %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit

_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit: ; preds = %44, %45
  %59 = phi i64 [ 0, %44 ], [ %58, %45 ]
  %60 = bitcast %"class.std::__1::deque"* %30 to %"class.std::__1::__deque_base"*
  %61 = getelementptr inbounds %"class.std::__1::__deque_base"* %60, i32 0, i32 1
  %62 = load i64* %61, align 8
  %63 = bitcast %"class.std::__1::deque"* %30 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %63, %"class.std::__1::__deque_base"** %3, align 8
  %64 = load %"class.std::__1::__deque_base"** %3
  %65 = getelementptr inbounds %"class.std::__1::__deque_base"* %64, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %65, %"class.std::__1::__compressed_pair.4"** %2, align 8
  %66 = load %"class.std::__1::__compressed_pair.4"** %2
  %67 = bitcast %"class.std::__1::__compressed_pair.4"* %66 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %67, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %1, align 8
  %68 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %1
  %69 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %68, i32 0, i32 0
  %70 = load i64* %69
  %71 = add i64 %62, %70
  %72 = sub i64 %59, %71
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv(%"class.std::__1::deque"* %22)
  br label %75

; <label>:75                                      ; preds = %74, %_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareEv.exit
  %76 = load %"class.std::__1::allocator.6"** %__a, align 8
  %77 = bitcast %"class.std::__1::deque"* %22 to %"class.std::__1::__deque_base"*
  %78 = call { i32**, i32* } @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE3endEv(%"class.std::__1::__deque_base"* %77) #6
  %79 = bitcast %"class.std::__1::__deque_iterator"* %21 to { i32**, i32* }*
  %80 = getelementptr { i32**, i32* }* %79, i32 0, i32 0
  %81 = extractvalue { i32**, i32* } %78, 0
  store i32** %81, i32*** %80, align 1
  %82 = getelementptr { i32**, i32* }* %79, i32 0, i32 1
  %83 = extractvalue { i32**, i32* } %78, 1
  store i32* %83, i32** %82, align 1
  store %"class.std::__1::__deque_iterator"* %21, %"class.std::__1::__deque_iterator"** %8, align 8
  %84 = load %"class.std::__1::__deque_iterator"** %8
  %85 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %84, i32 0, i32 1
  %86 = load i32** %85, align 8
  store i32* %86, i32** %9, align 8
  %87 = load i32** %9, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = bitcast i8* %88 to i32*
  %90 = load i32** %20, align 8
  store %"class.std::__1::allocator.6"* %76, %"class.std::__1::allocator.6"** %10, align 8
  store i32* %89, i32** %11, align 8
  store i32* %90, i32** %12, align 8
  %91 = load i32** %11, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = icmp eq i8* %92, null
  br i1 %93, label %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiiEEvRS2_PT_RKT0_.exit, label %94

; <label>:94                                      ; preds = %75
  %95 = bitcast i8* %92 to i32*
  %96 = load i32** %12, align 8
  %97 = load i32* %96, align 4
  store i32 %97, i32* %95, align 4
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiiEEvRS2_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiiEEvRS2_PT_RKT0_.exit: ; preds = %75, %94
  %98 = phi i32* [ %95, %94 ], [ null, %75 ]
  %99 = bitcast %"class.std::__1::deque"* %22 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %99, %"class.std::__1::__deque_base"** %15, align 8
  %100 = load %"class.std::__1::__deque_base"** %15
  %101 = getelementptr inbounds %"class.std::__1::__deque_base"* %100, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %101, %"class.std::__1::__compressed_pair.4"** %14, align 8
  %102 = load %"class.std::__1::__compressed_pair.4"** %14
  %103 = bitcast %"class.std::__1::__compressed_pair.4"* %102 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %103, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %13, align 8
  %104 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %13
  %105 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %104, i32 0, i32 0
  %106 = load i64* %105
  %107 = add i64 %106, 1
  store i64 %107, i64* %105
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv(%"class.std::__1::deque"* %this) #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %3 = alloca %"class.std::__1::allocator.6"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::__1::allocator.6"*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %"class.std::__1::move_iterator"*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %"class.std::__1::move_iterator"*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %"class.std::__1::move_iterator"*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %19 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %20 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %21 = alloca i32***, align 8
  %22 = alloca i32***, align 8
  %23 = alloca i32***, align 8
  %24 = alloca i32***, align 8
  %25 = alloca i32***, align 8
  %__t.i3.i28 = alloca i32**, align 8
  %26 = alloca i32***, align 8
  %27 = alloca i32***, align 8
  %28 = alloca i32***, align 8
  %29 = alloca i32***, align 8
  %30 = alloca i32***, align 8
  %__t.i2.i29 = alloca i32**, align 8
  %31 = alloca i32***, align 8
  %32 = alloca i32***, align 8
  %33 = alloca i32***, align 8
  %34 = alloca i32***, align 8
  %35 = alloca i32***, align 8
  %__t.i1.i30 = alloca i32**, align 8
  %36 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %37 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %38 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %39 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %40 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %41 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %42 = alloca i32***, align 8
  %43 = alloca i32***, align 8
  %44 = alloca i32***, align 8
  %45 = alloca i32***, align 8
  %46 = alloca i32***, align 8
  %__t.i.i31 = alloca i32**, align 8
  %47 = alloca %"struct.std::__1::__less"*, align 8
  %48 = alloca i64*, align 8
  %49 = alloca i64*, align 8
  %50 = alloca i64*, align 8
  %51 = alloca i64*, align 8
  %__comp.i.i.i32 = alloca %"struct.std::__1::__less", align 1
  %52 = alloca i64*, align 8
  %53 = alloca i64*, align 8
  %54 = alloca %"struct.std::__1::__less", align 1
  %55 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %56 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %57 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %58 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %59 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %60 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %61 = alloca i32**, align 8
  %62 = alloca %"class.std::__1::allocator.2"*, align 8
  %63 = alloca i32**, align 8
  %64 = alloca i32**, align 8
  %65 = alloca i32**, align 8
  %66 = alloca i32**, align 8
  %67 = alloca i32**, align 8
  %68 = alloca i32**, align 8
  %69 = alloca i32**, align 8
  %__n.i.i.i33 = alloca i64, align 8
  %70 = alloca i32**, align 8
  %71 = alloca i32**, align 8
  %72 = alloca i32**, align 8
  %73 = alloca i32**, align 8
  %74 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %75 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %76 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %77 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %78 = alloca i32**, align 8
  %__d.i34 = alloca i64, align 8
  %__c.i35 = alloca i64, align 8
  %79 = alloca i64, align 8
  %80 = alloca i64, align 8
  %__t.i36 = alloca %"struct.std::__1::__split_buffer.14", align 8
  %81 = alloca %"class.std::__1::move_iterator", align 8
  %82 = alloca i8*
  %83 = alloca i32
  %84 = alloca %"class.std::__1::move_iterator", align 8
  %85 = alloca %"class.std::__1::allocator.6"*, align 8
  %86 = alloca i64, align 8
  %87 = alloca i8*, align 8
  %88 = alloca %"class.std::__1::allocator.6"*, align 8
  %89 = alloca i64, align 8
  %90 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %91 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %92 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %93 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %94 = alloca %"struct.std::__1::__less"*, align 8
  %95 = alloca i64*, align 8
  %96 = alloca i64*, align 8
  %97 = alloca i64*, align 8
  %98 = alloca i64*, align 8
  %__comp.i.i = alloca %"struct.std::__1::__less", align 1
  %99 = alloca i64*, align 8
  %100 = alloca i64*, align 8
  %101 = alloca %"struct.std::__1::__less", align 1
  %102 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %103 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %104 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %105 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %106 = alloca %"class.std::__1::move_iterator"*, align 8
  %107 = alloca i32**, align 8
  %108 = alloca %"class.std::__1::move_iterator"*, align 8
  %109 = alloca i32**, align 8
  %110 = alloca %"class.std::__1::move_iterator"*, align 8
  %111 = alloca i32**, align 8
  %112 = alloca %"class.std::__1::move_iterator"*, align 8
  %113 = alloca i32**, align 8
  %114 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %115 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %116 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %117 = alloca i32***, align 8
  %118 = alloca i32***, align 8
  %119 = alloca i32***, align 8
  %120 = alloca i32***, align 8
  %121 = alloca i32***, align 8
  %__t.i3.i17 = alloca i32**, align 8
  %122 = alloca i32***, align 8
  %123 = alloca i32***, align 8
  %124 = alloca i32***, align 8
  %125 = alloca i32***, align 8
  %126 = alloca i32***, align 8
  %__t.i2.i18 = alloca i32**, align 8
  %127 = alloca i32***, align 8
  %128 = alloca i32***, align 8
  %129 = alloca i32***, align 8
  %130 = alloca i32***, align 8
  %131 = alloca i32***, align 8
  %__t.i1.i19 = alloca i32**, align 8
  %132 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %133 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %134 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %135 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %136 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %137 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %138 = alloca i32***, align 8
  %139 = alloca i32***, align 8
  %140 = alloca i32***, align 8
  %141 = alloca i32***, align 8
  %142 = alloca i32***, align 8
  %__t.i.i20 = alloca i32**, align 8
  %143 = alloca %"struct.std::__1::__less"*, align 8
  %144 = alloca i64*, align 8
  %145 = alloca i64*, align 8
  %146 = alloca i64*, align 8
  %147 = alloca i64*, align 8
  %__comp.i.i.i21 = alloca %"struct.std::__1::__less", align 1
  %148 = alloca i64*, align 8
  %149 = alloca i64*, align 8
  %150 = alloca %"struct.std::__1::__less", align 1
  %151 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %152 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %153 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %154 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %155 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %156 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %157 = alloca i32**, align 8
  %158 = alloca %"class.std::__1::allocator.2"*, align 8
  %159 = alloca i32**, align 8
  %160 = alloca i32**, align 8
  %161 = alloca i32**, align 8
  %162 = alloca i32**, align 8
  %163 = alloca i32**, align 8
  %164 = alloca i32**, align 8
  %165 = alloca i32**, align 8
  %__n.i.i.i22 = alloca i64, align 8
  %166 = alloca i32**, align 8
  %167 = alloca i32**, align 8
  %168 = alloca i32**, align 8
  %169 = alloca i32**, align 8
  %170 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %171 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %172 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %173 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %174 = alloca i32**, align 8
  %__d.i23 = alloca i64, align 8
  %__c.i24 = alloca i64, align 8
  %175 = alloca i64, align 8
  %176 = alloca i64, align 8
  %__t.i25 = alloca %"struct.std::__1::__split_buffer.14", align 8
  %177 = alloca %"class.std::__1::move_iterator", align 8
  %178 = alloca i8*
  %179 = alloca i32
  %180 = alloca %"class.std::__1::move_iterator", align 8
  %181 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %182 = alloca i32**, align 8
  %183 = alloca %"struct.std::__1::integral_constant.17", align 1
  %184 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %185 = alloca i32**, align 8
  %186 = alloca %"struct.std::__1::integral_constant.17", align 1
  %187 = alloca %"struct.std::__1::is_trivially_destructible", align 1
  %188 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %189 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %190 = alloca %"class.std::__1::allocator.6"*, align 8
  %191 = alloca i64, align 8
  %192 = alloca i8*, align 8
  %193 = alloca %"class.std::__1::allocator.6"*, align 8
  %194 = alloca i64, align 8
  %195 = alloca %"class.std::__1::move_iterator"*, align 8
  %196 = alloca i32**, align 8
  %197 = alloca %"class.std::__1::move_iterator"*, align 8
  %198 = alloca i32**, align 8
  %199 = alloca %"class.std::__1::move_iterator"*, align 8
  %200 = alloca i32**, align 8
  %201 = alloca %"class.std::__1::move_iterator"*, align 8
  %202 = alloca i32**, align 8
  %203 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %204 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %205 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %206 = alloca i32***, align 8
  %207 = alloca i32***, align 8
  %208 = alloca i32***, align 8
  %209 = alloca i32***, align 8
  %210 = alloca i32***, align 8
  %__t.i3.i6 = alloca i32**, align 8
  %211 = alloca i32***, align 8
  %212 = alloca i32***, align 8
  %213 = alloca i32***, align 8
  %214 = alloca i32***, align 8
  %215 = alloca i32***, align 8
  %__t.i2.i7 = alloca i32**, align 8
  %216 = alloca i32***, align 8
  %217 = alloca i32***, align 8
  %218 = alloca i32***, align 8
  %219 = alloca i32***, align 8
  %220 = alloca i32***, align 8
  %__t.i1.i8 = alloca i32**, align 8
  %221 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %222 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %223 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %224 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %225 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %226 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %227 = alloca i32***, align 8
  %228 = alloca i32***, align 8
  %229 = alloca i32***, align 8
  %230 = alloca i32***, align 8
  %231 = alloca i32***, align 8
  %__t.i.i9 = alloca i32**, align 8
  %232 = alloca %"struct.std::__1::__less"*, align 8
  %233 = alloca i64*, align 8
  %234 = alloca i64*, align 8
  %235 = alloca i64*, align 8
  %236 = alloca i64*, align 8
  %__comp.i.i.i10 = alloca %"struct.std::__1::__less", align 1
  %237 = alloca i64*, align 8
  %238 = alloca i64*, align 8
  %239 = alloca %"struct.std::__1::__less", align 1
  %240 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %241 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %242 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %243 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %244 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %245 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %246 = alloca i32**, align 8
  %247 = alloca %"class.std::__1::allocator.2"*, align 8
  %248 = alloca i32**, align 8
  %249 = alloca i32**, align 8
  %250 = alloca i32**, align 8
  %251 = alloca i32**, align 8
  %252 = alloca i32**, align 8
  %253 = alloca i32**, align 8
  %254 = alloca i32**, align 8
  %__n.i.i.i11 = alloca i64, align 8
  %255 = alloca i32**, align 8
  %256 = alloca i32**, align 8
  %257 = alloca i32**, align 8
  %258 = alloca i32**, align 8
  %259 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %260 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %261 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %262 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %263 = alloca i32**, align 8
  %__d.i12 = alloca i64, align 8
  %__c.i13 = alloca i64, align 8
  %264 = alloca i64, align 8
  %265 = alloca i64, align 8
  %__t.i14 = alloca %"struct.std::__1::__split_buffer.14", align 8
  %266 = alloca %"class.std::__1::move_iterator", align 8
  %267 = alloca i8*
  %268 = alloca i32
  %269 = alloca %"class.std::__1::move_iterator", align 8
  %270 = alloca %"class.std::__1::allocator.6"*, align 8
  %271 = alloca i64, align 8
  %272 = alloca i8*, align 8
  %273 = alloca %"class.std::__1::allocator.6"*, align 8
  %274 = alloca i64, align 8
  %275 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %276 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %277 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %278 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %279 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %280 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %281 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %282 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %283 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %284 = alloca %"class.std::__1::move_iterator"*, align 8
  %285 = alloca i32**, align 8
  %286 = alloca %"class.std::__1::move_iterator"*, align 8
  %287 = alloca i32**, align 8
  %288 = alloca %"class.std::__1::move_iterator"*, align 8
  %289 = alloca i32**, align 8
  %290 = alloca %"class.std::__1::move_iterator"*, align 8
  %291 = alloca i32**, align 8
  %292 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %293 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %294 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %295 = alloca i32***, align 8
  %296 = alloca i32***, align 8
  %297 = alloca i32***, align 8
  %298 = alloca i32***, align 8
  %299 = alloca i32***, align 8
  %__t.i3.i = alloca i32**, align 8
  %300 = alloca i32***, align 8
  %301 = alloca i32***, align 8
  %302 = alloca i32***, align 8
  %303 = alloca i32***, align 8
  %304 = alloca i32***, align 8
  %__t.i2.i = alloca i32**, align 8
  %305 = alloca i32***, align 8
  %306 = alloca i32***, align 8
  %307 = alloca i32***, align 8
  %308 = alloca i32***, align 8
  %309 = alloca i32***, align 8
  %__t.i1.i = alloca i32**, align 8
  %310 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %311 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %312 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %313 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %314 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %315 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %316 = alloca i32***, align 8
  %317 = alloca i32***, align 8
  %318 = alloca i32***, align 8
  %319 = alloca i32***, align 8
  %320 = alloca i32***, align 8
  %__t.i.i = alloca i32**, align 8
  %321 = alloca %"struct.std::__1::__less"*, align 8
  %322 = alloca i64*, align 8
  %323 = alloca i64*, align 8
  %324 = alloca i64*, align 8
  %325 = alloca i64*, align 8
  %__comp.i.i.i = alloca %"struct.std::__1::__less", align 1
  %326 = alloca i64*, align 8
  %327 = alloca i64*, align 8
  %328 = alloca %"struct.std::__1::__less", align 1
  %329 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %330 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %331 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %332 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %333 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %334 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %335 = alloca i32**, align 8
  %336 = alloca %"class.std::__1::allocator.2"*, align 8
  %337 = alloca i32**, align 8
  %338 = alloca i32**, align 8
  %339 = alloca i32**, align 8
  %340 = alloca i32**, align 8
  %341 = alloca i32**, align 8
  %342 = alloca i32**, align 8
  %343 = alloca i32**, align 8
  %__n.i.i.i = alloca i64, align 8
  %344 = alloca i32**, align 8
  %345 = alloca i32**, align 8
  %346 = alloca i32**, align 8
  %347 = alloca i32**, align 8
  %348 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %349 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %350 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %351 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %352 = alloca i32**, align 8
  %__d.i = alloca i64, align 8
  %__c.i = alloca i64, align 8
  %353 = alloca i64, align 8
  %354 = alloca i64, align 8
  %__t.i5 = alloca %"struct.std::__1::__split_buffer.14", align 8
  %355 = alloca %"class.std::__1::move_iterator", align 8
  %356 = alloca i8*
  %357 = alloca i32
  %358 = alloca %"class.std::__1::move_iterator", align 8
  %359 = alloca i32***, align 8
  %360 = alloca i32***, align 8
  %361 = alloca i32***, align 8
  %362 = alloca i32***, align 8
  %363 = alloca i32***, align 8
  %__t.i4 = alloca i32**, align 8
  %364 = alloca i32***, align 8
  %365 = alloca i32***, align 8
  %366 = alloca i32***, align 8
  %367 = alloca i32***, align 8
  %368 = alloca i32***, align 8
  %__t.i3 = alloca i32**, align 8
  %369 = alloca i32***, align 8
  %370 = alloca i32***, align 8
  %371 = alloca i32***, align 8
  %372 = alloca i32***, align 8
  %373 = alloca i32***, align 8
  %__t.i2 = alloca i32**, align 8
  %374 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %375 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %376 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %377 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %378 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %379 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %380 = alloca i32***, align 8
  %381 = alloca i32***, align 8
  %382 = alloca i32***, align 8
  %383 = alloca i32***, align 8
  %384 = alloca i32***, align 8
  %__t.i = alloca i32**, align 8
  %385 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %386 = alloca i32**, align 8
  %387 = alloca %"struct.std::__1::integral_constant.17", align 1
  %388 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %389 = alloca i32**, align 8
  %390 = alloca %"struct.std::__1::integral_constant.17", align 1
  %391 = alloca %"struct.std::__1::is_trivially_destructible", align 1
  %392 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %393 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %394 = alloca %"class.std::__1::deque"*, align 8
  %395 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %396 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %397 = alloca %"class.std::__1::__deque_base"*, align 8
  %398 = alloca %"class.std::__1::deque"*, align 8
  %__a = alloca %"class.std::__1::allocator.6"*, align 8
  %__pt = alloca i32*, align 8
  %399 = alloca i32*, align 8
  %400 = alloca i32*, align 8
  %__pt1 = alloca i32*, align 8
  %__buf = alloca %"struct.std::__1::__split_buffer.14", align 8
  %401 = alloca i64, align 8
  %402 = alloca i64, align 8
  %403 = alloca i32*, align 8
  %404 = alloca i8*
  %405 = alloca i32
  %__i = alloca i32**, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %398, align 8
  %406 = load %"class.std::__1::deque"** %398
  %407 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %407, %"class.std::__1::__deque_base"** %397, align 8
  %408 = load %"class.std::__1::__deque_base"** %397
  %409 = getelementptr inbounds %"class.std::__1::__deque_base"* %408, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %409, %"class.std::__1::__compressed_pair.4"** %396, align 8
  %410 = load %"class.std::__1::__compressed_pair.4"** %396
  %411 = bitcast %"class.std::__1::__compressed_pair.4"* %410 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %411, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %395, align 8
  %412 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %395
  %413 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.5"* %412 to %"class.std::__1::allocator.6"*
  store %"class.std::__1::allocator.6"* %413, %"class.std::__1::allocator.6"** %__a, align 8
  store %"class.std::__1::deque"* %406, %"class.std::__1::deque"** %394, align 8
  %414 = load %"class.std::__1::deque"** %394
  %415 = bitcast %"class.std::__1::deque"* %414 to %"class.std::__1::__deque_base"*
  %416 = getelementptr inbounds %"class.std::__1::__deque_base"* %415, i32 0, i32 1
  %417 = load i64* %416, align 8
  %418 = icmp uge i64 %417, 1024
  br i1 %418, label %419, label %661

; <label>:419                                     ; preds = %0
  %420 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %421 = getelementptr inbounds %"class.std::__1::__deque_base"* %420, i32 0, i32 1
  %422 = load i64* %421, align 8
  %423 = sub i64 %422, 1024
  store i64 %423, i64* %421, align 8
  %424 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %425 = getelementptr inbounds %"class.std::__1::__deque_base"* %424, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %425, %"struct.std::__1::__split_buffer"** %393, align 8
  %426 = load %"struct.std::__1::__split_buffer"** %393
  %427 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %426, i32 0, i32 1
  %428 = load i32*** %427, align 8
  %429 = load i32** %428
  store i32* %429, i32** %__pt, align 8
  %430 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %431 = getelementptr inbounds %"class.std::__1::__deque_base"* %430, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %431, %"struct.std::__1::__split_buffer"** %392, align 8
  %432 = load %"struct.std::__1::__split_buffer"** %392
  %433 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %432, i32 0, i32 1
  %434 = load i32*** %433, align 8
  %435 = getelementptr inbounds i32** %434, i64 1
  store %"struct.std::__1::__split_buffer"* %432, %"struct.std::__1::__split_buffer"** %388, align 8
  store i32** %435, i32*** %389, align 8
  %436 = load %"struct.std::__1::__split_buffer"** %388
  %437 = load i32*** %389, align 8
  %438 = bitcast %"struct.std::__1::is_trivially_destructible"* %391 to %"struct.std::__1::integral_constant.17"*
  store %"struct.std::__1::__split_buffer"* %436, %"struct.std::__1::__split_buffer"** %385, align 8
  store i32** %437, i32*** %386, align 8
  %439 = load %"struct.std::__1::__split_buffer"** %385
  %440 = load i32*** %386, align 8
  %441 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %439, i32 0, i32 1
  store i32** %440, i32*** %441, align 8
  %442 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %443 = getelementptr inbounds %"class.std::__1::__deque_base"* %442, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %443, %"struct.std::__1::__split_buffer"** %351, align 8
  store i32** %__pt, i32*** %352, align 8
  %444 = load %"struct.std::__1::__split_buffer"** %351
  %445 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %446 = load i32*** %445, align 8
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %350, align 8
  %447 = load %"struct.std::__1::__split_buffer"** %350
  %448 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %447, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %448, %"class.std::__1::__compressed_pair.0"** %349, align 8
  %449 = load %"class.std::__1::__compressed_pair.0"** %349
  %450 = bitcast %"class.std::__1::__compressed_pair.0"* %449 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %450, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %348, align 8
  %451 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %348
  %452 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %451, i32 0, i32 0
  %453 = load i32*** %452
  %454 = icmp eq i32** %446, %453
  br i1 %454, label %455, label %636

; <label>:455                                     ; preds = %419
  %456 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %457 = load i32*** %456, align 8
  %458 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %459 = load i32*** %458, align 8
  %460 = icmp ugt i32** %457, %459
  br i1 %460, label %461, label %509

; <label>:461                                     ; preds = %455
  %462 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %463 = load i32*** %462, align 8
  %464 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %465 = load i32*** %464, align 8
  %466 = ptrtoint i32** %463 to i64
  %467 = ptrtoint i32** %465 to i64
  %468 = sub i64 %466, %467
  %469 = sdiv exact i64 %468, 8
  store i64 %469, i64* %__d.i, align 8
  %470 = load i64* %__d.i, align 8
  %471 = add nsw i64 %470, 1
  %472 = sdiv i64 %471, 2
  store i64 %472, i64* %__d.i, align 8
  %473 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %474 = load i32*** %473, align 8
  %475 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %476 = load i32*** %475, align 8
  %477 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %478 = load i32*** %477, align 8
  %479 = load i64* %__d.i, align 8
  %480 = sub i64 0, %479
  %481 = getelementptr inbounds i32** %478, i64 %480
  store i32** %474, i32*** %345, align 8
  store i32** %476, i32*** %346, align 8
  store i32** %481, i32*** %347, align 8
  %482 = load i32*** %345, align 8
  store i32** %482, i32*** %344, align 8
  %483 = load i32*** %344, align 8
  %484 = load i32*** %346, align 8
  store i32** %484, i32*** %339, align 8
  %485 = load i32*** %339, align 8
  %486 = load i32*** %347, align 8
  store i32** %486, i32*** %340, align 8
  %487 = load i32*** %340, align 8
  store i32** %483, i32*** %341, align 8
  store i32** %485, i32*** %342, align 8
  store i32** %487, i32*** %343, align 8
  %488 = load i32*** %342, align 8
  %489 = load i32*** %341, align 8
  %490 = ptrtoint i32** %488 to i64
  %491 = ptrtoint i32** %489 to i64
  %492 = sub i64 %490, %491
  %493 = sdiv exact i64 %492, 8
  store i64 %493, i64* %__n.i.i.i, align 8
  %494 = load i32*** %343, align 8
  %495 = bitcast i32** %494 to i8*
  %496 = load i32*** %341, align 8
  %497 = bitcast i32** %496 to i8*
  %498 = load i64* %__n.i.i.i, align 8
  %499 = mul i64 %498, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %495, i8* %497, i64 %499, i32 8, i1 false) #6
  %500 = load i32*** %343, align 8
  %501 = load i64* %__n.i.i.i, align 8
  %502 = getelementptr inbounds i32** %500, i64 %501
  %503 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  store i32** %502, i32*** %503, align 8
  %504 = load i64* %__d.i, align 8
  %505 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %506 = load i32*** %505, align 8
  %507 = sub i64 0, %504
  %508 = getelementptr inbounds i32** %506, i64 %507
  store i32** %508, i32*** %505, align 8
  br label %635

; <label>:509                                     ; preds = %455
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %331, align 8
  %510 = load %"struct.std::__1::__split_buffer"** %331
  %511 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %510, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %511, %"class.std::__1::__compressed_pair.0"** %330, align 8
  %512 = load %"class.std::__1::__compressed_pair.0"** %330
  %513 = bitcast %"class.std::__1::__compressed_pair.0"* %512 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %513, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %329, align 8
  %514 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %329
  %515 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %514, i32 0, i32 0
  %516 = load i32*** %515
  %517 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %518 = load i32*** %517, align 8
  %519 = ptrtoint i32** %516 to i64
  %520 = ptrtoint i32** %518 to i64
  %521 = sub i64 %519, %520
  %522 = sdiv exact i64 %521, 8
  %523 = mul i64 2, %522
  store i64 %523, i64* %353
  store i64 1, i64* %354
  store i64* %353, i64** %326, align 8
  store i64* %354, i64** %327, align 8
  %524 = load i64** %326, align 8
  %525 = load i64** %327, align 8
  store i64* %524, i64** %324, align 8
  store i64* %525, i64** %325, align 8
  %526 = load i64** %324, align 8
  %527 = load i64** %325, align 8
  store %"struct.std::__1::__less"* %__comp.i.i.i, %"struct.std::__1::__less"** %321, align 8
  store i64* %526, i64** %322, align 8
  store i64* %527, i64** %323, align 8
  %528 = load %"struct.std::__1::__less"** %321
  %529 = load i64** %322, align 8
  %530 = load i64* %529, align 8
  %531 = load i64** %323, align 8
  %532 = load i64* %531, align 8
  %533 = icmp ult i64 %530, %532
  br i1 %533, label %534, label %536

; <label>:534                                     ; preds = %509
  %535 = load i64** %325, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i

; <label>:536                                     ; preds = %509
  %537 = load i64** %324, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i

_ZNSt3__13maxImEERKT_S3_S3_.exit.i:               ; preds = %536, %534
  %538 = phi i64* [ %535, %534 ], [ %537, %536 ]
  %539 = load i64* %538
  store i64 %539, i64* %__c.i, align 8
  %540 = load i64* %__c.i, align 8
  %541 = load i64* %__c.i, align 8
  %542 = udiv i64 %541, 4
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %294, align 8
  %543 = load %"struct.std::__1::__split_buffer"** %294
  %544 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %543, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %544, %"class.std::__1::__compressed_pair.0"** %293, align 8
  %545 = load %"class.std::__1::__compressed_pair.0"** %293
  %546 = bitcast %"class.std::__1::__compressed_pair.0"* %545 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %546, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %292, align 8
  %547 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %292
  %548 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %547 to %"class.std::__1::allocator.2"*
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %__t.i5, i64 %540, i64 %542, %"class.std::__1::allocator.2"* %548)
  %549 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %550 = load i32*** %549, align 8
  store %"class.std::__1::move_iterator"* %355, %"class.std::__1::move_iterator"** %286, align 8
  store i32** %550, i32*** %287, align 8
  %551 = load %"class.std::__1::move_iterator"** %286
  %552 = load i32*** %287, align 8
  store %"class.std::__1::move_iterator"* %551, %"class.std::__1::move_iterator"** %284, align 8
  store i32** %552, i32*** %285, align 8
  %553 = load %"class.std::__1::move_iterator"** %284
  %554 = getelementptr inbounds %"class.std::__1::move_iterator"* %553, i32 0, i32 0
  %555 = load i32*** %285, align 8
  store i32** %555, i32*** %554, align 8
  %556 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %557 = load i32*** %556, align 8
  store %"class.std::__1::move_iterator"* %358, %"class.std::__1::move_iterator"** %290, align 8
  store i32** %557, i32*** %291, align 8
  %558 = load %"class.std::__1::move_iterator"** %290
  %559 = load i32*** %291, align 8
  store %"class.std::__1::move_iterator"* %558, %"class.std::__1::move_iterator"** %288, align 8
  store i32** %559, i32*** %289, align 8
  %560 = load %"class.std::__1::move_iterator"** %288
  %561 = getelementptr inbounds %"class.std::__1::move_iterator"* %560, i32 0, i32 0
  %562 = load i32*** %289, align 8
  store i32** %562, i32*** %561, align 8
  %563 = getelementptr %"class.std::__1::move_iterator"* %355, i32 0, i32 0
  %564 = load i32*** %563
  %565 = getelementptr %"class.std::__1::move_iterator"* %358, i32 0, i32 0
  %566 = load i32*** %565
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESB_SB_(%"struct.std::__1::__split_buffer.14"* %__t.i5, i32** %564, i32** %566)
          to label %567 unwind label %626

; <label>:567                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i
  %568 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %569 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i5, i32 0, i32 0
  store i32*** %568, i32**** %298, align 8
  store i32*** %569, i32**** %299, align 8
  %570 = load i32**** %298, align 8
  store i32*** %570, i32**** %297, align 8
  %571 = load i32**** %297, align 8
  %572 = load i32*** %571
  store i32** %572, i32*** %__t.i3.i, align 8
  %573 = load i32**** %299, align 8
  store i32*** %573, i32**** %295, align 8
  %574 = load i32**** %295, align 8
  %575 = load i32*** %574
  %576 = load i32**** %298, align 8
  store i32** %575, i32*** %576, align 8
  store i32*** %__t.i3.i, i32**** %296, align 8
  %577 = load i32**** %296, align 8
  %578 = load i32*** %577
  %579 = load i32**** %299, align 8
  store i32** %578, i32*** %579, align 8
  %580 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %581 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i5, i32 0, i32 1
  store i32*** %580, i32**** %303, align 8
  store i32*** %581, i32**** %304, align 8
  %582 = load i32**** %303, align 8
  store i32*** %582, i32**** %302, align 8
  %583 = load i32**** %302, align 8
  %584 = load i32*** %583
  store i32** %584, i32*** %__t.i2.i, align 8
  %585 = load i32**** %304, align 8
  store i32*** %585, i32**** %300, align 8
  %586 = load i32**** %300, align 8
  %587 = load i32*** %586
  %588 = load i32**** %303, align 8
  store i32** %587, i32*** %588, align 8
  store i32*** %__t.i2.i, i32**** %301, align 8
  %589 = load i32**** %301, align 8
  %590 = load i32*** %589
  %591 = load i32**** %304, align 8
  store i32** %590, i32*** %591, align 8
  %592 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %593 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i5, i32 0, i32 2
  store i32*** %592, i32**** %308, align 8
  store i32*** %593, i32**** %309, align 8
  %594 = load i32**** %308, align 8
  store i32*** %594, i32**** %307, align 8
  %595 = load i32**** %307, align 8
  %596 = load i32*** %595
  store i32** %596, i32*** %__t.i1.i, align 8
  %597 = load i32**** %309, align 8
  store i32*** %597, i32**** %305, align 8
  %598 = load i32**** %305, align 8
  %599 = load i32*** %598
  %600 = load i32**** %308, align 8
  store i32** %599, i32*** %600, align 8
  store i32*** %__t.i1.i, i32**** %306, align 8
  %601 = load i32**** %306, align 8
  %602 = load i32*** %601
  %603 = load i32**** %309, align 8
  store i32** %602, i32*** %603, align 8
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %312, align 8
  %604 = load %"struct.std::__1::__split_buffer"** %312
  %605 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %604, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %605, %"class.std::__1::__compressed_pair.0"** %311, align 8
  %606 = load %"class.std::__1::__compressed_pair.0"** %311
  %607 = bitcast %"class.std::__1::__compressed_pair.0"* %606 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %607, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %310, align 8
  %608 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %310
  %609 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %608, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.14"* %__t.i5, %"struct.std::__1::__split_buffer.14"** %315, align 8
  %610 = load %"struct.std::__1::__split_buffer.14"** %315
  %611 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %610, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %611, %"class.std::__1::__compressed_pair.15"** %314, align 8
  %612 = load %"class.std::__1::__compressed_pair.15"** %314
  %613 = bitcast %"class.std::__1::__compressed_pair.15"* %612 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %613, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %313, align 8
  %614 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %313
  %615 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %614, i32 0, i32 0
  store i32*** %609, i32**** %319, align 8
  store i32*** %615, i32**** %320, align 8
  %616 = load i32**** %319, align 8
  store i32*** %616, i32**** %318, align 8
  %617 = load i32**** %318, align 8
  %618 = load i32*** %617
  store i32** %618, i32*** %__t.i.i, align 8
  %619 = load i32**** %320, align 8
  store i32*** %619, i32**** %316, align 8
  %620 = load i32**** %316, align 8
  %621 = load i32*** %620
  %622 = load i32**** %319, align 8
  store i32** %621, i32*** %622, align 8
  store i32*** %__t.i.i, i32**** %317, align 8
  %623 = load i32**** %317, align 8
  %624 = load i32*** %623
  %625 = load i32**** %320, align 8
  store i32** %624, i32*** %625, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i5)
  br label %635

; <label>:626                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i
  %627 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %628 = extractvalue { i8*, i32 } %627, 0
  store i8* %628, i8** %356
  %629 = extractvalue { i8*, i32 } %627, 1
  store i32 %629, i32* %357
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i5)
          to label %630 unwind label %654

; <label>:630                                     ; preds = %626
  %631 = load i8** %356
  %632 = load i32* %357
  %633 = insertvalue { i8*, i32 } undef, i8* %631, 0
  %634 = insertvalue { i8*, i32 } %633, i32 %632, 1
  resume { i8*, i32 } %634

; <label>:635                                     ; preds = %567, %461
  br label %636

; <label>:636                                     ; preds = %635, %419
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %334, align 8
  %637 = load %"struct.std::__1::__split_buffer"** %334
  %638 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %637, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %638, %"class.std::__1::__compressed_pair.0"** %333, align 8
  %639 = load %"class.std::__1::__compressed_pair.0"** %333
  %640 = bitcast %"class.std::__1::__compressed_pair.0"* %639 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %640, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %332, align 8
  %641 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %332
  %642 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %641 to %"class.std::__1::allocator.2"*
  %643 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %644 = load i32*** %643, align 8
  store i32** %644, i32*** %335, align 8
  %645 = load i32*** %335, align 8
  %646 = load i32*** %352, align 8
  store %"class.std::__1::allocator.2"* %642, %"class.std::__1::allocator.2"** %336, align 8
  store i32** %645, i32*** %337, align 8
  store i32** %646, i32*** %338, align 8
  %647 = load i32*** %337, align 8
  %648 = bitcast i32** %647 to i8*
  %649 = icmp eq i8* %648, null
  br i1 %649, label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit, label %650

; <label>:650                                     ; preds = %636
  %651 = bitcast i8* %648 to i32**
  %652 = load i32*** %338, align 8
  %653 = load i32** %652, align 8
  store i32* %653, i32** %651, align 8
  br label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit

; <label>:654                                     ; preds = %626
  %655 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %656 = extractvalue { i8*, i32 } %655, 0
  call void @__clang_call_terminate(i8* %656) #11
  unreachable

_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit: ; preds = %636, %650
  %657 = phi i32** [ %651, %650 ], [ null, %636 ]
  %658 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %659 = load i32*** %658, align 8
  %660 = getelementptr inbounds i32** %659, i32 1
  store i32** %660, i32*** %658, align 8
  br label %1588

; <label>:661                                     ; preds = %0
  %662 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %663 = getelementptr inbounds %"class.std::__1::__deque_base"* %662, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %663, %"struct.std::__1::__split_buffer"** %283, align 8
  %664 = load %"struct.std::__1::__split_buffer"** %283
  %665 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %664, i32 0, i32 2
  %666 = load i32*** %665, align 8
  %667 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %664, i32 0, i32 1
  %668 = load i32*** %667, align 8
  %669 = ptrtoint i32** %666 to i64
  %670 = ptrtoint i32** %668 to i64
  %671 = sub i64 %669, %670
  %672 = sdiv exact i64 %671, 8
  %673 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %674 = getelementptr inbounds %"class.std::__1::__deque_base"* %673, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %674, %"struct.std::__1::__split_buffer"** %282, align 8
  %675 = load %"struct.std::__1::__split_buffer"** %282
  store %"struct.std::__1::__split_buffer"* %675, %"struct.std::__1::__split_buffer"** %281, align 8
  %676 = load %"struct.std::__1::__split_buffer"** %281
  %677 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %676, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %677, %"class.std::__1::__compressed_pair.0"** %280, align 8
  %678 = load %"class.std::__1::__compressed_pair.0"** %280
  %679 = bitcast %"class.std::__1::__compressed_pair.0"* %678 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %679, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %279, align 8
  %680 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %279
  %681 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %680, i32 0, i32 0
  %682 = load i32*** %681
  %683 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %675, i32 0, i32 0
  %684 = load i32*** %683, align 8
  %685 = ptrtoint i32** %682 to i64
  %686 = ptrtoint i32** %684 to i64
  %687 = sub i64 %685, %686
  %688 = sdiv exact i64 %687, 8
  %689 = icmp ult i64 %672, %688
  br i1 %689, label %690, label %1185

; <label>:690                                     ; preds = %661
  %691 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %692 = getelementptr inbounds %"class.std::__1::__deque_base"* %691, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %692, %"struct.std::__1::__split_buffer"** %278, align 8
  %693 = load %"struct.std::__1::__split_buffer"** %278
  store %"struct.std::__1::__split_buffer"* %693, %"struct.std::__1::__split_buffer"** %277, align 8
  %694 = load %"struct.std::__1::__split_buffer"** %277
  %695 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %694, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %695, %"class.std::__1::__compressed_pair.0"** %276, align 8
  %696 = load %"class.std::__1::__compressed_pair.0"** %276
  %697 = bitcast %"class.std::__1::__compressed_pair.0"* %696 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %697, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %275, align 8
  %698 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %275
  %699 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %698, i32 0, i32 0
  %700 = load i32*** %699
  %701 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %693, i32 0, i32 2
  %702 = load i32*** %701, align 8
  %703 = ptrtoint i32** %700 to i64
  %704 = ptrtoint i32** %702 to i64
  %705 = sub i64 %703, %704
  %706 = sdiv exact i64 %705, 8
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %936

; <label>:708                                     ; preds = %690
  %709 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %710 = getelementptr inbounds %"class.std::__1::__deque_base"* %709, i32 0, i32 0
  %711 = load %"class.std::__1::allocator.6"** %__a, align 8
  store %"class.std::__1::allocator.6"* %711, %"class.std::__1::allocator.6"** %273, align 8
  store i64 1024, i64* %274, align 8
  %712 = load %"class.std::__1::allocator.6"** %273, align 8
  %713 = load i64* %274, align 8
  store %"class.std::__1::allocator.6"* %712, %"class.std::__1::allocator.6"** %270, align 8
  store i64 %713, i64* %271, align 8
  store i8* null, i8** %272, align 8
  %714 = load %"class.std::__1::allocator.6"** %270
  %715 = load i64* %271, align 8
  %716 = mul i64 %715, 4
  %717 = call noalias i8* @_Znwm(i64 %716)
  %718 = bitcast i8* %717 to i32*
  store i32* %718, i32** %399
  store %"struct.std::__1::__split_buffer"* %710, %"struct.std::__1::__split_buffer"** %262, align 8
  store i32** %399, i32*** %263, align 8
  %719 = load %"struct.std::__1::__split_buffer"** %262
  %720 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %721 = load i32*** %720, align 8
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %261, align 8
  %722 = load %"struct.std::__1::__split_buffer"** %261
  %723 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %722, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %723, %"class.std::__1::__compressed_pair.0"** %260, align 8
  %724 = load %"class.std::__1::__compressed_pair.0"** %260
  %725 = bitcast %"class.std::__1::__compressed_pair.0"* %724 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %725, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %259, align 8
  %726 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %259
  %727 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %726, i32 0, i32 0
  %728 = load i32*** %727
  %729 = icmp eq i32** %721, %728
  br i1 %729, label %730, label %911

; <label>:730                                     ; preds = %708
  %731 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %732 = load i32*** %731, align 8
  %733 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %734 = load i32*** %733, align 8
  %735 = icmp ugt i32** %732, %734
  br i1 %735, label %736, label %784

; <label>:736                                     ; preds = %730
  %737 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %738 = load i32*** %737, align 8
  %739 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %740 = load i32*** %739, align 8
  %741 = ptrtoint i32** %738 to i64
  %742 = ptrtoint i32** %740 to i64
  %743 = sub i64 %741, %742
  %744 = sdiv exact i64 %743, 8
  store i64 %744, i64* %__d.i12, align 8
  %745 = load i64* %__d.i12, align 8
  %746 = add nsw i64 %745, 1
  %747 = sdiv i64 %746, 2
  store i64 %747, i64* %__d.i12, align 8
  %748 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %749 = load i32*** %748, align 8
  %750 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %751 = load i32*** %750, align 8
  %752 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %753 = load i32*** %752, align 8
  %754 = load i64* %__d.i12, align 8
  %755 = sub i64 0, %754
  %756 = getelementptr inbounds i32** %753, i64 %755
  store i32** %749, i32*** %256, align 8
  store i32** %751, i32*** %257, align 8
  store i32** %756, i32*** %258, align 8
  %757 = load i32*** %256, align 8
  store i32** %757, i32*** %255, align 8
  %758 = load i32*** %255, align 8
  %759 = load i32*** %257, align 8
  store i32** %759, i32*** %250, align 8
  %760 = load i32*** %250, align 8
  %761 = load i32*** %258, align 8
  store i32** %761, i32*** %251, align 8
  %762 = load i32*** %251, align 8
  store i32** %758, i32*** %252, align 8
  store i32** %760, i32*** %253, align 8
  store i32** %762, i32*** %254, align 8
  %763 = load i32*** %253, align 8
  %764 = load i32*** %252, align 8
  %765 = ptrtoint i32** %763 to i64
  %766 = ptrtoint i32** %764 to i64
  %767 = sub i64 %765, %766
  %768 = sdiv exact i64 %767, 8
  store i64 %768, i64* %__n.i.i.i11, align 8
  %769 = load i32*** %254, align 8
  %770 = bitcast i32** %769 to i8*
  %771 = load i32*** %252, align 8
  %772 = bitcast i32** %771 to i8*
  %773 = load i64* %__n.i.i.i11, align 8
  %774 = mul i64 %773, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %770, i8* %772, i64 %774, i32 8, i1 false) #6
  %775 = load i32*** %254, align 8
  %776 = load i64* %__n.i.i.i11, align 8
  %777 = getelementptr inbounds i32** %775, i64 %776
  %778 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  store i32** %777, i32*** %778, align 8
  %779 = load i64* %__d.i12, align 8
  %780 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %781 = load i32*** %780, align 8
  %782 = sub i64 0, %779
  %783 = getelementptr inbounds i32** %781, i64 %782
  store i32** %783, i32*** %780, align 8
  br label %910

; <label>:784                                     ; preds = %730
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %242, align 8
  %785 = load %"struct.std::__1::__split_buffer"** %242
  %786 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %785, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %786, %"class.std::__1::__compressed_pair.0"** %241, align 8
  %787 = load %"class.std::__1::__compressed_pair.0"** %241
  %788 = bitcast %"class.std::__1::__compressed_pair.0"* %787 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %788, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %240, align 8
  %789 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %240
  %790 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %789, i32 0, i32 0
  %791 = load i32*** %790
  %792 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %793 = load i32*** %792, align 8
  %794 = ptrtoint i32** %791 to i64
  %795 = ptrtoint i32** %793 to i64
  %796 = sub i64 %794, %795
  %797 = sdiv exact i64 %796, 8
  %798 = mul i64 2, %797
  store i64 %798, i64* %264
  store i64 1, i64* %265
  store i64* %264, i64** %237, align 8
  store i64* %265, i64** %238, align 8
  %799 = load i64** %237, align 8
  %800 = load i64** %238, align 8
  store i64* %799, i64** %235, align 8
  store i64* %800, i64** %236, align 8
  %801 = load i64** %235, align 8
  %802 = load i64** %236, align 8
  store %"struct.std::__1::__less"* %__comp.i.i.i10, %"struct.std::__1::__less"** %232, align 8
  store i64* %801, i64** %233, align 8
  store i64* %802, i64** %234, align 8
  %803 = load %"struct.std::__1::__less"** %232
  %804 = load i64** %233, align 8
  %805 = load i64* %804, align 8
  %806 = load i64** %234, align 8
  %807 = load i64* %806, align 8
  %808 = icmp ult i64 %805, %807
  br i1 %808, label %809, label %811

; <label>:809                                     ; preds = %784
  %810 = load i64** %236, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i15

; <label>:811                                     ; preds = %784
  %812 = load i64** %235, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i15

_ZNSt3__13maxImEERKT_S3_S3_.exit.i15:             ; preds = %811, %809
  %813 = phi i64* [ %810, %809 ], [ %812, %811 ]
  %814 = load i64* %813
  store i64 %814, i64* %__c.i13, align 8
  %815 = load i64* %__c.i13, align 8
  %816 = load i64* %__c.i13, align 8
  %817 = udiv i64 %816, 4
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %205, align 8
  %818 = load %"struct.std::__1::__split_buffer"** %205
  %819 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %818, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %819, %"class.std::__1::__compressed_pair.0"** %204, align 8
  %820 = load %"class.std::__1::__compressed_pair.0"** %204
  %821 = bitcast %"class.std::__1::__compressed_pair.0"* %820 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %821, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %203, align 8
  %822 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %203
  %823 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %822 to %"class.std::__1::allocator.2"*
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %__t.i14, i64 %815, i64 %817, %"class.std::__1::allocator.2"* %823)
  %824 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %825 = load i32*** %824, align 8
  store %"class.std::__1::move_iterator"* %266, %"class.std::__1::move_iterator"** %197, align 8
  store i32** %825, i32*** %198, align 8
  %826 = load %"class.std::__1::move_iterator"** %197
  %827 = load i32*** %198, align 8
  store %"class.std::__1::move_iterator"* %826, %"class.std::__1::move_iterator"** %195, align 8
  store i32** %827, i32*** %196, align 8
  %828 = load %"class.std::__1::move_iterator"** %195
  %829 = getelementptr inbounds %"class.std::__1::move_iterator"* %828, i32 0, i32 0
  %830 = load i32*** %196, align 8
  store i32** %830, i32*** %829, align 8
  %831 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %832 = load i32*** %831, align 8
  store %"class.std::__1::move_iterator"* %269, %"class.std::__1::move_iterator"** %201, align 8
  store i32** %832, i32*** %202, align 8
  %833 = load %"class.std::__1::move_iterator"** %201
  %834 = load i32*** %202, align 8
  store %"class.std::__1::move_iterator"* %833, %"class.std::__1::move_iterator"** %199, align 8
  store i32** %834, i32*** %200, align 8
  %835 = load %"class.std::__1::move_iterator"** %199
  %836 = getelementptr inbounds %"class.std::__1::move_iterator"* %835, i32 0, i32 0
  %837 = load i32*** %200, align 8
  store i32** %837, i32*** %836, align 8
  %838 = getelementptr %"class.std::__1::move_iterator"* %266, i32 0, i32 0
  %839 = load i32*** %838
  %840 = getelementptr %"class.std::__1::move_iterator"* %269, i32 0, i32 0
  %841 = load i32*** %840
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESB_SB_(%"struct.std::__1::__split_buffer.14"* %__t.i14, i32** %839, i32** %841)
          to label %842 unwind label %901

; <label>:842                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i15
  %843 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %844 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i14, i32 0, i32 0
  store i32*** %843, i32**** %209, align 8
  store i32*** %844, i32**** %210, align 8
  %845 = load i32**** %209, align 8
  store i32*** %845, i32**** %208, align 8
  %846 = load i32**** %208, align 8
  %847 = load i32*** %846
  store i32** %847, i32*** %__t.i3.i6, align 8
  %848 = load i32**** %210, align 8
  store i32*** %848, i32**** %206, align 8
  %849 = load i32**** %206, align 8
  %850 = load i32*** %849
  %851 = load i32**** %209, align 8
  store i32** %850, i32*** %851, align 8
  store i32*** %__t.i3.i6, i32**** %207, align 8
  %852 = load i32**** %207, align 8
  %853 = load i32*** %852
  %854 = load i32**** %210, align 8
  store i32** %853, i32*** %854, align 8
  %855 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %856 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i14, i32 0, i32 1
  store i32*** %855, i32**** %214, align 8
  store i32*** %856, i32**** %215, align 8
  %857 = load i32**** %214, align 8
  store i32*** %857, i32**** %213, align 8
  %858 = load i32**** %213, align 8
  %859 = load i32*** %858
  store i32** %859, i32*** %__t.i2.i7, align 8
  %860 = load i32**** %215, align 8
  store i32*** %860, i32**** %211, align 8
  %861 = load i32**** %211, align 8
  %862 = load i32*** %861
  %863 = load i32**** %214, align 8
  store i32** %862, i32*** %863, align 8
  store i32*** %__t.i2.i7, i32**** %212, align 8
  %864 = load i32**** %212, align 8
  %865 = load i32*** %864
  %866 = load i32**** %215, align 8
  store i32** %865, i32*** %866, align 8
  %867 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %868 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i14, i32 0, i32 2
  store i32*** %867, i32**** %219, align 8
  store i32*** %868, i32**** %220, align 8
  %869 = load i32**** %219, align 8
  store i32*** %869, i32**** %218, align 8
  %870 = load i32**** %218, align 8
  %871 = load i32*** %870
  store i32** %871, i32*** %__t.i1.i8, align 8
  %872 = load i32**** %220, align 8
  store i32*** %872, i32**** %216, align 8
  %873 = load i32**** %216, align 8
  %874 = load i32*** %873
  %875 = load i32**** %219, align 8
  store i32** %874, i32*** %875, align 8
  store i32*** %__t.i1.i8, i32**** %217, align 8
  %876 = load i32**** %217, align 8
  %877 = load i32*** %876
  %878 = load i32**** %220, align 8
  store i32** %877, i32*** %878, align 8
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %223, align 8
  %879 = load %"struct.std::__1::__split_buffer"** %223
  %880 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %879, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %880, %"class.std::__1::__compressed_pair.0"** %222, align 8
  %881 = load %"class.std::__1::__compressed_pair.0"** %222
  %882 = bitcast %"class.std::__1::__compressed_pair.0"* %881 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %882, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %221, align 8
  %883 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %221
  %884 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %883, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.14"* %__t.i14, %"struct.std::__1::__split_buffer.14"** %226, align 8
  %885 = load %"struct.std::__1::__split_buffer.14"** %226
  %886 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %885, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %886, %"class.std::__1::__compressed_pair.15"** %225, align 8
  %887 = load %"class.std::__1::__compressed_pair.15"** %225
  %888 = bitcast %"class.std::__1::__compressed_pair.15"* %887 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %888, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %224, align 8
  %889 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %224
  %890 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %889, i32 0, i32 0
  store i32*** %884, i32**** %230, align 8
  store i32*** %890, i32**** %231, align 8
  %891 = load i32**** %230, align 8
  store i32*** %891, i32**** %229, align 8
  %892 = load i32**** %229, align 8
  %893 = load i32*** %892
  store i32** %893, i32*** %__t.i.i9, align 8
  %894 = load i32**** %231, align 8
  store i32*** %894, i32**** %227, align 8
  %895 = load i32**** %227, align 8
  %896 = load i32*** %895
  %897 = load i32**** %230, align 8
  store i32** %896, i32*** %897, align 8
  store i32*** %__t.i.i9, i32**** %228, align 8
  %898 = load i32**** %228, align 8
  %899 = load i32*** %898
  %900 = load i32**** %231, align 8
  store i32** %899, i32*** %900, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i14)
  br label %910

; <label>:901                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i15
  %902 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %903 = extractvalue { i8*, i32 } %902, 0
  store i8* %903, i8** %267
  %904 = extractvalue { i8*, i32 } %902, 1
  store i32 %904, i32* %268
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i14)
          to label %905 unwind label %929

; <label>:905                                     ; preds = %901
  %906 = load i8** %267
  %907 = load i32* %268
  %908 = insertvalue { i8*, i32 } undef, i8* %906, 0
  %909 = insertvalue { i8*, i32 } %908, i32 %907, 1
  resume { i8*, i32 } %909

; <label>:910                                     ; preds = %842, %736
  br label %911

; <label>:911                                     ; preds = %910, %708
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %245, align 8
  %912 = load %"struct.std::__1::__split_buffer"** %245
  %913 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %912, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %913, %"class.std::__1::__compressed_pair.0"** %244, align 8
  %914 = load %"class.std::__1::__compressed_pair.0"** %244
  %915 = bitcast %"class.std::__1::__compressed_pair.0"* %914 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %915, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %243, align 8
  %916 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %243
  %917 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %916 to %"class.std::__1::allocator.2"*
  %918 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %919 = load i32*** %918, align 8
  store i32** %919, i32*** %246, align 8
  %920 = load i32*** %246, align 8
  %921 = load i32*** %263, align 8
  store %"class.std::__1::allocator.2"* %917, %"class.std::__1::allocator.2"** %247, align 8
  store i32** %920, i32*** %248, align 8
  store i32** %921, i32*** %249, align 8
  %922 = load i32*** %248, align 8
  %923 = bitcast i32** %922 to i8*
  %924 = icmp eq i8* %923, null
  br i1 %924, label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit16, label %925

; <label>:925                                     ; preds = %911
  %926 = bitcast i8* %923 to i32**
  %927 = load i32*** %249, align 8
  %928 = load i32** %927, align 8
  store i32* %928, i32** %926, align 8
  br label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit16

; <label>:929                                     ; preds = %901
  %930 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %931 = extractvalue { i8*, i32 } %930, 0
  call void @__clang_call_terminate(i8* %931) #11
  unreachable

_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit16: ; preds = %911, %925
  %932 = phi i32** [ %926, %925 ], [ null, %911 ]
  %933 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %934 = load i32*** %933, align 8
  %935 = getelementptr inbounds i32** %934, i32 1
  store i32** %935, i32*** %933, align 8
  br label %1184

; <label>:936                                     ; preds = %690
  %937 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %938 = getelementptr inbounds %"class.std::__1::__deque_base"* %937, i32 0, i32 0
  %939 = load %"class.std::__1::allocator.6"** %__a, align 8
  store %"class.std::__1::allocator.6"* %939, %"class.std::__1::allocator.6"** %193, align 8
  store i64 1024, i64* %194, align 8
  %940 = load %"class.std::__1::allocator.6"** %193, align 8
  %941 = load i64* %194, align 8
  store %"class.std::__1::allocator.6"* %940, %"class.std::__1::allocator.6"** %190, align 8
  store i64 %941, i64* %191, align 8
  store i8* null, i8** %192, align 8
  %942 = load %"class.std::__1::allocator.6"** %190
  %943 = load i64* %191, align 8
  %944 = mul i64 %943, 4
  %945 = call noalias i8* @_Znwm(i64 %944)
  %946 = bitcast i8* %945 to i32*
  store i32* %946, i32** %400
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontERKS1_(%"struct.std::__1::__split_buffer"* %938, i32** %400)
  %947 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %948 = getelementptr inbounds %"class.std::__1::__deque_base"* %947, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %948, %"struct.std::__1::__split_buffer"** %189, align 8
  %949 = load %"struct.std::__1::__split_buffer"** %189
  %950 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %949, i32 0, i32 1
  %951 = load i32*** %950, align 8
  %952 = load i32** %951
  store i32* %952, i32** %__pt1, align 8
  %953 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %954 = getelementptr inbounds %"class.std::__1::__deque_base"* %953, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %954, %"struct.std::__1::__split_buffer"** %188, align 8
  %955 = load %"struct.std::__1::__split_buffer"** %188
  %956 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %955, i32 0, i32 1
  %957 = load i32*** %956, align 8
  %958 = getelementptr inbounds i32** %957, i64 1
  store %"struct.std::__1::__split_buffer"* %955, %"struct.std::__1::__split_buffer"** %184, align 8
  store i32** %958, i32*** %185, align 8
  %959 = load %"struct.std::__1::__split_buffer"** %184
  %960 = load i32*** %185, align 8
  %961 = bitcast %"struct.std::__1::is_trivially_destructible"* %187 to %"struct.std::__1::integral_constant.17"*
  store %"struct.std::__1::__split_buffer"* %959, %"struct.std::__1::__split_buffer"** %181, align 8
  store i32** %960, i32*** %182, align 8
  %962 = load %"struct.std::__1::__split_buffer"** %181
  %963 = load i32*** %182, align 8
  %964 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %962, i32 0, i32 1
  store i32** %963, i32*** %964, align 8
  %965 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %966 = getelementptr inbounds %"class.std::__1::__deque_base"* %965, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %966, %"struct.std::__1::__split_buffer"** %173, align 8
  store i32** %__pt1, i32*** %174, align 8
  %967 = load %"struct.std::__1::__split_buffer"** %173
  %968 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %969 = load i32*** %968, align 8
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %172, align 8
  %970 = load %"struct.std::__1::__split_buffer"** %172
  %971 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %970, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %971, %"class.std::__1::__compressed_pair.0"** %171, align 8
  %972 = load %"class.std::__1::__compressed_pair.0"** %171
  %973 = bitcast %"class.std::__1::__compressed_pair.0"* %972 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %973, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %170, align 8
  %974 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %170
  %975 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %974, i32 0, i32 0
  %976 = load i32*** %975
  %977 = icmp eq i32** %969, %976
  br i1 %977, label %978, label %1159

; <label>:978                                     ; preds = %936
  %979 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %980 = load i32*** %979, align 8
  %981 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %982 = load i32*** %981, align 8
  %983 = icmp ugt i32** %980, %982
  br i1 %983, label %984, label %1032

; <label>:984                                     ; preds = %978
  %985 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %986 = load i32*** %985, align 8
  %987 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %988 = load i32*** %987, align 8
  %989 = ptrtoint i32** %986 to i64
  %990 = ptrtoint i32** %988 to i64
  %991 = sub i64 %989, %990
  %992 = sdiv exact i64 %991, 8
  store i64 %992, i64* %__d.i23, align 8
  %993 = load i64* %__d.i23, align 8
  %994 = add nsw i64 %993, 1
  %995 = sdiv i64 %994, 2
  store i64 %995, i64* %__d.i23, align 8
  %996 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %997 = load i32*** %996, align 8
  %998 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %999 = load i32*** %998, align 8
  %1000 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1001 = load i32*** %1000, align 8
  %1002 = load i64* %__d.i23, align 8
  %1003 = sub i64 0, %1002
  %1004 = getelementptr inbounds i32** %1001, i64 %1003
  store i32** %997, i32*** %167, align 8
  store i32** %999, i32*** %168, align 8
  store i32** %1004, i32*** %169, align 8
  %1005 = load i32*** %167, align 8
  store i32** %1005, i32*** %166, align 8
  %1006 = load i32*** %166, align 8
  %1007 = load i32*** %168, align 8
  store i32** %1007, i32*** %161, align 8
  %1008 = load i32*** %161, align 8
  %1009 = load i32*** %169, align 8
  store i32** %1009, i32*** %162, align 8
  %1010 = load i32*** %162, align 8
  store i32** %1006, i32*** %163, align 8
  store i32** %1008, i32*** %164, align 8
  store i32** %1010, i32*** %165, align 8
  %1011 = load i32*** %164, align 8
  %1012 = load i32*** %163, align 8
  %1013 = ptrtoint i32** %1011 to i64
  %1014 = ptrtoint i32** %1012 to i64
  %1015 = sub i64 %1013, %1014
  %1016 = sdiv exact i64 %1015, 8
  store i64 %1016, i64* %__n.i.i.i22, align 8
  %1017 = load i32*** %165, align 8
  %1018 = bitcast i32** %1017 to i8*
  %1019 = load i32*** %163, align 8
  %1020 = bitcast i32** %1019 to i8*
  %1021 = load i64* %__n.i.i.i22, align 8
  %1022 = mul i64 %1021, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1018, i8* %1020, i64 %1022, i32 8, i1 false) #6
  %1023 = load i32*** %165, align 8
  %1024 = load i64* %__n.i.i.i22, align 8
  %1025 = getelementptr inbounds i32** %1023, i64 %1024
  %1026 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  store i32** %1025, i32*** %1026, align 8
  %1027 = load i64* %__d.i23, align 8
  %1028 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1029 = load i32*** %1028, align 8
  %1030 = sub i64 0, %1027
  %1031 = getelementptr inbounds i32** %1029, i64 %1030
  store i32** %1031, i32*** %1028, align 8
  br label %1158

; <label>:1032                                    ; preds = %978
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %153, align 8
  %1033 = load %"struct.std::__1::__split_buffer"** %153
  %1034 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1033, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %1034, %"class.std::__1::__compressed_pair.0"** %152, align 8
  %1035 = load %"class.std::__1::__compressed_pair.0"** %152
  %1036 = bitcast %"class.std::__1::__compressed_pair.0"* %1035 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1036, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %151, align 8
  %1037 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %151
  %1038 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1037, i32 0, i32 0
  %1039 = load i32*** %1038
  %1040 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %1041 = load i32*** %1040, align 8
  %1042 = ptrtoint i32** %1039 to i64
  %1043 = ptrtoint i32** %1041 to i64
  %1044 = sub i64 %1042, %1043
  %1045 = sdiv exact i64 %1044, 8
  %1046 = mul i64 2, %1045
  store i64 %1046, i64* %175
  store i64 1, i64* %176
  store i64* %175, i64** %148, align 8
  store i64* %176, i64** %149, align 8
  %1047 = load i64** %148, align 8
  %1048 = load i64** %149, align 8
  store i64* %1047, i64** %146, align 8
  store i64* %1048, i64** %147, align 8
  %1049 = load i64** %146, align 8
  %1050 = load i64** %147, align 8
  store %"struct.std::__1::__less"* %__comp.i.i.i21, %"struct.std::__1::__less"** %143, align 8
  store i64* %1049, i64** %144, align 8
  store i64* %1050, i64** %145, align 8
  %1051 = load %"struct.std::__1::__less"** %143
  %1052 = load i64** %144, align 8
  %1053 = load i64* %1052, align 8
  %1054 = load i64** %145, align 8
  %1055 = load i64* %1054, align 8
  %1056 = icmp ult i64 %1053, %1055
  br i1 %1056, label %1057, label %1059

; <label>:1057                                    ; preds = %1032
  %1058 = load i64** %147, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i26

; <label>:1059                                    ; preds = %1032
  %1060 = load i64** %146, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i26

_ZNSt3__13maxImEERKT_S3_S3_.exit.i26:             ; preds = %1059, %1057
  %1061 = phi i64* [ %1058, %1057 ], [ %1060, %1059 ]
  %1062 = load i64* %1061
  store i64 %1062, i64* %__c.i24, align 8
  %1063 = load i64* %__c.i24, align 8
  %1064 = load i64* %__c.i24, align 8
  %1065 = udiv i64 %1064, 4
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %116, align 8
  %1066 = load %"struct.std::__1::__split_buffer"** %116
  %1067 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1066, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %1067, %"class.std::__1::__compressed_pair.0"** %115, align 8
  %1068 = load %"class.std::__1::__compressed_pair.0"** %115
  %1069 = bitcast %"class.std::__1::__compressed_pair.0"* %1068 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1069, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %114, align 8
  %1070 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %114
  %1071 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1070 to %"class.std::__1::allocator.2"*
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %__t.i25, i64 %1063, i64 %1065, %"class.std::__1::allocator.2"* %1071)
  %1072 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1073 = load i32*** %1072, align 8
  store %"class.std::__1::move_iterator"* %177, %"class.std::__1::move_iterator"** %108, align 8
  store i32** %1073, i32*** %109, align 8
  %1074 = load %"class.std::__1::move_iterator"** %108
  %1075 = load i32*** %109, align 8
  store %"class.std::__1::move_iterator"* %1074, %"class.std::__1::move_iterator"** %106, align 8
  store i32** %1075, i32*** %107, align 8
  %1076 = load %"class.std::__1::move_iterator"** %106
  %1077 = getelementptr inbounds %"class.std::__1::move_iterator"* %1076, i32 0, i32 0
  %1078 = load i32*** %107, align 8
  store i32** %1078, i32*** %1077, align 8
  %1079 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1080 = load i32*** %1079, align 8
  store %"class.std::__1::move_iterator"* %180, %"class.std::__1::move_iterator"** %112, align 8
  store i32** %1080, i32*** %113, align 8
  %1081 = load %"class.std::__1::move_iterator"** %112
  %1082 = load i32*** %113, align 8
  store %"class.std::__1::move_iterator"* %1081, %"class.std::__1::move_iterator"** %110, align 8
  store i32** %1082, i32*** %111, align 8
  %1083 = load %"class.std::__1::move_iterator"** %110
  %1084 = getelementptr inbounds %"class.std::__1::move_iterator"* %1083, i32 0, i32 0
  %1085 = load i32*** %111, align 8
  store i32** %1085, i32*** %1084, align 8
  %1086 = getelementptr %"class.std::__1::move_iterator"* %177, i32 0, i32 0
  %1087 = load i32*** %1086
  %1088 = getelementptr %"class.std::__1::move_iterator"* %180, i32 0, i32 0
  %1089 = load i32*** %1088
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESB_SB_(%"struct.std::__1::__split_buffer.14"* %__t.i25, i32** %1087, i32** %1089)
          to label %1090 unwind label %1149

; <label>:1090                                    ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i26
  %1091 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %1092 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i25, i32 0, i32 0
  store i32*** %1091, i32**** %120, align 8
  store i32*** %1092, i32**** %121, align 8
  %1093 = load i32**** %120, align 8
  store i32*** %1093, i32**** %119, align 8
  %1094 = load i32**** %119, align 8
  %1095 = load i32*** %1094
  store i32** %1095, i32*** %__t.i3.i17, align 8
  %1096 = load i32**** %121, align 8
  store i32*** %1096, i32**** %117, align 8
  %1097 = load i32**** %117, align 8
  %1098 = load i32*** %1097
  %1099 = load i32**** %120, align 8
  store i32** %1098, i32*** %1099, align 8
  store i32*** %__t.i3.i17, i32**** %118, align 8
  %1100 = load i32**** %118, align 8
  %1101 = load i32*** %1100
  %1102 = load i32**** %121, align 8
  store i32** %1101, i32*** %1102, align 8
  %1103 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1104 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i25, i32 0, i32 1
  store i32*** %1103, i32**** %125, align 8
  store i32*** %1104, i32**** %126, align 8
  %1105 = load i32**** %125, align 8
  store i32*** %1105, i32**** %124, align 8
  %1106 = load i32**** %124, align 8
  %1107 = load i32*** %1106
  store i32** %1107, i32*** %__t.i2.i18, align 8
  %1108 = load i32**** %126, align 8
  store i32*** %1108, i32**** %122, align 8
  %1109 = load i32**** %122, align 8
  %1110 = load i32*** %1109
  %1111 = load i32**** %125, align 8
  store i32** %1110, i32*** %1111, align 8
  store i32*** %__t.i2.i18, i32**** %123, align 8
  %1112 = load i32**** %123, align 8
  %1113 = load i32*** %1112
  %1114 = load i32**** %126, align 8
  store i32** %1113, i32*** %1114, align 8
  %1115 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1116 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i25, i32 0, i32 2
  store i32*** %1115, i32**** %130, align 8
  store i32*** %1116, i32**** %131, align 8
  %1117 = load i32**** %130, align 8
  store i32*** %1117, i32**** %129, align 8
  %1118 = load i32**** %129, align 8
  %1119 = load i32*** %1118
  store i32** %1119, i32*** %__t.i1.i19, align 8
  %1120 = load i32**** %131, align 8
  store i32*** %1120, i32**** %127, align 8
  %1121 = load i32**** %127, align 8
  %1122 = load i32*** %1121
  %1123 = load i32**** %130, align 8
  store i32** %1122, i32*** %1123, align 8
  store i32*** %__t.i1.i19, i32**** %128, align 8
  %1124 = load i32**** %128, align 8
  %1125 = load i32*** %1124
  %1126 = load i32**** %131, align 8
  store i32** %1125, i32*** %1126, align 8
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %134, align 8
  %1127 = load %"struct.std::__1::__split_buffer"** %134
  %1128 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1127, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %1128, %"class.std::__1::__compressed_pair.0"** %133, align 8
  %1129 = load %"class.std::__1::__compressed_pair.0"** %133
  %1130 = bitcast %"class.std::__1::__compressed_pair.0"* %1129 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1130, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %132, align 8
  %1131 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %132
  %1132 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1131, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.14"* %__t.i25, %"struct.std::__1::__split_buffer.14"** %137, align 8
  %1133 = load %"struct.std::__1::__split_buffer.14"** %137
  %1134 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1133, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1134, %"class.std::__1::__compressed_pair.15"** %136, align 8
  %1135 = load %"class.std::__1::__compressed_pair.15"** %136
  %1136 = bitcast %"class.std::__1::__compressed_pair.15"* %1135 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1136, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %135, align 8
  %1137 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %135
  %1138 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1137, i32 0, i32 0
  store i32*** %1132, i32**** %141, align 8
  store i32*** %1138, i32**** %142, align 8
  %1139 = load i32**** %141, align 8
  store i32*** %1139, i32**** %140, align 8
  %1140 = load i32**** %140, align 8
  %1141 = load i32*** %1140
  store i32** %1141, i32*** %__t.i.i20, align 8
  %1142 = load i32**** %142, align 8
  store i32*** %1142, i32**** %138, align 8
  %1143 = load i32**** %138, align 8
  %1144 = load i32*** %1143
  %1145 = load i32**** %141, align 8
  store i32** %1144, i32*** %1145, align 8
  store i32*** %__t.i.i20, i32**** %139, align 8
  %1146 = load i32**** %139, align 8
  %1147 = load i32*** %1146
  %1148 = load i32**** %142, align 8
  store i32** %1147, i32*** %1148, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i25)
  br label %1158

; <label>:1149                                    ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i26
  %1150 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1151 = extractvalue { i8*, i32 } %1150, 0
  store i8* %1151, i8** %178
  %1152 = extractvalue { i8*, i32 } %1150, 1
  store i32 %1152, i32* %179
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i25)
          to label %1153 unwind label %1177

; <label>:1153                                    ; preds = %1149
  %1154 = load i8** %178
  %1155 = load i32* %179
  %1156 = insertvalue { i8*, i32 } undef, i8* %1154, 0
  %1157 = insertvalue { i8*, i32 } %1156, i32 %1155, 1
  resume { i8*, i32 } %1157

; <label>:1158                                    ; preds = %1090, %984
  br label %1159

; <label>:1159                                    ; preds = %1158, %936
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %156, align 8
  %1160 = load %"struct.std::__1::__split_buffer"** %156
  %1161 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1160, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %1161, %"class.std::__1::__compressed_pair.0"** %155, align 8
  %1162 = load %"class.std::__1::__compressed_pair.0"** %155
  %1163 = bitcast %"class.std::__1::__compressed_pair.0"* %1162 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1163, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %154, align 8
  %1164 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %154
  %1165 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1164 to %"class.std::__1::allocator.2"*
  %1166 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1167 = load i32*** %1166, align 8
  store i32** %1167, i32*** %157, align 8
  %1168 = load i32*** %157, align 8
  %1169 = load i32*** %174, align 8
  store %"class.std::__1::allocator.2"* %1165, %"class.std::__1::allocator.2"** %158, align 8
  store i32** %1168, i32*** %159, align 8
  store i32** %1169, i32*** %160, align 8
  %1170 = load i32*** %159, align 8
  %1171 = bitcast i32** %1170 to i8*
  %1172 = icmp eq i8* %1171, null
  br i1 %1172, label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit27, label %1173

; <label>:1173                                    ; preds = %1159
  %1174 = bitcast i8* %1171 to i32**
  %1175 = load i32*** %160, align 8
  %1176 = load i32** %1175, align 8
  store i32* %1176, i32** %1174, align 8
  br label %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit27

; <label>:1177                                    ; preds = %1149
  %1178 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %1179 = extractvalue { i8*, i32 } %1178, 0
  call void @__clang_call_terminate(i8* %1179) #11
  unreachable

_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit27: ; preds = %1159, %1173
  %1180 = phi i32** [ %1174, %1173 ], [ null, %1159 ]
  %1181 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1182 = load i32*** %1181, align 8
  %1183 = getelementptr inbounds i32** %1182, i32 1
  store i32** %1183, i32*** %1181, align 8
  br label %1184

; <label>:1184                                    ; preds = %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit27, %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit16
  br label %1587

; <label>:1185                                    ; preds = %661
  %1186 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1187 = getelementptr inbounds %"class.std::__1::__deque_base"* %1186, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1187, %"struct.std::__1::__split_buffer"** %105, align 8
  %1188 = load %"struct.std::__1::__split_buffer"** %105
  store %"struct.std::__1::__split_buffer"* %1188, %"struct.std::__1::__split_buffer"** %104, align 8
  %1189 = load %"struct.std::__1::__split_buffer"** %104
  %1190 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1189, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %1190, %"class.std::__1::__compressed_pair.0"** %103, align 8
  %1191 = load %"class.std::__1::__compressed_pair.0"** %103
  %1192 = bitcast %"class.std::__1::__compressed_pair.0"* %1191 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1192, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %102, align 8
  %1193 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %102
  %1194 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1193, i32 0, i32 0
  %1195 = load i32*** %1194
  %1196 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1188, i32 0, i32 0
  %1197 = load i32*** %1196, align 8
  %1198 = ptrtoint i32** %1195 to i64
  %1199 = ptrtoint i32** %1197 to i64
  %1200 = sub i64 %1198, %1199
  %1201 = sdiv exact i64 %1200, 8
  %1202 = mul i64 2, %1201
  store i64 %1202, i64* %401
  store i64 1, i64* %402
  store i64* %401, i64** %99, align 8
  store i64* %402, i64** %100, align 8
  %1203 = load i64** %99, align 8
  %1204 = load i64** %100, align 8
  store i64* %1203, i64** %97, align 8
  store i64* %1204, i64** %98, align 8
  %1205 = load i64** %97, align 8
  %1206 = load i64** %98, align 8
  store %"struct.std::__1::__less"* %__comp.i.i, %"struct.std::__1::__less"** %94, align 8
  store i64* %1205, i64** %95, align 8
  store i64* %1206, i64** %96, align 8
  %1207 = load %"struct.std::__1::__less"** %94
  %1208 = load i64** %95, align 8
  %1209 = load i64* %1208, align 8
  %1210 = load i64** %96, align 8
  %1211 = load i64* %1210, align 8
  %1212 = icmp ult i64 %1209, %1211
  br i1 %1212, label %1213, label %1215

; <label>:1213                                    ; preds = %1185
  %1214 = load i64** %98, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit

; <label>:1215                                    ; preds = %1185
  %1216 = load i64** %97, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit

_ZNSt3__13maxImEERKT_S3_S3_.exit:                 ; preds = %1213, %1215
  %1217 = phi i64* [ %1214, %1213 ], [ %1216, %1215 ]
  %1218 = load i64* %1217
  %1219 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1220 = getelementptr inbounds %"class.std::__1::__deque_base"* %1219, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1220, %"struct.std::__1::__split_buffer"** %93, align 8
  %1221 = load %"struct.std::__1::__split_buffer"** %93
  %1222 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1221, i32 0, i32 2
  %1223 = load i32*** %1222, align 8
  %1224 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1221, i32 0, i32 1
  %1225 = load i32*** %1224, align 8
  %1226 = ptrtoint i32** %1223 to i64
  %1227 = ptrtoint i32** %1225 to i64
  %1228 = sub i64 %1226, %1227
  %1229 = sdiv exact i64 %1228, 8
  %1230 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1231 = getelementptr inbounds %"class.std::__1::__deque_base"* %1230, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1231, %"struct.std::__1::__split_buffer"** %92, align 8
  %1232 = load %"struct.std::__1::__split_buffer"** %92
  %1233 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1232, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %1233, %"class.std::__1::__compressed_pair.0"** %91, align 8
  %1234 = load %"class.std::__1::__compressed_pair.0"** %91
  %1235 = bitcast %"class.std::__1::__compressed_pair.0"* %1234 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1235, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %90, align 8
  %1236 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %90
  %1237 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1236 to %"class.std::__1::allocator.2"*
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %__buf, i64 %1218, i64 %1229, %"class.std::__1::allocator.2"* %1237)
  %1238 = load %"class.std::__1::allocator.6"** %__a, align 8
  store %"class.std::__1::allocator.6"* %1238, %"class.std::__1::allocator.6"** %88, align 8
  store i64 1024, i64* %89, align 8
  %1239 = load %"class.std::__1::allocator.6"** %88, align 8
  %1240 = load i64* %89, align 8
  store %"class.std::__1::allocator.6"* %1239, %"class.std::__1::allocator.6"** %85, align 8
  store i64 %1240, i64* %86, align 8
  store i8* null, i8** %87, align 8
  %1241 = load %"class.std::__1::allocator.6"** %85
  %1242 = load i64* %86, align 8
  %1243 = mul i64 %1242, 4
  %1244 = invoke noalias i8* @_Znwm(i64 %1243)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit unwind label %1467

_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit: ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit
  %1245 = bitcast i8* %1244 to i32*
  br label %1246

; <label>:1246                                    ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit
  store i32* %1245, i32** %403
  store %"struct.std::__1::__split_buffer.14"* %__buf, %"struct.std::__1::__split_buffer.14"** %77, align 8
  store i32** %403, i32*** %78, align 8
  %1247 = load %"struct.std::__1::__split_buffer.14"** %77
  %1248 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 2
  %1249 = load i32*** %1248, align 8
  store %"struct.std::__1::__split_buffer.14"* %1247, %"struct.std::__1::__split_buffer.14"** %76, align 8
  %1250 = load %"struct.std::__1::__split_buffer.14"** %76
  %1251 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1250, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1251, %"class.std::__1::__compressed_pair.15"** %75, align 8
  %1252 = load %"class.std::__1::__compressed_pair.15"** %75
  %1253 = bitcast %"class.std::__1::__compressed_pair.15"* %1252 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1253, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %74, align 8
  %1254 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %74
  %1255 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1254, i32 0, i32 0
  %1256 = load i32*** %1255
  %1257 = icmp eq i32** %1249, %1256
  br i1 %1257, label %1258, label %1440

; <label>:1258                                    ; preds = %1246
  %1259 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 1
  %1260 = load i32*** %1259, align 8
  %1261 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 0
  %1262 = load i32*** %1261, align 8
  %1263 = icmp ugt i32** %1260, %1262
  br i1 %1263, label %1264, label %1312

; <label>:1264                                    ; preds = %1258
  %1265 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 1
  %1266 = load i32*** %1265, align 8
  %1267 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 0
  %1268 = load i32*** %1267, align 8
  %1269 = ptrtoint i32** %1266 to i64
  %1270 = ptrtoint i32** %1268 to i64
  %1271 = sub i64 %1269, %1270
  %1272 = sdiv exact i64 %1271, 8
  store i64 %1272, i64* %__d.i34, align 8
  %1273 = load i64* %__d.i34, align 8
  %1274 = add nsw i64 %1273, 1
  %1275 = sdiv i64 %1274, 2
  store i64 %1275, i64* %__d.i34, align 8
  %1276 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 1
  %1277 = load i32*** %1276, align 8
  %1278 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 2
  %1279 = load i32*** %1278, align 8
  %1280 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 1
  %1281 = load i32*** %1280, align 8
  %1282 = load i64* %__d.i34, align 8
  %1283 = sub i64 0, %1282
  %1284 = getelementptr inbounds i32** %1281, i64 %1283
  store i32** %1277, i32*** %71, align 8
  store i32** %1279, i32*** %72, align 8
  store i32** %1284, i32*** %73, align 8
  %1285 = load i32*** %71, align 8
  store i32** %1285, i32*** %70, align 8
  %1286 = load i32*** %70, align 8
  %1287 = load i32*** %72, align 8
  store i32** %1287, i32*** %65, align 8
  %1288 = load i32*** %65, align 8
  %1289 = load i32*** %73, align 8
  store i32** %1289, i32*** %66, align 8
  %1290 = load i32*** %66, align 8
  store i32** %1286, i32*** %67, align 8
  store i32** %1288, i32*** %68, align 8
  store i32** %1290, i32*** %69, align 8
  %1291 = load i32*** %68, align 8
  %1292 = load i32*** %67, align 8
  %1293 = ptrtoint i32** %1291 to i64
  %1294 = ptrtoint i32** %1292 to i64
  %1295 = sub i64 %1293, %1294
  %1296 = sdiv exact i64 %1295, 8
  store i64 %1296, i64* %__n.i.i.i33, align 8
  %1297 = load i32*** %69, align 8
  %1298 = bitcast i32** %1297 to i8*
  %1299 = load i32*** %67, align 8
  %1300 = bitcast i32** %1299 to i8*
  %1301 = load i64* %__n.i.i.i33, align 8
  %1302 = mul i64 %1301, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1298, i8* %1300, i64 %1302, i32 8, i1 false) #6
  %1303 = load i32*** %69, align 8
  %1304 = load i64* %__n.i.i.i33, align 8
  %1305 = getelementptr inbounds i32** %1303, i64 %1304
  %1306 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 2
  store i32** %1305, i32*** %1306, align 8
  %1307 = load i64* %__d.i34, align 8
  %1308 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 1
  %1309 = load i32*** %1308, align 8
  %1310 = sub i64 0, %1307
  %1311 = getelementptr inbounds i32** %1309, i64 %1310
  store i32** %1311, i32*** %1308, align 8
  br label %1439

; <label>:1312                                    ; preds = %1258
  store %"struct.std::__1::__split_buffer.14"* %1247, %"struct.std::__1::__split_buffer.14"** %57, align 8
  %1313 = load %"struct.std::__1::__split_buffer.14"** %57
  %1314 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1313, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1314, %"class.std::__1::__compressed_pair.15"** %56, align 8
  %1315 = load %"class.std::__1::__compressed_pair.15"** %56
  %1316 = bitcast %"class.std::__1::__compressed_pair.15"* %1315 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1316, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %55, align 8
  %1317 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %55
  %1318 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1317, i32 0, i32 0
  %1319 = load i32*** %1318
  %1320 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 0
  %1321 = load i32*** %1320, align 8
  %1322 = ptrtoint i32** %1319 to i64
  %1323 = ptrtoint i32** %1321 to i64
  %1324 = sub i64 %1322, %1323
  %1325 = sdiv exact i64 %1324, 8
  %1326 = mul i64 2, %1325
  store i64 %1326, i64* %79
  store i64 1, i64* %80
  store i64* %79, i64** %52, align 8
  store i64* %80, i64** %53, align 8
  %1327 = load i64** %52, align 8
  %1328 = load i64** %53, align 8
  store i64* %1327, i64** %50, align 8
  store i64* %1328, i64** %51, align 8
  %1329 = load i64** %50, align 8
  %1330 = load i64** %51, align 8
  store %"struct.std::__1::__less"* %__comp.i.i.i32, %"struct.std::__1::__less"** %47, align 8
  store i64* %1329, i64** %48, align 8
  store i64* %1330, i64** %49, align 8
  %1331 = load %"struct.std::__1::__less"** %47
  %1332 = load i64** %48, align 8
  %1333 = load i64* %1332, align 8
  %1334 = load i64** %49, align 8
  %1335 = load i64* %1334, align 8
  %1336 = icmp ult i64 %1333, %1335
  br i1 %1336, label %1337, label %1339

; <label>:1337                                    ; preds = %1312
  %1338 = load i64** %51, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i37

; <label>:1339                                    ; preds = %1312
  %1340 = load i64** %50, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit.i37

_ZNSt3__13maxImEERKT_S3_S3_.exit.i37:             ; preds = %1339, %1337
  %1341 = phi i64* [ %1338, %1337 ], [ %1340, %1339 ]
  %1342 = load i64* %1341
  store i64 %1342, i64* %__c.i35, align 8
  %1343 = load i64* %__c.i35, align 8
  %1344 = load i64* %__c.i35, align 8
  %1345 = udiv i64 %1344, 4
  store %"struct.std::__1::__split_buffer.14"* %1247, %"struct.std::__1::__split_buffer.14"** %20, align 8
  %1346 = load %"struct.std::__1::__split_buffer.14"** %20
  %1347 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1346, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1347, %"class.std::__1::__compressed_pair.15"** %19, align 8
  %1348 = load %"class.std::__1::__compressed_pair.15"** %19
  %1349 = bitcast %"class.std::__1::__compressed_pair.15"* %1348 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1349, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %18, align 8
  %1350 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %18
  %1351 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1350, i32 0, i32 1
  %1352 = load %"class.std::__1::allocator.2"** %1351, align 8
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %__t.i36, i64 %1343, i64 %1345, %"class.std::__1::allocator.2"* %1352)
          to label %.noexc unwind label %1467

.noexc:                                           ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i37
  %1353 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 1
  %1354 = load i32*** %1353, align 8
  store %"class.std::__1::move_iterator"* %81, %"class.std::__1::move_iterator"** %12, align 8
  store i32** %1354, i32*** %13, align 8
  %1355 = load %"class.std::__1::move_iterator"** %12
  %1356 = load i32*** %13, align 8
  store %"class.std::__1::move_iterator"* %1355, %"class.std::__1::move_iterator"** %10, align 8
  store i32** %1356, i32*** %11, align 8
  %1357 = load %"class.std::__1::move_iterator"** %10
  %1358 = getelementptr inbounds %"class.std::__1::move_iterator"* %1357, i32 0, i32 0
  %1359 = load i32*** %11, align 8
  store i32** %1359, i32*** %1358, align 8
  %1360 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 2
  %1361 = load i32*** %1360, align 8
  store %"class.std::__1::move_iterator"* %84, %"class.std::__1::move_iterator"** %16, align 8
  store i32** %1361, i32*** %17, align 8
  %1362 = load %"class.std::__1::move_iterator"** %16
  %1363 = load i32*** %17, align 8
  store %"class.std::__1::move_iterator"* %1362, %"class.std::__1::move_iterator"** %14, align 8
  store i32** %1363, i32*** %15, align 8
  %1364 = load %"class.std::__1::move_iterator"** %14
  %1365 = getelementptr inbounds %"class.std::__1::move_iterator"* %1364, i32 0, i32 0
  %1366 = load i32*** %15, align 8
  store i32** %1366, i32*** %1365, align 8
  %1367 = getelementptr %"class.std::__1::move_iterator"* %81, i32 0, i32 0
  %1368 = load i32*** %1367
  %1369 = getelementptr %"class.std::__1::move_iterator"* %84, i32 0, i32 0
  %1370 = load i32*** %1369
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESB_SB_(%"struct.std::__1::__split_buffer.14"* %__t.i36, i32** %1368, i32** %1370)
          to label %1371 unwind label %1430

; <label>:1371                                    ; preds = %.noexc
  %1372 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 0
  %1373 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i36, i32 0, i32 0
  store i32*** %1372, i32**** %24, align 8
  store i32*** %1373, i32**** %25, align 8
  %1374 = load i32**** %24, align 8
  store i32*** %1374, i32**** %23, align 8
  %1375 = load i32**** %23, align 8
  %1376 = load i32*** %1375
  store i32** %1376, i32*** %__t.i3.i28, align 8
  %1377 = load i32**** %25, align 8
  store i32*** %1377, i32**** %21, align 8
  %1378 = load i32**** %21, align 8
  %1379 = load i32*** %1378
  %1380 = load i32**** %24, align 8
  store i32** %1379, i32*** %1380, align 8
  store i32*** %__t.i3.i28, i32**** %22, align 8
  %1381 = load i32**** %22, align 8
  %1382 = load i32*** %1381
  %1383 = load i32**** %25, align 8
  store i32** %1382, i32*** %1383, align 8
  %1384 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 1
  %1385 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i36, i32 0, i32 1
  store i32*** %1384, i32**** %29, align 8
  store i32*** %1385, i32**** %30, align 8
  %1386 = load i32**** %29, align 8
  store i32*** %1386, i32**** %28, align 8
  %1387 = load i32**** %28, align 8
  %1388 = load i32*** %1387
  store i32** %1388, i32*** %__t.i2.i29, align 8
  %1389 = load i32**** %30, align 8
  store i32*** %1389, i32**** %26, align 8
  %1390 = load i32**** %26, align 8
  %1391 = load i32*** %1390
  %1392 = load i32**** %29, align 8
  store i32** %1391, i32*** %1392, align 8
  store i32*** %__t.i2.i29, i32**** %27, align 8
  %1393 = load i32**** %27, align 8
  %1394 = load i32*** %1393
  %1395 = load i32**** %30, align 8
  store i32** %1394, i32*** %1395, align 8
  %1396 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 2
  %1397 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t.i36, i32 0, i32 2
  store i32*** %1396, i32**** %34, align 8
  store i32*** %1397, i32**** %35, align 8
  %1398 = load i32**** %34, align 8
  store i32*** %1398, i32**** %33, align 8
  %1399 = load i32**** %33, align 8
  %1400 = load i32*** %1399
  store i32** %1400, i32*** %__t.i1.i30, align 8
  %1401 = load i32**** %35, align 8
  store i32*** %1401, i32**** %31, align 8
  %1402 = load i32**** %31, align 8
  %1403 = load i32*** %1402
  %1404 = load i32**** %34, align 8
  store i32** %1403, i32*** %1404, align 8
  store i32*** %__t.i1.i30, i32**** %32, align 8
  %1405 = load i32**** %32, align 8
  %1406 = load i32*** %1405
  %1407 = load i32**** %35, align 8
  store i32** %1406, i32*** %1407, align 8
  store %"struct.std::__1::__split_buffer.14"* %1247, %"struct.std::__1::__split_buffer.14"** %38, align 8
  %1408 = load %"struct.std::__1::__split_buffer.14"** %38
  %1409 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1408, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1409, %"class.std::__1::__compressed_pair.15"** %37, align 8
  %1410 = load %"class.std::__1::__compressed_pair.15"** %37
  %1411 = bitcast %"class.std::__1::__compressed_pair.15"* %1410 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1411, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %36, align 8
  %1412 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %36
  %1413 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1412, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.14"* %__t.i36, %"struct.std::__1::__split_buffer.14"** %41, align 8
  %1414 = load %"struct.std::__1::__split_buffer.14"** %41
  %1415 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1414, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1415, %"class.std::__1::__compressed_pair.15"** %40, align 8
  %1416 = load %"class.std::__1::__compressed_pair.15"** %40
  %1417 = bitcast %"class.std::__1::__compressed_pair.15"* %1416 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1417, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %39, align 8
  %1418 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %39
  %1419 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1418, i32 0, i32 0
  store i32*** %1413, i32**** %45, align 8
  store i32*** %1419, i32**** %46, align 8
  %1420 = load i32**** %45, align 8
  store i32*** %1420, i32**** %44, align 8
  %1421 = load i32**** %44, align 8
  %1422 = load i32*** %1421
  store i32** %1422, i32*** %__t.i.i31, align 8
  %1423 = load i32**** %46, align 8
  store i32*** %1423, i32**** %42, align 8
  %1424 = load i32**** %42, align 8
  %1425 = load i32*** %1424
  %1426 = load i32**** %45, align 8
  store i32** %1425, i32*** %1426, align 8
  store i32*** %__t.i.i31, i32**** %43, align 8
  %1427 = load i32**** %43, align 8
  %1428 = load i32*** %1427
  %1429 = load i32**** %46, align 8
  store i32** %1428, i32*** %1429, align 8
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i36)
          to label %.noexc38 unwind label %1467

.noexc38:                                         ; preds = %1371
  br label %1439

; <label>:1430                                    ; preds = %.noexc
  %1431 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
          catch i8* null
  %1432 = extractvalue { i8*, i32 } %1431, 0
  store i8* %1432, i8** %82
  %1433 = extractvalue { i8*, i32 } %1431, 1
  store i32 %1433, i32* %83
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t.i36)
          to label %1434 unwind label %1459

; <label>:1434                                    ; preds = %1430
  %1435 = load i8** %82
  %1436 = load i32* %83
  %1437 = insertvalue { i8*, i32 } undef, i8* %1435, 0
  %1438 = insertvalue { i8*, i32 } %1437, i32 %1436, 1
  br label %.body

; <label>:1439                                    ; preds = %.noexc38, %1264
  br label %1440

; <label>:1440                                    ; preds = %1439, %1246
  store %"struct.std::__1::__split_buffer.14"* %1247, %"struct.std::__1::__split_buffer.14"** %60, align 8
  %1441 = load %"struct.std::__1::__split_buffer.14"** %60
  %1442 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1441, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1442, %"class.std::__1::__compressed_pair.15"** %59, align 8
  %1443 = load %"class.std::__1::__compressed_pair.15"** %59
  %1444 = bitcast %"class.std::__1::__compressed_pair.15"* %1443 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1444, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %58, align 8
  %1445 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %58
  %1446 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1445, i32 0, i32 1
  %1447 = load %"class.std::__1::allocator.2"** %1446, align 8
  %1448 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 2
  %1449 = load i32*** %1448, align 8
  store i32** %1449, i32*** %61, align 8
  %1450 = load i32*** %61, align 8
  %1451 = load i32*** %78, align 8
  store %"class.std::__1::allocator.2"* %1447, %"class.std::__1::allocator.2"** %62, align 8
  store i32** %1450, i32*** %63, align 8
  store i32** %1451, i32*** %64, align 8
  %1452 = load i32*** %63, align 8
  %1453 = bitcast i32** %1452 to i8*
  %1454 = icmp eq i8* %1453, null
  br i1 %1454, label %_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9push_backERKS1_.exit, label %1455

; <label>:1455                                    ; preds = %1440
  %1456 = bitcast i8* %1453 to i32**
  %1457 = load i32*** %64, align 8
  %1458 = load i32** %1457, align 8
  store i32* %1458, i32** %1456, align 8
  br label %_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9push_backERKS1_.exit

; <label>:1459                                    ; preds = %1430
  %1460 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
          catch i8* null
  %1461 = extractvalue { i8*, i32 } %1460, 0
  call void @__clang_call_terminate(i8* %1461) #11
  unreachable

_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9push_backERKS1_.exit: ; preds = %1440, %1455
  %1462 = phi i32** [ %1456, %1455 ], [ null, %1440 ]
  %1463 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1247, i32 0, i32 2
  %1464 = load i32*** %1463, align 8
  %1465 = getelementptr inbounds i32** %1464, i32 1
  store i32** %1465, i32*** %1463, align 8
  br label %1466

; <label>:1466                                    ; preds = %_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9push_backERKS1_.exit
  br label %1492

; <label>:1467                                    ; preds = %1371, %_ZNSt3__13maxImEERKT_S3_S3_.exit.i37, %_ZNSt3__13maxImEERKT_S3_S3_.exit
  %1468 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  br label %.body

.body:                                            ; preds = %1434, %1467
  %eh.lpad-body = phi { i8*, i32 } [ %1468, %1467 ], [ %1438, %1434 ]
  %1469 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  store i8* %1469, i8** %404
  %1470 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  store i32 %1470, i32* %405
  br label %1471

; <label>:1471                                    ; preds = %.body
  %1472 = load i8** %404
  %1473 = call i8* @__cxa_begin_catch(i8* %1472) #6
  %1474 = load %"class.std::__1::allocator.6"** %__a, align 8
  store %"struct.std::__1::__split_buffer.14"* %__buf, %"struct.std::__1::__split_buffer.14"** %9, align 8
  %1475 = load %"struct.std::__1::__split_buffer.14"** %9
  %1476 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1475, i32 0, i32 2
  %1477 = load i32*** %1476, align 8
  %1478 = getelementptr inbounds i32** %1477, i64 -1
  br label %1479

; <label>:1479                                    ; preds = %1471
  %1480 = load i32** %1478
  store %"class.std::__1::allocator.6"* %1474, %"class.std::__1::allocator.6"** %6, align 8
  store i32* %1480, i32** %7, align 8
  store i64 1024, i64* %8, align 8
  %1481 = load %"class.std::__1::allocator.6"** %6, align 8
  %1482 = load i32** %7, align 8
  %1483 = load i64* %8, align 8
  store %"class.std::__1::allocator.6"* %1481, %"class.std::__1::allocator.6"** %3, align 8
  store i32* %1482, i32** %4, align 8
  store i64 %1483, i64* %5, align 8
  %1484 = load %"class.std::__1::allocator.6"** %3
  %1485 = load i32** %4, align 8
  %1486 = bitcast i32* %1485 to i8*
  call void @_ZdlPv(i8* %1486) #6
  invoke void @__cxa_rethrow() #12
          to label %1597 unwind label %1487

; <label>:1487                                    ; preds = %1479
  %1488 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1489 = extractvalue { i8*, i32 } %1488, 0
  store i8* %1489, i8** %404
  %1490 = extractvalue { i8*, i32 } %1488, 1
  store i32 %1490, i32* %405
  invoke void @__cxa_end_catch()
          to label %1491 unwind label %1594

; <label>:1491                                    ; preds = %1487
  br label %1585

; <label>:1492                                    ; preds = %1466
  %1493 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1494 = getelementptr inbounds %"class.std::__1::__deque_base"* %1493, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1494, %"struct.std::__1::__split_buffer"** %2, align 8
  %1495 = load %"struct.std::__1::__split_buffer"** %2
  %1496 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1495, i32 0, i32 2
  %1497 = load i32*** %1496, align 8
  store i32** %1497, i32*** %__i, align 8
  br label %1498

; <label>:1498                                    ; preds = %1509, %1492
  %1499 = load i32*** %__i, align 8
  %1500 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1501 = getelementptr inbounds %"class.std::__1::__deque_base"* %1500, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1501, %"struct.std::__1::__split_buffer"** %1, align 8
  %1502 = load %"struct.std::__1::__split_buffer"** %1
  %1503 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1502, i32 0, i32 1
  %1504 = load i32*** %1503, align 8
  %1505 = icmp ne i32** %1499, %1504
  br i1 %1505, label %1506, label %1514

; <label>:1506                                    ; preds = %1498
  %1507 = load i32*** %__i, align 8
  %1508 = getelementptr inbounds i32** %1507, i32 -1
  store i32** %1508, i32*** %__i, align 8
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE10push_frontERKS1_(%"struct.std::__1::__split_buffer.14"* %__buf, i32** %1508)
          to label %1509 unwind label %1510

; <label>:1509                                    ; preds = %1506
  br label %1498

; <label>:1510                                    ; preds = %1506
  %1511 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1512 = extractvalue { i8*, i32 } %1511, 0
  store i8* %1512, i8** %404
  %1513 = extractvalue { i8*, i32 } %1511, 1
  store i32 %1513, i32* %405
  br label %1585

; <label>:1514                                    ; preds = %1498
  %1515 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1516 = getelementptr inbounds %"class.std::__1::__deque_base"* %1515, i32 0, i32 0
  %1517 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1516, i32 0, i32 0
  %1518 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__buf, i32 0, i32 0
  store i32*** %1517, i32**** %362, align 8
  store i32*** %1518, i32**** %363, align 8
  %1519 = load i32**** %362, align 8
  store i32*** %1519, i32**** %361, align 8
  %1520 = load i32**** %361, align 8
  %1521 = load i32*** %1520
  store i32** %1521, i32*** %__t.i4, align 8
  %1522 = load i32**** %363, align 8
  store i32*** %1522, i32**** %359, align 8
  %1523 = load i32**** %359, align 8
  %1524 = load i32*** %1523
  %1525 = load i32**** %362, align 8
  store i32** %1524, i32*** %1525, align 8
  store i32*** %__t.i4, i32**** %360, align 8
  %1526 = load i32**** %360, align 8
  %1527 = load i32*** %1526
  %1528 = load i32**** %363, align 8
  store i32** %1527, i32*** %1528, align 8
  br label %1529

; <label>:1529                                    ; preds = %1514
  %1530 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1531 = getelementptr inbounds %"class.std::__1::__deque_base"* %1530, i32 0, i32 0
  %1532 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1531, i32 0, i32 1
  %1533 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__buf, i32 0, i32 1
  store i32*** %1532, i32**** %367, align 8
  store i32*** %1533, i32**** %368, align 8
  %1534 = load i32**** %367, align 8
  store i32*** %1534, i32**** %366, align 8
  %1535 = load i32**** %366, align 8
  %1536 = load i32*** %1535
  store i32** %1536, i32*** %__t.i3, align 8
  %1537 = load i32**** %368, align 8
  store i32*** %1537, i32**** %364, align 8
  %1538 = load i32**** %364, align 8
  %1539 = load i32*** %1538
  %1540 = load i32**** %367, align 8
  store i32** %1539, i32*** %1540, align 8
  store i32*** %__t.i3, i32**** %365, align 8
  %1541 = load i32**** %365, align 8
  %1542 = load i32*** %1541
  %1543 = load i32**** %368, align 8
  store i32** %1542, i32*** %1543, align 8
  br label %1544

; <label>:1544                                    ; preds = %1529
  %1545 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1546 = getelementptr inbounds %"class.std::__1::__deque_base"* %1545, i32 0, i32 0
  %1547 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1546, i32 0, i32 2
  %1548 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__buf, i32 0, i32 2
  store i32*** %1547, i32**** %372, align 8
  store i32*** %1548, i32**** %373, align 8
  %1549 = load i32**** %372, align 8
  store i32*** %1549, i32**** %371, align 8
  %1550 = load i32**** %371, align 8
  %1551 = load i32*** %1550
  store i32** %1551, i32*** %__t.i2, align 8
  %1552 = load i32**** %373, align 8
  store i32*** %1552, i32**** %369, align 8
  %1553 = load i32**** %369, align 8
  %1554 = load i32*** %1553
  %1555 = load i32**** %372, align 8
  store i32** %1554, i32*** %1555, align 8
  store i32*** %__t.i2, i32**** %370, align 8
  %1556 = load i32**** %370, align 8
  %1557 = load i32*** %1556
  %1558 = load i32**** %373, align 8
  store i32** %1557, i32*** %1558, align 8
  br label %1559

; <label>:1559                                    ; preds = %1544
  %1560 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1561 = getelementptr inbounds %"class.std::__1::__deque_base"* %1560, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1561, %"struct.std::__1::__split_buffer"** %376, align 8
  %1562 = load %"struct.std::__1::__split_buffer"** %376
  %1563 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1562, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %1563, %"class.std::__1::__compressed_pair.0"** %375, align 8
  %1564 = load %"class.std::__1::__compressed_pair.0"** %375
  %1565 = bitcast %"class.std::__1::__compressed_pair.0"* %1564 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1565, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %374, align 8
  %1566 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %374
  %1567 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %1566, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.14"* %__buf, %"struct.std::__1::__split_buffer.14"** %379, align 8
  %1568 = load %"struct.std::__1::__split_buffer.14"** %379
  %1569 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %1568, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %1569, %"class.std::__1::__compressed_pair.15"** %378, align 8
  %1570 = load %"class.std::__1::__compressed_pair.15"** %378
  %1571 = bitcast %"class.std::__1::__compressed_pair.15"* %1570 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1571, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %377, align 8
  %1572 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %377
  %1573 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %1572, i32 0, i32 0
  store i32*** %1567, i32**** %383, align 8
  store i32*** %1573, i32**** %384, align 8
  %1574 = load i32**** %383, align 8
  store i32*** %1574, i32**** %382, align 8
  %1575 = load i32**** %382, align 8
  %1576 = load i32*** %1575
  store i32** %1576, i32*** %__t.i, align 8
  %1577 = load i32**** %384, align 8
  store i32*** %1577, i32**** %380, align 8
  %1578 = load i32**** %380, align 8
  %1579 = load i32*** %1578
  %1580 = load i32**** %383, align 8
  store i32** %1579, i32*** %1580, align 8
  store i32*** %__t.i, i32**** %381, align 8
  %1581 = load i32**** %381, align 8
  %1582 = load i32*** %1581
  %1583 = load i32**** %384, align 8
  store i32** %1582, i32*** %1583, align 8
  br label %1584

; <label>:1584                                    ; preds = %1559
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__buf)
  br label %1587

; <label>:1585                                    ; preds = %1510, %1491
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__buf)
          to label %1586 unwind label %1594

; <label>:1586                                    ; preds = %1585
  br label %1589

; <label>:1587                                    ; preds = %1584, %1184
  br label %1588

; <label>:1588                                    ; preds = %1587, %_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backERKS1_.exit
  ret void

; <label>:1589                                    ; preds = %1586
  %1590 = load i8** %404
  %1591 = load i32* %405
  %1592 = insertvalue { i8*, i32 } undef, i8* %1590, 0
  %1593 = insertvalue { i8*, i32 } %1592, i32 %1591, 1
  resume { i8*, i32 } %1593

; <label>:1594                                    ; preds = %1585, %1487
  %1595 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %1596 = extractvalue { i8*, i32 } %1595, 0
  call void @__clang_call_terminate(i8* %1596) #11
  unreachable

; <label>:1597                                    ; preds = %1479
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr { i32**, i32* } @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE3endEv(%"class.std::__1::__deque_base"* %this) #7 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %3 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %10 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %11 = alloca %"class.std::__1::__deque_base"*, align 8
  %12 = alloca %"class.std::__1::__deque_iterator", align 8
  %13 = alloca %"class.std::__1::__deque_base"*, align 8
  %__p = alloca i64, align 8
  %14 = alloca i8*
  %15 = alloca i32
  %__mp = alloca i32**, align 8
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %13, align 8
  %16 = load %"class.std::__1::__deque_base"** %13
  store %"class.std::__1::__deque_base"* %16, %"class.std::__1::__deque_base"** %11, align 8
  %17 = load %"class.std::__1::__deque_base"** %11
  %18 = getelementptr inbounds %"class.std::__1::__deque_base"* %17, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %18, %"class.std::__1::__compressed_pair.4"** %10, align 8
  %19 = load %"class.std::__1::__compressed_pair.4"** %10
  %20 = bitcast %"class.std::__1::__compressed_pair.4"* %19 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %20, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %9, align 8
  %21 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %9
  %22 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %21, i32 0, i32 0
  br label %23

; <label>:23                                      ; preds = %0
  %24 = load i64* %22
  %25 = getelementptr inbounds %"class.std::__1::__deque_base"* %16, i32 0, i32 1
  %26 = load i64* %25, align 8
  %27 = add i64 %24, %26
  store i64 %27, i64* %__p, align 8
  %28 = getelementptr inbounds %"class.std::__1::__deque_base"* %16, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %28, %"struct.std::__1::__split_buffer"** %1, align 8
  %29 = load %"struct.std::__1::__split_buffer"** %1
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %29, i32 0, i32 1
  %31 = load i32*** %30, align 8
  %32 = load i64* %__p, align 8
  %33 = udiv i64 %32, 1024
  %34 = getelementptr inbounds i32** %31, i64 %33
  store i32** %34, i32*** %__mp, align 8
  %35 = load i32*** %__mp, align 8
  %36 = getelementptr inbounds %"class.std::__1::__deque_base"* %16, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %36, %"struct.std::__1::__split_buffer"** %2, align 8
  %37 = load %"struct.std::__1::__split_buffer"** %2
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %37, i32 0, i32 2
  %39 = load i32*** %38, align 8
  %40 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %37, i32 0, i32 1
  %41 = load i32*** %40, align 8
  %42 = icmp eq i32** %39, %41
  br label %43

; <label>:43                                      ; preds = %23
  br i1 %42, label %44, label %45

; <label>:44                                      ; preds = %43
  br label %51

; <label>:45                                      ; preds = %43
  %46 = load i32*** %__mp, align 8
  %47 = load i32** %46, align 8
  %48 = load i64* %__p, align 8
  %49 = urem i64 %48, 1024
  %50 = getelementptr inbounds i32* %47, i64 %49
  br label %51

; <label>:51                                      ; preds = %45, %44
  %52 = phi i32* [ null, %44 ], [ %50, %45 ]
  store %"class.std::__1::__deque_iterator"* %12, %"class.std::__1::__deque_iterator"** %6, align 8
  store i32** %35, i32*** %7, align 8
  store i32* %52, i32** %8, align 8
  %53 = load %"class.std::__1::__deque_iterator"** %6
  %54 = load i32*** %7, align 8
  %55 = load i32** %8, align 8
  store %"class.std::__1::__deque_iterator"* %53, %"class.std::__1::__deque_iterator"** %3, align 8
  store i32** %54, i32*** %4, align 8
  store i32* %55, i32** %5, align 8
  %56 = load %"class.std::__1::__deque_iterator"** %3
  %57 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %56, i32 0, i32 0
  %58 = load i32*** %4, align 8
  store i32** %58, i32*** %57, align 8
  %59 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %56, i32 0, i32 1
  %60 = load i32** %5, align 8
  store i32* %60, i32** %59, align 8
  %61 = bitcast %"class.std::__1::__deque_iterator"* %12 to { i32**, i32* }*
  %62 = load { i32**, i32* }* %61, align 1
  ret { i32**, i32* } %62
                                                  ; No predecessors!
  %64 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          filter [0 x i8*] zeroinitializer
  %65 = extractvalue { i8*, i32 } %64, 0
  store i8* %65, i8** %14
  %66 = extractvalue { i8*, i32 } %64, 1
  store i32 %66, i32* %15
  br label %67

; <label>:67                                      ; preds = %63
  %68 = load i8** %14
  call void @__cxa_call_unexpected(i8* %68) #12
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontERKS1_(%"struct.std::__1::__split_buffer"* %this, i32** %__x) #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %4 = alloca %"class.std::__1::move_iterator"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %"class.std::__1::move_iterator"*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %"class.std::__1::move_iterator"*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %"struct.std::__1::__less"*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %__comp.i.i = alloca %"struct.std::__1::__less", align 1
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %"struct.std::__1::__less", align 1
  %20 = alloca i32***, align 8
  %21 = alloca i32***, align 8
  %22 = alloca i32***, align 8
  %23 = alloca i32***, align 8
  %24 = alloca i32***, align 8
  %__t.i3 = alloca i32**, align 8
  %25 = alloca i32***, align 8
  %26 = alloca i32***, align 8
  %27 = alloca i32***, align 8
  %28 = alloca i32***, align 8
  %29 = alloca i32***, align 8
  %__t.i2 = alloca i32**, align 8
  %30 = alloca i32***, align 8
  %31 = alloca i32***, align 8
  %32 = alloca i32***, align 8
  %33 = alloca i32***, align 8
  %34 = alloca i32***, align 8
  %__t.i1 = alloca i32**, align 8
  %35 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %36 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %37 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %38 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %39 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %40 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %41 = alloca i32***, align 8
  %42 = alloca i32***, align 8
  %43 = alloca i32***, align 8
  %44 = alloca i32***, align 8
  %45 = alloca i32***, align 8
  %__t.i = alloca i32**, align 8
  %46 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %47 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %48 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %49 = alloca i32**, align 8
  %50 = alloca i32**, align 8
  %51 = alloca i32**, align 8
  %52 = alloca i32**, align 8
  %53 = alloca i32**, align 8
  %__n.i.i = alloca i64, align 8
  %54 = alloca i32**, align 8
  %55 = alloca i32**, align 8
  %56 = alloca i32**, align 8
  %57 = alloca i32**, align 8
  %58 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %59 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %60 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %61 = alloca i32**, align 8
  %62 = alloca %"class.std::__1::allocator.2"*, align 8
  %63 = alloca i32**, align 8
  %64 = alloca i32**, align 8
  %65 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %66 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %67 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %68 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %69 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %70 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %71 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %72 = alloca i32**, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.14", align 8
  %75 = alloca %"class.std::__1::move_iterator", align 8
  %76 = alloca i8*
  %77 = alloca i32
  %78 = alloca %"class.std::__1::move_iterator", align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %71, align 8
  store i32** %__x, i32*** %72, align 8
  %79 = load %"struct.std::__1::__split_buffer"** %71
  %80 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %81 = load i32*** %80, align 8
  %82 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 0
  %83 = load i32*** %82, align 8
  %84 = icmp eq i32** %81, %83
  br i1 %84, label %85, label %279

; <label>:85                                      ; preds = %0
  %86 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %87 = load i32*** %86, align 8
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %70, align 8
  %88 = load %"struct.std::__1::__split_buffer"** %70
  %89 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %88, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %89, %"class.std::__1::__compressed_pair.0"** %69, align 8
  %90 = load %"class.std::__1::__compressed_pair.0"** %69
  %91 = bitcast %"class.std::__1::__compressed_pair.0"* %90 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %91, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %68, align 8
  %92 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %68
  %93 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %92, i32 0, i32 0
  %94 = load i32*** %93
  %95 = icmp ult i32** %87, %94
  br i1 %95, label %96, label %149

; <label>:96                                      ; preds = %85
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %67, align 8
  %97 = load %"struct.std::__1::__split_buffer"** %67
  %98 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %97, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %98, %"class.std::__1::__compressed_pair.0"** %66, align 8
  %99 = load %"class.std::__1::__compressed_pair.0"** %66
  %100 = bitcast %"class.std::__1::__compressed_pair.0"* %99 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %100, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %65, align 8
  %101 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %65
  %102 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %101, i32 0, i32 0
  %103 = load i32*** %102
  %104 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %105 = load i32*** %104, align 8
  %106 = ptrtoint i32** %103 to i64
  %107 = ptrtoint i32** %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 8
  store i64 %109, i64* %__d, align 8
  %110 = load i64* %__d, align 8
  %111 = add nsw i64 %110, 1
  %112 = sdiv i64 %111, 2
  store i64 %112, i64* %__d, align 8
  %113 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %114 = load i32*** %113, align 8
  %115 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %116 = load i32*** %115, align 8
  %117 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %118 = load i32*** %117, align 8
  %119 = load i64* %__d, align 8
  %120 = getelementptr inbounds i32** %118, i64 %119
  store i32** %114, i32*** %55, align 8
  store i32** %116, i32*** %56, align 8
  store i32** %120, i32*** %57, align 8
  %121 = load i32*** %55, align 8
  store i32** %121, i32*** %54, align 8
  %122 = load i32*** %54, align 8
  %123 = load i32*** %56, align 8
  store i32** %123, i32*** %49, align 8
  %124 = load i32*** %49, align 8
  %125 = load i32*** %57, align 8
  store i32** %125, i32*** %50, align 8
  %126 = load i32*** %50, align 8
  store i32** %122, i32*** %51, align 8
  store i32** %124, i32*** %52, align 8
  store i32** %126, i32*** %53, align 8
  %127 = load i32*** %52, align 8
  %128 = load i32*** %51, align 8
  %129 = ptrtoint i32** %127 to i64
  %130 = ptrtoint i32** %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  store i64 %132, i64* %__n.i.i, align 8
  %133 = load i64* %__n.i.i, align 8
  %134 = load i32*** %53, align 8
  %135 = sub i64 0, %133
  %136 = getelementptr inbounds i32** %134, i64 %135
  store i32** %136, i32*** %53, align 8
  %137 = load i32*** %53, align 8
  %138 = bitcast i32** %137 to i8*
  %139 = load i32*** %51, align 8
  %140 = bitcast i32** %139 to i8*
  %141 = load i64* %__n.i.i, align 8
  %142 = mul i64 %141, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %138, i8* %140, i64 %142, i32 8, i1 false) #6
  %143 = load i32*** %53, align 8
  %144 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  store i32** %143, i32*** %144, align 8
  %145 = load i64* %__d, align 8
  %146 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %147 = load i32*** %146, align 8
  %148 = getelementptr inbounds i32** %147, i64 %145
  store i32** %148, i32*** %146, align 8
  br label %278

; <label>:149                                     ; preds = %85
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %48, align 8
  %150 = load %"struct.std::__1::__split_buffer"** %48
  %151 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %150, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %151, %"class.std::__1::__compressed_pair.0"** %47, align 8
  %152 = load %"class.std::__1::__compressed_pair.0"** %47
  %153 = bitcast %"class.std::__1::__compressed_pair.0"* %152 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %153, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %46, align 8
  %154 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %46
  %155 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %154, i32 0, i32 0
  %156 = load i32*** %155
  %157 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 0
  %158 = load i32*** %157, align 8
  %159 = ptrtoint i32** %156 to i64
  %160 = ptrtoint i32** %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 8
  %163 = mul i64 2, %162
  store i64 %163, i64* %73
  store i64 1, i64* %74
  store i64* %73, i64** %17, align 8
  store i64* %74, i64** %18, align 8
  %164 = load i64** %17, align 8
  %165 = load i64** %18, align 8
  store i64* %164, i64** %15, align 8
  store i64* %165, i64** %16, align 8
  %166 = load i64** %15, align 8
  %167 = load i64** %16, align 8
  store %"struct.std::__1::__less"* %__comp.i.i, %"struct.std::__1::__less"** %12, align 8
  store i64* %166, i64** %13, align 8
  store i64* %167, i64** %14, align 8
  %168 = load %"struct.std::__1::__less"** %12
  %169 = load i64** %13, align 8
  %170 = load i64* %169, align 8
  %171 = load i64** %14, align 8
  %172 = load i64* %171, align 8
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %176

; <label>:174                                     ; preds = %149
  %175 = load i64** %16, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit

; <label>:176                                     ; preds = %149
  %177 = load i64** %15, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit

_ZNSt3__13maxImEERKT_S3_S3_.exit:                 ; preds = %174, %176
  %178 = phi i64* [ %175, %174 ], [ %177, %176 ]
  %179 = load i64* %178
  store i64 %179, i64* %__c, align 8
  %180 = load i64* %__c, align 8
  %181 = load i64* %__c, align 8
  %182 = add i64 %181, 3
  %183 = udiv i64 %182, 4
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %3, align 8
  %184 = load %"struct.std::__1::__split_buffer"** %3
  %185 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %184, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %185, %"class.std::__1::__compressed_pair.0"** %2, align 8
  %186 = load %"class.std::__1::__compressed_pair.0"** %2
  %187 = bitcast %"class.std::__1::__compressed_pair.0"* %186 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %187, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %1, align 8
  %188 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %1
  %189 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %188 to %"class.std::__1::allocator.2"*
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %__t, i64 %180, i64 %183, %"class.std::__1::allocator.2"* %189)
  %190 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %191 = load i32*** %190, align 8
  store %"class.std::__1::move_iterator"* %75, %"class.std::__1::move_iterator"** %6, align 8
  store i32** %191, i32*** %7, align 8
  %192 = load %"class.std::__1::move_iterator"** %6
  %193 = load i32*** %7, align 8
  store %"class.std::__1::move_iterator"* %192, %"class.std::__1::move_iterator"** %4, align 8
  store i32** %193, i32*** %5, align 8
  %194 = load %"class.std::__1::move_iterator"** %4
  %195 = getelementptr inbounds %"class.std::__1::move_iterator"* %194, i32 0, i32 0
  %196 = load i32*** %5, align 8
  store i32** %196, i32*** %195, align 8
  br label %197

; <label>:197                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit
  %198 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %199 = load i32*** %198, align 8
  store %"class.std::__1::move_iterator"* %78, %"class.std::__1::move_iterator"** %10, align 8
  store i32** %199, i32*** %11, align 8
  %200 = load %"class.std::__1::move_iterator"** %10
  %201 = load i32*** %11, align 8
  store %"class.std::__1::move_iterator"* %200, %"class.std::__1::move_iterator"** %8, align 8
  store i32** %201, i32*** %9, align 8
  %202 = load %"class.std::__1::move_iterator"** %8
  %203 = getelementptr inbounds %"class.std::__1::move_iterator"* %202, i32 0, i32 0
  %204 = load i32*** %9, align 8
  store i32** %204, i32*** %203, align 8
  br label %205

; <label>:205                                     ; preds = %197
  %206 = getelementptr %"class.std::__1::move_iterator"* %75, i32 0, i32 0
  %207 = load i32*** %206
  %208 = getelementptr %"class.std::__1::move_iterator"* %78, i32 0, i32 0
  %209 = load i32*** %208
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESB_SB_(%"struct.std::__1::__split_buffer.14"* %__t, i32** %207, i32** %209)
          to label %210 unwind label %273

; <label>:210                                     ; preds = %205
  %211 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 0
  %212 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t, i32 0, i32 0
  store i32*** %211, i32**** %23, align 8
  store i32*** %212, i32**** %24, align 8
  %213 = load i32**** %23, align 8
  store i32*** %213, i32**** %22, align 8
  %214 = load i32**** %22, align 8
  %215 = load i32*** %214
  store i32** %215, i32*** %__t.i3, align 8
  %216 = load i32**** %24, align 8
  store i32*** %216, i32**** %20, align 8
  %217 = load i32**** %20, align 8
  %218 = load i32*** %217
  %219 = load i32**** %23, align 8
  store i32** %218, i32*** %219, align 8
  store i32*** %__t.i3, i32**** %21, align 8
  %220 = load i32**** %21, align 8
  %221 = load i32*** %220
  %222 = load i32**** %24, align 8
  store i32** %221, i32*** %222, align 8
  br label %223

; <label>:223                                     ; preds = %210
  %224 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %225 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t, i32 0, i32 1
  store i32*** %224, i32**** %28, align 8
  store i32*** %225, i32**** %29, align 8
  %226 = load i32**** %28, align 8
  store i32*** %226, i32**** %27, align 8
  %227 = load i32**** %27, align 8
  %228 = load i32*** %227
  store i32** %228, i32*** %__t.i2, align 8
  %229 = load i32**** %29, align 8
  store i32*** %229, i32**** %25, align 8
  %230 = load i32**** %25, align 8
  %231 = load i32*** %230
  %232 = load i32**** %28, align 8
  store i32** %231, i32*** %232, align 8
  store i32*** %__t.i2, i32**** %26, align 8
  %233 = load i32**** %26, align 8
  %234 = load i32*** %233
  %235 = load i32**** %29, align 8
  store i32** %234, i32*** %235, align 8
  br label %236

; <label>:236                                     ; preds = %223
  %237 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %238 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t, i32 0, i32 2
  store i32*** %237, i32**** %33, align 8
  store i32*** %238, i32**** %34, align 8
  %239 = load i32**** %33, align 8
  store i32*** %239, i32**** %32, align 8
  %240 = load i32**** %32, align 8
  %241 = load i32*** %240
  store i32** %241, i32*** %__t.i1, align 8
  %242 = load i32**** %34, align 8
  store i32*** %242, i32**** %30, align 8
  %243 = load i32**** %30, align 8
  %244 = load i32*** %243
  %245 = load i32**** %33, align 8
  store i32** %244, i32*** %245, align 8
  store i32*** %__t.i1, i32**** %31, align 8
  %246 = load i32**** %31, align 8
  %247 = load i32*** %246
  %248 = load i32**** %34, align 8
  store i32** %247, i32*** %248, align 8
  br label %249

; <label>:249                                     ; preds = %236
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %37, align 8
  %250 = load %"struct.std::__1::__split_buffer"** %37
  %251 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %250, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %251, %"class.std::__1::__compressed_pair.0"** %36, align 8
  %252 = load %"class.std::__1::__compressed_pair.0"** %36
  %253 = bitcast %"class.std::__1::__compressed_pair.0"* %252 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %253, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %35, align 8
  %254 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %35
  %255 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %254, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.14"* %__t, %"struct.std::__1::__split_buffer.14"** %40, align 8
  %256 = load %"struct.std::__1::__split_buffer.14"** %40
  %257 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %256, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %257, %"class.std::__1::__compressed_pair.15"** %39, align 8
  %258 = load %"class.std::__1::__compressed_pair.15"** %39
  %259 = bitcast %"class.std::__1::__compressed_pair.15"* %258 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %259, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %38, align 8
  %260 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %38
  %261 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %260, i32 0, i32 0
  store i32*** %255, i32**** %44, align 8
  store i32*** %261, i32**** %45, align 8
  %262 = load i32**** %44, align 8
  store i32*** %262, i32**** %43, align 8
  %263 = load i32**** %43, align 8
  %264 = load i32*** %263
  store i32** %264, i32*** %__t.i, align 8
  %265 = load i32**** %45, align 8
  store i32*** %265, i32**** %41, align 8
  %266 = load i32**** %41, align 8
  %267 = load i32*** %266
  %268 = load i32**** %44, align 8
  store i32** %267, i32*** %268, align 8
  store i32*** %__t.i, i32**** %42, align 8
  %269 = load i32**** %42, align 8
  %270 = load i32*** %269
  %271 = load i32**** %45, align 8
  store i32** %270, i32*** %271, align 8
  br label %272

; <label>:272                                     ; preds = %249
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t)
  br label %278

; <label>:273                                     ; preds = %205
  %274 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %275 = extractvalue { i8*, i32 } %274, 0
  store i8* %275, i8** %76
  %276 = extractvalue { i8*, i32 } %274, 1
  store i32 %276, i32* %77
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t)
          to label %277 unwind label %307

; <label>:277                                     ; preds = %273
  br label %302

; <label>:278                                     ; preds = %272, %96
  br label %279

; <label>:279                                     ; preds = %278, %0
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %60, align 8
  %280 = load %"struct.std::__1::__split_buffer"** %60
  %281 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %280, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.0"* %281, %"class.std::__1::__compressed_pair.0"** %59, align 8
  %282 = load %"class.std::__1::__compressed_pair.0"** %59
  %283 = bitcast %"class.std::__1::__compressed_pair.0"* %282 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %283, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %58, align 8
  %284 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %58
  %285 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %284 to %"class.std::__1::allocator.2"*
  %286 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %287 = load i32*** %286, align 8
  %288 = getelementptr inbounds i32** %287, i64 -1
  store i32** %288, i32*** %61, align 8
  %289 = load i32*** %61, align 8
  %290 = load i32*** %72, align 8
  store %"class.std::__1::allocator.2"* %285, %"class.std::__1::allocator.2"** %62, align 8
  store i32** %289, i32*** %63, align 8
  store i32** %290, i32*** %64, align 8
  %291 = load i32*** %63, align 8
  %292 = bitcast i32** %291 to i8*
  %293 = icmp eq i8* %292, null
  br i1 %293, label %_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit, label %294

; <label>:294                                     ; preds = %279
  %295 = bitcast i8* %292 to i32**
  %296 = load i32*** %64, align 8
  %297 = load i32** %296, align 8
  store i32* %297, i32** %295, align 8
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit: ; preds = %279, %294
  %298 = phi i32** [ %295, %294 ], [ null, %279 ]
  %299 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %300 = load i32*** %299, align 8
  %301 = getelementptr inbounds i32** %300, i32 -1
  store i32** %301, i32*** %299, align 8
  ret void

; <label>:302                                     ; preds = %277
  %303 = load i8** %76
  %304 = load i32* %77
  %305 = insertvalue { i8*, i32 } undef, i8* %303, 0
  %306 = insertvalue { i8*, i32 } %305, i32 %304, 1
  resume { i8*, i32 } %306

; <label>:307                                     ; preds = %273
  %308 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %309 = extractvalue { i8*, i32 } %308, 0
  call void @__clang_call_terminate(i8* %309) #11
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %this, i64 %__cap, i64 %__start, %"class.std::__1::allocator.2"* %__a) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__1::allocator.2"*, align 8
  store %"struct.std::__1::__split_buffer.14"* %this, %"struct.std::__1::__split_buffer.14"** %1, align 8
  store i64 %__cap, i64* %2, align 8
  store i64 %__start, i64* %3, align 8
  store %"class.std::__1::allocator.2"* %__a, %"class.std::__1::allocator.2"** %4, align 8
  %5 = load %"struct.std::__1::__split_buffer.14"** %1
  %6 = load i64* %2, align 8
  %7 = load i64* %3, align 8
  %8 = load %"class.std::__1::allocator.2"** %4
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC2EmmS4_(%"struct.std::__1::__split_buffer.14"* %5, i64 %6, i64 %7, %"class.std::__1::allocator.2"* %8)
  ret void
}

declare void @__cxa_rethrow()

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE10push_frontERKS1_(%"struct.std::__1::__split_buffer.14"* %this, i32** %__x) #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %4 = alloca %"class.std::__1::move_iterator"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %"class.std::__1::move_iterator"*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %"class.std::__1::move_iterator"*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %"struct.std::__1::__less"*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %__comp.i.i = alloca %"struct.std::__1::__less", align 1
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %"struct.std::__1::__less", align 1
  %20 = alloca i32***, align 8
  %21 = alloca i32***, align 8
  %22 = alloca i32***, align 8
  %23 = alloca i32***, align 8
  %24 = alloca i32***, align 8
  %__t.i3 = alloca i32**, align 8
  %25 = alloca i32***, align 8
  %26 = alloca i32***, align 8
  %27 = alloca i32***, align 8
  %28 = alloca i32***, align 8
  %29 = alloca i32***, align 8
  %__t.i2 = alloca i32**, align 8
  %30 = alloca i32***, align 8
  %31 = alloca i32***, align 8
  %32 = alloca i32***, align 8
  %33 = alloca i32***, align 8
  %34 = alloca i32***, align 8
  %__t.i1 = alloca i32**, align 8
  %35 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %36 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %37 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %38 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %39 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %40 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %41 = alloca i32***, align 8
  %42 = alloca i32***, align 8
  %43 = alloca i32***, align 8
  %44 = alloca i32***, align 8
  %45 = alloca i32***, align 8
  %__t.i = alloca i32**, align 8
  %46 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %47 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %48 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %49 = alloca i32**, align 8
  %50 = alloca i32**, align 8
  %51 = alloca i32**, align 8
  %52 = alloca i32**, align 8
  %53 = alloca i32**, align 8
  %__n.i.i = alloca i64, align 8
  %54 = alloca i32**, align 8
  %55 = alloca i32**, align 8
  %56 = alloca i32**, align 8
  %57 = alloca i32**, align 8
  %58 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %59 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %60 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %61 = alloca i32**, align 8
  %62 = alloca %"class.std::__1::allocator.2"*, align 8
  %63 = alloca i32**, align 8
  %64 = alloca i32**, align 8
  %65 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %66 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %67 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %68 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %69 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %70 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %71 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %72 = alloca i32**, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.14", align 8
  %75 = alloca %"class.std::__1::move_iterator", align 8
  %76 = alloca i8*
  %77 = alloca i32
  %78 = alloca %"class.std::__1::move_iterator", align 8
  store %"struct.std::__1::__split_buffer.14"* %this, %"struct.std::__1::__split_buffer.14"** %71, align 8
  store i32** %__x, i32*** %72, align 8
  %79 = load %"struct.std::__1::__split_buffer.14"** %71
  %80 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 1
  %81 = load i32*** %80, align 8
  %82 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 0
  %83 = load i32*** %82, align 8
  %84 = icmp eq i32** %81, %83
  br i1 %84, label %85, label %280

; <label>:85                                      ; preds = %0
  %86 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 2
  %87 = load i32*** %86, align 8
  store %"struct.std::__1::__split_buffer.14"* %79, %"struct.std::__1::__split_buffer.14"** %70, align 8
  %88 = load %"struct.std::__1::__split_buffer.14"** %70
  %89 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %88, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %89, %"class.std::__1::__compressed_pair.15"** %69, align 8
  %90 = load %"class.std::__1::__compressed_pair.15"** %69
  %91 = bitcast %"class.std::__1::__compressed_pair.15"* %90 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %91, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %68, align 8
  %92 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %68
  %93 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %92, i32 0, i32 0
  %94 = load i32*** %93
  %95 = icmp ult i32** %87, %94
  br i1 %95, label %96, label %149

; <label>:96                                      ; preds = %85
  store %"struct.std::__1::__split_buffer.14"* %79, %"struct.std::__1::__split_buffer.14"** %67, align 8
  %97 = load %"struct.std::__1::__split_buffer.14"** %67
  %98 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %97, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %98, %"class.std::__1::__compressed_pair.15"** %66, align 8
  %99 = load %"class.std::__1::__compressed_pair.15"** %66
  %100 = bitcast %"class.std::__1::__compressed_pair.15"* %99 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %100, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %65, align 8
  %101 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %65
  %102 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %101, i32 0, i32 0
  %103 = load i32*** %102
  %104 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 2
  %105 = load i32*** %104, align 8
  %106 = ptrtoint i32** %103 to i64
  %107 = ptrtoint i32** %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 8
  store i64 %109, i64* %__d, align 8
  %110 = load i64* %__d, align 8
  %111 = add nsw i64 %110, 1
  %112 = sdiv i64 %111, 2
  store i64 %112, i64* %__d, align 8
  %113 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 1
  %114 = load i32*** %113, align 8
  %115 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 2
  %116 = load i32*** %115, align 8
  %117 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 2
  %118 = load i32*** %117, align 8
  %119 = load i64* %__d, align 8
  %120 = getelementptr inbounds i32** %118, i64 %119
  store i32** %114, i32*** %55, align 8
  store i32** %116, i32*** %56, align 8
  store i32** %120, i32*** %57, align 8
  %121 = load i32*** %55, align 8
  store i32** %121, i32*** %54, align 8
  %122 = load i32*** %54, align 8
  %123 = load i32*** %56, align 8
  store i32** %123, i32*** %49, align 8
  %124 = load i32*** %49, align 8
  %125 = load i32*** %57, align 8
  store i32** %125, i32*** %50, align 8
  %126 = load i32*** %50, align 8
  store i32** %122, i32*** %51, align 8
  store i32** %124, i32*** %52, align 8
  store i32** %126, i32*** %53, align 8
  %127 = load i32*** %52, align 8
  %128 = load i32*** %51, align 8
  %129 = ptrtoint i32** %127 to i64
  %130 = ptrtoint i32** %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  store i64 %132, i64* %__n.i.i, align 8
  %133 = load i64* %__n.i.i, align 8
  %134 = load i32*** %53, align 8
  %135 = sub i64 0, %133
  %136 = getelementptr inbounds i32** %134, i64 %135
  store i32** %136, i32*** %53, align 8
  %137 = load i32*** %53, align 8
  %138 = bitcast i32** %137 to i8*
  %139 = load i32*** %51, align 8
  %140 = bitcast i32** %139 to i8*
  %141 = load i64* %__n.i.i, align 8
  %142 = mul i64 %141, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %138, i8* %140, i64 %142, i32 8, i1 false) #6
  %143 = load i32*** %53, align 8
  %144 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 1
  store i32** %143, i32*** %144, align 8
  %145 = load i64* %__d, align 8
  %146 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 2
  %147 = load i32*** %146, align 8
  %148 = getelementptr inbounds i32** %147, i64 %145
  store i32** %148, i32*** %146, align 8
  br label %279

; <label>:149                                     ; preds = %85
  store %"struct.std::__1::__split_buffer.14"* %79, %"struct.std::__1::__split_buffer.14"** %48, align 8
  %150 = load %"struct.std::__1::__split_buffer.14"** %48
  %151 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %150, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %151, %"class.std::__1::__compressed_pair.15"** %47, align 8
  %152 = load %"class.std::__1::__compressed_pair.15"** %47
  %153 = bitcast %"class.std::__1::__compressed_pair.15"* %152 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %153, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %46, align 8
  %154 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %46
  %155 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %154, i32 0, i32 0
  %156 = load i32*** %155
  %157 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 0
  %158 = load i32*** %157, align 8
  %159 = ptrtoint i32** %156 to i64
  %160 = ptrtoint i32** %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 8
  %163 = mul i64 2, %162
  store i64 %163, i64* %73
  store i64 1, i64* %74
  store i64* %73, i64** %17, align 8
  store i64* %74, i64** %18, align 8
  %164 = load i64** %17, align 8
  %165 = load i64** %18, align 8
  store i64* %164, i64** %15, align 8
  store i64* %165, i64** %16, align 8
  %166 = load i64** %15, align 8
  %167 = load i64** %16, align 8
  store %"struct.std::__1::__less"* %__comp.i.i, %"struct.std::__1::__less"** %12, align 8
  store i64* %166, i64** %13, align 8
  store i64* %167, i64** %14, align 8
  %168 = load %"struct.std::__1::__less"** %12
  %169 = load i64** %13, align 8
  %170 = load i64* %169, align 8
  %171 = load i64** %14, align 8
  %172 = load i64* %171, align 8
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %176

; <label>:174                                     ; preds = %149
  %175 = load i64** %16, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit

; <label>:176                                     ; preds = %149
  %177 = load i64** %15, align 8
  br label %_ZNSt3__13maxImEERKT_S3_S3_.exit

_ZNSt3__13maxImEERKT_S3_S3_.exit:                 ; preds = %174, %176
  %178 = phi i64* [ %175, %174 ], [ %177, %176 ]
  %179 = load i64* %178
  store i64 %179, i64* %__c, align 8
  %180 = load i64* %__c, align 8
  %181 = load i64* %__c, align 8
  %182 = add i64 %181, 3
  %183 = udiv i64 %182, 4
  store %"struct.std::__1::__split_buffer.14"* %79, %"struct.std::__1::__split_buffer.14"** %3, align 8
  %184 = load %"struct.std::__1::__split_buffer.14"** %3
  %185 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %184, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %185, %"class.std::__1::__compressed_pair.15"** %2, align 8
  %186 = load %"class.std::__1::__compressed_pair.15"** %2
  %187 = bitcast %"class.std::__1::__compressed_pair.15"* %186 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %187, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %1, align 8
  %188 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %1
  %189 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %188, i32 0, i32 1
  %190 = load %"class.std::__1::allocator.2"** %189, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer.14"* %__t, i64 %180, i64 %183, %"class.std::__1::allocator.2"* %190)
  %191 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 1
  %192 = load i32*** %191, align 8
  store %"class.std::__1::move_iterator"* %75, %"class.std::__1::move_iterator"** %6, align 8
  store i32** %192, i32*** %7, align 8
  %193 = load %"class.std::__1::move_iterator"** %6
  %194 = load i32*** %7, align 8
  store %"class.std::__1::move_iterator"* %193, %"class.std::__1::move_iterator"** %4, align 8
  store i32** %194, i32*** %5, align 8
  %195 = load %"class.std::__1::move_iterator"** %4
  %196 = getelementptr inbounds %"class.std::__1::move_iterator"* %195, i32 0, i32 0
  %197 = load i32*** %5, align 8
  store i32** %197, i32*** %196, align 8
  br label %198

; <label>:198                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit
  %199 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 2
  %200 = load i32*** %199, align 8
  store %"class.std::__1::move_iterator"* %78, %"class.std::__1::move_iterator"** %10, align 8
  store i32** %200, i32*** %11, align 8
  %201 = load %"class.std::__1::move_iterator"** %10
  %202 = load i32*** %11, align 8
  store %"class.std::__1::move_iterator"* %201, %"class.std::__1::move_iterator"** %8, align 8
  store i32** %202, i32*** %9, align 8
  %203 = load %"class.std::__1::move_iterator"** %8
  %204 = getelementptr inbounds %"class.std::__1::move_iterator"* %203, i32 0, i32 0
  %205 = load i32*** %9, align 8
  store i32** %205, i32*** %204, align 8
  br label %206

; <label>:206                                     ; preds = %198
  %207 = getelementptr %"class.std::__1::move_iterator"* %75, i32 0, i32 0
  %208 = load i32*** %207
  %209 = getelementptr %"class.std::__1::move_iterator"* %78, i32 0, i32 0
  %210 = load i32*** %209
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESB_SB_(%"struct.std::__1::__split_buffer.14"* %__t, i32** %208, i32** %210)
          to label %211 unwind label %274

; <label>:211                                     ; preds = %206
  %212 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 0
  %213 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t, i32 0, i32 0
  store i32*** %212, i32**** %23, align 8
  store i32*** %213, i32**** %24, align 8
  %214 = load i32**** %23, align 8
  store i32*** %214, i32**** %22, align 8
  %215 = load i32**** %22, align 8
  %216 = load i32*** %215
  store i32** %216, i32*** %__t.i3, align 8
  %217 = load i32**** %24, align 8
  store i32*** %217, i32**** %20, align 8
  %218 = load i32**** %20, align 8
  %219 = load i32*** %218
  %220 = load i32**** %23, align 8
  store i32** %219, i32*** %220, align 8
  store i32*** %__t.i3, i32**** %21, align 8
  %221 = load i32**** %21, align 8
  %222 = load i32*** %221
  %223 = load i32**** %24, align 8
  store i32** %222, i32*** %223, align 8
  br label %224

; <label>:224                                     ; preds = %211
  %225 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 1
  %226 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t, i32 0, i32 1
  store i32*** %225, i32**** %28, align 8
  store i32*** %226, i32**** %29, align 8
  %227 = load i32**** %28, align 8
  store i32*** %227, i32**** %27, align 8
  %228 = load i32**** %27, align 8
  %229 = load i32*** %228
  store i32** %229, i32*** %__t.i2, align 8
  %230 = load i32**** %29, align 8
  store i32*** %230, i32**** %25, align 8
  %231 = load i32**** %25, align 8
  %232 = load i32*** %231
  %233 = load i32**** %28, align 8
  store i32** %232, i32*** %233, align 8
  store i32*** %__t.i2, i32**** %26, align 8
  %234 = load i32**** %26, align 8
  %235 = load i32*** %234
  %236 = load i32**** %29, align 8
  store i32** %235, i32*** %236, align 8
  br label %237

; <label>:237                                     ; preds = %224
  %238 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 2
  %239 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %__t, i32 0, i32 2
  store i32*** %238, i32**** %33, align 8
  store i32*** %239, i32**** %34, align 8
  %240 = load i32**** %33, align 8
  store i32*** %240, i32**** %32, align 8
  %241 = load i32**** %32, align 8
  %242 = load i32*** %241
  store i32** %242, i32*** %__t.i1, align 8
  %243 = load i32**** %34, align 8
  store i32*** %243, i32**** %30, align 8
  %244 = load i32**** %30, align 8
  %245 = load i32*** %244
  %246 = load i32**** %33, align 8
  store i32** %245, i32*** %246, align 8
  store i32*** %__t.i1, i32**** %31, align 8
  %247 = load i32**** %31, align 8
  %248 = load i32*** %247
  %249 = load i32**** %34, align 8
  store i32** %248, i32*** %249, align 8
  br label %250

; <label>:250                                     ; preds = %237
  store %"struct.std::__1::__split_buffer.14"* %79, %"struct.std::__1::__split_buffer.14"** %37, align 8
  %251 = load %"struct.std::__1::__split_buffer.14"** %37
  %252 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %251, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %252, %"class.std::__1::__compressed_pair.15"** %36, align 8
  %253 = load %"class.std::__1::__compressed_pair.15"** %36
  %254 = bitcast %"class.std::__1::__compressed_pair.15"* %253 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %254, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %35, align 8
  %255 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %35
  %256 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %255, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.14"* %__t, %"struct.std::__1::__split_buffer.14"** %40, align 8
  %257 = load %"struct.std::__1::__split_buffer.14"** %40
  %258 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %257, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %258, %"class.std::__1::__compressed_pair.15"** %39, align 8
  %259 = load %"class.std::__1::__compressed_pair.15"** %39
  %260 = bitcast %"class.std::__1::__compressed_pair.15"* %259 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %260, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %38, align 8
  %261 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %38
  %262 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %261, i32 0, i32 0
  store i32*** %256, i32**** %44, align 8
  store i32*** %262, i32**** %45, align 8
  %263 = load i32**** %44, align 8
  store i32*** %263, i32**** %43, align 8
  %264 = load i32**** %43, align 8
  %265 = load i32*** %264
  store i32** %265, i32*** %__t.i, align 8
  %266 = load i32**** %45, align 8
  store i32*** %266, i32**** %41, align 8
  %267 = load i32**** %41, align 8
  %268 = load i32*** %267
  %269 = load i32**** %44, align 8
  store i32** %268, i32*** %269, align 8
  store i32*** %__t.i, i32**** %42, align 8
  %270 = load i32**** %42, align 8
  %271 = load i32*** %270
  %272 = load i32**** %45, align 8
  store i32** %271, i32*** %272, align 8
  br label %273

; <label>:273                                     ; preds = %250
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t)
  br label %279

; <label>:274                                     ; preds = %206
  %275 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %276 = extractvalue { i8*, i32 } %275, 0
  store i8* %276, i8** %76
  %277 = extractvalue { i8*, i32 } %275, 1
  store i32 %277, i32* %77
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %__t)
          to label %278 unwind label %309

; <label>:278                                     ; preds = %274
  br label %304

; <label>:279                                     ; preds = %273, %96
  br label %280

; <label>:280                                     ; preds = %279, %0
  store %"struct.std::__1::__split_buffer.14"* %79, %"struct.std::__1::__split_buffer.14"** %60, align 8
  %281 = load %"struct.std::__1::__split_buffer.14"** %60
  %282 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %281, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %282, %"class.std::__1::__compressed_pair.15"** %59, align 8
  %283 = load %"class.std::__1::__compressed_pair.15"** %59
  %284 = bitcast %"class.std::__1::__compressed_pair.15"* %283 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %284, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %58, align 8
  %285 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %58
  %286 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %285, i32 0, i32 1
  %287 = load %"class.std::__1::allocator.2"** %286, align 8
  %288 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 1
  %289 = load i32*** %288, align 8
  %290 = getelementptr inbounds i32** %289, i64 -1
  store i32** %290, i32*** %61, align 8
  %291 = load i32*** %61, align 8
  %292 = load i32*** %72, align 8
  store %"class.std::__1::allocator.2"* %287, %"class.std::__1::allocator.2"** %62, align 8
  store i32** %291, i32*** %63, align 8
  store i32** %292, i32*** %64, align 8
  %293 = load i32*** %63, align 8
  %294 = bitcast i32** %293 to i8*
  %295 = icmp eq i8* %294, null
  br i1 %295, label %_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit, label %296

; <label>:296                                     ; preds = %280
  %297 = bitcast i8* %294 to i32**
  %298 = load i32*** %64, align 8
  %299 = load i32** %298, align 8
  store i32* %299, i32** %297, align 8
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit: ; preds = %280, %296
  %300 = phi i32** [ %297, %296 ], [ null, %280 ]
  %301 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %79, i32 0, i32 1
  %302 = load i32*** %301, align 8
  %303 = getelementptr inbounds i32** %302, i32 -1
  store i32** %303, i32*** %301, align 8
  ret void

; <label>:304                                     ; preds = %278
  %305 = load i8** %76
  %306 = load i32* %77
  %307 = insertvalue { i8*, i32 } undef, i8* %305, 0
  %308 = insertvalue { i8*, i32 } %307, i32 %306, 1
  resume { i8*, i32 } %308

; <label>:309                                     ; preds = %274
  %310 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %311 = extractvalue { i8*, i32 } %310, 0
  call void @__clang_call_terminate(i8* %311) #11
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer.14"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  store %"struct.std::__1::__split_buffer.14"* %this, %"struct.std::__1::__split_buffer.14"** %1, align 8
  %2 = load %"struct.std::__1::__split_buffer.14"** %1
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED2Ev(%"struct.std::__1::__split_buffer.14"* %2)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED2Ev(%"struct.std::__1::__split_buffer.14"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %4 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %5 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %6 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %7 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %8 = alloca %"class.std::__1::allocator.2"*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::__1::allocator.2"*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %"class.std::__1::allocator.2"*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca %"class.std::__1::allocator.2"*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca %"struct.std::__1::integral_constant", align 1
  %20 = alloca %"struct.std::__1::__has_destroy", align 1
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %23 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %24 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca %"struct.std::__1::integral_constant", align 1
  %27 = alloca i8*
  %28 = alloca i32
  %29 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %30 = alloca i32**, align 8
  %31 = alloca %"struct.std::__1::integral_constant", align 1
  %32 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %33 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  store %"struct.std::__1::__split_buffer.14"* %this, %"struct.std::__1::__split_buffer.14"** %33, align 8
  %34 = load %"struct.std::__1::__split_buffer.14"** %33
  store %"struct.std::__1::__split_buffer.14"* %34, %"struct.std::__1::__split_buffer.14"** %32, align 8
  %35 = load %"struct.std::__1::__split_buffer.14"** %32
  %36 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %35, i32 0, i32 1
  %37 = load i32*** %36, align 8
  store %"struct.std::__1::__split_buffer.14"* %35, %"struct.std::__1::__split_buffer.14"** %29, align 8
  store i32** %37, i32*** %30, align 8
  %38 = load %"struct.std::__1::__split_buffer.14"** %29
  %39 = load i32*** %30, align 8
  store %"struct.std::__1::__split_buffer.14"* %38, %"struct.std::__1::__split_buffer.14"** %24, align 8
  store i32** %39, i32*** %25, align 8
  %40 = load %"struct.std::__1::__split_buffer.14"** %24
  br label %41

; <label>:41                                      ; preds = %46, %0
  %42 = load i32*** %25, align 8
  %43 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %40, i32 0, i32 2
  %44 = load i32*** %43, align 8
  %45 = icmp ne i32** %42, %44
  br i1 %45, label %46, label %_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearEv.exit

; <label>:46                                      ; preds = %41
  store %"struct.std::__1::__split_buffer.14"* %40, %"struct.std::__1::__split_buffer.14"** %23, align 8
  %47 = load %"struct.std::__1::__split_buffer.14"** %23
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %47, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %48, %"class.std::__1::__compressed_pair.15"** %22, align 8
  %49 = load %"class.std::__1::__compressed_pair.15"** %22
  %50 = bitcast %"class.std::__1::__compressed_pair.15"* %49 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %50, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %21, align 8
  %51 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %21
  %52 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %51, i32 0, i32 1
  %53 = load %"class.std::__1::allocator.2"** %52, align 8
  %54 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %40, i32 0, i32 2
  %55 = load i32*** %54, align 8
  %56 = getelementptr inbounds i32** %55, i32 -1
  store i32** %56, i32*** %54, align 8
  store i32** %56, i32*** %14, align 8
  %57 = load i32*** %14, align 8
  store %"class.std::__1::allocator.2"* %53, %"class.std::__1::allocator.2"** %17, align 8
  store i32** %57, i32*** %18, align 8
  %58 = bitcast %"struct.std::__1::__has_destroy"* %20 to %"struct.std::__1::integral_constant"*
  %59 = load %"class.std::__1::allocator.2"** %17, align 8
  %60 = load i32*** %18, align 8
  store %"class.std::__1::allocator.2"* %59, %"class.std::__1::allocator.2"** %15, align 8
  store i32** %60, i32*** %16, align 8
  %61 = load i32*** %16, align 8
  br label %41

_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearEv.exit: ; preds = %41
  %62 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %34, i32 0, i32 0
  %63 = load i32*** %62, align 8
  %64 = icmp ne i32** %63, null
  br i1 %64, label %65, label %95

; <label>:65                                      ; preds = %_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearEv.exit
  store %"struct.std::__1::__split_buffer.14"* %34, %"struct.std::__1::__split_buffer.14"** %7, align 8
  %66 = load %"struct.std::__1::__split_buffer.14"** %7
  %67 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %66, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %67, %"class.std::__1::__compressed_pair.15"** %6, align 8
  %68 = load %"class.std::__1::__compressed_pair.15"** %6
  %69 = bitcast %"class.std::__1::__compressed_pair.15"* %68 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %69, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %5, align 8
  %70 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %5
  %71 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %70, i32 0, i32 1
  %72 = load %"class.std::__1::allocator.2"** %71, align 8
  %73 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %34, i32 0, i32 0
  %74 = load i32*** %73, align 8
  store %"struct.std::__1::__split_buffer.14"* %34, %"struct.std::__1::__split_buffer.14"** %4, align 8
  %75 = load %"struct.std::__1::__split_buffer.14"** %4
  store %"struct.std::__1::__split_buffer.14"* %75, %"struct.std::__1::__split_buffer.14"** %3, align 8
  %76 = load %"struct.std::__1::__split_buffer.14"** %3
  %77 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %76, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %77, %"class.std::__1::__compressed_pair.15"** %2, align 8
  %78 = load %"class.std::__1::__compressed_pair.15"** %2
  %79 = bitcast %"class.std::__1::__compressed_pair.15"* %78 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %79, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %1, align 8
  %80 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %1
  %81 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %80, i32 0, i32 0
  %82 = load i32*** %81
  %83 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %75, i32 0, i32 0
  %84 = load i32*** %83, align 8
  %85 = ptrtoint i32** %82 to i64
  %86 = ptrtoint i32** %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 8
  store %"class.std::__1::allocator.2"* %72, %"class.std::__1::allocator.2"** %11, align 8
  store i32** %74, i32*** %12, align 8
  store i64 %88, i64* %13, align 8
  %89 = load %"class.std::__1::allocator.2"** %11, align 8
  %90 = load i32*** %12, align 8
  %91 = load i64* %13, align 8
  store %"class.std::__1::allocator.2"* %89, %"class.std::__1::allocator.2"** %8, align 8
  store i32** %90, i32*** %9, align 8
  store i64 %91, i64* %10, align 8
  %92 = load %"class.std::__1::allocator.2"** %8
  %93 = load i32*** %9, align 8
  %94 = bitcast i32** %93 to i8*
  call void @_ZdlPv(i8* %94) #6
  br label %95

; <label>:95                                      ; preds = %65, %_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearEv.exit
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESB_SB_(%"struct.std::__1::__split_buffer.14"* %this, i32** %__first.coerce, i32** %__last.coerce) #0 align 2 {
  %1 = alloca %"class.std::__1::move_iterator"*, align 8
  %2 = alloca %"class.std::__1::move_iterator"*, align 8
  %3 = alloca %"class.std::__1::move_iterator"*, align 8
  %4 = alloca %"class.std::__1::move_iterator"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %"class.std::__1::move_iterator"*, align 8
  %7 = alloca %"class.std::__1::allocator.2"*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %12 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %13 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %14 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %__a = alloca %"class.std::__1::allocator.2"*, align 8
  store %"struct.std::__1::__split_buffer.14"* %this, %"struct.std::__1::__split_buffer.14"** %14, align 8
  %15 = getelementptr %"class.std::__1::move_iterator"* %__first, i32 0, i32 0
  store i32** %__first.coerce, i32*** %15
  %16 = getelementptr %"class.std::__1::move_iterator"* %__last, i32 0, i32 0
  store i32** %__last.coerce, i32*** %16
  %17 = load %"struct.std::__1::__split_buffer.14"** %14
  store %"struct.std::__1::__split_buffer.14"* %17, %"struct.std::__1::__split_buffer.14"** %13, align 8
  %18 = load %"struct.std::__1::__split_buffer.14"** %13
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %18, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %19, %"class.std::__1::__compressed_pair.15"** %12, align 8
  %20 = load %"class.std::__1::__compressed_pair.15"** %12
  %21 = bitcast %"class.std::__1::__compressed_pair.15"* %20 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %21, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %11, align 8
  %22 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %11
  %23 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %22, i32 0, i32 1
  %24 = load %"class.std::__1::allocator.2"** %23, align 8
  store %"class.std::__1::allocator.2"* %24, %"class.std::__1::allocator.2"** %__a, align 8
  br label %25

; <label>:25                                      ; preds = %54, %0
  store %"class.std::__1::move_iterator"* %__first, %"class.std::__1::move_iterator"** %3, align 8
  store %"class.std::__1::move_iterator"* %__last, %"class.std::__1::move_iterator"** %4, align 8
  %26 = load %"class.std::__1::move_iterator"** %3, align 8
  store %"class.std::__1::move_iterator"* %26, %"class.std::__1::move_iterator"** %2, align 8
  %27 = load %"class.std::__1::move_iterator"** %2
  %28 = getelementptr inbounds %"class.std::__1::move_iterator"* %27, i32 0, i32 0
  %29 = load i32*** %28, align 8
  %30 = load %"class.std::__1::move_iterator"** %4, align 8
  store %"class.std::__1::move_iterator"* %30, %"class.std::__1::move_iterator"** %1, align 8
  %31 = load %"class.std::__1::move_iterator"** %1
  %32 = getelementptr inbounds %"class.std::__1::move_iterator"* %31, i32 0, i32 0
  %33 = load i32*** %32, align 8
  %34 = icmp ne i32** %29, %33
  br i1 %34, label %35, label %59

; <label>:35                                      ; preds = %25
  %36 = load %"class.std::__1::allocator.2"** %__a, align 8
  %37 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %17, i32 0, i32 2
  %38 = load i32*** %37, align 8
  store i32** %38, i32*** %5, align 8
  %39 = load i32*** %5, align 8
  store %"class.std::__1::move_iterator"* %__first, %"class.std::__1::move_iterator"** %6, align 8
  %40 = load %"class.std::__1::move_iterator"** %6
  %41 = getelementptr inbounds %"class.std::__1::move_iterator"* %40, i32 0, i32 0
  %42 = load i32*** %41, align 8
  store %"class.std::__1::allocator.2"* %36, %"class.std::__1::allocator.2"** %7, align 8
  store i32** %39, i32*** %8, align 8
  store i32** %42, i32*** %9, align 8
  %43 = load i32*** %8, align 8
  %44 = bitcast i32** %43 to i8*
  %45 = icmp eq i8* %44, null
  br i1 %45, label %_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit, label %46

; <label>:46                                      ; preds = %35
  %47 = bitcast i8* %44 to i32**
  %48 = load i32*** %9, align 8
  %49 = load i32** %48, align 8
  store i32* %49, i32** %47, align 8
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit: ; preds = %35, %46
  %50 = phi i32** [ %47, %46 ], [ null, %35 ]
  %51 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %17, i32 0, i32 2
  %52 = load i32*** %51, align 8
  %53 = getelementptr inbounds i32** %52, i32 1
  store i32** %53, i32*** %51, align 8
  br label %54

; <label>:54                                      ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit
  store %"class.std::__1::move_iterator"* %__first, %"class.std::__1::move_iterator"** %10, align 8
  %55 = load %"class.std::__1::move_iterator"** %10
  %56 = getelementptr inbounds %"class.std::__1::move_iterator"* %55, i32 0, i32 0
  %57 = load i32*** %56, align 8
  %58 = getelementptr inbounds i32** %57, i32 1
  store i32** %58, i32*** %56, align 8
  br label %25

; <label>:59                                      ; preds = %25
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC2EmmS4_(%"struct.std::__1::__split_buffer.14"* %this, i64 %__cap, i64 %__start, %"class.std::__1::allocator.2"* %__a) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::allocator.2"*, align 8
  %2 = alloca %"class.std::__1::allocator.2"*, align 8
  %3 = alloca i32***, align 8
  %4 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %"class.std::__1::allocator.2"*, align 8
  %7 = alloca i32***, align 8
  %8 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %"class.std::__1::allocator.2"*, align 8
  %11 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %"class.std::__1::allocator.2"*, align 8
  %14 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %15 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %16 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %17 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %18 = alloca %"class.std::__1::allocator.2"*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %"class.std::__1::allocator.2"*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %"struct.std::__1::nullptr_t", align 8
  %28 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %29 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.16"*, align 8
  %30 = alloca %"class.std::__1::__compressed_pair.15"*, align 8
  %31 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %32 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %35 = alloca i64, align 8
  %36 = alloca %"struct.std::__1::nullptr_t", align 8
  %37 = alloca %"struct.std::__1::__split_buffer.14"*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca %"class.std::__1::allocator.2"*, align 8
  %41 = alloca %"struct.std::__1::nullptr_t", align 8
  %42 = alloca %"struct.std::__1::nullptr_t", align 8
  store %"struct.std::__1::__split_buffer.14"* %this, %"struct.std::__1::__split_buffer.14"** %37, align 8
  store i64 %__cap, i64* %38, align 8
  store i64 %__start, i64* %39, align 8
  store %"class.std::__1::allocator.2"* %__a, %"class.std::__1::allocator.2"** %40, align 8
  %43 = load %"struct.std::__1::__split_buffer.14"** %37
  %44 = bitcast %"struct.std::__1::__split_buffer.14"* %43 to %"class.std::__1::__split_buffer_common"*
  %45 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %43, i32 0, i32 3
  store %"struct.std::__1::nullptr_t"* %36, %"struct.std::__1::nullptr_t"** %34, align 8
  store i64 -1, i64* %35, align 8
  %46 = load %"struct.std::__1::nullptr_t"** %34
  %47 = load i64* %35, align 8
  store %"struct.std::__1::nullptr_t"* %46, %"struct.std::__1::nullptr_t"** %32, align 8
  store i64 %47, i64* %33, align 8
  %48 = load %"struct.std::__1::nullptr_t"** %32
  %49 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %48, i32 0, i32 0
  store i8* null, i8** %49, align 8
  %50 = getelementptr %"struct.std::__1::nullptr_t"* %36, i32 0, i32 0
  %51 = load i8** %50
  %52 = getelementptr %"struct.std::__1::nullptr_t"* %41, i32 0, i32 0
  store i8* %51, i8** %52
  store %"struct.std::__1::nullptr_t"* %41, %"struct.std::__1::nullptr_t"** %17, align 8
  %53 = load %"struct.std::__1::nullptr_t"** %17
  %54 = load %"class.std::__1::allocator.2"** %40, align 8
  store %"class.std::__1::__compressed_pair.15"* %45, %"class.std::__1::__compressed_pair.15"** %11, align 8
  store i32** null, i32*** %12, align 8
  store %"class.std::__1::allocator.2"* %54, %"class.std::__1::allocator.2"** %13, align 8
  %55 = load %"class.std::__1::__compressed_pair.15"** %11
  %56 = load i32*** %12, align 8
  %57 = load %"class.std::__1::allocator.2"** %13
  store %"class.std::__1::__compressed_pair.15"* %55, %"class.std::__1::__compressed_pair.15"** %8, align 8
  store i32** %56, i32*** %9, align 8
  store %"class.std::__1::allocator.2"* %57, %"class.std::__1::allocator.2"** %10, align 8
  %58 = load %"class.std::__1::__compressed_pair.15"** %8
  %59 = bitcast %"class.std::__1::__compressed_pair.15"* %58 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store i32*** %9, i32**** %7, align 8
  %60 = load i32**** %7, align 8
  %61 = load i32*** %60
  %62 = load %"class.std::__1::allocator.2"** %10, align 8
  store %"class.std::__1::allocator.2"* %62, %"class.std::__1::allocator.2"** %1, align 8
  %63 = load %"class.std::__1::allocator.2"** %1, align 8
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %59, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %4, align 8
  store i32** %61, i32*** %5, align 8
  store %"class.std::__1::allocator.2"* %63, %"class.std::__1::allocator.2"** %6, align 8
  %64 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %4
  %65 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %64, i32 0, i32 0
  store i32*** %5, i32**** %3, align 8
  %66 = load i32**** %3, align 8
  %67 = load i32*** %66
  store i32** %67, i32*** %65, align 8
  %68 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %64, i32 0, i32 1
  %69 = load %"class.std::__1::allocator.2"** %6, align 8
  store %"class.std::__1::allocator.2"* %69, %"class.std::__1::allocator.2"** %2, align 8
  %70 = load %"class.std::__1::allocator.2"** %2, align 8
  store %"class.std::__1::allocator.2"* %70, %"class.std::__1::allocator.2"** %68, align 8
  %71 = load i64* %38, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

; <label>:73                                      ; preds = %0
  store %"struct.std::__1::__split_buffer.14"* %43, %"struct.std::__1::__split_buffer.14"** %16, align 8
  %74 = load %"struct.std::__1::__split_buffer.14"** %16
  %75 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %74, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %75, %"class.std::__1::__compressed_pair.15"** %15, align 8
  %76 = load %"class.std::__1::__compressed_pair.15"** %15
  %77 = bitcast %"class.std::__1::__compressed_pair.15"* %76 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %77, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %14, align 8
  %78 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %14
  %79 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %78, i32 0, i32 1
  %80 = load %"class.std::__1::allocator.2"** %79, align 8
  %81 = load i64* %38, align 8
  store %"class.std::__1::allocator.2"* %80, %"class.std::__1::allocator.2"** %21, align 8
  store i64 %81, i64* %22, align 8
  %82 = load %"class.std::__1::allocator.2"** %21, align 8
  %83 = load i64* %22, align 8
  store %"class.std::__1::allocator.2"* %82, %"class.std::__1::allocator.2"** %18, align 8
  store i64 %83, i64* %19, align 8
  store i8* null, i8** %20, align 8
  %84 = load %"class.std::__1::allocator.2"** %18
  %85 = load i64* %19, align 8
  %86 = mul i64 %85, 8
  %87 = call noalias i8* @_Znwm(i64 %86)
  %88 = bitcast i8* %87 to i32**
  br label %98

; <label>:89                                      ; preds = %0
  store %"struct.std::__1::nullptr_t"* %27, %"struct.std::__1::nullptr_t"** %25, align 8
  store i64 -1, i64* %26, align 8
  %90 = load %"struct.std::__1::nullptr_t"** %25
  %91 = load i64* %26, align 8
  store %"struct.std::__1::nullptr_t"* %90, %"struct.std::__1::nullptr_t"** %23, align 8
  store i64 %91, i64* %24, align 8
  %92 = load %"struct.std::__1::nullptr_t"** %23
  %93 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %92, i32 0, i32 0
  store i8* null, i8** %93, align 8
  %94 = getelementptr %"struct.std::__1::nullptr_t"* %27, i32 0, i32 0
  %95 = load i8** %94
  %96 = getelementptr %"struct.std::__1::nullptr_t"* %42, i32 0, i32 0
  store i8* %95, i8** %96
  store %"struct.std::__1::nullptr_t"* %42, %"struct.std::__1::nullptr_t"** %28, align 8
  %97 = load %"struct.std::__1::nullptr_t"** %28
  br label %98

; <label>:98                                      ; preds = %89, %73
  %99 = phi i32** [ %88, %73 ], [ null, %89 ]
  %100 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %43, i32 0, i32 0
  store i32** %99, i32*** %100, align 8
  %101 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %43, i32 0, i32 0
  %102 = load i32*** %101, align 8
  %103 = load i64* %39, align 8
  %104 = getelementptr inbounds i32** %102, i64 %103
  %105 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %43, i32 0, i32 2
  store i32** %104, i32*** %105, align 8
  %106 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %43, i32 0, i32 1
  store i32** %104, i32*** %106, align 8
  %107 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %43, i32 0, i32 0
  %108 = load i32*** %107, align 8
  %109 = load i64* %38, align 8
  %110 = getelementptr inbounds i32** %108, i64 %109
  store %"struct.std::__1::__split_buffer.14"* %43, %"struct.std::__1::__split_buffer.14"** %31, align 8
  %111 = load %"struct.std::__1::__split_buffer.14"** %31
  %112 = getelementptr inbounds %"struct.std::__1::__split_buffer.14"* %111, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.15"* %112, %"class.std::__1::__compressed_pair.15"** %30, align 8
  %113 = load %"class.std::__1::__compressed_pair.15"** %30
  %114 = bitcast %"class.std::__1::__compressed_pair.15"* %113 to %"class.std::__1::__libcpp_compressed_pair_imp.16"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.16"* %114, %"class.std::__1::__libcpp_compressed_pair_imp.16"** %29, align 8
  %115 = load %"class.std::__1::__libcpp_compressed_pair_imp.16"** %29
  %116 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.16"* %115, i32 0, i32 0
  store i32** %110, i32*** %116
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #2

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED2Ev(%"class.std::__1::stack"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__1::stack"*, align 8
  store %"class.std::__1::stack"* %this, %"class.std::__1::stack"** %1, align 8
  %2 = load %"class.std::__1::stack"** %1
  %3 = getelementptr inbounds %"class.std::__1::stack"* %2, i32 0, i32 0
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEED1Ev(%"class.std::__1::deque"* %3)
  ret void
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEED1Ev(%"class.std::__1::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__1::deque"*, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %1, align 8
  %2 = load %"class.std::__1::deque"** %1
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEED2Ev(%"class.std::__1::deque"* %2)
  ret void
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEED2Ev(%"class.std::__1::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__1::deque"*, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %1, align 8
  %2 = load %"class.std::__1::deque"** %1
  %3 = bitcast %"class.std::__1::deque"* %2 to %"class.std::__1::__deque_base"*
  call void @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev(%"class.std::__1::__deque_base"* %3)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev(%"class.std::__1::__deque_base"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::allocator.6"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__1::allocator.6"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %8 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %9 = alloca %"class.std::__1::__deque_base"*, align 8
  %10 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %11 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %12 = alloca %"class.std::__1::__deque_base"*, align 8
  %__i = alloca i32**, align 8
  %__e = alloca i32**, align 8
  %13 = alloca i8*
  %14 = alloca i32
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %12, align 8
  %15 = load %"class.std::__1::__deque_base"** %12
  call void @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5clearEv(%"class.std::__1::__deque_base"* %15) #6
  %16 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %16, %"struct.std::__1::__split_buffer"** %11, align 8
  %17 = load %"struct.std::__1::__split_buffer"** %11
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %17, i32 0, i32 1
  %19 = load i32*** %18, align 8
  store i32** %19, i32*** %__i, align 8
  %20 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %20, %"struct.std::__1::__split_buffer"** %10, align 8
  %21 = load %"struct.std::__1::__split_buffer"** %10
  %22 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %21, i32 0, i32 2
  %23 = load i32*** %22, align 8
  store i32** %23, i32*** %__e, align 8
  br label %24

; <label>:24                                      ; preds = %44, %0
  %25 = load i32*** %__i, align 8
  %26 = load i32*** %__e, align 8
  %27 = icmp ne i32** %25, %26
  br i1 %27, label %28, label %52

; <label>:28                                      ; preds = %24
  store %"class.std::__1::__deque_base"* %15, %"class.std::__1::__deque_base"** %9, align 8
  %29 = load %"class.std::__1::__deque_base"** %9
  %30 = getelementptr inbounds %"class.std::__1::__deque_base"* %29, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %30, %"class.std::__1::__compressed_pair.4"** %8, align 8
  %31 = load %"class.std::__1::__compressed_pair.4"** %8
  %32 = bitcast %"class.std::__1::__compressed_pair.4"* %31 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %32, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %7, align 8
  %33 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %7
  %34 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.5"* %33 to %"class.std::__1::allocator.6"*
  br label %35

; <label>:35                                      ; preds = %28
  %36 = load i32*** %__i, align 8
  %37 = load i32** %36, align 8
  store %"class.std::__1::allocator.6"* %34, %"class.std::__1::allocator.6"** %4, align 8
  store i32* %37, i32** %5, align 8
  store i64 1024, i64* %6, align 8
  %38 = load %"class.std::__1::allocator.6"** %4, align 8
  %39 = load i32** %5, align 8
  %40 = load i64* %6, align 8
  store %"class.std::__1::allocator.6"* %38, %"class.std::__1::allocator.6"** %1, align 8
  store i32* %39, i32** %2, align 8
  store i64 %40, i64* %3, align 8
  %41 = load %"class.std::__1::allocator.6"** %1
  %42 = load i32** %2, align 8
  %43 = bitcast i32* %42 to i8*
  call void @_ZdlPv(i8* %43) #6
  br label %44

; <label>:44                                      ; preds = %35
  %45 = load i32*** %__i, align 8
  %46 = getelementptr inbounds i32** %45, i32 1
  store i32** %46, i32*** %__i, align 8
  br label %24
                                                  ; No predecessors!
  %48 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %13
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %14
  %51 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  invoke void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer"* %51)
          to label %54 unwind label %60

; <label>:52                                      ; preds = %24
  %53 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer"* %53)
  ret void

; <label>:54                                      ; preds = %47
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load i8** %13
  %57 = load i32* %14
  %58 = insertvalue { i8*, i32 } undef, i8* %56, 0
  %59 = insertvalue { i8*, i32 } %58, i32 %57, 1
  resume { i8*, i32 } %59

; <label>:60                                      ; preds = %47
  %61 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %62 = extractvalue { i8*, i32 } %61, 0
  call void @__clang_call_terminate(i8* %62) #11
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5clearEv(%"class.std::__1::__deque_base"* %this) #7 align 2 {
  %1 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.std::__1::allocator.6"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"class.std::__1::allocator.6"*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %"struct.std::__1::integral_constant", align 1
  %8 = alloca %"struct.std::__1::__has_destroy.13", align 1
  %9 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %10 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %11 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %12 = alloca %"class.std::__1::__deque_base"*, align 8
  %13 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %14 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %15 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %16 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %17 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %18 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %19 = alloca %"class.std::__1::allocator.6"*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %"class.std::__1::allocator.6"*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %26 = alloca i32**, align 8
  %27 = alloca %"struct.std::__1::integral_constant.17", align 1
  %28 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %29 = alloca i32**, align 8
  %30 = alloca %"struct.std::__1::integral_constant.17", align 1
  %31 = alloca %"struct.std::__1::is_trivially_destructible", align 1
  %32 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %33 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %34 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %35 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %36 = alloca %"class.std::__1::__deque_base"*, align 8
  %37 = alloca %"class.std::__1::__deque_base"*, align 8
  %__a = alloca %"class.std::__1::allocator.6"*, align 8
  %38 = alloca i8*
  %39 = alloca i32
  %__i = alloca %"class.std::__1::__deque_iterator", align 8
  %__e = alloca %"class.std::__1::__deque_iterator", align 8
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %37, align 8
  %40 = load %"class.std::__1::__deque_base"** %37
  store %"class.std::__1::__deque_base"* %40, %"class.std::__1::__deque_base"** %36, align 8
  %41 = load %"class.std::__1::__deque_base"** %36
  %42 = getelementptr inbounds %"class.std::__1::__deque_base"* %41, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %42, %"class.std::__1::__compressed_pair.4"** %35, align 8
  %43 = load %"class.std::__1::__compressed_pair.4"** %35
  %44 = bitcast %"class.std::__1::__compressed_pair.4"* %43 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %44, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %34, align 8
  %45 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %34
  %46 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.5"* %45 to %"class.std::__1::allocator.6"*
  br label %47

; <label>:47                                      ; preds = %0
  store %"class.std::__1::allocator.6"* %46, %"class.std::__1::allocator.6"** %__a, align 8
  %48 = call { i32**, i32* } @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5beginEv(%"class.std::__1::__deque_base"* %40) #6
  %49 = bitcast %"class.std::__1::__deque_iterator"* %__i to { i32**, i32* }*
  %50 = getelementptr { i32**, i32* }* %49, i32 0, i32 0
  %51 = extractvalue { i32**, i32* } %48, 0
  store i32** %51, i32*** %50, align 1
  %52 = getelementptr { i32**, i32* }* %49, i32 0, i32 1
  %53 = extractvalue { i32**, i32* } %48, 1
  store i32* %53, i32** %52, align 1
  %54 = call { i32**, i32* } @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE3endEv(%"class.std::__1::__deque_base"* %40) #6
  %55 = bitcast %"class.std::__1::__deque_iterator"* %__e to { i32**, i32* }*
  %56 = getelementptr { i32**, i32* }* %55, i32 0, i32 0
  %57 = extractvalue { i32**, i32* } %54, 0
  store i32** %57, i32*** %56, align 1
  %58 = getelementptr { i32**, i32* }* %55, i32 0, i32 1
  %59 = extractvalue { i32**, i32* } %54, 1
  store i32* %59, i32** %58, align 1
  br label %60

; <label>:60                                      ; preds = %107, %47
  store %"class.std::__1::__deque_iterator"* %__i, %"class.std::__1::__deque_iterator"** %17, align 8
  store %"class.std::__1::__deque_iterator"* %__e, %"class.std::__1::__deque_iterator"** %18, align 8
  %61 = load %"class.std::__1::__deque_iterator"** %17, align 8
  %62 = load %"class.std::__1::__deque_iterator"** %18, align 8
  store %"class.std::__1::__deque_iterator"* %61, %"class.std::__1::__deque_iterator"** %15, align 8
  store %"class.std::__1::__deque_iterator"* %62, %"class.std::__1::__deque_iterator"** %16, align 8
  %63 = load %"class.std::__1::__deque_iterator"** %15, align 8
  %64 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %63, i32 0, i32 1
  %65 = load i32** %64, align 8
  %66 = load %"class.std::__1::__deque_iterator"** %16, align 8
  %67 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %66, i32 0, i32 1
  %68 = load i32** %67, align 8
  %69 = icmp eq i32* %65, %68
  %70 = xor i1 %69, true
  br label %71

; <label>:71                                      ; preds = %60
  br i1 %70, label %72, label %114

; <label>:72                                      ; preds = %71
  %73 = load %"class.std::__1::allocator.6"** %__a, align 8
  store %"class.std::__1::__deque_iterator"* %__i, %"class.std::__1::__deque_iterator"** %1, align 8
  %74 = load %"class.std::__1::__deque_iterator"** %1
  %75 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %74, i32 0, i32 1
  %76 = load i32** %75, align 8
  br label %77

; <label>:77                                      ; preds = %72
  store i32* %76, i32** %2, align 8
  %78 = load i32** %2, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = bitcast i8* %79 to i32*
  store %"class.std::__1::allocator.6"* %73, %"class.std::__1::allocator.6"** %5, align 8
  store i32* %80, i32** %6, align 8
  %81 = bitcast %"struct.std::__1::__has_destroy.13"* %8 to %"struct.std::__1::integral_constant"*
  %82 = load %"class.std::__1::allocator.6"** %5, align 8
  %83 = load i32** %6, align 8
  store %"class.std::__1::allocator.6"* %82, %"class.std::__1::allocator.6"** %3, align 8
  store i32* %83, i32** %4, align 8
  %84 = load i32** %4, align 8
  br label %85

; <label>:85                                      ; preds = %77
  br label %86

; <label>:86                                      ; preds = %85
  store %"class.std::__1::__deque_iterator"* %__i, %"class.std::__1::__deque_iterator"** %9, align 8
  %87 = load %"class.std::__1::__deque_iterator"** %9
  %88 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 1
  %89 = load i32** %88, align 8
  %90 = getelementptr inbounds i32* %89, i32 1
  store i32* %90, i32** %88, align 8
  %91 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 0
  %92 = load i32*** %91, align 8
  %93 = load i32** %92, align 8
  %94 = ptrtoint i32* %90 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = icmp eq i64 %97, 1024
  br i1 %98, label %99, label %_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppEv.exit

; <label>:99                                      ; preds = %86
  %100 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 0
  %101 = load i32*** %100, align 8
  %102 = getelementptr inbounds i32** %101, i32 1
  store i32** %102, i32*** %100, align 8
  %103 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 0
  %104 = load i32*** %103, align 8
  %105 = load i32** %104, align 8
  %106 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 1
  store i32* %105, i32** %106, align 8
  br label %_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppEv.exit

_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppEv.exit: ; preds = %86, %99
  br label %107

; <label>:107                                     ; preds = %_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppEv.exit
  br label %60
                                                  ; No predecessors!
  %109 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          filter [0 x i8*] zeroinitializer
  %110 = extractvalue { i8*, i32 } %109, 0
  store i8* %110, i8** %38
  %111 = extractvalue { i8*, i32 } %109, 1
  store i32 %111, i32* %39
  br label %112

; <label>:112                                     ; preds = %108
  %113 = load i8** %38
  call void @__cxa_call_unexpected(i8* %113) #12
  unreachable

; <label>:114                                     ; preds = %71
  store %"class.std::__1::__deque_base"* %40, %"class.std::__1::__deque_base"** %12, align 8
  %115 = load %"class.std::__1::__deque_base"** %12
  %116 = getelementptr inbounds %"class.std::__1::__deque_base"* %115, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.4"* %116, %"class.std::__1::__compressed_pair.4"** %11, align 8
  %117 = load %"class.std::__1::__compressed_pair.4"** %11
  %118 = bitcast %"class.std::__1::__compressed_pair.4"* %117 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %118, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %10, align 8
  %119 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %10
  %120 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %119, i32 0, i32 0
  br label %121

; <label>:121                                     ; preds = %114
  store i64 0, i64* %120
  br label %122

; <label>:122                                     ; preds = %160, %121
  %123 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %123, %"struct.std::__1::__split_buffer"** %13, align 8
  %124 = load %"struct.std::__1::__split_buffer"** %13
  %125 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %124, i32 0, i32 2
  %126 = load i32*** %125, align 8
  %127 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %124, i32 0, i32 1
  %128 = load i32*** %127, align 8
  %129 = ptrtoint i32** %126 to i64
  %130 = ptrtoint i32** %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  br label %133

; <label>:133                                     ; preds = %122
  %134 = icmp ugt i64 %132, 2
  br i1 %134, label %135, label %161

; <label>:135                                     ; preds = %133
  %136 = load %"class.std::__1::allocator.6"** %__a, align 8
  %137 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %137, %"struct.std::__1::__split_buffer"** %14, align 8
  %138 = load %"struct.std::__1::__split_buffer"** %14
  %139 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %138, i32 0, i32 1
  %140 = load i32*** %139, align 8
  br label %141

; <label>:141                                     ; preds = %135
  %142 = load i32** %140
  store %"class.std::__1::allocator.6"* %136, %"class.std::__1::allocator.6"** %22, align 8
  store i32* %142, i32** %23, align 8
  store i64 1024, i64* %24, align 8
  %143 = load %"class.std::__1::allocator.6"** %22, align 8
  %144 = load i32** %23, align 8
  %145 = load i64* %24, align 8
  store %"class.std::__1::allocator.6"* %143, %"class.std::__1::allocator.6"** %19, align 8
  store i32* %144, i32** %20, align 8
  store i64 %145, i64* %21, align 8
  %146 = load %"class.std::__1::allocator.6"** %19
  %147 = load i32** %20, align 8
  %148 = bitcast i32* %147 to i8*
  call void @_ZdlPv(i8* %148) #6
  %149 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %149, %"struct.std::__1::__split_buffer"** %32, align 8
  %150 = load %"struct.std::__1::__split_buffer"** %32
  %151 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %150, i32 0, i32 1
  %152 = load i32*** %151, align 8
  %153 = getelementptr inbounds i32** %152, i64 1
  store %"struct.std::__1::__split_buffer"* %150, %"struct.std::__1::__split_buffer"** %28, align 8
  store i32** %153, i32*** %29, align 8
  %154 = load %"struct.std::__1::__split_buffer"** %28
  %155 = load i32*** %29, align 8
  %156 = bitcast %"struct.std::__1::is_trivially_destructible"* %31 to %"struct.std::__1::integral_constant.17"*
  store %"struct.std::__1::__split_buffer"* %154, %"struct.std::__1::__split_buffer"** %25, align 8
  store i32** %155, i32*** %26, align 8
  %157 = load %"struct.std::__1::__split_buffer"** %25
  %158 = load i32*** %26, align 8
  %159 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %157, i32 0, i32 1
  store i32** %158, i32*** %159, align 8
  br label %160

; <label>:160                                     ; preds = %141
  br label %122

; <label>:161                                     ; preds = %133
  %162 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %162, %"struct.std::__1::__split_buffer"** %33, align 8
  %163 = load %"struct.std::__1::__split_buffer"** %33
  %164 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %163, i32 0, i32 2
  %165 = load i32*** %164, align 8
  %166 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %163, i32 0, i32 1
  %167 = load i32*** %166, align 8
  %168 = ptrtoint i32** %165 to i64
  %169 = ptrtoint i32** %167 to i64
  %170 = sub i64 %168, %169
  %171 = sdiv exact i64 %170, 8
  br label %172

; <label>:172                                     ; preds = %161
  switch i64 %171, label %177 [
    i64 1, label %173
    i64 2, label %175
  ]

; <label>:173                                     ; preds = %172
  %174 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 1
  store i64 512, i64* %174, align 8
  br label %177

; <label>:175                                     ; preds = %172
  %176 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 1
  store i64 1024, i64* %176, align 8
  br label %177

; <label>:177                                     ; preds = %172, %175, %173
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr { i32**, i32* } @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5beginEv(%"class.std::__1::__deque_base"* %this) #7 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %9 = alloca %"class.std::__1::__deque_iterator", align 8
  %10 = alloca %"class.std::__1::__deque_base"*, align 8
  %__mp = alloca i32**, align 8
  %11 = alloca i8*
  %12 = alloca i32
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %10, align 8
  %13 = load %"class.std::__1::__deque_base"** %10
  %14 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %14, %"struct.std::__1::__split_buffer"** %8, align 8
  %15 = load %"struct.std::__1::__split_buffer"** %8
  %16 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %15, i32 0, i32 1
  %17 = load i32*** %16, align 8
  %18 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 1
  %19 = load i64* %18, align 8
  %20 = udiv i64 %19, 1024
  %21 = getelementptr inbounds i32** %17, i64 %20
  store i32** %21, i32*** %__mp, align 8
  %22 = load i32*** %__mp, align 8
  %23 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %23, %"struct.std::__1::__split_buffer"** %1, align 8
  %24 = load %"struct.std::__1::__split_buffer"** %1
  %25 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %24, i32 0, i32 2
  %26 = load i32*** %25, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %24, i32 0, i32 1
  %28 = load i32*** %27, align 8
  %29 = icmp eq i32** %26, %28
  br label %30

; <label>:30                                      ; preds = %0
  br i1 %29, label %31, label %32

; <label>:31                                      ; preds = %30
  br label %39

; <label>:32                                      ; preds = %30
  %33 = load i32*** %__mp, align 8
  %34 = load i32** %33, align 8
  %35 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 1
  %36 = load i64* %35, align 8
  %37 = urem i64 %36, 1024
  %38 = getelementptr inbounds i32* %34, i64 %37
  br label %39

; <label>:39                                      ; preds = %32, %31
  %40 = phi i32* [ null, %31 ], [ %38, %32 ]
  store %"class.std::__1::__deque_iterator"* %9, %"class.std::__1::__deque_iterator"** %5, align 8
  store i32** %22, i32*** %6, align 8
  store i32* %40, i32** %7, align 8
  %41 = load %"class.std::__1::__deque_iterator"** %5
  %42 = load i32*** %6, align 8
  %43 = load i32** %7, align 8
  store %"class.std::__1::__deque_iterator"* %41, %"class.std::__1::__deque_iterator"** %2, align 8
  store i32** %42, i32*** %3, align 8
  store i32* %43, i32** %4, align 8
  %44 = load %"class.std::__1::__deque_iterator"** %2
  %45 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %44, i32 0, i32 0
  %46 = load i32*** %3, align 8
  store i32** %46, i32*** %45, align 8
  %47 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %44, i32 0, i32 1
  %48 = load i32** %4, align 8
  store i32* %48, i32** %47, align 8
  %49 = bitcast %"class.std::__1::__deque_iterator"* %9 to { i32**, i32* }*
  %50 = load { i32**, i32* }* %49, align 1
  ret { i32**, i32* } %50
                                                  ; No predecessors!
  %52 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          filter [0 x i8*] zeroinitializer
  %53 = extractvalue { i8*, i32 } %52, 0
  store i8* %53, i8** %11
  %54 = extractvalue { i8*, i32 } %52, 1
  store i32 %54, i32* %12
  br label %55

; <label>:55                                      ; preds = %51
  %56 = load i8** %11
  call void @__cxa_call_unexpected(i8* %56) #12
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN11AdjListNodeC2Eii(%class.AdjListNode* %this, i32 %_v, i32 %_w) unnamed_addr #7 align 2 {
  %1 = alloca %class.AdjListNode*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %class.AdjListNode* %this, %class.AdjListNode** %1, align 8
  store i32 %_v, i32* %2, align 4
  store i32 %_w, i32* %3, align 4
  %4 = load %class.AdjListNode** %1
  %5 = load i32* %2, align 4
  %6 = getelementptr inbounds %class.AdjListNode* %4, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32* %3, align 4
  %8 = getelementptr inbounds %class.AdjListNode* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  ret void
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__14listI11AdjListNodeNS_9allocatorIS1_EEED2Ev(%"class.std::__1::list"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__1::list"*, align 8
  store %"class.std::__1::list"* %this, %"class.std::__1::list"** %1, align 8
  %2 = load %"class.std::__1::list"** %1
  %3 = bitcast %"class.std::__1::list"* %2 to %"class.std::__1::__list_imp"*
  call void @_ZNSt3__110__list_impI11AdjListNodeNS_9allocatorIS1_EEED2Ev(%"class.std::__1::__list_imp"* %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__110__list_impI11AdjListNodeNS_9allocatorIS1_EEED2Ev(%"class.std::__1::__list_imp"* %this) unnamed_addr #7 align 2 {
  %1 = alloca %"class.std::__1::__list_imp"*, align 8
  store %"class.std::__1::__list_imp"* %this, %"class.std::__1::__list_imp"** %1, align 8
  %2 = load %"class.std::__1::__list_imp"** %1
  call void @_ZNSt3__110__list_impI11AdjListNodeNS_9allocatorIS1_EEE5clearEv(%"class.std::__1::__list_imp"* %2) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__110__list_impI11AdjListNodeNS_9allocatorIS1_EEE5clearEv(%"class.std::__1::__list_imp"* %this) #7 align 2 {
  %1 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %2 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %3 = alloca %"struct.std::__1::__list_node"*, align 8
  %4 = alloca %"struct.std::__1::__list_node"*, align 8
  %5 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %6 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %7 = alloca %"class.std::__1::__list_imp"*, align 8
  %8 = alloca %class.AdjListNode*, align 8
  %9 = alloca %"class.std::__1::allocator"*, align 8
  %10 = alloca %class.AdjListNode*, align 8
  %11 = alloca %"class.std::__1::allocator"*, align 8
  %12 = alloca %class.AdjListNode*, align 8
  %13 = alloca %"struct.std::__1::integral_constant", align 1
  %14 = alloca %"struct.std::__1::__has_destroy.20", align 1
  %15 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %16 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %17 = alloca %"class.std::__1::__list_imp"*, align 8
  %18 = alloca %"class.std::__1::allocator"*, align 8
  %19 = alloca %"struct.std::__1::__list_node"*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %"class.std::__1::allocator"*, align 8
  %22 = alloca %"struct.std::__1::__list_node"*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %25 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %26 = alloca %"class.std::__1::__list_imp"*, align 8
  %27 = alloca %"class.std::__1::__list_imp"*, align 8
  %28 = alloca %"class.std::__1::__list_imp"*, align 8
  %__na = alloca %"class.std::__1::allocator"*, align 8
  %__f = alloca %"struct.std::__1::__list_node"*, align 8
  %__l = alloca %"struct.std::__1::__list_node"*, align 8
  %__n = alloca %"struct.std::__1::__list_node"*, align 8
  %29 = alloca i8*
  %30 = alloca i32
  store %"class.std::__1::__list_imp"* %this, %"class.std::__1::__list_imp"** %28, align 8
  %31 = load %"class.std::__1::__list_imp"** %28
  store %"class.std::__1::__list_imp"* %31, %"class.std::__1::__list_imp"** %27, align 8
  %32 = load %"class.std::__1::__list_imp"** %27
  store %"class.std::__1::__list_imp"* %32, %"class.std::__1::__list_imp"** %26, align 8
  %33 = load %"class.std::__1::__list_imp"** %26
  %34 = getelementptr inbounds %"class.std::__1::__list_imp"* %33, i32 0, i32 1
  store %"class.std::__1::__compressed_pair"* %34, %"class.std::__1::__compressed_pair"** %25, align 8
  %35 = load %"class.std::__1::__compressed_pair"** %25
  %36 = bitcast %"class.std::__1::__compressed_pair"* %35 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %36, %"class.std::__1::__libcpp_compressed_pair_imp"** %24, align 8
  %37 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %24
  %38 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %37, i32 0, i32 0
  %39 = load i64* %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %124, label %41

; <label>:41                                      ; preds = %0
  store %"class.std::__1::__list_imp"* %31, %"class.std::__1::__list_imp"** %17, align 8
  %42 = load %"class.std::__1::__list_imp"** %17
  %43 = getelementptr inbounds %"class.std::__1::__list_imp"* %42, i32 0, i32 1
  store %"class.std::__1::__compressed_pair"* %43, %"class.std::__1::__compressed_pair"** %16, align 8
  %44 = load %"class.std::__1::__compressed_pair"** %16
  %45 = bitcast %"class.std::__1::__compressed_pair"* %44 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %45, %"class.std::__1::__libcpp_compressed_pair_imp"** %15, align 8
  %46 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %15
  %47 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %46 to %"class.std::__1::allocator"*
  store %"class.std::__1::allocator"* %47, %"class.std::__1::allocator"** %__na, align 8
  %48 = getelementptr inbounds %"class.std::__1::__list_imp"* %31, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %48, i32 0, i32 1
  %50 = load %"struct.std::__1::__list_node"** %49, align 8
  store %"struct.std::__1::__list_node"* %50, %"struct.std::__1::__list_node"** %__f, align 8
  %51 = getelementptr inbounds %"class.std::__1::__list_imp"* %31, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %51, %"struct.std::__1::__list_node_base"** %2, align 8
  %52 = load %"struct.std::__1::__list_node_base"** %2, align 8
  store %"struct.std::__1::__list_node_base"* %52, %"struct.std::__1::__list_node_base"** %1, align 8
  %53 = load %"struct.std::__1::__list_node_base"** %1, align 8
  %54 = bitcast %"struct.std::__1::__list_node_base"* %53 to i8*
  %55 = bitcast i8* %54 to %"struct.std::__1::__list_node_base"*
  %56 = bitcast %"struct.std::__1::__list_node_base"* %55 to %"struct.std::__1::__list_node"*
  store %"struct.std::__1::__list_node"* %56, %"struct.std::__1::__list_node"** %__l, align 8
  %57 = load %"struct.std::__1::__list_node"** %__f, align 8
  %58 = load %"struct.std::__1::__list_node"** %__l, align 8
  %59 = bitcast %"struct.std::__1::__list_node"* %58 to %"struct.std::__1::__list_node_base"*
  %60 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %59, i32 0, i32 0
  %61 = load %"struct.std::__1::__list_node"** %60, align 8
  store %"struct.std::__1::__list_node"* %57, %"struct.std::__1::__list_node"** %3, align 8
  store %"struct.std::__1::__list_node"* %61, %"struct.std::__1::__list_node"** %4, align 8
  %62 = load %"struct.std::__1::__list_node"** %4, align 8
  %63 = bitcast %"struct.std::__1::__list_node"* %62 to %"struct.std::__1::__list_node_base"*
  %64 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %63, i32 0, i32 1
  %65 = load %"struct.std::__1::__list_node"** %64, align 8
  %66 = load %"struct.std::__1::__list_node"** %3, align 8
  %67 = bitcast %"struct.std::__1::__list_node"* %66 to %"struct.std::__1::__list_node_base"*
  %68 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %67, i32 0, i32 0
  %69 = load %"struct.std::__1::__list_node"** %68, align 8
  %70 = bitcast %"struct.std::__1::__list_node"* %69 to %"struct.std::__1::__list_node_base"*
  %71 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %70, i32 0, i32 1
  store %"struct.std::__1::__list_node"* %65, %"struct.std::__1::__list_node"** %71, align 8
  %72 = load %"struct.std::__1::__list_node"** %3, align 8
  %73 = bitcast %"struct.std::__1::__list_node"* %72 to %"struct.std::__1::__list_node_base"*
  %74 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %73, i32 0, i32 0
  %75 = load %"struct.std::__1::__list_node"** %74, align 8
  %76 = load %"struct.std::__1::__list_node"** %4, align 8
  %77 = bitcast %"struct.std::__1::__list_node"* %76 to %"struct.std::__1::__list_node_base"*
  %78 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %77, i32 0, i32 1
  %79 = load %"struct.std::__1::__list_node"** %78, align 8
  %80 = bitcast %"struct.std::__1::__list_node"* %79 to %"struct.std::__1::__list_node_base"*
  %81 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %80, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %75, %"struct.std::__1::__list_node"** %81, align 8
  store %"class.std::__1::__list_imp"* %31, %"class.std::__1::__list_imp"** %7, align 8
  %82 = load %"class.std::__1::__list_imp"** %7
  %83 = getelementptr inbounds %"class.std::__1::__list_imp"* %82, i32 0, i32 1
  store %"class.std::__1::__compressed_pair"* %83, %"class.std::__1::__compressed_pair"** %6, align 8
  %84 = load %"class.std::__1::__compressed_pair"** %6
  %85 = bitcast %"class.std::__1::__compressed_pair"* %84 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %85, %"class.std::__1::__libcpp_compressed_pair_imp"** %5, align 8
  %86 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %5
  %87 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %86, i32 0, i32 0
  store i64 0, i64* %87
  br label %88

; <label>:88                                      ; preds = %108, %41
  %89 = load %"struct.std::__1::__list_node"** %__f, align 8
  %90 = load %"struct.std::__1::__list_node"** %__l, align 8
  %91 = icmp ne %"struct.std::__1::__list_node"* %89, %90
  br i1 %91, label %92, label %123

; <label>:92                                      ; preds = %88
  %93 = load %"struct.std::__1::__list_node"** %__f, align 8
  store %"struct.std::__1::__list_node"* %93, %"struct.std::__1::__list_node"** %__n, align 8
  %94 = load %"struct.std::__1::__list_node"** %__f, align 8
  %95 = bitcast %"struct.std::__1::__list_node"* %94 to %"struct.std::__1::__list_node_base"*
  %96 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %95, i32 0, i32 1
  %97 = load %"struct.std::__1::__list_node"** %96, align 8
  store %"struct.std::__1::__list_node"* %97, %"struct.std::__1::__list_node"** %__f, align 8
  %98 = load %"class.std::__1::allocator"** %__na, align 8
  %99 = load %"struct.std::__1::__list_node"** %__n, align 8
  %100 = getelementptr inbounds %"struct.std::__1::__list_node"* %99, i32 0, i32 1
  store %class.AdjListNode* %100, %class.AdjListNode** %8, align 8
  %101 = load %class.AdjListNode** %8, align 8
  %102 = bitcast %class.AdjListNode* %101 to i8*
  %103 = bitcast i8* %102 to %class.AdjListNode*
  store %"class.std::__1::allocator"* %98, %"class.std::__1::allocator"** %11, align 8
  store %class.AdjListNode* %103, %class.AdjListNode** %12, align 8
  %104 = bitcast %"struct.std::__1::__has_destroy.20"* %14 to %"struct.std::__1::integral_constant"*
  %105 = load %"class.std::__1::allocator"** %11, align 8
  %106 = load %class.AdjListNode** %12, align 8
  store %"class.std::__1::allocator"* %105, %"class.std::__1::allocator"** %9, align 8
  store %class.AdjListNode* %106, %class.AdjListNode** %10, align 8
  %107 = load %class.AdjListNode** %10, align 8
  br label %108

; <label>:108                                     ; preds = %92
  %109 = load %"class.std::__1::allocator"** %__na, align 8
  %110 = load %"struct.std::__1::__list_node"** %__n, align 8
  store %"class.std::__1::allocator"* %109, %"class.std::__1::allocator"** %21, align 8
  store %"struct.std::__1::__list_node"* %110, %"struct.std::__1::__list_node"** %22, align 8
  store i64 1, i64* %23, align 8
  %111 = load %"class.std::__1::allocator"** %21, align 8
  %112 = load %"struct.std::__1::__list_node"** %22, align 8
  %113 = load i64* %23, align 8
  store %"class.std::__1::allocator"* %111, %"class.std::__1::allocator"** %18, align 8
  store %"struct.std::__1::__list_node"* %112, %"struct.std::__1::__list_node"** %19, align 8
  store i64 %113, i64* %20, align 8
  %114 = load %"class.std::__1::allocator"** %18
  %115 = load %"struct.std::__1::__list_node"** %19, align 8
  %116 = bitcast %"struct.std::__1::__list_node"* %115 to i8*
  call void @_ZdlPv(i8* %116) #6
  br label %88
                                                  ; No predecessors!
  %118 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          filter [0 x i8*] zeroinitializer
  %119 = extractvalue { i8*, i32 } %118, 0
  store i8* %119, i8** %29
  %120 = extractvalue { i8*, i32 } %118, 1
  store i32 %120, i32* %30
  br label %121

; <label>:121                                     ; preds = %117
  %122 = load i8** %29
  call void @__cxa_call_unexpected(i8* %122) #12
  unreachable

; <label>:123                                     ; preds = %88
  br label %124

; <label>:124                                     ; preds = %123, %0
  ret void
}

attributes #0 = { ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 5.1 (clang-503.0.40) (based on LLVM 3.4svn)"}
