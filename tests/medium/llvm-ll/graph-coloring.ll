; ModuleID = 'source/graph-coloring.cpp'
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
%"struct.std::__1::__list_node" = type { %"struct.std::__1::__list_node_base", i32 }
%"class.std::__1::__compressed_pair" = type { %"class.std::__1::__libcpp_compressed_pair_imp" }
%"class.std::__1::__libcpp_compressed_pair_imp" = type { i64 }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::__libcpp_compressed_pair_imp.6" = type { %"struct.std::__1::__list_node"*, %"class.std::__1::__allocator_destructor" }
%"class.std::__1::__allocator_destructor" = type { %"class.std::__1::allocator"*, i64 }
%"class.std::__1::__compressed_pair.5" = type { %"class.std::__1::__libcpp_compressed_pair_imp.6" }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.5" }
%"class.std::__1::__list_iterator" = type { %"struct.std::__1::__list_node"* }
%"struct.std::__1::nullptr_t" = type { i8* }
%"class.std::__1::ctype" = type { %"class.std::__1::locale::facet", i32*, i8 }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::allocator.2" = type { i8 }
%"class.std::__1::__libcpp_compressed_pair_imp.1" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::__compressed_pair.0" = type { %"class.std::__1::__libcpp_compressed_pair_imp.1" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.0" }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.4, [23 x i8] }
%union.anon.4 = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::__has_destroy" = type { i8 }

@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream"
@.str = private unnamed_addr constant [8 x i8] c"Vertex \00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c" --->  Color \00", align 1
@.str2 = private unnamed_addr constant [22 x i8] c"Coloring of Graph 1 \0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"\0AColoring of Graph 2 \0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id"

; Function Attrs: ssp uwtable
define void @_ZN5Graph7addEdgeEii(%class.Graph* %this, i32 %v, i32 %w) #0 align 2 {
  %1 = alloca %class.Graph*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %1, align 8
  store i32 %v, i32* %2, align 4
  store i32 %w, i32* %3, align 4
  %4 = load %class.Graph** %1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %class.Graph* %4, i32 0, i32 1
  %8 = load %"class.std::__1::list"** %7, align 8
  %9 = getelementptr inbounds %"class.std::__1::list"* %8, i64 %6
  call void @_ZNSt3__14listIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::list"* %9, i32* %3)
  %10 = load i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %class.Graph* %4, i32 0, i32 1
  %13 = load %"class.std::__1::list"** %12, align 8
  %14 = getelementptr inbounds %"class.std::__1::list"* %13, i64 %11
  call void @_ZNSt3__14listIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::list"* %14, i32* %2)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__14listIiNS_9allocatorIiEEE9push_backERKi(%"class.std::__1::list"* %this, i32* %__x) #0 align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::__1::allocator"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %6 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %7 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %8 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %9 = alloca %"class.std::__1::unique_ptr"*, align 8
  %10 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %11 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %12 = alloca %"class.std::__1::unique_ptr"*, align 8
  %13 = alloca %"struct.std::__1::__list_node"*, align 8
  %14 = alloca %"struct.std::__1::__list_node"*, align 8
  %15 = alloca %"struct.std::__1::__list_node"*, align 8
  %16 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %17 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %18 = alloca %"class.std::__1::__list_imp"*, align 8
  %19 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %20 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %23 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.i = alloca %"struct.std::__1::__list_node"*, align 8
  %24 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %25 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %26 = alloca %"class.std::__1::unique_ptr"*, align 8
  %27 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %28 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %29 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %30 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %31 = alloca %"class.std::__1::allocator"*, align 8
  %32 = alloca %"struct.std::__1::__list_node"*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %"class.std::__1::allocator"*, align 8
  %35 = alloca %"struct.std::__1::__list_node"*, align 8
  %36 = alloca i64, align 8
  %37 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %38 = alloca %"struct.std::__1::__list_node"*, align 8
  %39 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %40 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %41 = alloca %"class.std::__1::unique_ptr"*, align 8
  %42 = alloca %"struct.std::__1::__list_node"*, align 8
  %__tmp.i.i.i1 = alloca %"struct.std::__1::__list_node"*, align 8
  %43 = alloca %"class.std::__1::unique_ptr"*, align 8
  %44 = alloca %"class.std::__1::unique_ptr"*, align 8
  %45 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %46 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %47 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %48 = alloca %"struct.std::__1::__list_node"**, align 8
  %49 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %50 = alloca %"struct.std::__1::__list_node"*, align 8
  %__t2.i.i.i.i.i = alloca %"class.std::__1::__allocator_destructor", align 8
  %51 = alloca %"struct.std::__1::__list_node"**, align 8
  %52 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %53 = alloca %"struct.std::__1::__list_node"*, align 8
  %__t2.i.i.i.i = alloca %"class.std::__1::__allocator_destructor", align 8
  %54 = alloca %"class.std::__1::__allocator_destructor", align 8
  %55 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
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
  %63 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %64 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %65 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %66 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
  %67 = alloca %"class.std::__1::allocator"*, align 8
  %68 = alloca %"struct.std::__1::__list_node"*, align 8
  %69 = alloca i64, align 8
  %70 = alloca %"class.std::__1::allocator"*, align 8
  %71 = alloca %"struct.std::__1::__list_node"*, align 8
  %72 = alloca i64, align 8
  %73 = alloca %"class.std::__1::__allocator_destructor"*, align 8
  %74 = alloca %"struct.std::__1::__list_node"*, align 8
  %75 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.6"*, align 8
  %76 = alloca %"class.std::__1::__compressed_pair.5"*, align 8
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
  %96 = alloca i32*, align 8
  %__na = alloca %"class.std::__1::allocator"*, align 8
  %__hold = alloca %"class.std::__1::unique_ptr", align 8
  %97 = alloca %"class.std::__1::__allocator_destructor", align 8
  %98 = alloca i8*
  %99 = alloca i32
  store %"class.std::__1::list"* %this, %"class.std::__1::list"** %95, align 8
  store i32* %__x, i32** %96, align 8
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
  store %"class.std::__1::__compressed_pair.5"* %144, %"class.std::__1::__compressed_pair.5"** %55, align 8
  store %"struct.std::__1::__list_node"* %146, %"struct.std::__1::__list_node"** %56, align 8
  %155 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %156 = getelementptr { %"class.std::__1::allocator"*, i64 }* %155, i32 0, i32 0
  store %"class.std::__1::allocator"* %152, %"class.std::__1::allocator"** %156
  %157 = getelementptr { %"class.std::__1::allocator"*, i64 }* %155, i32 0, i32 1
  store i64 %154, i64* %157
  %158 = load %"class.std::__1::__compressed_pair.5"** %55
  %159 = load %"struct.std::__1::__list_node"** %56, align 8
  %160 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %161 = getelementptr { %"class.std::__1::allocator"*, i64 }* %160, i32 0, i32 0
  %162 = load %"class.std::__1::allocator"** %161, align 1
  %163 = getelementptr { %"class.std::__1::allocator"*, i64 }* %160, i32 0, i32 1
  %164 = load i64* %163, align 1
  store %"class.std::__1::__compressed_pair.5"* %158, %"class.std::__1::__compressed_pair.5"** %52, align 8
  store %"struct.std::__1::__list_node"* %159, %"struct.std::__1::__list_node"** %53, align 8
  %165 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %166 = getelementptr { %"class.std::__1::allocator"*, i64 }* %165, i32 0, i32 0
  store %"class.std::__1::allocator"* %162, %"class.std::__1::allocator"** %166
  %167 = getelementptr { %"class.std::__1::allocator"*, i64 }* %165, i32 0, i32 1
  store i64 %164, i64* %167
  %168 = load %"class.std::__1::__compressed_pair.5"** %52
  %169 = bitcast %"class.std::__1::__compressed_pair.5"* %168 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
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
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %169, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %49, align 8
  store %"struct.std::__1::__list_node"* %171, %"struct.std::__1::__list_node"** %50, align 8
  %180 = bitcast %"class.std::__1::__allocator_destructor"* %__t2.i.i.i.i.i to { %"class.std::__1::allocator"*, i64 }*
  %181 = getelementptr { %"class.std::__1::allocator"*, i64 }* %180, i32 0, i32 0
  store %"class.std::__1::allocator"* %177, %"class.std::__1::allocator"** %181
  %182 = getelementptr { %"class.std::__1::allocator"*, i64 }* %180, i32 0, i32 1
  store i64 %179, i64* %182
  %183 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %49
  %184 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %183, i32 0, i32 0
  store %"struct.std::__1::__list_node"** %50, %"struct.std::__1::__list_node"*** %48, align 8
  %185 = load %"struct.std::__1::__list_node"*** %48, align 8
  %186 = load %"struct.std::__1::__list_node"** %185
  store %"struct.std::__1::__list_node"* %186, %"struct.std::__1::__list_node"** %184, align 8
  %187 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %183, i32 0, i32 1
  store %"class.std::__1::__allocator_destructor"* %__t2.i.i.i.i.i, %"class.std::__1::__allocator_destructor"** %47, align 8
  %188 = load %"class.std::__1::__allocator_destructor"** %47, align 8
  %189 = bitcast %"class.std::__1::__allocator_destructor"* %187 to i8*
  %190 = bitcast %"class.std::__1::__allocator_destructor"* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* %190, i64 16, i32 8, i1 false) #1
  %191 = load %"class.std::__1::allocator"** %__na, align 8
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %26, align 8
  %192 = load %"class.std::__1::unique_ptr"** %26
  %193 = getelementptr inbounds %"class.std::__1::unique_ptr"* %192, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %193, %"class.std::__1::__compressed_pair.5"** %25, align 8
  %194 = load %"class.std::__1::__compressed_pair.5"** %25
  %195 = bitcast %"class.std::__1::__compressed_pair.5"* %194 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %195, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %24, align 8
  %196 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %24
  %197 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %196, i32 0, i32 0
  %198 = load %"struct.std::__1::__list_node"** %197
  %199 = getelementptr inbounds %"struct.std::__1::__list_node"* %198, i32 0, i32 1
  store i32* %199, i32** %1, align 8
  %200 = load i32** %1, align 8
  %201 = bitcast i32* %200 to i8*
  %202 = bitcast i8* %201 to i32*
  %203 = load i32** %96, align 8
  store %"class.std::__1::allocator"* %191, %"class.std::__1::allocator"** %2, align 8
  store i32* %202, i32** %3, align 8
  store i32* %203, i32** %4, align 8
  %204 = load i32** %3, align 8
  %205 = bitcast i32* %204 to i8*
  %206 = icmp eq i8* %205, null
  br i1 %206, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE9constructIiiEEvRS5_PT_RKT0_.exit, label %207

; <label>:207                                     ; preds = %0
  %208 = bitcast i8* %205 to i32*
  %209 = load i32** %4, align 8
  %210 = load i32* %209, align 4
  store i32 %210, i32* %208, align 4
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE9constructIiiEEvRS5_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE9constructIiiEEvRS5_PT_RKT0_.exit: ; preds = %0, %207
  %211 = phi i32* [ %208, %207 ], [ null, %0 ]
  br label %212

; <label>:212                                     ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE9constructIiiEEvRS5_PT_RKT0_.exit
  %213 = bitcast %"class.std::__1::list"* %100 to %"class.std::__1::__list_imp"*
  %214 = getelementptr inbounds %"class.std::__1::__list_imp"* %213, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %214, %"struct.std::__1::__list_node_base"** %6, align 8
  %215 = load %"struct.std::__1::__list_node_base"** %6, align 8
  store %"struct.std::__1::__list_node_base"* %215, %"struct.std::__1::__list_node_base"** %5, align 8
  %216 = load %"struct.std::__1::__list_node_base"** %5, align 8
  %217 = bitcast %"struct.std::__1::__list_node_base"* %216 to i8*
  %218 = bitcast i8* %217 to %"struct.std::__1::__list_node_base"*
  %219 = bitcast %"struct.std::__1::__list_node_base"* %218 to %"struct.std::__1::__list_node"*
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %9, align 8
  %220 = load %"class.std::__1::unique_ptr"** %9
  %221 = getelementptr inbounds %"class.std::__1::unique_ptr"* %220, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %221, %"class.std::__1::__compressed_pair.5"** %8, align 8
  %222 = load %"class.std::__1::__compressed_pair.5"** %8
  %223 = bitcast %"class.std::__1::__compressed_pair.5"* %222 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %223, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %7, align 8
  %224 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %7
  %225 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %224, i32 0, i32 0
  %226 = load %"struct.std::__1::__list_node"** %225
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %12, align 8
  %227 = load %"class.std::__1::unique_ptr"** %12
  %228 = getelementptr inbounds %"class.std::__1::unique_ptr"* %227, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %228, %"class.std::__1::__compressed_pair.5"** %11, align 8
  %229 = load %"class.std::__1::__compressed_pair.5"** %11
  %230 = bitcast %"class.std::__1::__compressed_pair.5"* %229 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %230, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %10, align 8
  %231 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %10
  %232 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %231, i32 0, i32 0
  %233 = load %"struct.std::__1::__list_node"** %232
  store %"struct.std::__1::__list_node"* %219, %"struct.std::__1::__list_node"** %13, align 8
  store %"struct.std::__1::__list_node"* %226, %"struct.std::__1::__list_node"** %14, align 8
  store %"struct.std::__1::__list_node"* %233, %"struct.std::__1::__list_node"** %15, align 8
  %234 = load %"struct.std::__1::__list_node"** %14, align 8
  %235 = load %"struct.std::__1::__list_node"** %13, align 8
  %236 = bitcast %"struct.std::__1::__list_node"* %235 to %"struct.std::__1::__list_node_base"*
  %237 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %236, i32 0, i32 0
  %238 = load %"struct.std::__1::__list_node"** %237, align 8
  %239 = bitcast %"struct.std::__1::__list_node"* %238 to %"struct.std::__1::__list_node_base"*
  %240 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %239, i32 0, i32 1
  store %"struct.std::__1::__list_node"* %234, %"struct.std::__1::__list_node"** %240, align 8
  %241 = load %"struct.std::__1::__list_node"** %13, align 8
  %242 = bitcast %"struct.std::__1::__list_node"* %241 to %"struct.std::__1::__list_node_base"*
  %243 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %242, i32 0, i32 0
  %244 = load %"struct.std::__1::__list_node"** %243, align 8
  %245 = load %"struct.std::__1::__list_node"** %14, align 8
  %246 = bitcast %"struct.std::__1::__list_node"* %245 to %"struct.std::__1::__list_node_base"*
  %247 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %246, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %244, %"struct.std::__1::__list_node"** %247, align 8
  %248 = load %"struct.std::__1::__list_node"** %15, align 8
  %249 = load %"struct.std::__1::__list_node"** %13, align 8
  %250 = bitcast %"struct.std::__1::__list_node"* %249 to %"struct.std::__1::__list_node_base"*
  %251 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %250, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %248, %"struct.std::__1::__list_node"** %251, align 8
  %252 = load %"struct.std::__1::__list_node"** %13, align 8
  %253 = load %"struct.std::__1::__list_node"** %15, align 8
  %254 = bitcast %"struct.std::__1::__list_node"* %253 to %"struct.std::__1::__list_node_base"*
  %255 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %254, i32 0, i32 1
  store %"struct.std::__1::__list_node"* %252, %"struct.std::__1::__list_node"** %255, align 8
  br label %256

; <label>:256                                     ; preds = %212
  %257 = bitcast %"class.std::__1::list"* %100 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %257, %"class.std::__1::__list_imp"** %18, align 8
  %258 = load %"class.std::__1::__list_imp"** %18
  %259 = getelementptr inbounds %"class.std::__1::__list_imp"* %258, i32 0, i32 1
  store %"class.std::__1::__compressed_pair"* %259, %"class.std::__1::__compressed_pair"** %17, align 8
  %260 = load %"class.std::__1::__compressed_pair"** %17
  %261 = bitcast %"class.std::__1::__compressed_pair"* %260 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %261, %"class.std::__1::__libcpp_compressed_pair_imp"** %16, align 8
  %262 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %16
  %263 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %262, i32 0, i32 0
  %264 = load i64* %263
  %265 = add i64 %264, 1
  store i64 %265, i64* %263
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %23, align 8
  %266 = load %"class.std::__1::unique_ptr"** %23
  %267 = getelementptr inbounds %"class.std::__1::unique_ptr"* %266, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %267, %"class.std::__1::__compressed_pair.5"** %22, align 8
  %268 = load %"class.std::__1::__compressed_pair.5"** %22
  %269 = bitcast %"class.std::__1::__compressed_pair.5"* %268 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %269, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %21, align 8
  %270 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %21
  %271 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %270, i32 0, i32 0
  %272 = load %"struct.std::__1::__list_node"** %271
  store %"struct.std::__1::__list_node"* %272, %"struct.std::__1::__list_node"** %__t.i, align 8
  %273 = getelementptr inbounds %"class.std::__1::unique_ptr"* %266, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %273, %"class.std::__1::__compressed_pair.5"** %20, align 8
  %274 = load %"class.std::__1::__compressed_pair.5"** %20
  %275 = bitcast %"class.std::__1::__compressed_pair.5"* %274 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %275, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %19, align 8
  %276 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %19
  %277 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %276, i32 0, i32 0
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %277
  %278 = load %"struct.std::__1::__list_node"** %__t.i, align 8
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %44, align 8
  %279 = load %"class.std::__1::unique_ptr"** %44
  store %"class.std::__1::unique_ptr"* %279, %"class.std::__1::unique_ptr"** %43, align 8
  %280 = load %"class.std::__1::unique_ptr"** %43
  store %"class.std::__1::unique_ptr"* %280, %"class.std::__1::unique_ptr"** %41, align 8
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %42, align 8
  %281 = load %"class.std::__1::unique_ptr"** %41
  %282 = getelementptr inbounds %"class.std::__1::unique_ptr"* %281, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %282, %"class.std::__1::__compressed_pair.5"** %40, align 8
  %283 = load %"class.std::__1::__compressed_pair.5"** %40
  %284 = bitcast %"class.std::__1::__compressed_pair.5"* %283 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %284, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %39, align 8
  %285 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %39
  %286 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %285, i32 0, i32 0
  %287 = load %"struct.std::__1::__list_node"** %286
  store %"struct.std::__1::__list_node"* %287, %"struct.std::__1::__list_node"** %__tmp.i.i.i1, align 8
  %288 = load %"struct.std::__1::__list_node"** %42, align 8
  %289 = getelementptr inbounds %"class.std::__1::unique_ptr"* %281, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %289, %"class.std::__1::__compressed_pair.5"** %30, align 8
  %290 = load %"class.std::__1::__compressed_pair.5"** %30
  %291 = bitcast %"class.std::__1::__compressed_pair.5"* %290 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %291, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %29, align 8
  %292 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %29
  %293 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %292, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %288, %"struct.std::__1::__list_node"** %293
  %294 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i1, align 8
  %295 = icmp ne %"struct.std::__1::__list_node"* %294, null
  br i1 %295, label %296, label %_ZNSt3__110unique_ptrINS_11__list_nodeIiPvEENS_22__allocator_destructorINS_9allocatorIS3_EEEEED1Ev.exit2

; <label>:296                                     ; preds = %256
  %297 = getelementptr inbounds %"class.std::__1::unique_ptr"* %281, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %297, %"class.std::__1::__compressed_pair.5"** %28, align 8
  %298 = load %"class.std::__1::__compressed_pair.5"** %28
  %299 = bitcast %"class.std::__1::__compressed_pair.5"* %298 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %299, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %27, align 8
  %300 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %27
  %301 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %300, i32 0, i32 1
  %302 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i1, align 8
  store %"class.std::__1::__allocator_destructor"* %301, %"class.std::__1::__allocator_destructor"** %37, align 8
  store %"struct.std::__1::__list_node"* %302, %"struct.std::__1::__list_node"** %38, align 8
  %303 = load %"class.std::__1::__allocator_destructor"** %37
  %304 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %303, i32 0, i32 0
  %305 = load %"class.std::__1::allocator"** %304, align 8
  %306 = load %"struct.std::__1::__list_node"** %38, align 8
  %307 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %303, i32 0, i32 1
  %308 = load i64* %307, align 8
  store %"class.std::__1::allocator"* %305, %"class.std::__1::allocator"** %34, align 8
  store %"struct.std::__1::__list_node"* %306, %"struct.std::__1::__list_node"** %35, align 8
  store i64 %308, i64* %36, align 8
  %309 = load %"class.std::__1::allocator"** %34, align 8
  %310 = load %"struct.std::__1::__list_node"** %35, align 8
  %311 = load i64* %36, align 8
  store %"class.std::__1::allocator"* %309, %"class.std::__1::allocator"** %31, align 8
  store %"struct.std::__1::__list_node"* %310, %"struct.std::__1::__list_node"** %32, align 8
  store i64 %311, i64* %33, align 8
  %312 = load %"class.std::__1::allocator"** %31
  %313 = load %"struct.std::__1::__list_node"** %32, align 8
  %314 = bitcast %"struct.std::__1::__list_node"* %313 to i8*
  call void @_ZdlPv(i8* %314) #1
  br label %_ZNSt3__110unique_ptrINS_11__list_nodeIiPvEENS_22__allocator_destructorINS_9allocatorIS3_EEEEED1Ev.exit2

_ZNSt3__110unique_ptrINS_11__list_nodeIiPvEENS_22__allocator_destructorINS_9allocatorIS3_EEEEED1Ev.exit2: ; preds = %256, %296
  ret void
                                                  ; No predecessors!
  %316 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %317 = extractvalue { i8*, i32 } %316, 0
  store i8* %317, i8** %98
  %318 = extractvalue { i8*, i32 } %316, 1
  store i32 %318, i32* %99
  store %"class.std::__1::unique_ptr"* %__hold, %"class.std::__1::unique_ptr"** %80, align 8
  %319 = load %"class.std::__1::unique_ptr"** %80
  store %"class.std::__1::unique_ptr"* %319, %"class.std::__1::unique_ptr"** %79, align 8
  %320 = load %"class.std::__1::unique_ptr"** %79
  store %"class.std::__1::unique_ptr"* %320, %"class.std::__1::unique_ptr"** %77, align 8
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %78, align 8
  %321 = load %"class.std::__1::unique_ptr"** %77
  %322 = getelementptr inbounds %"class.std::__1::unique_ptr"* %321, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %322, %"class.std::__1::__compressed_pair.5"** %76, align 8
  %323 = load %"class.std::__1::__compressed_pair.5"** %76
  %324 = bitcast %"class.std::__1::__compressed_pair.5"* %323 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %324, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %75, align 8
  %325 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %75
  %326 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %325, i32 0, i32 0
  %327 = load %"struct.std::__1::__list_node"** %326
  store %"struct.std::__1::__list_node"* %327, %"struct.std::__1::__list_node"** %__tmp.i.i.i, align 8
  %328 = load %"struct.std::__1::__list_node"** %78, align 8
  %329 = getelementptr inbounds %"class.std::__1::unique_ptr"* %321, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %329, %"class.std::__1::__compressed_pair.5"** %66, align 8
  %330 = load %"class.std::__1::__compressed_pair.5"** %66
  %331 = bitcast %"class.std::__1::__compressed_pair.5"* %330 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %331, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %65, align 8
  %332 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %65
  %333 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %332, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %328, %"struct.std::__1::__list_node"** %333
  %334 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i, align 8
  %335 = icmp ne %"struct.std::__1::__list_node"* %334, null
  br i1 %335, label %336, label %_ZNSt3__110unique_ptrINS_11__list_nodeIiPvEENS_22__allocator_destructorINS_9allocatorIS3_EEEEED1Ev.exit

; <label>:336                                     ; preds = %315
  %337 = getelementptr inbounds %"class.std::__1::unique_ptr"* %321, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.5"* %337, %"class.std::__1::__compressed_pair.5"** %64, align 8
  %338 = load %"class.std::__1::__compressed_pair.5"** %64
  %339 = bitcast %"class.std::__1::__compressed_pair.5"* %338 to %"class.std::__1::__libcpp_compressed_pair_imp.6"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.6"* %339, %"class.std::__1::__libcpp_compressed_pair_imp.6"** %63, align 8
  %340 = load %"class.std::__1::__libcpp_compressed_pair_imp.6"** %63
  %341 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.6"* %340, i32 0, i32 1
  %342 = load %"struct.std::__1::__list_node"** %__tmp.i.i.i, align 8
  store %"class.std::__1::__allocator_destructor"* %341, %"class.std::__1::__allocator_destructor"** %73, align 8
  store %"struct.std::__1::__list_node"* %342, %"struct.std::__1::__list_node"** %74, align 8
  %343 = load %"class.std::__1::__allocator_destructor"** %73
  %344 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %343, i32 0, i32 0
  %345 = load %"class.std::__1::allocator"** %344, align 8
  %346 = load %"struct.std::__1::__list_node"** %74, align 8
  %347 = getelementptr inbounds %"class.std::__1::__allocator_destructor"* %343, i32 0, i32 1
  %348 = load i64* %347, align 8
  store %"class.std::__1::allocator"* %345, %"class.std::__1::allocator"** %70, align 8
  store %"struct.std::__1::__list_node"* %346, %"struct.std::__1::__list_node"** %71, align 8
  store i64 %348, i64* %72, align 8
  %349 = load %"class.std::__1::allocator"** %70, align 8
  %350 = load %"struct.std::__1::__list_node"** %71, align 8
  %351 = load i64* %72, align 8
  store %"class.std::__1::allocator"* %349, %"class.std::__1::allocator"** %67, align 8
  store %"struct.std::__1::__list_node"* %350, %"struct.std::__1::__list_node"** %68, align 8
  store i64 %351, i64* %69, align 8
  %352 = load %"class.std::__1::allocator"** %67
  %353 = load %"struct.std::__1::__list_node"** %68, align 8
  %354 = bitcast %"struct.std::__1::__list_node"* %353 to i8*
  call void @_ZdlPv(i8* %354) #1
  br label %_ZNSt3__110unique_ptrINS_11__list_nodeIiPvEENS_22__allocator_destructorINS_9allocatorIS3_EEEEED1Ev.exit

_ZNSt3__110unique_ptrINS_11__list_nodeIiPvEENS_22__allocator_destructorINS_9allocatorIS3_EEEEED1Ev.exit: ; preds = %315, %336
  br label %355

; <label>:355                                     ; preds = %_ZNSt3__110unique_ptrINS_11__list_nodeIiPvEENS_22__allocator_destructorINS_9allocatorIS3_EEEEED1Ev.exit
  br label %356

; <label>:356                                     ; preds = %355
  %357 = load i8** %98
  %358 = load i32* %99
  %359 = insertvalue { i8*, i32 } undef, i8* %357, 0
  %360 = insertvalue { i8*, i32 } %359, i32 %358, 1
  resume { i8*, i32 } %360
                                                  ; No predecessors!
  %362 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %363 = extractvalue { i8*, i32 } %362, 0
  call void @__clang_call_terminate(i8* %363) #10
  unreachable
}

; Function Attrs: ssp uwtable
define void @_ZN5Graph14greedyColoringEv(%class.Graph* %this) #0 align 2 {
  %1 = alloca %"class.std::__1::__list_iterator"*, align 8
  %2 = alloca %"class.std::__1::__list_iterator"*, align 8
  %3 = alloca %"class.std::__1::__list_iterator"*, align 8
  %4 = alloca %"class.std::__1::__list_iterator"*, align 8
  %5 = alloca %"struct.std::__1::__list_node"*, align 8
  %6 = alloca %"class.std::__1::__list_iterator"*, align 8
  %7 = alloca %"struct.std::__1::__list_node"*, align 8
  %8 = alloca %"class.std::__1::__list_iterator", align 8
  %9 = alloca %"class.std::__1::__list_imp"*, align 8
  %10 = alloca %"class.std::__1::__list_iterator", align 8
  %11 = alloca %"class.std::__1::list"*, align 8
  %12 = alloca %"class.std::__1::__list_iterator"*, align 8
  %13 = alloca %"struct.std::__1::__list_node"*, align 8
  %14 = alloca %"class.std::__1::__list_iterator"*, align 8
  %15 = alloca %"struct.std::__1::__list_node"*, align 8
  %16 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %17 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %18 = alloca %"class.std::__1::__list_iterator", align 8
  %19 = alloca %"class.std::__1::__list_imp"*, align 8
  %20 = alloca %"class.std::__1::__list_iterator", align 8
  %21 = alloca %"class.std::__1::list"*, align 8
  %22 = alloca %"class.std::__1::__list_iterator"*, align 8
  %23 = alloca %"class.std::__1::__list_iterator"*, align 8
  %24 = alloca %"class.std::__1::__list_iterator"*, align 8
  %25 = alloca %"class.std::__1::__list_iterator"*, align 8
  %26 = alloca %"class.std::__1::__list_iterator"*, align 8
  %27 = alloca %"class.std::__1::__list_iterator"*, align 8
  %28 = alloca %"class.std::__1::__list_iterator"*, align 8
  %29 = alloca %"class.std::__1::__list_iterator"*, align 8
  %30 = alloca %"class.std::__1::__list_iterator"*, align 8
  %31 = alloca %"class.std::__1::__list_iterator"*, align 8
  %32 = alloca %"class.std::__1::__list_iterator"*, align 8
  %33 = alloca %"class.std::__1::__list_iterator"*, align 8
  %34 = alloca %"struct.std::__1::__list_node"*, align 8
  %35 = alloca %"class.std::__1::__list_iterator"*, align 8
  %36 = alloca %"struct.std::__1::__list_node"*, align 8
  %37 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %38 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %39 = alloca %"class.std::__1::__list_iterator", align 8
  %40 = alloca %"class.std::__1::__list_imp"*, align 8
  %41 = alloca %"class.std::__1::__list_iterator", align 8
  %42 = alloca %"class.std::__1::list"*, align 8
  %43 = alloca %"class.std::__1::__list_iterator"*, align 8
  %44 = alloca %"struct.std::__1::__list_node"*, align 8
  %45 = alloca %"class.std::__1::__list_iterator"*, align 8
  %46 = alloca %"struct.std::__1::__list_node"*, align 8
  %47 = alloca %"class.std::__1::__list_iterator", align 8
  %48 = alloca %"class.std::__1::__list_imp"*, align 8
  %49 = alloca %"class.std::__1::__list_iterator", align 8
  %50 = alloca %"class.std::__1::list"*, align 8
  %51 = alloca %"class.std::__1::basic_ostream"*, align 8
  %52 = alloca %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)*, align 8
  %53 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %54 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %55 = alloca i64, align 8
  %56 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %57 = alloca i64, align 8
  %58 = alloca %"struct.std::__1::nullptr_t", align 8
  %59 = alloca %"class.std::__1::__list_iterator"*, align 8
  %60 = alloca i8*
  %61 = alloca i32
  %62 = alloca %"struct.std::__1::nullptr_t", align 8
  %63 = alloca %"class.std::__1::__list_iterator"*, align 8
  %64 = alloca %class.Graph*, align 8
  %65 = alloca i8*
  %u = alloca i32, align 4
  %cr = alloca i32, align 4
  %u1 = alloca i32, align 4
  %i = alloca %"class.std::__1::__list_iterator", align 8
  %66 = alloca %"class.std::__1::__list_iterator", align 8
  %67 = alloca %"class.std::__1::__list_iterator", align 8
  %cr2 = alloca i32, align 4
  %68 = alloca %"class.std::__1::__list_iterator", align 8
  %69 = alloca %"class.std::__1::__list_iterator", align 8
  %u3 = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %64, align 8
  %70 = load %class.Graph** %64
  %71 = getelementptr inbounds %class.Graph* %70, i32 0, i32 0
  %72 = load i32* %71, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %65
  %75 = alloca i32, i64 %73, align 16
  %76 = getelementptr inbounds i32* %75, i64 0
  store i32 0, i32* %76, align 4
  store i32 1, i32* %u, align 4
  br label %77

; <label>:77                                      ; preds = %86, %0
  %78 = load i32* %u, align 4
  %79 = getelementptr inbounds %class.Graph* %70, i32 0, i32 0
  %80 = load i32* %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %89

; <label>:82                                      ; preds = %77
  %83 = load i32* %u, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32* %75, i64 %84
  store i32 -1, i32* %85, align 4
  br label %86

; <label>:86                                      ; preds = %82
  %87 = load i32* %u, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %u, align 4
  br label %77

; <label>:89                                      ; preds = %77
  %90 = getelementptr inbounds %class.Graph* %70, i32 0, i32 0
  %91 = load i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = alloca i8, i64 %92, align 16
  store i32 0, i32* %cr, align 4
  br label %94

; <label>:94                                      ; preds = %103, %89
  %95 = load i32* %cr, align 4
  %96 = getelementptr inbounds %class.Graph* %70, i32 0, i32 0
  %97 = load i32* %96, align 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %106

; <label>:99                                      ; preds = %94
  %100 = load i32* %cr, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8* %93, i64 %101
  store i8 0, i8* %102, align 1
  br label %103

; <label>:103                                     ; preds = %99
  %104 = load i32* %cr, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %cr, align 4
  br label %94

; <label>:106                                     ; preds = %94
  store i32 1, i32* %u1, align 4
  br label %107

; <label>:107                                     ; preds = %329, %106
  %108 = load i32* %u1, align 4
  %109 = getelementptr inbounds %class.Graph* %70, i32 0, i32 0
  %110 = load i32* %109, align 4
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %332

; <label>:112                                     ; preds = %107
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %63, align 8
  %113 = load %"class.std::__1::__list_iterator"** %63
  store %"class.std::__1::__list_iterator"* %113, %"class.std::__1::__list_iterator"** %59, align 8
  %114 = load %"class.std::__1::__list_iterator"** %59
  %115 = getelementptr inbounds %"class.std::__1::__list_iterator"* %114, i32 0, i32 0
  store %"struct.std::__1::nullptr_t"* %58, %"struct.std::__1::nullptr_t"** %56, align 8
  store i64 -1, i64* %57, align 8
  %116 = load %"struct.std::__1::nullptr_t"** %56
  %117 = load i64* %57, align 8
  store %"struct.std::__1::nullptr_t"* %116, %"struct.std::__1::nullptr_t"** %54, align 8
  store i64 %117, i64* %55, align 8
  %118 = load %"struct.std::__1::nullptr_t"** %54
  %119 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %118, i32 0, i32 0
  store i8* null, i8** %119, align 8
  %120 = getelementptr %"struct.std::__1::nullptr_t"* %58, i32 0, i32 0
  %121 = load i8** %120
  %122 = getelementptr %"struct.std::__1::nullptr_t"* %62, i32 0, i32 0
  store i8* %121, i8** %122
  store %"struct.std::__1::nullptr_t"* %62, %"struct.std::__1::nullptr_t"** %53, align 8
  %123 = load %"struct.std::__1::nullptr_t"** %53
  store %"struct.std::__1::__list_node"* null, %"struct.std::__1::__list_node"** %115, align 8
  %124 = load i32* %u1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %class.Graph* %70, i32 0, i32 1
  %127 = load %"class.std::__1::list"** %126, align 8
  %128 = getelementptr inbounds %"class.std::__1::list"* %127, i64 %125
  store %"class.std::__1::list"* %128, %"class.std::__1::list"** %50, align 8
  %129 = load %"class.std::__1::list"** %50
  %130 = bitcast %"class.std::__1::list"* %129 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %130, %"class.std::__1::__list_imp"** %48, align 8
  %131 = load %"class.std::__1::__list_imp"** %48
  %132 = getelementptr inbounds %"class.std::__1::__list_imp"* %131, i32 0, i32 0
  %133 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %132, i32 0, i32 1
  %134 = load %"struct.std::__1::__list_node"** %133, align 8
  store %"class.std::__1::__list_iterator"* %47, %"class.std::__1::__list_iterator"** %45, align 8
  store %"struct.std::__1::__list_node"* %134, %"struct.std::__1::__list_node"** %46, align 8
  %135 = load %"class.std::__1::__list_iterator"** %45
  %136 = load %"struct.std::__1::__list_node"** %46, align 8
  store %"class.std::__1::__list_iterator"* %135, %"class.std::__1::__list_iterator"** %43, align 8
  store %"struct.std::__1::__list_node"* %136, %"struct.std::__1::__list_node"** %44, align 8
  %137 = load %"class.std::__1::__list_iterator"** %43
  %138 = getelementptr inbounds %"class.std::__1::__list_iterator"* %137, i32 0, i32 0
  %139 = load %"struct.std::__1::__list_node"** %44, align 8
  store %"struct.std::__1::__list_node"* %139, %"struct.std::__1::__list_node"** %138, align 8
  %140 = getelementptr %"class.std::__1::__list_iterator"* %47, i32 0, i32 0
  %141 = load %"struct.std::__1::__list_node"** %140
  %142 = getelementptr %"class.std::__1::__list_iterator"* %49, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %141, %"struct.std::__1::__list_node"** %142
  %143 = getelementptr %"class.std::__1::__list_iterator"* %49, i32 0, i32 0
  %144 = load %"struct.std::__1::__list_node"** %143
  %145 = getelementptr %"class.std::__1::__list_iterator"* %66, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %144, %"struct.std::__1::__list_node"** %145
  %146 = bitcast %"class.std::__1::__list_iterator"* %i to i8*
  %147 = bitcast %"class.std::__1::__list_iterator"* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %147, i64 8, i32 8, i1 false)
  br label %148

; <label>:148                                     ; preds = %206, %112
  %149 = load i32* %u1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %class.Graph* %70, i32 0, i32 1
  %152 = load %"class.std::__1::list"** %151, align 8
  %153 = getelementptr inbounds %"class.std::__1::list"* %152, i64 %150
  store %"class.std::__1::list"* %153, %"class.std::__1::list"** %42, align 8
  %154 = load %"class.std::__1::list"** %42
  %155 = bitcast %"class.std::__1::list"* %154 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %155, %"class.std::__1::__list_imp"** %40, align 8
  %156 = load %"class.std::__1::__list_imp"** %40
  %157 = getelementptr inbounds %"class.std::__1::__list_imp"* %156, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %157, %"struct.std::__1::__list_node_base"** %38, align 8
  %158 = load %"struct.std::__1::__list_node_base"** %38, align 8
  store %"struct.std::__1::__list_node_base"* %158, %"struct.std::__1::__list_node_base"** %37, align 8
  %159 = load %"struct.std::__1::__list_node_base"** %37, align 8
  %160 = bitcast %"struct.std::__1::__list_node_base"* %159 to i8*
  %161 = bitcast i8* %160 to %"struct.std::__1::__list_node_base"*
  %162 = bitcast %"struct.std::__1::__list_node_base"* %161 to %"struct.std::__1::__list_node"*
  store %"class.std::__1::__list_iterator"* %39, %"class.std::__1::__list_iterator"** %35, align 8
  store %"struct.std::__1::__list_node"* %162, %"struct.std::__1::__list_node"** %36, align 8
  %163 = load %"class.std::__1::__list_iterator"** %35
  %164 = load %"struct.std::__1::__list_node"** %36, align 8
  store %"class.std::__1::__list_iterator"* %163, %"class.std::__1::__list_iterator"** %33, align 8
  store %"struct.std::__1::__list_node"* %164, %"struct.std::__1::__list_node"** %34, align 8
  %165 = load %"class.std::__1::__list_iterator"** %33
  %166 = getelementptr inbounds %"class.std::__1::__list_iterator"* %165, i32 0, i32 0
  %167 = load %"struct.std::__1::__list_node"** %34, align 8
  store %"struct.std::__1::__list_node"* %167, %"struct.std::__1::__list_node"** %166, align 8
  %168 = getelementptr %"class.std::__1::__list_iterator"* %39, i32 0, i32 0
  %169 = load %"struct.std::__1::__list_node"** %168
  %170 = getelementptr %"class.std::__1::__list_iterator"* %41, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %169, %"struct.std::__1::__list_node"** %170
  %171 = getelementptr %"class.std::__1::__list_iterator"* %41, i32 0, i32 0
  %172 = load %"struct.std::__1::__list_node"** %171
  %173 = getelementptr %"class.std::__1::__list_iterator"* %67, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %172, %"struct.std::__1::__list_node"** %173
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %31, align 8
  store %"class.std::__1::__list_iterator"* %67, %"class.std::__1::__list_iterator"** %32, align 8
  %174 = load %"class.std::__1::__list_iterator"** %31, align 8
  %175 = load %"class.std::__1::__list_iterator"** %32, align 8
  store %"class.std::__1::__list_iterator"* %174, %"class.std::__1::__list_iterator"** %29, align 8
  store %"class.std::__1::__list_iterator"* %175, %"class.std::__1::__list_iterator"** %30, align 8
  %176 = load %"class.std::__1::__list_iterator"** %29, align 8
  %177 = getelementptr inbounds %"class.std::__1::__list_iterator"* %176, i32 0, i32 0
  %178 = load %"struct.std::__1::__list_node"** %177, align 8
  %179 = load %"class.std::__1::__list_iterator"** %30, align 8
  %180 = getelementptr inbounds %"class.std::__1::__list_iterator"* %179, i32 0, i32 0
  %181 = load %"struct.std::__1::__list_node"** %180, align 8
  %182 = icmp eq %"struct.std::__1::__list_node"* %178, %181
  %183 = xor i1 %182, true
  br i1 %183, label %184, label %214

; <label>:184                                     ; preds = %148
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %1, align 8
  %185 = load %"class.std::__1::__list_iterator"** %1
  %186 = getelementptr inbounds %"class.std::__1::__list_iterator"* %185, i32 0, i32 0
  %187 = load %"struct.std::__1::__list_node"** %186, align 8
  %188 = getelementptr inbounds %"struct.std::__1::__list_node"* %187, i32 0, i32 1
  %189 = load i32* %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32* %75, i64 %190
  %192 = load i32* %191, align 4
  %193 = icmp ne i32 %192, -1
  br i1 %193, label %194, label %205

; <label>:194                                     ; preds = %184
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %2, align 8
  %195 = load %"class.std::__1::__list_iterator"** %2
  %196 = getelementptr inbounds %"class.std::__1::__list_iterator"* %195, i32 0, i32 0
  %197 = load %"struct.std::__1::__list_node"** %196, align 8
  %198 = getelementptr inbounds %"struct.std::__1::__list_node"* %197, i32 0, i32 1
  %199 = load i32* %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32* %75, i64 %200
  %202 = load i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8* %93, i64 %203
  store i8 1, i8* %204, align 1
  br label %205

; <label>:205                                     ; preds = %194, %184
  br label %206

; <label>:206                                     ; preds = %205
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %3, align 8
  %207 = load %"class.std::__1::__list_iterator"** %3
  %208 = getelementptr inbounds %"class.std::__1::__list_iterator"* %207, i32 0, i32 0
  %209 = load %"struct.std::__1::__list_node"** %208, align 8
  %210 = bitcast %"struct.std::__1::__list_node"* %209 to %"struct.std::__1::__list_node_base"*
  %211 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %210, i32 0, i32 1
  %212 = load %"struct.std::__1::__list_node"** %211, align 8
  %213 = getelementptr inbounds %"class.std::__1::__list_iterator"* %207, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %212, %"struct.std::__1::__list_node"** %213, align 8
  br label %148

; <label>:214                                     ; preds = %148
  store i32 0, i32* %cr2, align 4
  br label %215

; <label>:215                                     ; preds = %230, %214
  %216 = load i32* %cr2, align 4
  %217 = getelementptr inbounds %class.Graph* %70, i32 0, i32 0
  %218 = load i32* %217, align 4
  %219 = icmp slt i32 %216, %218
  br i1 %219, label %220, label %233

; <label>:220                                     ; preds = %215
  %221 = load i32* %cr2, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8* %93, i64 %222
  %224 = load i8* %223, align 1
  %225 = trunc i8 %224 to i1
  %226 = zext i1 %225 to i32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

; <label>:228                                     ; preds = %220
  br label %233

; <label>:229                                     ; preds = %220
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load i32* %cr2, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %cr2, align 4
  br label %215

; <label>:233                                     ; preds = %228, %215
  %234 = load i32* %cr2, align 4
  %235 = load i32* %u1, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32* %75, i64 %236
  store i32 %234, i32* %237, align 4
  %238 = load i32* %u1, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %class.Graph* %70, i32 0, i32 1
  %241 = load %"class.std::__1::list"** %240, align 8
  %242 = getelementptr inbounds %"class.std::__1::list"* %241, i64 %239
  store %"class.std::__1::list"* %242, %"class.std::__1::list"** %11, align 8
  %243 = load %"class.std::__1::list"** %11
  %244 = bitcast %"class.std::__1::list"* %243 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %244, %"class.std::__1::__list_imp"** %9, align 8
  %245 = load %"class.std::__1::__list_imp"** %9
  %246 = getelementptr inbounds %"class.std::__1::__list_imp"* %245, i32 0, i32 0
  %247 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %246, i32 0, i32 1
  %248 = load %"struct.std::__1::__list_node"** %247, align 8
  store %"class.std::__1::__list_iterator"* %8, %"class.std::__1::__list_iterator"** %6, align 8
  store %"struct.std::__1::__list_node"* %248, %"struct.std::__1::__list_node"** %7, align 8
  %249 = load %"class.std::__1::__list_iterator"** %6
  %250 = load %"struct.std::__1::__list_node"** %7, align 8
  store %"class.std::__1::__list_iterator"* %249, %"class.std::__1::__list_iterator"** %4, align 8
  store %"struct.std::__1::__list_node"* %250, %"struct.std::__1::__list_node"** %5, align 8
  %251 = load %"class.std::__1::__list_iterator"** %4
  %252 = getelementptr inbounds %"class.std::__1::__list_iterator"* %251, i32 0, i32 0
  %253 = load %"struct.std::__1::__list_node"** %5, align 8
  store %"struct.std::__1::__list_node"* %253, %"struct.std::__1::__list_node"** %252, align 8
  %254 = getelementptr %"class.std::__1::__list_iterator"* %8, i32 0, i32 0
  %255 = load %"struct.std::__1::__list_node"** %254
  %256 = getelementptr %"class.std::__1::__list_iterator"* %10, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %255, %"struct.std::__1::__list_node"** %256
  %257 = getelementptr %"class.std::__1::__list_iterator"* %10, i32 0, i32 0
  %258 = load %"struct.std::__1::__list_node"** %257
  %259 = getelementptr %"class.std::__1::__list_iterator"* %68, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %258, %"struct.std::__1::__list_node"** %259
  %260 = bitcast %"class.std::__1::__list_iterator"* %i to i8*
  %261 = bitcast %"class.std::__1::__list_iterator"* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %260, i8* %261, i64 8, i32 8, i1 false)
  br label %262

; <label>:262                                     ; preds = %320, %233
  %263 = load i32* %u1, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %class.Graph* %70, i32 0, i32 1
  %266 = load %"class.std::__1::list"** %265, align 8
  %267 = getelementptr inbounds %"class.std::__1::list"* %266, i64 %264
  store %"class.std::__1::list"* %267, %"class.std::__1::list"** %21, align 8
  %268 = load %"class.std::__1::list"** %21
  %269 = bitcast %"class.std::__1::list"* %268 to %"class.std::__1::__list_imp"*
  store %"class.std::__1::__list_imp"* %269, %"class.std::__1::__list_imp"** %19, align 8
  %270 = load %"class.std::__1::__list_imp"** %19
  %271 = getelementptr inbounds %"class.std::__1::__list_imp"* %270, i32 0, i32 0
  store %"struct.std::__1::__list_node_base"* %271, %"struct.std::__1::__list_node_base"** %17, align 8
  %272 = load %"struct.std::__1::__list_node_base"** %17, align 8
  store %"struct.std::__1::__list_node_base"* %272, %"struct.std::__1::__list_node_base"** %16, align 8
  %273 = load %"struct.std::__1::__list_node_base"** %16, align 8
  %274 = bitcast %"struct.std::__1::__list_node_base"* %273 to i8*
  %275 = bitcast i8* %274 to %"struct.std::__1::__list_node_base"*
  %276 = bitcast %"struct.std::__1::__list_node_base"* %275 to %"struct.std::__1::__list_node"*
  store %"class.std::__1::__list_iterator"* %18, %"class.std::__1::__list_iterator"** %14, align 8
  store %"struct.std::__1::__list_node"* %276, %"struct.std::__1::__list_node"** %15, align 8
  %277 = load %"class.std::__1::__list_iterator"** %14
  %278 = load %"struct.std::__1::__list_node"** %15, align 8
  store %"class.std::__1::__list_iterator"* %277, %"class.std::__1::__list_iterator"** %12, align 8
  store %"struct.std::__1::__list_node"* %278, %"struct.std::__1::__list_node"** %13, align 8
  %279 = load %"class.std::__1::__list_iterator"** %12
  %280 = getelementptr inbounds %"class.std::__1::__list_iterator"* %279, i32 0, i32 0
  %281 = load %"struct.std::__1::__list_node"** %13, align 8
  store %"struct.std::__1::__list_node"* %281, %"struct.std::__1::__list_node"** %280, align 8
  %282 = getelementptr %"class.std::__1::__list_iterator"* %18, i32 0, i32 0
  %283 = load %"struct.std::__1::__list_node"** %282
  %284 = getelementptr %"class.std::__1::__list_iterator"* %20, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %283, %"struct.std::__1::__list_node"** %284
  %285 = getelementptr %"class.std::__1::__list_iterator"* %20, i32 0, i32 0
  %286 = load %"struct.std::__1::__list_node"** %285
  %287 = getelementptr %"class.std::__1::__list_iterator"* %69, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %286, %"struct.std::__1::__list_node"** %287
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %24, align 8
  store %"class.std::__1::__list_iterator"* %69, %"class.std::__1::__list_iterator"** %25, align 8
  %288 = load %"class.std::__1::__list_iterator"** %24, align 8
  %289 = load %"class.std::__1::__list_iterator"** %25, align 8
  store %"class.std::__1::__list_iterator"* %288, %"class.std::__1::__list_iterator"** %22, align 8
  store %"class.std::__1::__list_iterator"* %289, %"class.std::__1::__list_iterator"** %23, align 8
  %290 = load %"class.std::__1::__list_iterator"** %22, align 8
  %291 = getelementptr inbounds %"class.std::__1::__list_iterator"* %290, i32 0, i32 0
  %292 = load %"struct.std::__1::__list_node"** %291, align 8
  %293 = load %"class.std::__1::__list_iterator"** %23, align 8
  %294 = getelementptr inbounds %"class.std::__1::__list_iterator"* %293, i32 0, i32 0
  %295 = load %"struct.std::__1::__list_node"** %294, align 8
  %296 = icmp eq %"struct.std::__1::__list_node"* %292, %295
  %297 = xor i1 %296, true
  br i1 %297, label %298, label %328

; <label>:298                                     ; preds = %262
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %26, align 8
  %299 = load %"class.std::__1::__list_iterator"** %26
  %300 = getelementptr inbounds %"class.std::__1::__list_iterator"* %299, i32 0, i32 0
  %301 = load %"struct.std::__1::__list_node"** %300, align 8
  %302 = getelementptr inbounds %"struct.std::__1::__list_node"* %301, i32 0, i32 1
  %303 = load i32* %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32* %75, i64 %304
  %306 = load i32* %305, align 4
  %307 = icmp ne i32 %306, -1
  br i1 %307, label %308, label %319

; <label>:308                                     ; preds = %298
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %27, align 8
  %309 = load %"class.std::__1::__list_iterator"** %27
  %310 = getelementptr inbounds %"class.std::__1::__list_iterator"* %309, i32 0, i32 0
  %311 = load %"struct.std::__1::__list_node"** %310, align 8
  %312 = getelementptr inbounds %"struct.std::__1::__list_node"* %311, i32 0, i32 1
  %313 = load i32* %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32* %75, i64 %314
  %316 = load i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8* %93, i64 %317
  store i8 0, i8* %318, align 1
  br label %319

; <label>:319                                     ; preds = %308, %298
  br label %320

; <label>:320                                     ; preds = %319
  store %"class.std::__1::__list_iterator"* %i, %"class.std::__1::__list_iterator"** %28, align 8
  %321 = load %"class.std::__1::__list_iterator"** %28
  %322 = getelementptr inbounds %"class.std::__1::__list_iterator"* %321, i32 0, i32 0
  %323 = load %"struct.std::__1::__list_node"** %322, align 8
  %324 = bitcast %"struct.std::__1::__list_node"* %323 to %"struct.std::__1::__list_node_base"*
  %325 = getelementptr inbounds %"struct.std::__1::__list_node_base"* %324, i32 0, i32 1
  %326 = load %"struct.std::__1::__list_node"** %325, align 8
  %327 = getelementptr inbounds %"class.std::__1::__list_iterator"* %321, i32 0, i32 0
  store %"struct.std::__1::__list_node"* %326, %"struct.std::__1::__list_node"** %327, align 8
  br label %262

; <label>:328                                     ; preds = %262
  br label %329

; <label>:329                                     ; preds = %328
  %330 = load i32* %u1, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %u1, align 4
  br label %107

; <label>:332                                     ; preds = %107
  store i32 0, i32* %u3, align 4
  br label %333

; <label>:333                                     ; preds = %351, %332
  %334 = load i32* %u3, align 4
  %335 = getelementptr inbounds %class.Graph* %70, i32 0, i32 0
  %336 = load i32* %335, align 4
  %337 = icmp slt i32 %334, %336
  br i1 %337, label %338, label %354

; <label>:338                                     ; preds = %333
  %339 = call %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  %340 = load i32* %u3, align 4
  %341 = call %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %339, i32 %340)
  %342 = call %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* %341, i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0))
  %343 = load i32* %u3, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32* %75, i64 %344
  %346 = load i32* %345, align 4
  %347 = call %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %342, i32 %346)
  store %"class.std::__1::basic_ostream"* %347, %"class.std::__1::basic_ostream"** %51, align 8
  store %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)* @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_, %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)** %52, align 8
  %348 = load %"class.std::__1::basic_ostream"** %51
  %349 = load %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)** %52, align 8
  %350 = call %"class.std::__1::basic_ostream"* %349(%"class.std::__1::basic_ostream"* %348)
  br label %351

; <label>:351                                     ; preds = %338
  %352 = load i32* %u3, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %u3, align 4
  br label %333

; <label>:354                                     ; preds = %333
  %355 = load i8** %65
  call void @llvm.stackrestore(i8* %355)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
  call void @__clang_call_terminate(i8* %143) #10
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
  %192 = call i8* @__cxa_begin_catch(i8* %191) #1
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
  call void @__clang_call_terminate(i8* %217) #10
  unreachable
}

declare %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #2

; Function Attrs: alwaysinline inlinehint ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_ostream"* @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%"class.std::__1::basic_ostream"* %__os) #3 {
  %1 = alloca %"class.std::__1::ctype"*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %"class.std::__1::locale"*, align 8
  %4 = alloca %"class.std::__1::basic_ios"*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::__1::locale", align 8
  %7 = alloca i8*
  %8 = alloca i32
  %9 = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %9, align 8
  %10 = load %"class.std::__1::basic_ostream"** %9, align 8
  %11 = load %"class.std::__1::basic_ostream"** %9, align 8
  %12 = bitcast %"class.std::__1::basic_ostream"* %11 to i8**
  %13 = load i8** %12
  %14 = getelementptr i8* %13, i64 -24
  %15 = bitcast i8* %14 to i64*
  %16 = load i64* %15
  %17 = bitcast %"class.std::__1::basic_ostream"* %11 to i8*
  %18 = getelementptr inbounds i8* %17, i64 %16
  %19 = bitcast i8* %18 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %19, %"class.std::__1::basic_ios"** %4, align 8
  store i8 10, i8* %5, align 1
  %20 = load %"class.std::__1::basic_ios"** %4
  %21 = bitcast %"class.std::__1::basic_ios"* %20 to %"class.std::__1::ios_base"*
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %6, %"class.std::__1::ios_base"* %21)
  store %"class.std::__1::locale"* %6, %"class.std::__1::locale"** %3, align 8
  %22 = load %"class.std::__1::locale"** %3, align 8
  %23 = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %22, %"class.std::__1::locale::id"* @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i unwind label %33

_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i: ; preds = %0
  %24 = bitcast %"class.std::__1::locale::facet"* %23 to %"class.std::__1::ctype"*
  %25 = load i8* %5, align 1
  store %"class.std::__1::ctype"* %24, %"class.std::__1::ctype"** %1, align 8
  store i8 %25, i8* %2, align 1
  %26 = load %"class.std::__1::ctype"** %1
  %27 = bitcast %"class.std::__1::ctype"* %26 to i8 (%"class.std::__1::ctype"*, i8)***
  %28 = load i8 (%"class.std::__1::ctype"*, i8)*** %27
  %29 = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)** %28, i64 7
  %30 = load i8 (%"class.std::__1::ctype"*, i8)** %29
  %31 = load i8* %2, align 1
  %32 = invoke signext i8 %30(%"class.std::__1::ctype"* %26, i8 signext %31)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit unwind label %33

; <label>:33                                      ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i, %0
  %34 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %7
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %8
  invoke void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %6)
          to label %37 unwind label %42

; <label>:37                                      ; preds = %33
  %38 = load i8** %7
  %39 = load i32* %8
  %40 = insertvalue { i8*, i32 } undef, i8* %38, 0
  %41 = insertvalue { i8*, i32 } %40, i32 %39, 1
  resume { i8*, i32 } %41

; <label>:42                                      ; preds = %33
  %43 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %44 = extractvalue { i8*, i32 } %43, 0
  call void @__clang_call_terminate(i8* %44) #10
  unreachable

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit: ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %6)
  %45 = call %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(%"class.std::__1::basic_ostream"* %10, i8 signext %32)
  %46 = load %"class.std::__1::basic_ostream"** %9, align 8
  %47 = call %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(%"class.std::__1::basic_ostream"* %46)
  %48 = load %"class.std::__1::basic_ostream"** %9, align 8
  ret %"class.std::__1::basic_ostream"* %48
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %g1 = alloca %class.Graph, align 8
  %2 = alloca i8*
  %3 = alloca i32
  %g2 = alloca %class.Graph, align 8
  %4 = alloca i32
  store i32 0, i32* %1
  call void @_ZN5GraphC1Ei(%class.Graph* %g1, i32 5)
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 0, i32 1)
          to label %5 unwind label %24

; <label>:5                                       ; preds = %0
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 0, i32 2)
          to label %6 unwind label %24

; <label>:6                                       ; preds = %5
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 1, i32 2)
          to label %7 unwind label %24

; <label>:7                                       ; preds = %6
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 1, i32 3)
          to label %8 unwind label %24

; <label>:8                                       ; preds = %7
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 2, i32 3)
          to label %9 unwind label %24

; <label>:9                                       ; preds = %8
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g1, i32 3, i32 4)
          to label %10 unwind label %24

; <label>:10                                      ; preds = %9
  %11 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i8* getelementptr inbounds ([22 x i8]* @.str2, i32 0, i32 0))
          to label %12 unwind label %24

; <label>:12                                      ; preds = %10
  invoke void @_ZN5Graph14greedyColoringEv(%class.Graph* %g1)
          to label %13 unwind label %24

; <label>:13                                      ; preds = %12
  invoke void @_ZN5GraphC1Ei(%class.Graph* %g2, i32 5)
          to label %14 unwind label %24

; <label>:14                                      ; preds = %13
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 0, i32 1)
          to label %15 unwind label %28

; <label>:15                                      ; preds = %14
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 0, i32 2)
          to label %16 unwind label %28

; <label>:16                                      ; preds = %15
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 1, i32 2)
          to label %17 unwind label %28

; <label>:17                                      ; preds = %16
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 1, i32 4)
          to label %18 unwind label %28

; <label>:18                                      ; preds = %17
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 2, i32 4)
          to label %19 unwind label %28

; <label>:19                                      ; preds = %18
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* %g2, i32 4, i32 3)
          to label %20 unwind label %28

; <label>:20                                      ; preds = %19
  %21 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0))
          to label %22 unwind label %28

; <label>:22                                      ; preds = %20
  invoke void @_ZN5Graph14greedyColoringEv(%class.Graph* %g2)
          to label %23 unwind label %28

; <label>:23                                      ; preds = %22
  store i32 0, i32* %1
  store i32 1, i32* %4
  invoke void @_ZN5GraphD1Ev(%class.Graph* %g2)
          to label %32 unwind label %24

; <label>:24                                      ; preds = %23, %13, %12, %10, %9, %8, %7, %6, %5, %0
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %2
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %3
  br label %35

; <label>:28                                      ; preds = %22, %20, %19, %18, %17, %16, %15, %14
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %2
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %3
  invoke void @_ZN5GraphD1Ev(%class.Graph* %g2)
          to label %34 unwind label %42

; <label>:32                                      ; preds = %23
  call void @_ZN5GraphD1Ev(%class.Graph* %g1)
  %33 = load i32* %1
  ret i32 %33

; <label>:34                                      ; preds = %28
  br label %35

; <label>:35                                      ; preds = %34, %24
  invoke void @_ZN5GraphD1Ev(%class.Graph* %g1)
          to label %36 unwind label %42

; <label>:36                                      ; preds = %35
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i8** %2
  %39 = load i32* %3
  %40 = insertvalue { i8*, i32 } undef, i8* %38, 0
  %41 = insertvalue { i8*, i32 } %40, i32 %39, 1
  resume { i8*, i32 } %41

; <label>:42                                      ; preds = %35, %28
  %43 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %44 = extractvalue { i8*, i32 } %43, 0
  call void @__clang_call_terminate(i8* %44) #10
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN5GraphC1Ei(%class.Graph* %this, i32 %V) unnamed_addr #0 align 2 {
  %1 = alloca %class.Graph*, align 8
  %2 = alloca i32, align 4
  store %class.Graph* %this, %class.Graph** %1, align 8
  store i32 %V, i32* %2, align 4
  %3 = load %class.Graph** %1
  %4 = load i32* %2, align 4
  call void @_ZN5GraphC2Ei(%class.Graph* %3, i32 %4)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN5GraphD1Ev(%class.Graph* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.Graph*, align 8
  store %class.Graph* %this, %class.Graph** %1, align 8
  %2 = load %class.Graph** %1
  call void @_ZN5GraphD2Ev(%class.Graph* %2)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #10
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(%"class.std::__1::basic_ostream"*, i8 signext) #2

declare %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(%"class.std::__1::basic_ostream"*) #2

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #2

declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) #2

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"*) #2

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"*) #2

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* %__iob, i8 signext %__fl) #0 {
  %1 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %2 = alloca %"class.std::__1::allocator.2"*, align 8
  %3 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %4 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %5 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %6 = alloca %"class.std::__1::basic_string"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::__1::basic_string"*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %14 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %15 = alloca %"class.std::__1::basic_string"*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %19 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %20 = alloca %"class.std::__1::basic_string"*, align 8
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
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
  store %"class.std::__1::__compressed_pair.0"* %154, %"class.std::__1::__compressed_pair.0"** %5, align 8
  %155 = load %"class.std::__1::__compressed_pair.0"** %5
  store %"class.std::__1::__compressed_pair.0"* %155, %"class.std::__1::__compressed_pair.0"** %4, align 8
  %156 = load %"class.std::__1::__compressed_pair.0"** %4
  %157 = bitcast %"class.std::__1::__compressed_pair.0"* %156 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %157, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %3, align 8
  %158 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %3
  %159 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %158 to %"class.std::__1::allocator.2"*
  store %"class.std::__1::allocator.2"* %159, %"class.std::__1::allocator.2"** %2, align 8
  %160 = load %"class.std::__1::allocator.2"** %2
  %161 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %158, i32 0, i32 0
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
  store %"class.std::__1::__compressed_pair.0"* %169, %"class.std::__1::__compressed_pair.0"** %22, align 8
  %170 = load %"class.std::__1::__compressed_pair.0"** %22
  %171 = bitcast %"class.std::__1::__compressed_pair.0"* %170 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %171, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %21, align 8
  %172 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %21
  %173 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %172, i32 0, i32 0
  %174 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %173, i32 0, i32 0
  %175 = bitcast %union.anon* %174 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %176 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %175, i32 0, i32 0
  %177 = bitcast %union.anon.4* %176 to i8*
  %178 = load i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

; <label>:182                                     ; preds = %146
  store %"class.std::__1::basic_string"* %167, %"class.std::__1::basic_string"** %15, align 8
  %183 = load %"class.std::__1::basic_string"** %15
  %184 = getelementptr inbounds %"class.std::__1::basic_string"* %183, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.0"* %184, %"class.std::__1::__compressed_pair.0"** %14, align 8
  %185 = load %"class.std::__1::__compressed_pair.0"** %14
  %186 = bitcast %"class.std::__1::__compressed_pair.0"* %185 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %186, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %13, align 8
  %187 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %13
  %188 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %187, i32 0, i32 0
  %189 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %188, i32 0, i32 0
  %190 = bitcast %union.anon* %189 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %191 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %190, i32 0, i32 2
  %192 = load i8** %191, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

; <label>:193                                     ; preds = %146
  store %"class.std::__1::basic_string"* %167, %"class.std::__1::basic_string"** %20, align 8
  %194 = load %"class.std::__1::basic_string"** %20
  %195 = getelementptr inbounds %"class.std::__1::basic_string"* %194, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.0"* %195, %"class.std::__1::__compressed_pair.0"** %19, align 8
  %196 = load %"class.std::__1::__compressed_pair.0"** %19
  %197 = bitcast %"class.std::__1::__compressed_pair.0"* %196 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %197, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %18, align 8
  %198 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %18
  %199 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %198, i32 0, i32 0
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
  call void @__clang_call_terminate(i8* %298) #10
  unreachable

; <label>:299                                     ; preds = %239
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) #2

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #2

declare void @__cxa_end_catch()

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #2

declare void @__cxa_call_unexpected(i8*)

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) #2

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #2

declare i64 @strlen(i8*) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #6

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN5GraphD2Ev(%class.Graph* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.Graph*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.Graph* %this, %class.Graph** %1, align 8
  %4 = load %class.Graph** %1
  %5 = getelementptr inbounds %class.Graph* %4, i32 0, i32 1
  %6 = load %"class.std::__1::list"** %5, align 8
  %7 = icmp eq %"class.std::__1::list"* %6, null
  br i1 %7, label %21, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast %"class.std::__1::list"* %6 to i8*
  %10 = getelementptr inbounds i8* %9, i64 -8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64* %11
  %13 = getelementptr inbounds %"class.std::__1::list"* %6, i64 %12
  %14 = icmp eq %"class.std::__1::list"* %6, %13
  br i1 %14, label %20, label %15

; <label>:15                                      ; preds = %18, %8
  %16 = phi %"class.std::__1::list"* [ %13, %8 ], [ %17, %18 ]
  %17 = getelementptr inbounds %"class.std::__1::list"* %16, i64 -1
  invoke void @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(%"class.std::__1::list"* %17)
          to label %18 unwind label %22

; <label>:18                                      ; preds = %15
  %19 = icmp eq %"class.std::__1::list"* %17, %6
  br i1 %19, label %20, label %15

; <label>:20                                      ; preds = %18, %8
  call void @_ZdaPv(i8* %10) #11
  br label %21

; <label>:21                                      ; preds = %20, %0
  ret void

; <label>:22                                      ; preds = %15
  %23 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %2
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %3
  %26 = icmp eq %"class.std::__1::list"* %6, %17
  br i1 %26, label %32, label %27

; <label>:27                                      ; preds = %30, %22
  %28 = phi %"class.std::__1::list"* [ %17, %22 ], [ %29, %30 ]
  %29 = getelementptr inbounds %"class.std::__1::list"* %28, i64 -1
  invoke void @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(%"class.std::__1::list"* %29)
          to label %30 unwind label %38

; <label>:30                                      ; preds = %27
  %31 = icmp eq %"class.std::__1::list"* %29, %6
  br i1 %31, label %32, label %27

; <label>:32                                      ; preds = %30, %22
  call void @_ZdaPv(i8* %10) #11
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i8** %2
  %35 = load i32* %3
  %36 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %37 = insertvalue { i8*, i32 } %36, i32 %35, 1
  resume { i8*, i32 } %37

; <label>:38                                      ; preds = %27
  %39 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %40 = extractvalue { i8*, i32 } %39, 0
  call void @__clang_call_terminate(i8* %40) #10
  unreachable
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(%"class.std::__1::list"* %this) unnamed_addr #7 align 2 {
  %1 = alloca %"class.std::__1::list"*, align 8
  store %"class.std::__1::list"* %this, %"class.std::__1::list"** %1, align 8
  %2 = load %"class.std::__1::list"** %1
  call void @_ZNSt3__14listIiNS_9allocatorIiEEED2Ev(%"class.std::__1::list"* %2)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__14listIiNS_9allocatorIiEEED2Ev(%"class.std::__1::list"* %this) unnamed_addr #7 align 2 {
  %1 = alloca %"class.std::__1::list"*, align 8
  store %"class.std::__1::list"* %this, %"class.std::__1::list"** %1, align 8
  %2 = load %"class.std::__1::list"** %1
  %3 = bitcast %"class.std::__1::list"* %2 to %"class.std::__1::__list_imp"*
  call void @_ZNSt3__110__list_impIiNS_9allocatorIiEEED2Ev(%"class.std::__1::__list_imp"* %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__110__list_impIiNS_9allocatorIiEEED2Ev(%"class.std::__1::__list_imp"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"class.std::__1::__list_imp"*, align 8
  store %"class.std::__1::__list_imp"* %this, %"class.std::__1::__list_imp"** %1, align 8
  %2 = load %"class.std::__1::__list_imp"** %1
  call void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE5clearEv(%"class.std::__1::__list_imp"* %2) #1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE5clearEv(%"class.std::__1::__list_imp"* %this) #8 align 2 {
  %1 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %2 = alloca %"struct.std::__1::__list_node_base"*, align 8
  %3 = alloca %"struct.std::__1::__list_node"*, align 8
  %4 = alloca %"struct.std::__1::__list_node"*, align 8
  %5 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %6 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %7 = alloca %"class.std::__1::__list_imp"*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %"class.std::__1::allocator"*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %"class.std::__1::allocator"*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %"struct.std::__1::integral_constant", align 1
  %14 = alloca %"struct.std::__1::__has_destroy", align 1
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
  store i32* %100, i32** %8, align 8
  %101 = load i32** %8, align 8
  %102 = bitcast i32* %101 to i8*
  %103 = bitcast i8* %102 to i32*
  store %"class.std::__1::allocator"* %98, %"class.std::__1::allocator"** %11, align 8
  store i32* %103, i32** %12, align 8
  %104 = bitcast %"struct.std::__1::__has_destroy"* %14 to %"struct.std::__1::integral_constant"*
  %105 = load %"class.std::__1::allocator"** %11, align 8
  %106 = load i32** %12, align 8
  store %"class.std::__1::allocator"* %105, %"class.std::__1::allocator"** %9, align 8
  store i32* %106, i32** %10, align 8
  %107 = load i32** %10, align 8
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
  call void @_ZdlPv(i8* %116) #1
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

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN5GraphC2Ei(%class.Graph* %this, i32 %V) unnamed_addr #0 align 2 {
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
  %36 = call noalias i8* @_Znam(i64 %35) #13
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
  invoke void @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(%"class.std::__1::list"* %89)
          to label %90 unwind label %98

; <label>:90                                      ; preds = %87
  %91 = icmp eq %"class.std::__1::list"* %89, %39
  br i1 %91, label %92, label %87

; <label>:92                                      ; preds = %90, %82
  call void @_ZdaPv(i8* %36) #11
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
  call void @__clang_call_terminate(i8* %100) #10
  unreachable
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #6

attributes #0 = { ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline inlinehint ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 5.1 (clang-503.0.40) (based on LLVM 3.4svn)"}
