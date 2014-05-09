; ModuleID = 'source/convex-hull.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.Point = type { i32, i32 }
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios" }
%"class.std::__1::basic_ios" = type { %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type { %"struct.std::__1::once_flag", i32 }
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::stack" = type { %"class.std::__1::deque" }
%"class.std::__1::deque" = type { %"class.std::__1::__deque_base" }
%"class.std::__1::__deque_base" = type { %"struct.std::__1::__split_buffer", i64, %"class.std::__1::__compressed_pair.0" }
%"struct.std::__1::__split_buffer" = type { %struct.Point**, %struct.Point**, %struct.Point**, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"class.std::__1::__libcpp_compressed_pair_imp" }
%"class.std::__1::__libcpp_compressed_pair_imp" = type { %struct.Point** }
%"class.std::__1::__compressed_pair.0" = type { %"class.std::__1::__libcpp_compressed_pair_imp.1" }
%"class.std::__1::__libcpp_compressed_pair_imp.1" = type { i64 }
%"class.std::__1::allocator.2" = type { i8 }
%"struct.std::__1::nullptr_t" = type { i8* }
%"class.std::__1::allocator" = type { i8 }
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
%"class.std::__1::allocator.6" = type { i8 }
%"class.std::__1::__libcpp_compressed_pair_imp.5" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::__compressed_pair.4" = type { %"class.std::__1::__libcpp_compressed_pair_imp.5" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.4" }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.8, [23 x i8] }
%union.anon.8 = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::__has_destroy" = type { i8 }
%"class.std::__1::__deque_iterator" = type { %struct.Point**, %struct.Point* }
%"struct.std::__1::__split_buffer.9" = type { %struct.Point**, %struct.Point**, %struct.Point**, %"class.std::__1::__compressed_pair.10" }
%"class.std::__1::__compressed_pair.10" = type { %"class.std::__1::__libcpp_compressed_pair_imp.11" }
%"class.std::__1::__libcpp_compressed_pair_imp.11" = type { %struct.Point**, %"class.std::__1::allocator"* }
%"class.std::__1::move_iterator" = type { %struct.Point** }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::integral_constant.12" = type { i8 }
%"struct.std::__1::is_trivially_destructible" = type { i8 }
%"struct.std::__1::__has_destroy.13" = type { i8 }

@p0 = global %struct.Point zeroinitializer, align 4
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream"
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZZ4mainE6points = private unnamed_addr constant [8 x %struct.Point] [%struct.Point { i32 0, i32 3 }, %struct.Point { i32 1, i32 1 }, %struct.Point { i32 2, i32 2 }, %struct.Point { i32 4, i32 4 }, %struct.Point zeroinitializer, %struct.Point { i32 1, i32 2 }, %struct.Point { i32 3, i32 1 }, %struct.Point { i32 3, i32 3 }], align 16
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id"

; Function Attrs: ssp uwtable
define i64 @_Z9nextToTopRNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEEE(%"class.std::__1::stack"* %S) #0 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %3 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %4 = alloca %"class.std::__1::__deque_base"*, align 8
  %5 = alloca %"class.std::__1::deque"*, align 8
  %__p.i.i1 = alloca i64, align 8
  %6 = alloca %"class.std::__1::stack"*, align 8
  %7 = alloca %"class.std::__1::stack"*, align 8
  %8 = alloca %"class.std::__1::stack"*, align 8
  %9 = alloca %struct.Point*, align 8
  %10 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %11 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %12 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %13 = alloca %"class.std::__1::__deque_base"*, align 8
  %14 = alloca %"class.std::__1::deque"*, align 8
  %__p.i.i = alloca i64, align 8
  %15 = alloca %"class.std::__1::stack"*, align 8
  %16 = alloca %struct.Point, align 4
  %17 = alloca %"class.std::__1::stack"*, align 8
  %p = alloca %struct.Point, align 4
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %17, align 8
  %18 = load %"class.std::__1::stack"** %17, align 8
  store %"class.std::__1::stack"* %18, %"class.std::__1::stack"** %15, align 8
  %19 = load %"class.std::__1::stack"** %15
  %20 = getelementptr inbounds %"class.std::__1::stack"* %19, i32 0, i32 0
  store %"class.std::__1::deque"* %20, %"class.std::__1::deque"** %14, align 8
  %21 = load %"class.std::__1::deque"** %14
  %22 = bitcast %"class.std::__1::deque"* %21 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %22, %"class.std::__1::__deque_base"** %13, align 8
  %23 = load %"class.std::__1::__deque_base"** %13
  %24 = getelementptr inbounds %"class.std::__1::__deque_base"* %23, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %24, %"class.std::__1::__compressed_pair.0"** %12, align 8
  %25 = load %"class.std::__1::__compressed_pair.0"** %12
  %26 = bitcast %"class.std::__1::__compressed_pair.0"* %25 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %26, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %11, align 8
  %27 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %11
  %28 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %27, i32 0, i32 0
  %29 = load i64* %28
  %30 = bitcast %"class.std::__1::deque"* %21 to %"class.std::__1::__deque_base"*
  %31 = getelementptr inbounds %"class.std::__1::__deque_base"* %30, i32 0, i32 1
  %32 = load i64* %31, align 8
  %33 = add i64 %29, %32
  %34 = sub i64 %33, 1
  store i64 %34, i64* %__p.i.i, align 8
  %35 = bitcast %"class.std::__1::deque"* %21 to %"class.std::__1::__deque_base"*
  %36 = getelementptr inbounds %"class.std::__1::__deque_base"* %35, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %36, %"struct.std::__1::__split_buffer"** %10, align 8
  %37 = load %"struct.std::__1::__split_buffer"** %10
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %37, i32 0, i32 1
  %39 = load %struct.Point*** %38, align 8
  %40 = load i64* %__p.i.i, align 8
  %41 = udiv i64 %40, 512
  %42 = getelementptr inbounds %struct.Point** %39, i64 %41
  %43 = load %struct.Point** %42, align 8
  %44 = load i64* %__p.i.i, align 8
  %45 = urem i64 %44, 512
  %46 = getelementptr inbounds %struct.Point* %43, i64 %45
  %47 = bitcast %struct.Point* %p to i8*
  %48 = bitcast %struct.Point* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 8, i32 4, i1 false)
  %49 = load %"class.std::__1::stack"** %17, align 8
  store %"class.std::__1::stack"* %49, %"class.std::__1::stack"** %7, align 8
  %50 = load %"class.std::__1::stack"** %7
  %51 = getelementptr inbounds %"class.std::__1::stack"* %50, i32 0, i32 0
  call void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE8pop_backEv(%"class.std::__1::deque"* %51)
  %52 = load %"class.std::__1::stack"** %17, align 8
  store %"class.std::__1::stack"* %52, %"class.std::__1::stack"** %6, align 8
  %53 = load %"class.std::__1::stack"** %6
  %54 = getelementptr inbounds %"class.std::__1::stack"* %53, i32 0, i32 0
  store %"class.std::__1::deque"* %54, %"class.std::__1::deque"** %5, align 8
  %55 = load %"class.std::__1::deque"** %5
  %56 = bitcast %"class.std::__1::deque"* %55 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %56, %"class.std::__1::__deque_base"** %4, align 8
  %57 = load %"class.std::__1::__deque_base"** %4
  %58 = getelementptr inbounds %"class.std::__1::__deque_base"* %57, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %58, %"class.std::__1::__compressed_pair.0"** %3, align 8
  %59 = load %"class.std::__1::__compressed_pair.0"** %3
  %60 = bitcast %"class.std::__1::__compressed_pair.0"* %59 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %60, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %2, align 8
  %61 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %2
  %62 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %61, i32 0, i32 0
  %63 = load i64* %62
  %64 = bitcast %"class.std::__1::deque"* %55 to %"class.std::__1::__deque_base"*
  %65 = getelementptr inbounds %"class.std::__1::__deque_base"* %64, i32 0, i32 1
  %66 = load i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = sub i64 %67, 1
  store i64 %68, i64* %__p.i.i1, align 8
  %69 = bitcast %"class.std::__1::deque"* %55 to %"class.std::__1::__deque_base"*
  %70 = getelementptr inbounds %"class.std::__1::__deque_base"* %69, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %70, %"struct.std::__1::__split_buffer"** %1, align 8
  %71 = load %"struct.std::__1::__split_buffer"** %1
  %72 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %71, i32 0, i32 1
  %73 = load %struct.Point*** %72, align 8
  %74 = load i64* %__p.i.i1, align 8
  %75 = udiv i64 %74, 512
  %76 = getelementptr inbounds %struct.Point** %73, i64 %75
  %77 = load %struct.Point** %76, align 8
  %78 = load i64* %__p.i.i1, align 8
  %79 = urem i64 %78, 512
  %80 = getelementptr inbounds %struct.Point* %77, i64 %79
  %81 = bitcast %struct.Point* %16 to i8*
  %82 = bitcast %struct.Point* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 8, i32 4, i1 false)
  %83 = load %"class.std::__1::stack"** %17, align 8
  store %"class.std::__1::stack"* %83, %"class.std::__1::stack"** %8, align 8
  store %struct.Point* %p, %struct.Point** %9, align 8
  %84 = load %"class.std::__1::stack"** %8
  %85 = getelementptr inbounds %"class.std::__1::stack"* %84, i32 0, i32 0
  %86 = load %struct.Point** %9, align 8
  call void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::deque"* %85, %struct.Point* %86)
  %87 = bitcast %struct.Point* %16 to i64*
  %88 = load i64* %87, align 1
  ret i64 %88
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind ssp uwtable
define void @_Z4swapR5PointS0_(%struct.Point* %p1, %struct.Point* %p2) #2 {
  %1 = alloca %struct.Point*, align 8
  %2 = alloca %struct.Point*, align 8
  %temp = alloca %struct.Point, align 4
  store %struct.Point* %p1, %struct.Point** %1, align 8
  store %struct.Point* %p2, %struct.Point** %2, align 8
  %3 = load %struct.Point** %1, align 8
  %4 = bitcast %struct.Point* %temp to i8*
  %5 = bitcast %struct.Point* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false)
  %6 = load %struct.Point** %1, align 8
  %7 = load %struct.Point** %2, align 8
  %8 = bitcast %struct.Point* %6 to i8*
  %9 = bitcast %struct.Point* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false)
  %10 = load %struct.Point** %2, align 8
  %11 = bitcast %struct.Point* %10 to i8*
  %12 = bitcast %struct.Point* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @_Z4dist5PointS_(i64 %p1.coerce, i64 %p2.coerce) #2 {
  %p1 = alloca %struct.Point, align 8
  %p2 = alloca %struct.Point, align 8
  %1 = bitcast %struct.Point* %p1 to i64*
  store i64 %p1.coerce, i64* %1, align 1
  %2 = bitcast %struct.Point* %p2 to i64*
  store i64 %p2.coerce, i64* %2, align 1
  %3 = getelementptr inbounds %struct.Point* %p1, i32 0, i32 0
  %4 = load i32* %3, align 4
  %5 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = sub nsw i32 %4, %6
  %8 = getelementptr inbounds %struct.Point* %p1, i32 0, i32 0
  %9 = load i32* %8, align 4
  %10 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 0
  %11 = load i32* %10, align 4
  %12 = sub nsw i32 %9, %11
  %13 = mul nsw i32 %7, %12
  %14 = getelementptr inbounds %struct.Point* %p1, i32 0, i32 1
  %15 = load i32* %14, align 4
  %16 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 1
  %17 = load i32* %16, align 4
  %18 = sub nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.Point* %p1, i32 0, i32 1
  %20 = load i32* %19, align 4
  %21 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 1
  %22 = load i32* %21, align 4
  %23 = sub nsw i32 %20, %22
  %24 = mul nsw i32 %18, %23
  %25 = add nsw i32 %13, %24
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define i32 @_Z11orientation5PointS_S_(i64 %p.coerce, i64 %q.coerce, i64 %r.coerce) #2 {
  %1 = alloca i32, align 4
  %p = alloca %struct.Point, align 8
  %q = alloca %struct.Point, align 8
  %r = alloca %struct.Point, align 8
  %val = alloca i32, align 4
  %2 = bitcast %struct.Point* %p to i64*
  store i64 %p.coerce, i64* %2, align 1
  %3 = bitcast %struct.Point* %q to i64*
  store i64 %q.coerce, i64* %3, align 1
  %4 = bitcast %struct.Point* %r to i64*
  store i64 %r.coerce, i64* %4, align 1
  %5 = getelementptr inbounds %struct.Point* %q, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = getelementptr inbounds %struct.Point* %p, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = sub nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.Point* %r, i32 0, i32 0
  %11 = load i32* %10, align 4
  %12 = getelementptr inbounds %struct.Point* %q, i32 0, i32 0
  %13 = load i32* %12, align 4
  %14 = sub nsw i32 %11, %13
  %15 = mul nsw i32 %9, %14
  %16 = getelementptr inbounds %struct.Point* %q, i32 0, i32 0
  %17 = load i32* %16, align 4
  %18 = getelementptr inbounds %struct.Point* %p, i32 0, i32 0
  %19 = load i32* %18, align 4
  %20 = sub nsw i32 %17, %19
  %21 = getelementptr inbounds %struct.Point* %r, i32 0, i32 1
  %22 = load i32* %21, align 4
  %23 = getelementptr inbounds %struct.Point* %q, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = sub nsw i32 %22, %24
  %26 = mul nsw i32 %20, %25
  %27 = sub nsw i32 %15, %26
  store i32 %27, i32* %val, align 4
  %28 = load i32* %val, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %0
  store i32 0, i32* %1
  br label %35

; <label>:31                                      ; preds = %0
  %32 = load i32* %val, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = select i1 %33, i32 1, i32 2
  store i32 %34, i32* %1
  br label %35

; <label>:35                                      ; preds = %31, %30
  %36 = load i32* %1
  ret i32 %36
}

; Function Attrs: nounwind ssp uwtable
define i32 @_Z7comparePKvS0_(i8* %vp1, i8* %vp2) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %p1 = alloca %struct.Point*, align 8
  %p2 = alloca %struct.Point*, align 8
  %o = alloca i32, align 4
  %4 = alloca %struct.Point, align 4
  %5 = alloca %struct.Point, align 4
  %6 = alloca %struct.Point, align 4
  %7 = alloca %struct.Point, align 4
  %8 = alloca %struct.Point, align 4
  %9 = alloca %struct.Point, align 4
  %10 = alloca %struct.Point, align 4
  store i8* %vp1, i8** %2, align 8
  store i8* %vp2, i8** %3, align 8
  %11 = load i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.Point*
  store %struct.Point* %12, %struct.Point** %p1, align 8
  %13 = load i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.Point*
  store %struct.Point* %14, %struct.Point** %p2, align 8
  %15 = bitcast %struct.Point* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.Point* @p0 to i8*), i64 8, i32 4, i1 false)
  %16 = load %struct.Point** %p1, align 8
  %17 = bitcast %struct.Point* %5 to i8*
  %18 = bitcast %struct.Point* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 4, i1 false)
  %19 = load %struct.Point** %p2, align 8
  %20 = bitcast %struct.Point* %6 to i8*
  %21 = bitcast %struct.Point* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 4, i1 false)
  %22 = bitcast %struct.Point* %4 to i64*
  %23 = load i64* %22, align 1
  %24 = bitcast %struct.Point* %5 to i64*
  %25 = load i64* %24, align 1
  %26 = bitcast %struct.Point* %6 to i64*
  %27 = load i64* %26, align 1
  %28 = call i32 @_Z11orientation5PointS_S_(i64 %23, i64 %25, i64 %27)
  store i32 %28, i32* %o, align 4
  %29 = load i32* %o, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

; <label>:31                                      ; preds = %0
  %32 = bitcast %struct.Point* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* bitcast (%struct.Point* @p0 to i8*), i64 8, i32 4, i1 false)
  %33 = load %struct.Point** %p2, align 8
  %34 = bitcast %struct.Point* %8 to i8*
  %35 = bitcast %struct.Point* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 8, i32 4, i1 false)
  %36 = bitcast %struct.Point* %7 to i64*
  %37 = load i64* %36, align 1
  %38 = bitcast %struct.Point* %8 to i64*
  %39 = load i64* %38, align 1
  %40 = call i32 @_Z4dist5PointS_(i64 %37, i64 %39)
  %41 = bitcast %struct.Point* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast (%struct.Point* @p0 to i8*), i64 8, i32 4, i1 false)
  %42 = load %struct.Point** %p1, align 8
  %43 = bitcast %struct.Point* %10 to i8*
  %44 = bitcast %struct.Point* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 4, i1 false)
  %45 = bitcast %struct.Point* %9 to i64*
  %46 = load i64* %45, align 1
  %47 = bitcast %struct.Point* %10 to i64*
  %48 = load i64* %47, align 1
  %49 = call i32 @_Z4dist5PointS_(i64 %46, i64 %48)
  %50 = icmp sge i32 %40, %49
  %51 = select i1 %50, i32 -1, i32 1
  store i32 %51, i32* %1
  br label %56

; <label>:52                                      ; preds = %0
  %53 = load i32* %o, align 4
  %54 = icmp eq i32 %53, 2
  %55 = select i1 %54, i32 -1, i32 1
  store i32 %55, i32* %1
  br label %56

; <label>:56                                      ; preds = %52, %31
  %57 = load i32* %1
  ret i32 %57
}

; Function Attrs: ssp uwtable
define void @_Z10convexHullP5Pointi(%struct.Point* %points, i32 %n) #0 {
  %1 = alloca %"class.std::__1::basic_ostream"*, align 8
  %2 = alloca %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %4 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %5 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %6 = alloca %"class.std::__1::__deque_base"*, align 8
  %7 = alloca %"class.std::__1::deque"*, align 8
  %__p.i.i6 = alloca i64, align 8
  %8 = alloca %"class.std::__1::stack"*, align 8
  %9 = alloca %"class.std::__1::stack"*, align 8
  %10 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %11 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %12 = alloca %"class.std::__1::__deque_base"*, align 8
  %13 = alloca %"class.std::__1::deque"*, align 8
  %14 = alloca %"class.std::__1::stack"*, align 8
  %15 = alloca %"class.std::__1::stack"*, align 8
  %16 = alloca %struct.Point*, align 8
  %17 = alloca %"class.std::__1::stack"*, align 8
  %18 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %19 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %20 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %21 = alloca %"class.std::__1::__deque_base"*, align 8
  %22 = alloca %"class.std::__1::deque"*, align 8
  %__p.i.i = alloca i64, align 8
  %23 = alloca %"class.std::__1::stack"*, align 8
  %24 = alloca %"class.std::__1::stack"*, align 8
  %25 = alloca %struct.Point*, align 8
  %26 = alloca %"class.std::__1::stack"*, align 8
  %27 = alloca %struct.Point*, align 8
  %28 = alloca %"class.std::__1::stack"*, align 8
  %29 = alloca %struct.Point*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca %"class.std::__1::allocator.2"*, align 8
  %32 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64*, align 8
  %35 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %36 = alloca i64, align 8
  %37 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %38 = alloca i64, align 8
  %39 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %40 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %41 = alloca i64, align 8
  %42 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %43 = alloca i64, align 8
  %44 = alloca %"struct.std::__1::nullptr_t", align 8
  %45 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %46 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %47 = alloca i64, align 8
  %48 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %49 = alloca i64, align 8
  %50 = alloca %"struct.std::__1::nullptr_t", align 8
  %51 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %52 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %53 = alloca i64, align 8
  %54 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %55 = alloca i64, align 8
  %56 = alloca %"struct.std::__1::nullptr_t", align 8
  %57 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %58 = alloca %struct.Point***, align 8
  %59 = alloca %"class.std::__1::allocator"*, align 8
  %60 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %61 = alloca %struct.Point**, align 8
  %62 = alloca %struct.Point***, align 8
  %63 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %64 = alloca %struct.Point**, align 8
  %65 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %66 = alloca %struct.Point**, align 8
  %67 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %68 = alloca i64, align 8
  %69 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %70 = alloca i64, align 8
  %71 = alloca %"struct.std::__1::nullptr_t", align 8
  %72 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %73 = alloca %"struct.std::__1::nullptr_t", align 8
  %74 = alloca %"struct.std::__1::nullptr_t", align 8
  %75 = alloca %"struct.std::__1::nullptr_t", align 8
  %76 = alloca %"struct.std::__1::nullptr_t", align 8
  %77 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %78 = alloca %"class.std::__1::__deque_base"*, align 8
  %79 = alloca i8*
  %80 = alloca i32
  %81 = alloca %"class.std::__1::deque"*, align 8
  %82 = alloca %"class.std::__1::deque"*, align 8
  %83 = alloca %"class.std::__1::stack"*, align 8
  %84 = alloca %"class.std::__1::stack"*, align 8
  %85 = alloca %struct.Point*, align 8
  %86 = alloca i32, align 4
  %ymin = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %S = alloca %"class.std::__1::stack", align 8
  %87 = alloca i8*
  %88 = alloca i32
  %i1 = alloca i32, align 4
  %89 = alloca %struct.Point, align 4
  %90 = alloca %struct.Point, align 4
  %91 = alloca %struct.Point, align 4
  %p = alloca %struct.Point, align 4
  store %struct.Point* %points, %struct.Point** %85, align 8
  store i32 %n, i32* %86, align 4
  %92 = load %struct.Point** %85, align 8
  %93 = getelementptr inbounds %struct.Point* %92, i64 0
  %94 = getelementptr inbounds %struct.Point* %93, i32 0, i32 1
  %95 = load i32* %94, align 4
  store i32 %95, i32* %ymin, align 4
  store i32 0, i32* %min, align 4
  store i32 1, i32* %i, align 4
  br label %96

; <label>:96                                      ; preds = %137, %0
  %97 = load i32* %i, align 4
  %98 = load i32* %86, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %140

; <label>:100                                     ; preds = %96
  %101 = load i32* %i, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.Point** %85, align 8
  %104 = getelementptr inbounds %struct.Point* %103, i64 %102
  %105 = getelementptr inbounds %struct.Point* %104, i32 0, i32 1
  %106 = load i32* %105, align 4
  store i32 %106, i32* %y, align 4
  %107 = load i32* %y, align 4
  %108 = load i32* %ymin, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %128, label %110

; <label>:110                                     ; preds = %100
  %111 = load i32* %ymin, align 4
  %112 = load i32* %y, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %136

; <label>:114                                     ; preds = %110
  %115 = load i32* %i, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.Point** %85, align 8
  %118 = getelementptr inbounds %struct.Point* %117, i64 %116
  %119 = getelementptr inbounds %struct.Point* %118, i32 0, i32 0
  %120 = load i32* %119, align 4
  %121 = load i32* %min, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.Point** %85, align 8
  %124 = getelementptr inbounds %struct.Point* %123, i64 %122
  %125 = getelementptr inbounds %struct.Point* %124, i32 0, i32 0
  %126 = load i32* %125, align 4
  %127 = icmp slt i32 %120, %126
  br i1 %127, label %128, label %136

; <label>:128                                     ; preds = %114, %100
  %129 = load i32* %i, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.Point** %85, align 8
  %132 = getelementptr inbounds %struct.Point* %131, i64 %130
  %133 = getelementptr inbounds %struct.Point* %132, i32 0, i32 1
  %134 = load i32* %133, align 4
  store i32 %134, i32* %ymin, align 4
  %135 = load i32* %i, align 4
  store i32 %135, i32* %min, align 4
  br label %136

; <label>:136                                     ; preds = %128, %114, %110
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load i32* %i, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %i, align 4
  br label %96

; <label>:140                                     ; preds = %96
  %141 = load %struct.Point** %85, align 8
  %142 = getelementptr inbounds %struct.Point* %141, i64 0
  %143 = load i32* %min, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.Point** %85, align 8
  %146 = getelementptr inbounds %struct.Point* %145, i64 %144
  call void @_Z4swapR5PointS0_(%struct.Point* %142, %struct.Point* %146)
  %147 = load %struct.Point** %85, align 8
  %148 = getelementptr inbounds %struct.Point* %147, i64 0
  %149 = bitcast %struct.Point* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Point* @p0 to i8*), i8* %149, i64 8, i32 4, i1 false)
  %150 = load %struct.Point** %85, align 8
  %151 = getelementptr inbounds %struct.Point* %150, i64 1
  %152 = bitcast %struct.Point* %151 to i8*
  %153 = load i32* %86, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  call void @qsort(i8* %152, i64 %155, i64 8, i32 (i8*, i8*)* @_Z7comparePKvS0_)
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %84, align 8
  %156 = load %"class.std::__1::stack"** %84
  store %"class.std::__1::stack"* %156, %"class.std::__1::stack"** %83, align 8
  %157 = load %"class.std::__1::stack"** %83
  %158 = getelementptr inbounds %"class.std::__1::stack"* %157, i32 0, i32 0
  store %"class.std::__1::deque"* %158, %"class.std::__1::deque"** %82, align 8
  %159 = load %"class.std::__1::deque"** %82
  store %"class.std::__1::deque"* %159, %"class.std::__1::deque"** %81, align 8
  %160 = load %"class.std::__1::deque"** %81
  %161 = bitcast %"class.std::__1::deque"* %160 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %161, %"class.std::__1::__deque_base"** %78, align 8
  %162 = load %"class.std::__1::__deque_base"** %78
  %163 = bitcast %"class.std::__1::__deque_base"* %162 to %"class.std::__1::__deque_base_common"*
  %164 = getelementptr inbounds %"class.std::__1::__deque_base"* %162, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %164, %"struct.std::__1::__split_buffer"** %77, align 8
  %165 = load %"struct.std::__1::__split_buffer"** %77
  store %"struct.std::__1::__split_buffer"* %165, %"struct.std::__1::__split_buffer"** %72, align 8
  %166 = load %"struct.std::__1::__split_buffer"** %72
  %167 = bitcast %"struct.std::__1::__split_buffer"* %166 to %"class.std::__1::__split_buffer_common"*
  %168 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %166, i32 0, i32 0
  store %"struct.std::__1::nullptr_t"* %71, %"struct.std::__1::nullptr_t"** %69, align 8
  store i64 -1, i64* %70, align 8
  %169 = load %"struct.std::__1::nullptr_t"** %69
  %170 = load i64* %70, align 8
  store %"struct.std::__1::nullptr_t"* %169, %"struct.std::__1::nullptr_t"** %67, align 8
  store i64 %170, i64* %68, align 8
  %171 = load %"struct.std::__1::nullptr_t"** %67
  %172 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %171, i32 0, i32 0
  store i8* null, i8** %172, align 8
  %173 = getelementptr %"struct.std::__1::nullptr_t"* %71, i32 0, i32 0
  %174 = load i8** %173
  %175 = getelementptr %"struct.std::__1::nullptr_t"* %73, i32 0, i32 0
  store i8* %174, i8** %175
  store %"struct.std::__1::nullptr_t"* %73, %"struct.std::__1::nullptr_t"** %39, align 8
  %176 = load %"struct.std::__1::nullptr_t"** %39
  store %struct.Point** null, %struct.Point*** %168, align 8
  %177 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %166, i32 0, i32 1
  store %"struct.std::__1::nullptr_t"* %44, %"struct.std::__1::nullptr_t"** %42, align 8
  store i64 -1, i64* %43, align 8
  %178 = load %"struct.std::__1::nullptr_t"** %42
  %179 = load i64* %43, align 8
  store %"struct.std::__1::nullptr_t"* %178, %"struct.std::__1::nullptr_t"** %40, align 8
  store i64 %179, i64* %41, align 8
  %180 = load %"struct.std::__1::nullptr_t"** %40
  %181 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %180, i32 0, i32 0
  store i8* null, i8** %181, align 8
  %182 = getelementptr %"struct.std::__1::nullptr_t"* %44, i32 0, i32 0
  %183 = load i8** %182
  %184 = getelementptr %"struct.std::__1::nullptr_t"* %74, i32 0, i32 0
  store i8* %183, i8** %184
  store %"struct.std::__1::nullptr_t"* %74, %"struct.std::__1::nullptr_t"** %45, align 8
  %185 = load %"struct.std::__1::nullptr_t"** %45
  store %struct.Point** null, %struct.Point*** %177, align 8
  %186 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %166, i32 0, i32 2
  store %"struct.std::__1::nullptr_t"* %50, %"struct.std::__1::nullptr_t"** %48, align 8
  store i64 -1, i64* %49, align 8
  %187 = load %"struct.std::__1::nullptr_t"** %48
  %188 = load i64* %49, align 8
  store %"struct.std::__1::nullptr_t"* %187, %"struct.std::__1::nullptr_t"** %46, align 8
  store i64 %188, i64* %47, align 8
  %189 = load %"struct.std::__1::nullptr_t"** %46
  %190 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %189, i32 0, i32 0
  store i8* null, i8** %190, align 8
  %191 = getelementptr %"struct.std::__1::nullptr_t"* %50, i32 0, i32 0
  %192 = load i8** %191
  %193 = getelementptr %"struct.std::__1::nullptr_t"* %75, i32 0, i32 0
  store i8* %192, i8** %193
  store %"struct.std::__1::nullptr_t"* %75, %"struct.std::__1::nullptr_t"** %51, align 8
  %194 = load %"struct.std::__1::nullptr_t"** %51
  store %struct.Point** null, %struct.Point*** %186, align 8
  %195 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %166, i32 0, i32 3
  store %"struct.std::__1::nullptr_t"* %56, %"struct.std::__1::nullptr_t"** %54, align 8
  store i64 -1, i64* %55, align 8
  %196 = load %"struct.std::__1::nullptr_t"** %54
  %197 = load i64* %55, align 8
  store %"struct.std::__1::nullptr_t"* %196, %"struct.std::__1::nullptr_t"** %52, align 8
  store i64 %197, i64* %53, align 8
  %198 = load %"struct.std::__1::nullptr_t"** %52
  %199 = getelementptr inbounds %"struct.std::__1::nullptr_t"* %198, i32 0, i32 0
  store i8* null, i8** %199, align 8
  %200 = getelementptr %"struct.std::__1::nullptr_t"* %56, i32 0, i32 0
  %201 = load i8** %200
  %202 = getelementptr %"struct.std::__1::nullptr_t"* %76, i32 0, i32 0
  store i8* %201, i8** %202
  store %"struct.std::__1::nullptr_t"* %76, %"struct.std::__1::nullptr_t"** %57, align 8
  %203 = load %"struct.std::__1::nullptr_t"** %57
  store %"class.std::__1::__compressed_pair"* %195, %"class.std::__1::__compressed_pair"** %65, align 8
  store %struct.Point** null, %struct.Point*** %66, align 8
  %204 = load %"class.std::__1::__compressed_pair"** %65
  %205 = load %struct.Point*** %66, align 8
  store %"class.std::__1::__compressed_pair"* %204, %"class.std::__1::__compressed_pair"** %63, align 8
  store %struct.Point** %205, %struct.Point*** %64, align 8
  %206 = load %"class.std::__1::__compressed_pair"** %63
  %207 = bitcast %"class.std::__1::__compressed_pair"* %206 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %struct.Point*** %64, %struct.Point**** %62, align 8
  %208 = load %struct.Point**** %62, align 8
  %209 = load %struct.Point*** %208
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %207, %"class.std::__1::__libcpp_compressed_pair_imp"** %60, align 8
  store %struct.Point** %209, %struct.Point*** %61, align 8
  %210 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %60
  %211 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %210 to %"class.std::__1::allocator"*
  store %"class.std::__1::allocator"* %211, %"class.std::__1::allocator"** %59, align 8
  %212 = load %"class.std::__1::allocator"** %59
  %213 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %210, i32 0, i32 0
  store %struct.Point*** %61, %struct.Point**** %58, align 8
  %214 = load %struct.Point**** %58, align 8
  %215 = load %struct.Point*** %214
  store %struct.Point** %215, %struct.Point*** %213, align 8
  %216 = getelementptr inbounds %"class.std::__1::__deque_base"* %162, i32 0, i32 1
  store i64 0, i64* %216, align 8
  %217 = getelementptr inbounds %"class.std::__1::__deque_base"* %162, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %217, %"class.std::__1::__compressed_pair.0"** %37, align 8
  store i64 0, i64* %38, align 8
  %218 = load %"class.std::__1::__compressed_pair.0"** %37
  %219 = load i64* %38, align 8
  store %"class.std::__1::__compressed_pair.0"* %218, %"class.std::__1::__compressed_pair.0"** %35, align 8
  store i64 %219, i64* %36, align 8
  %220 = load %"class.std::__1::__compressed_pair.0"** %35
  %221 = bitcast %"class.std::__1::__compressed_pair.0"* %220 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store i64* %36, i64** %34, align 8
  %222 = load i64** %34, align 8
  %223 = load i64* %222
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %221, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %32, align 8
  store i64 %223, i64* %33, align 8
  %224 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %32
  %225 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %224 to %"class.std::__1::allocator.2"*
  store %"class.std::__1::allocator.2"* %225, %"class.std::__1::allocator.2"** %31, align 8
  %226 = load %"class.std::__1::allocator.2"** %31
  %227 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %224, i32 0, i32 0
  store i64* %33, i64** %30, align 8
  %228 = load i64** %30, align 8
  %229 = load i64* %228
  store i64 %229, i64* %227, align 8
  %230 = load %struct.Point** %85, align 8
  %231 = getelementptr inbounds %struct.Point* %230, i64 0
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %28, align 8
  store %struct.Point* %231, %struct.Point** %29, align 8
  %232 = load %"class.std::__1::stack"** %28
  %233 = getelementptr inbounds %"class.std::__1::stack"* %232, i32 0, i32 0
  %234 = load %struct.Point** %29, align 8
  invoke void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::deque"* %233, %struct.Point* %234)
          to label %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit unwind label %307

_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit: ; preds = %140
  br label %235

; <label>:235                                     ; preds = %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit
  %236 = load %struct.Point** %85, align 8
  %237 = getelementptr inbounds %struct.Point* %236, i64 1
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %26, align 8
  store %struct.Point* %237, %struct.Point** %27, align 8
  %238 = load %"class.std::__1::stack"** %26
  %239 = getelementptr inbounds %"class.std::__1::stack"* %238, i32 0, i32 0
  %240 = load %struct.Point** %27, align 8
  invoke void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::deque"* %239, %struct.Point* %240)
          to label %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit2 unwind label %307

_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit2: ; preds = %235
  br label %241

; <label>:241                                     ; preds = %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit2
  %242 = load %struct.Point** %85, align 8
  %243 = getelementptr inbounds %struct.Point* %242, i64 2
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %24, align 8
  store %struct.Point* %243, %struct.Point** %25, align 8
  %244 = load %"class.std::__1::stack"** %24
  %245 = getelementptr inbounds %"class.std::__1::stack"* %244, i32 0, i32 0
  %246 = load %struct.Point** %25, align 8
  invoke void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::deque"* %245, %struct.Point* %246)
          to label %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit3 unwind label %307

_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit3: ; preds = %241
  br label %247

; <label>:247                                     ; preds = %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit3
  store i32 3, i32* %i1, align 4
  br label %248

; <label>:248                                     ; preds = %320, %247
  %249 = load i32* %i1, align 4
  %250 = load i32* %86, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %323

; <label>:252                                     ; preds = %248
  br label %253

; <label>:253                                     ; preds = %306, %252
  %254 = invoke i64 @_Z9nextToTopRNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEEE(%"class.std::__1::stack"* %S)
          to label %255 unwind label %307

; <label>:255                                     ; preds = %253
  %256 = bitcast %struct.Point* %89 to i64*
  store i64 %254, i64* %256, align 1
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %23, align 8
  %257 = load %"class.std::__1::stack"** %23
  %258 = getelementptr inbounds %"class.std::__1::stack"* %257, i32 0, i32 0
  store %"class.std::__1::deque"* %258, %"class.std::__1::deque"** %22, align 8
  %259 = load %"class.std::__1::deque"** %22
  %260 = bitcast %"class.std::__1::deque"* %259 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %260, %"class.std::__1::__deque_base"** %21, align 8
  %261 = load %"class.std::__1::__deque_base"** %21
  %262 = getelementptr inbounds %"class.std::__1::__deque_base"* %261, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %262, %"class.std::__1::__compressed_pair.0"** %20, align 8
  %263 = load %"class.std::__1::__compressed_pair.0"** %20
  %264 = bitcast %"class.std::__1::__compressed_pair.0"* %263 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %264, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %19, align 8
  %265 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %19
  %266 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %265, i32 0, i32 0
  %267 = load i64* %266
  %268 = bitcast %"class.std::__1::deque"* %259 to %"class.std::__1::__deque_base"*
  %269 = getelementptr inbounds %"class.std::__1::__deque_base"* %268, i32 0, i32 1
  %270 = load i64* %269, align 8
  %271 = add i64 %267, %270
  %272 = sub i64 %271, 1
  store i64 %272, i64* %__p.i.i, align 8
  %273 = bitcast %"class.std::__1::deque"* %259 to %"class.std::__1::__deque_base"*
  %274 = getelementptr inbounds %"class.std::__1::__deque_base"* %273, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %274, %"struct.std::__1::__split_buffer"** %18, align 8
  %275 = load %"struct.std::__1::__split_buffer"** %18
  %276 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %275, i32 0, i32 1
  %277 = load %struct.Point*** %276, align 8
  %278 = load i64* %__p.i.i, align 8
  %279 = udiv i64 %278, 512
  %280 = getelementptr inbounds %struct.Point** %277, i64 %279
  %281 = load %struct.Point** %280, align 8
  %282 = load i64* %__p.i.i, align 8
  %283 = urem i64 %282, 512
  %284 = getelementptr inbounds %struct.Point* %281, i64 %283
  br label %285

; <label>:285                                     ; preds = %255
  %286 = bitcast %struct.Point* %90 to i8*
  %287 = bitcast %struct.Point* %284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %286, i8* %287, i64 8, i32 4, i1 false)
  %288 = load i32* %i1, align 4
  %289 = sext i32 %288 to i64
  %290 = load %struct.Point** %85, align 8
  %291 = getelementptr inbounds %struct.Point* %290, i64 %289
  %292 = bitcast %struct.Point* %91 to i8*
  %293 = bitcast %struct.Point* %291 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %292, i8* %293, i64 8, i32 4, i1 false)
  %294 = bitcast %struct.Point* %89 to i64*
  %295 = load i64* %294, align 1
  %296 = bitcast %struct.Point* %90 to i64*
  %297 = load i64* %296, align 1
  %298 = bitcast %struct.Point* %91 to i64*
  %299 = load i64* %298, align 1
  %300 = invoke i32 @_Z11orientation5PointS_S_(i64 %295, i64 %297, i64 %299)
          to label %301 unwind label %307

; <label>:301                                     ; preds = %285
  %302 = icmp ne i32 %300, 2
  br i1 %302, label %303, label %311

; <label>:303                                     ; preds = %301
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %17, align 8
  %304 = load %"class.std::__1::stack"** %17
  %305 = getelementptr inbounds %"class.std::__1::stack"* %304, i32 0, i32 0
  invoke void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE8pop_backEv(%"class.std::__1::deque"* %305)
          to label %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE3popEv.exit unwind label %307

_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE3popEv.exit: ; preds = %303
  br label %306

; <label>:306                                     ; preds = %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE3popEv.exit
  br label %253

; <label>:307                                     ; preds = %384, %388, %311, %303, %241, %235, %140, %382, %378, %376, %372, %368, %285, %253
  %308 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %309 = extractvalue { i8*, i32 } %308, 0
  store i8* %309, i8** %87
  %310 = extractvalue { i8*, i32 } %308, 1
  store i32 %310, i32* %88
  invoke void @_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEED1Ev(%"class.std::__1::stack"* %S)
          to label %393 unwind label %399

; <label>:311                                     ; preds = %301
  %312 = load i32* %i1, align 4
  %313 = sext i32 %312 to i64
  %314 = load %struct.Point** %85, align 8
  %315 = getelementptr inbounds %struct.Point* %314, i64 %313
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %15, align 8
  store %struct.Point* %315, %struct.Point** %16, align 8
  %316 = load %"class.std::__1::stack"** %15
  %317 = getelementptr inbounds %"class.std::__1::stack"* %316, i32 0, i32 0
  %318 = load %struct.Point** %16, align 8
  invoke void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::deque"* %317, %struct.Point* %318)
          to label %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit4 unwind label %307

_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit4: ; preds = %311
  br label %319

; <label>:319                                     ; preds = %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE4pushERKS1_.exit4
  br label %320

; <label>:320                                     ; preds = %319
  %321 = load i32* %i1, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %i1, align 4
  br label %248

; <label>:323                                     ; preds = %248
  br label %324

; <label>:324                                     ; preds = %391, %323
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %14, align 8
  %325 = load %"class.std::__1::stack"** %14
  %326 = getelementptr inbounds %"class.std::__1::stack"* %325, i32 0, i32 0
  store %"class.std::__1::deque"* %326, %"class.std::__1::deque"** %13, align 8
  %327 = load %"class.std::__1::deque"** %13
  %328 = bitcast %"class.std::__1::deque"* %327 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %328, %"class.std::__1::__deque_base"** %12, align 8
  %329 = load %"class.std::__1::__deque_base"** %12
  %330 = getelementptr inbounds %"class.std::__1::__deque_base"* %329, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %330, %"class.std::__1::__compressed_pair.0"** %11, align 8
  %331 = load %"class.std::__1::__compressed_pair.0"** %11
  %332 = bitcast %"class.std::__1::__compressed_pair.0"* %331 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %332, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %10, align 8
  %333 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %10
  %334 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %333, i32 0, i32 0
  %335 = load i64* %334
  %336 = icmp eq i64 %335, 0
  br label %337

; <label>:337                                     ; preds = %324
  %338 = xor i1 %336, true
  br i1 %338, label %339, label %392

; <label>:339                                     ; preds = %337
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %8, align 8
  %340 = load %"class.std::__1::stack"** %8
  %341 = getelementptr inbounds %"class.std::__1::stack"* %340, i32 0, i32 0
  store %"class.std::__1::deque"* %341, %"class.std::__1::deque"** %7, align 8
  %342 = load %"class.std::__1::deque"** %7
  %343 = bitcast %"class.std::__1::deque"* %342 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %343, %"class.std::__1::__deque_base"** %6, align 8
  %344 = load %"class.std::__1::__deque_base"** %6
  %345 = getelementptr inbounds %"class.std::__1::__deque_base"* %344, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %345, %"class.std::__1::__compressed_pair.0"** %5, align 8
  %346 = load %"class.std::__1::__compressed_pair.0"** %5
  %347 = bitcast %"class.std::__1::__compressed_pair.0"* %346 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %347, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %4, align 8
  %348 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %4
  %349 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %348, i32 0, i32 0
  %350 = load i64* %349
  %351 = bitcast %"class.std::__1::deque"* %342 to %"class.std::__1::__deque_base"*
  %352 = getelementptr inbounds %"class.std::__1::__deque_base"* %351, i32 0, i32 1
  %353 = load i64* %352, align 8
  %354 = add i64 %350, %353
  %355 = sub i64 %354, 1
  store i64 %355, i64* %__p.i.i6, align 8
  %356 = bitcast %"class.std::__1::deque"* %342 to %"class.std::__1::__deque_base"*
  %357 = getelementptr inbounds %"class.std::__1::__deque_base"* %356, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %357, %"struct.std::__1::__split_buffer"** %3, align 8
  %358 = load %"struct.std::__1::__split_buffer"** %3
  %359 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %358, i32 0, i32 1
  %360 = load %struct.Point*** %359, align 8
  %361 = load i64* %__p.i.i6, align 8
  %362 = udiv i64 %361, 512
  %363 = getelementptr inbounds %struct.Point** %360, i64 %362
  %364 = load %struct.Point** %363, align 8
  %365 = load i64* %__p.i.i6, align 8
  %366 = urem i64 %365, 512
  %367 = getelementptr inbounds %struct.Point* %364, i64 %366
  br label %368

; <label>:368                                     ; preds = %339
  %369 = bitcast %struct.Point* %p to i8*
  %370 = bitcast %struct.Point* %367 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %369, i8* %370, i64 8, i32 4, i1 false)
  %371 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0))
          to label %372 unwind label %307

; <label>:372                                     ; preds = %368
  %373 = getelementptr inbounds %struct.Point* %p, i32 0, i32 0
  %374 = load i32* %373, align 4
  %375 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %371, i32 %374)
          to label %376 unwind label %307

; <label>:376                                     ; preds = %372
  %377 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* %375, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0))
          to label %378 unwind label %307

; <label>:378                                     ; preds = %376
  %379 = getelementptr inbounds %struct.Point* %p, i32 0, i32 1
  %380 = load i32* %379, align 4
  %381 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %377, i32 %380)
          to label %382 unwind label %307

; <label>:382                                     ; preds = %378
  %383 = invoke %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* %381, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
          to label %384 unwind label %307

; <label>:384                                     ; preds = %382
  store %"class.std::__1::basic_ostream"* %383, %"class.std::__1::basic_ostream"** %1, align 8
  store %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)* @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_, %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)** %2, align 8
  %385 = load %"class.std::__1::basic_ostream"** %1
  %386 = load %"class.std::__1::basic_ostream"* (%"class.std::__1::basic_ostream"*)** %2, align 8
  %387 = invoke %"class.std::__1::basic_ostream"* %386(%"class.std::__1::basic_ostream"* %385)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E.exit unwind label %307

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E.exit: ; preds = %384
  br label %388

; <label>:388                                     ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E.exit
  store %"class.std::__1::stack"* %S, %"class.std::__1::stack"** %9, align 8
  %389 = load %"class.std::__1::stack"** %9
  %390 = getelementptr inbounds %"class.std::__1::stack"* %389, i32 0, i32 0
  invoke void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE8pop_backEv(%"class.std::__1::deque"* %390)
          to label %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE3popEv.exit5 unwind label %307

_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE3popEv.exit5: ; preds = %388
  br label %391

; <label>:391                                     ; preds = %_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEE3popEv.exit5
  br label %324

; <label>:392                                     ; preds = %337
  call void @_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEED1Ev(%"class.std::__1::stack"* %S)
  ret void

; <label>:393                                     ; preds = %307
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load i8** %87
  %396 = load i32* %88
  %397 = insertvalue { i8*, i32 } undef, i8* %395, 0
  %398 = insertvalue { i8*, i32 } %397, i32 %396, 1
  resume { i8*, i32 } %398

; <label>:399                                     ; preds = %307
  %400 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %401 = extractvalue { i8*, i32 } %400, 0
  call void @__clang_call_terminate(i8* %401) #9
  unreachable
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

declare i32 @__gxx_personality_v0(...)

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
  call void @__clang_call_terminate(i8* %143) #9
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
  call void @__clang_call_terminate(i8* %217) #9
  unreachable
}

declare %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #3

; Function Attrs: alwaysinline inlinehint ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_ostream"* @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%"class.std::__1::basic_ostream"* %__os) #4 {
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
  call void @__clang_call_terminate(i8* %44) #9
  unreachable

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit: ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %6)
  %45 = call %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(%"class.std::__1::basic_ostream"* %10, i8 signext %32)
  %46 = load %"class.std::__1::basic_ostream"** %9, align 8
  %47 = call %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(%"class.std::__1::basic_ostream"* %46)
  %48 = load %"class.std::__1::basic_ostream"** %9, align 8
  ret %"class.std::__1::basic_ostream"* %48
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEED1Ev(%"class.std::__1::stack"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::__1::stack"*, align 8
  store %"class.std::__1::stack"* %this, %"class.std::__1::stack"** %1, align 8
  %2 = load %"class.std::__1::stack"** %1
  call void @_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEED2Ev(%"class.std::__1::stack"* %2)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #9
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %points = alloca [8 x %struct.Point], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [8 x %struct.Point]* %points to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([8 x %struct.Point]* @_ZZ4mainE6points to i8*), i64 64, i32 16, i1 false)
  store i32 8, i32* %n, align 4
  %3 = getelementptr inbounds [8 x %struct.Point]* %points, i32 0, i32 0
  %4 = load i32* %n, align 4
  call void @_Z10convexHullP5Pointi(%struct.Point* %3, i32 %4)
  ret i32 0
}

declare %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(%"class.std::__1::basic_ostream"*, i8 signext) #3

declare %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(%"class.std::__1::basic_ostream"*) #3

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #3

declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) #3

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"*) #3

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"*) #3

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* %__iob, i8 signext %__fl) #0 {
  %1 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %2 = alloca %"class.std::__1::allocator.6"*, align 8
  %3 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %4 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %5 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %6 = alloca %"class.std::__1::basic_string"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::__1::basic_string"*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %14 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %15 = alloca %"class.std::__1::basic_string"*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %19 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
  %20 = alloca %"class.std::__1::basic_string"*, align 8
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.5"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.4"*, align 8
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
  store %"class.std::__1::__compressed_pair.4"* %154, %"class.std::__1::__compressed_pair.4"** %5, align 8
  %155 = load %"class.std::__1::__compressed_pair.4"** %5
  store %"class.std::__1::__compressed_pair.4"* %155, %"class.std::__1::__compressed_pair.4"** %4, align 8
  %156 = load %"class.std::__1::__compressed_pair.4"** %4
  %157 = bitcast %"class.std::__1::__compressed_pair.4"* %156 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %157, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %3, align 8
  %158 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %3
  %159 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.5"* %158 to %"class.std::__1::allocator.6"*
  store %"class.std::__1::allocator.6"* %159, %"class.std::__1::allocator.6"** %2, align 8
  %160 = load %"class.std::__1::allocator.6"** %2
  %161 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %158, i32 0, i32 0
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
  store %"class.std::__1::__compressed_pair.4"* %169, %"class.std::__1::__compressed_pair.4"** %22, align 8
  %170 = load %"class.std::__1::__compressed_pair.4"** %22
  %171 = bitcast %"class.std::__1::__compressed_pair.4"* %170 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %171, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %21, align 8
  %172 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %21
  %173 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %172, i32 0, i32 0
  %174 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %173, i32 0, i32 0
  %175 = bitcast %union.anon* %174 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %176 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %175, i32 0, i32 0
  %177 = bitcast %union.anon.8* %176 to i8*
  %178 = load i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

; <label>:182                                     ; preds = %146
  store %"class.std::__1::basic_string"* %167, %"class.std::__1::basic_string"** %15, align 8
  %183 = load %"class.std::__1::basic_string"** %15
  %184 = getelementptr inbounds %"class.std::__1::basic_string"* %183, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.4"* %184, %"class.std::__1::__compressed_pair.4"** %14, align 8
  %185 = load %"class.std::__1::__compressed_pair.4"** %14
  %186 = bitcast %"class.std::__1::__compressed_pair.4"* %185 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %186, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %13, align 8
  %187 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %13
  %188 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %187, i32 0, i32 0
  %189 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %188, i32 0, i32 0
  %190 = bitcast %union.anon* %189 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %191 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %190, i32 0, i32 2
  %192 = load i8** %191, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

; <label>:193                                     ; preds = %146
  store %"class.std::__1::basic_string"* %167, %"class.std::__1::basic_string"** %20, align 8
  %194 = load %"class.std::__1::basic_string"** %20
  %195 = getelementptr inbounds %"class.std::__1::basic_string"* %194, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.4"* %195, %"class.std::__1::__compressed_pair.4"** %19, align 8
  %196 = load %"class.std::__1::__compressed_pair.4"** %19
  %197 = bitcast %"class.std::__1::__compressed_pair.4"* %196 to %"class.std::__1::__libcpp_compressed_pair_imp.5"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.5"* %197, %"class.std::__1::__libcpp_compressed_pair_imp.5"** %18, align 8
  %198 = load %"class.std::__1::__libcpp_compressed_pair_imp.5"** %18
  %199 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.5"* %198, i32 0, i32 0
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
  call void @__clang_call_terminate(i8* %298) #9
  unreachable

; <label>:299                                     ; preds = %239
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) #3

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #3

declare void @__cxa_end_catch()

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #3

declare void @__cxa_call_unexpected(i8*)

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) #3

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #3

declare i64 @strlen(i8*) #3

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %1, align 8
  %2 = load %"struct.std::__1::__split_buffer"** %1
  call void @_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEED2Ev(%"struct.std::__1::__split_buffer"* %2)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEED2Ev(%"struct.std::__1::__split_buffer"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %4 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %5 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %6 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %7 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %8 = alloca %"class.std::__1::allocator"*, align 8
  %9 = alloca %struct.Point**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::__1::allocator"*, align 8
  %12 = alloca %struct.Point**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.Point**, align 8
  %15 = alloca %"class.std::__1::allocator"*, align 8
  %16 = alloca %struct.Point**, align 8
  %17 = alloca %"class.std::__1::allocator"*, align 8
  %18 = alloca %struct.Point**, align 8
  %19 = alloca %"struct.std::__1::integral_constant", align 1
  %20 = alloca %"struct.std::__1::__has_destroy", align 1
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %23 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %24 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %25 = alloca %struct.Point**, align 8
  %26 = alloca %"struct.std::__1::integral_constant", align 1
  %27 = alloca i8*
  %28 = alloca i32
  %29 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %30 = alloca %struct.Point**, align 8
  %31 = alloca %"struct.std::__1::integral_constant", align 1
  %32 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %33 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %33, align 8
  %34 = load %"struct.std::__1::__split_buffer"** %33
  store %"struct.std::__1::__split_buffer"* %34, %"struct.std::__1::__split_buffer"** %32, align 8
  %35 = load %"struct.std::__1::__split_buffer"** %32
  %36 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %35, i32 0, i32 1
  %37 = load %struct.Point*** %36, align 8
  store %"struct.std::__1::__split_buffer"* %35, %"struct.std::__1::__split_buffer"** %29, align 8
  store %struct.Point** %37, %struct.Point*** %30, align 8
  %38 = load %"struct.std::__1::__split_buffer"** %29
  %39 = load %struct.Point*** %30, align 8
  store %"struct.std::__1::__split_buffer"* %38, %"struct.std::__1::__split_buffer"** %24, align 8
  store %struct.Point** %39, %struct.Point*** %25, align 8
  %40 = load %"struct.std::__1::__split_buffer"** %24
  br label %41

; <label>:41                                      ; preds = %46, %0
  %42 = load %struct.Point*** %25, align 8
  %43 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %40, i32 0, i32 2
  %44 = load %struct.Point*** %43, align 8
  %45 = icmp ne %struct.Point** %42, %44
  br i1 %45, label %46, label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE5clearEv.exit

; <label>:46                                      ; preds = %41
  store %"struct.std::__1::__split_buffer"* %40, %"struct.std::__1::__split_buffer"** %23, align 8
  %47 = load %"struct.std::__1::__split_buffer"** %23
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %47, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %48, %"class.std::__1::__compressed_pair"** %22, align 8
  %49 = load %"class.std::__1::__compressed_pair"** %22
  %50 = bitcast %"class.std::__1::__compressed_pair"* %49 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %50, %"class.std::__1::__libcpp_compressed_pair_imp"** %21, align 8
  %51 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %21
  %52 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %51 to %"class.std::__1::allocator"*
  %53 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %40, i32 0, i32 2
  %54 = load %struct.Point*** %53, align 8
  %55 = getelementptr inbounds %struct.Point** %54, i32 -1
  store %struct.Point** %55, %struct.Point*** %53, align 8
  store %struct.Point** %55, %struct.Point*** %14, align 8
  %56 = load %struct.Point*** %14, align 8
  store %"class.std::__1::allocator"* %52, %"class.std::__1::allocator"** %17, align 8
  store %struct.Point** %56, %struct.Point*** %18, align 8
  %57 = bitcast %"struct.std::__1::__has_destroy"* %20 to %"struct.std::__1::integral_constant"*
  %58 = load %"class.std::__1::allocator"** %17, align 8
  %59 = load %struct.Point*** %18, align 8
  store %"class.std::__1::allocator"* %58, %"class.std::__1::allocator"** %15, align 8
  store %struct.Point** %59, %struct.Point*** %16, align 8
  %60 = load %struct.Point*** %16, align 8
  br label %41

_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE5clearEv.exit: ; preds = %41
  %61 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 0
  %62 = load %struct.Point*** %61, align 8
  %63 = icmp ne %struct.Point** %62, null
  br i1 %63, label %64, label %93

; <label>:64                                      ; preds = %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE5clearEv.exit
  store %"struct.std::__1::__split_buffer"* %34, %"struct.std::__1::__split_buffer"** %7, align 8
  %65 = load %"struct.std::__1::__split_buffer"** %7
  %66 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %65, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %66, %"class.std::__1::__compressed_pair"** %6, align 8
  %67 = load %"class.std::__1::__compressed_pair"** %6
  %68 = bitcast %"class.std::__1::__compressed_pair"* %67 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %68, %"class.std::__1::__libcpp_compressed_pair_imp"** %5, align 8
  %69 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %5
  %70 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %69 to %"class.std::__1::allocator"*
  %71 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 0
  %72 = load %struct.Point*** %71, align 8
  store %"struct.std::__1::__split_buffer"* %34, %"struct.std::__1::__split_buffer"** %4, align 8
  %73 = load %"struct.std::__1::__split_buffer"** %4
  store %"struct.std::__1::__split_buffer"* %73, %"struct.std::__1::__split_buffer"** %3, align 8
  %74 = load %"struct.std::__1::__split_buffer"** %3
  %75 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %74, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %75, %"class.std::__1::__compressed_pair"** %2, align 8
  %76 = load %"class.std::__1::__compressed_pair"** %2
  %77 = bitcast %"class.std::__1::__compressed_pair"* %76 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %77, %"class.std::__1::__libcpp_compressed_pair_imp"** %1, align 8
  %78 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %1
  %79 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %78, i32 0, i32 0
  %80 = load %struct.Point*** %79
  %81 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %73, i32 0, i32 0
  %82 = load %struct.Point*** %81, align 8
  %83 = ptrtoint %struct.Point** %80 to i64
  %84 = ptrtoint %struct.Point** %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 8
  store %"class.std::__1::allocator"* %70, %"class.std::__1::allocator"** %11, align 8
  store %struct.Point** %72, %struct.Point*** %12, align 8
  store i64 %86, i64* %13, align 8
  %87 = load %"class.std::__1::allocator"** %11, align 8
  %88 = load %struct.Point*** %12, align 8
  %89 = load i64* %13, align 8
  store %"class.std::__1::allocator"* %87, %"class.std::__1::allocator"** %8, align 8
  store %struct.Point** %88, %struct.Point*** %9, align 8
  store i64 %89, i64* %10, align 8
  %90 = load %"class.std::__1::allocator"** %8
  %91 = load %struct.Point*** %9, align 8
  %92 = bitcast %struct.Point** %91 to i8*
  call void @_ZdlPv(i8* %92) #1
  br label %93

; <label>:93                                      ; preds = %64, %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE5clearEv.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE9push_backERKS1_(%"class.std::__1::deque"* %this, %struct.Point* %__v) #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %3 = alloca %"class.std::__1::__deque_base"*, align 8
  %4 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %5 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %6 = alloca %"class.std::__1::deque"*, align 8
  %7 = alloca %"class.std::__1::deque"*, align 8
  %8 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %9 = alloca %struct.Point*, align 8
  %10 = alloca %"class.std::__1::allocator.2"*, align 8
  %11 = alloca %struct.Point*, align 8
  %12 = alloca %struct.Point*, align 8
  %13 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %14 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %15 = alloca %"class.std::__1::__deque_base"*, align 8
  %16 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %17 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %18 = alloca %"class.std::__1::__deque_base"*, align 8
  %19 = alloca %"class.std::__1::deque"*, align 8
  %20 = alloca %struct.Point*, align 8
  %__a = alloca %"class.std::__1::allocator.2"*, align 8
  %21 = alloca %"class.std::__1::__deque_iterator", align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %19, align 8
  store %struct.Point* %__v, %struct.Point** %20, align 8
  %22 = load %"class.std::__1::deque"** %19
  %23 = bitcast %"class.std::__1::deque"* %22 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %23, %"class.std::__1::__deque_base"** %18, align 8
  %24 = load %"class.std::__1::__deque_base"** %18
  %25 = getelementptr inbounds %"class.std::__1::__deque_base"* %24, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %25, %"class.std::__1::__compressed_pair.0"** %17, align 8
  %26 = load %"class.std::__1::__compressed_pair.0"** %17
  %27 = bitcast %"class.std::__1::__compressed_pair.0"* %26 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %27, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %16, align 8
  %28 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %16
  %29 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %28 to %"class.std::__1::allocator.2"*
  store %"class.std::__1::allocator.2"* %29, %"class.std::__1::allocator.2"** %__a, align 8
  store %"class.std::__1::deque"* %22, %"class.std::__1::deque"** %7, align 8
  %30 = load %"class.std::__1::deque"** %7
  store %"class.std::__1::deque"* %30, %"class.std::__1::deque"** %6, align 8
  %31 = load %"class.std::__1::deque"** %6
  %32 = bitcast %"class.std::__1::deque"* %31 to %"class.std::__1::__deque_base"*
  %33 = getelementptr inbounds %"class.std::__1::__deque_base"* %32, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %33, %"struct.std::__1::__split_buffer"** %5, align 8
  %34 = load %"struct.std::__1::__split_buffer"** %5
  %35 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 2
  %36 = load %struct.Point*** %35, align 8
  %37 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %34, i32 0, i32 1
  %38 = load %struct.Point*** %37, align 8
  %39 = ptrtoint %struct.Point** %36 to i64
  %40 = ptrtoint %struct.Point** %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %0
  br label %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit

; <label>:45                                      ; preds = %0
  %46 = bitcast %"class.std::__1::deque"* %31 to %"class.std::__1::__deque_base"*
  %47 = getelementptr inbounds %"class.std::__1::__deque_base"* %46, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %47, %"struct.std::__1::__split_buffer"** %4, align 8
  %48 = load %"struct.std::__1::__split_buffer"** %4
  %49 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %48, i32 0, i32 2
  %50 = load %struct.Point*** %49, align 8
  %51 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %48, i32 0, i32 1
  %52 = load %struct.Point*** %51, align 8
  %53 = ptrtoint %struct.Point** %50 to i64
  %54 = ptrtoint %struct.Point** %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = mul i64 %56, 512
  %58 = sub i64 %57, 1
  br label %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit

_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit: ; preds = %44, %45
  %59 = phi i64 [ 0, %44 ], [ %58, %45 ]
  %60 = bitcast %"class.std::__1::deque"* %30 to %"class.std::__1::__deque_base"*
  %61 = getelementptr inbounds %"class.std::__1::__deque_base"* %60, i32 0, i32 1
  %62 = load i64* %61, align 8
  %63 = bitcast %"class.std::__1::deque"* %30 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %63, %"class.std::__1::__deque_base"** %3, align 8
  %64 = load %"class.std::__1::__deque_base"** %3
  %65 = getelementptr inbounds %"class.std::__1::__deque_base"* %64, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %65, %"class.std::__1::__compressed_pair.0"** %2, align 8
  %66 = load %"class.std::__1::__compressed_pair.0"** %2
  %67 = bitcast %"class.std::__1::__compressed_pair.0"* %66 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %67, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %1, align 8
  %68 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %1
  %69 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %68, i32 0, i32 0
  %70 = load i64* %69
  %71 = add i64 %62, %70
  %72 = sub i64 %59, %71
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit
  call void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE19__add_back_capacityEv(%"class.std::__1::deque"* %22)
  br label %75

; <label>:75                                      ; preds = %74, %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit
  %76 = load %"class.std::__1::allocator.2"** %__a, align 8
  %77 = bitcast %"class.std::__1::deque"* %22 to %"class.std::__1::__deque_base"*
  %78 = call { %struct.Point**, %struct.Point* } @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEE3endEv(%"class.std::__1::__deque_base"* %77) #1
  %79 = bitcast %"class.std::__1::__deque_iterator"* %21 to { %struct.Point**, %struct.Point* }*
  %80 = getelementptr { %struct.Point**, %struct.Point* }* %79, i32 0, i32 0
  %81 = extractvalue { %struct.Point**, %struct.Point* } %78, 0
  store %struct.Point** %81, %struct.Point*** %80, align 1
  %82 = getelementptr { %struct.Point**, %struct.Point* }* %79, i32 0, i32 1
  %83 = extractvalue { %struct.Point**, %struct.Point* } %78, 1
  store %struct.Point* %83, %struct.Point** %82, align 1
  store %"class.std::__1::__deque_iterator"* %21, %"class.std::__1::__deque_iterator"** %8, align 8
  %84 = load %"class.std::__1::__deque_iterator"** %8
  %85 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %84, i32 0, i32 1
  %86 = load %struct.Point** %85, align 8
  store %struct.Point* %86, %struct.Point** %9, align 8
  %87 = load %struct.Point** %9, align 8
  %88 = bitcast %struct.Point* %87 to i8*
  %89 = bitcast i8* %88 to %struct.Point*
  %90 = load %struct.Point** %20, align 8
  store %"class.std::__1::allocator.2"* %76, %"class.std::__1::allocator.2"** %10, align 8
  store %struct.Point* %89, %struct.Point** %11, align 8
  store %struct.Point* %90, %struct.Point** %12, align 8
  %91 = load %struct.Point** %11, align 8
  %92 = bitcast %struct.Point* %91 to i8*
  %93 = icmp eq i8* %92, null
  br i1 %93, label %_ZNSt3__116allocator_traitsINS_9allocatorI5PointEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit, label %94

; <label>:94                                      ; preds = %75
  %95 = bitcast i8* %92 to %struct.Point*
  %96 = load %struct.Point** %12, align 8
  %97 = bitcast %struct.Point* %95 to i8*
  %98 = bitcast %struct.Point* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 8, i32 4, i1 false) #1
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI5PointEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorI5PointEEE9constructIS2_S2_EEvRS3_PT_RKT0_.exit: ; preds = %75, %94
  %99 = phi %struct.Point* [ %95, %94 ], [ null, %75 ]
  %100 = bitcast %"class.std::__1::deque"* %22 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %100, %"class.std::__1::__deque_base"** %15, align 8
  %101 = load %"class.std::__1::__deque_base"** %15
  %102 = getelementptr inbounds %"class.std::__1::__deque_base"* %101, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %102, %"class.std::__1::__compressed_pair.0"** %14, align 8
  %103 = load %"class.std::__1::__compressed_pair.0"** %14
  %104 = bitcast %"class.std::__1::__compressed_pair.0"* %103 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %104, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %13, align 8
  %105 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %13
  %106 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %105, i32 0, i32 0
  %107 = load i64* %106
  %108 = add i64 %107, 1
  store i64 %108, i64* %106
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE19__add_back_capacityEv(%"class.std::__1::deque"* %this) #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %3 = alloca %"class.std::__1::allocator.2"*, align 8
  %4 = alloca %struct.Point*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::__1::allocator.2"*, align 8
  %7 = alloca %struct.Point*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca %struct.Point**, align 8
  %12 = alloca %"class.std::__1::move_iterator"*, align 8
  %13 = alloca %struct.Point**, align 8
  %14 = alloca %"class.std::__1::move_iterator"*, align 8
  %15 = alloca %struct.Point**, align 8
  %16 = alloca %"class.std::__1::move_iterator"*, align 8
  %17 = alloca %struct.Point**, align 8
  %18 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %19 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %20 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %21 = alloca %struct.Point***, align 8
  %22 = alloca %struct.Point***, align 8
  %23 = alloca %struct.Point***, align 8
  %24 = alloca %struct.Point***, align 8
  %25 = alloca %struct.Point***, align 8
  %__t.i3.i28 = alloca %struct.Point**, align 8
  %26 = alloca %struct.Point***, align 8
  %27 = alloca %struct.Point***, align 8
  %28 = alloca %struct.Point***, align 8
  %29 = alloca %struct.Point***, align 8
  %30 = alloca %struct.Point***, align 8
  %__t.i2.i29 = alloca %struct.Point**, align 8
  %31 = alloca %struct.Point***, align 8
  %32 = alloca %struct.Point***, align 8
  %33 = alloca %struct.Point***, align 8
  %34 = alloca %struct.Point***, align 8
  %35 = alloca %struct.Point***, align 8
  %__t.i1.i30 = alloca %struct.Point**, align 8
  %36 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %37 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %38 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %39 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %40 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %41 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %42 = alloca %struct.Point***, align 8
  %43 = alloca %struct.Point***, align 8
  %44 = alloca %struct.Point***, align 8
  %45 = alloca %struct.Point***, align 8
  %46 = alloca %struct.Point***, align 8
  %__t.i.i31 = alloca %struct.Point**, align 8
  %47 = alloca %"struct.std::__1::__less"*, align 8
  %48 = alloca i64*, align 8
  %49 = alloca i64*, align 8
  %50 = alloca i64*, align 8
  %51 = alloca i64*, align 8
  %__comp.i.i.i32 = alloca %"struct.std::__1::__less", align 1
  %52 = alloca i64*, align 8
  %53 = alloca i64*, align 8
  %54 = alloca %"struct.std::__1::__less", align 1
  %55 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %56 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %57 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %58 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %59 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %60 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %61 = alloca %struct.Point**, align 8
  %62 = alloca %"class.std::__1::allocator"*, align 8
  %63 = alloca %struct.Point**, align 8
  %64 = alloca %struct.Point**, align 8
  %65 = alloca %struct.Point**, align 8
  %66 = alloca %struct.Point**, align 8
  %67 = alloca %struct.Point**, align 8
  %68 = alloca %struct.Point**, align 8
  %69 = alloca %struct.Point**, align 8
  %__n.i.i.i33 = alloca i64, align 8
  %70 = alloca %struct.Point**, align 8
  %71 = alloca %struct.Point**, align 8
  %72 = alloca %struct.Point**, align 8
  %73 = alloca %struct.Point**, align 8
  %74 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %75 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %76 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %77 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %78 = alloca %struct.Point**, align 8
  %__d.i34 = alloca i64, align 8
  %__c.i35 = alloca i64, align 8
  %79 = alloca i64, align 8
  %80 = alloca i64, align 8
  %__t.i36 = alloca %"struct.std::__1::__split_buffer.9", align 8
  %81 = alloca %"class.std::__1::move_iterator", align 8
  %82 = alloca i8*
  %83 = alloca i32
  %84 = alloca %"class.std::__1::move_iterator", align 8
  %85 = alloca %"class.std::__1::allocator.2"*, align 8
  %86 = alloca i64, align 8
  %87 = alloca i8*, align 8
  %88 = alloca %"class.std::__1::allocator.2"*, align 8
  %89 = alloca i64, align 8
  %90 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %91 = alloca %"class.std::__1::__compressed_pair"*, align 8
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
  %102 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %103 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %104 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %105 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %106 = alloca %"class.std::__1::move_iterator"*, align 8
  %107 = alloca %struct.Point**, align 8
  %108 = alloca %"class.std::__1::move_iterator"*, align 8
  %109 = alloca %struct.Point**, align 8
  %110 = alloca %"class.std::__1::move_iterator"*, align 8
  %111 = alloca %struct.Point**, align 8
  %112 = alloca %"class.std::__1::move_iterator"*, align 8
  %113 = alloca %struct.Point**, align 8
  %114 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %115 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %116 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %117 = alloca %struct.Point***, align 8
  %118 = alloca %struct.Point***, align 8
  %119 = alloca %struct.Point***, align 8
  %120 = alloca %struct.Point***, align 8
  %121 = alloca %struct.Point***, align 8
  %__t.i3.i17 = alloca %struct.Point**, align 8
  %122 = alloca %struct.Point***, align 8
  %123 = alloca %struct.Point***, align 8
  %124 = alloca %struct.Point***, align 8
  %125 = alloca %struct.Point***, align 8
  %126 = alloca %struct.Point***, align 8
  %__t.i2.i18 = alloca %struct.Point**, align 8
  %127 = alloca %struct.Point***, align 8
  %128 = alloca %struct.Point***, align 8
  %129 = alloca %struct.Point***, align 8
  %130 = alloca %struct.Point***, align 8
  %131 = alloca %struct.Point***, align 8
  %__t.i1.i19 = alloca %struct.Point**, align 8
  %132 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %133 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %134 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %135 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %136 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %137 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %138 = alloca %struct.Point***, align 8
  %139 = alloca %struct.Point***, align 8
  %140 = alloca %struct.Point***, align 8
  %141 = alloca %struct.Point***, align 8
  %142 = alloca %struct.Point***, align 8
  %__t.i.i20 = alloca %struct.Point**, align 8
  %143 = alloca %"struct.std::__1::__less"*, align 8
  %144 = alloca i64*, align 8
  %145 = alloca i64*, align 8
  %146 = alloca i64*, align 8
  %147 = alloca i64*, align 8
  %__comp.i.i.i21 = alloca %"struct.std::__1::__less", align 1
  %148 = alloca i64*, align 8
  %149 = alloca i64*, align 8
  %150 = alloca %"struct.std::__1::__less", align 1
  %151 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %152 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %153 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %154 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %155 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %156 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %157 = alloca %struct.Point**, align 8
  %158 = alloca %"class.std::__1::allocator"*, align 8
  %159 = alloca %struct.Point**, align 8
  %160 = alloca %struct.Point**, align 8
  %161 = alloca %struct.Point**, align 8
  %162 = alloca %struct.Point**, align 8
  %163 = alloca %struct.Point**, align 8
  %164 = alloca %struct.Point**, align 8
  %165 = alloca %struct.Point**, align 8
  %__n.i.i.i22 = alloca i64, align 8
  %166 = alloca %struct.Point**, align 8
  %167 = alloca %struct.Point**, align 8
  %168 = alloca %struct.Point**, align 8
  %169 = alloca %struct.Point**, align 8
  %170 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %171 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %172 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %173 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %174 = alloca %struct.Point**, align 8
  %__d.i23 = alloca i64, align 8
  %__c.i24 = alloca i64, align 8
  %175 = alloca i64, align 8
  %176 = alloca i64, align 8
  %__t.i25 = alloca %"struct.std::__1::__split_buffer.9", align 8
  %177 = alloca %"class.std::__1::move_iterator", align 8
  %178 = alloca i8*
  %179 = alloca i32
  %180 = alloca %"class.std::__1::move_iterator", align 8
  %181 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %182 = alloca %struct.Point**, align 8
  %183 = alloca %"struct.std::__1::integral_constant.12", align 1
  %184 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %185 = alloca %struct.Point**, align 8
  %186 = alloca %"struct.std::__1::integral_constant.12", align 1
  %187 = alloca %"struct.std::__1::is_trivially_destructible", align 1
  %188 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %189 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %190 = alloca %"class.std::__1::allocator.2"*, align 8
  %191 = alloca i64, align 8
  %192 = alloca i8*, align 8
  %193 = alloca %"class.std::__1::allocator.2"*, align 8
  %194 = alloca i64, align 8
  %195 = alloca %"class.std::__1::move_iterator"*, align 8
  %196 = alloca %struct.Point**, align 8
  %197 = alloca %"class.std::__1::move_iterator"*, align 8
  %198 = alloca %struct.Point**, align 8
  %199 = alloca %"class.std::__1::move_iterator"*, align 8
  %200 = alloca %struct.Point**, align 8
  %201 = alloca %"class.std::__1::move_iterator"*, align 8
  %202 = alloca %struct.Point**, align 8
  %203 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %204 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %205 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %206 = alloca %struct.Point***, align 8
  %207 = alloca %struct.Point***, align 8
  %208 = alloca %struct.Point***, align 8
  %209 = alloca %struct.Point***, align 8
  %210 = alloca %struct.Point***, align 8
  %__t.i3.i6 = alloca %struct.Point**, align 8
  %211 = alloca %struct.Point***, align 8
  %212 = alloca %struct.Point***, align 8
  %213 = alloca %struct.Point***, align 8
  %214 = alloca %struct.Point***, align 8
  %215 = alloca %struct.Point***, align 8
  %__t.i2.i7 = alloca %struct.Point**, align 8
  %216 = alloca %struct.Point***, align 8
  %217 = alloca %struct.Point***, align 8
  %218 = alloca %struct.Point***, align 8
  %219 = alloca %struct.Point***, align 8
  %220 = alloca %struct.Point***, align 8
  %__t.i1.i8 = alloca %struct.Point**, align 8
  %221 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %222 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %223 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %224 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %225 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %226 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %227 = alloca %struct.Point***, align 8
  %228 = alloca %struct.Point***, align 8
  %229 = alloca %struct.Point***, align 8
  %230 = alloca %struct.Point***, align 8
  %231 = alloca %struct.Point***, align 8
  %__t.i.i9 = alloca %struct.Point**, align 8
  %232 = alloca %"struct.std::__1::__less"*, align 8
  %233 = alloca i64*, align 8
  %234 = alloca i64*, align 8
  %235 = alloca i64*, align 8
  %236 = alloca i64*, align 8
  %__comp.i.i.i10 = alloca %"struct.std::__1::__less", align 1
  %237 = alloca i64*, align 8
  %238 = alloca i64*, align 8
  %239 = alloca %"struct.std::__1::__less", align 1
  %240 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %241 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %242 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %243 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %244 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %245 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %246 = alloca %struct.Point**, align 8
  %247 = alloca %"class.std::__1::allocator"*, align 8
  %248 = alloca %struct.Point**, align 8
  %249 = alloca %struct.Point**, align 8
  %250 = alloca %struct.Point**, align 8
  %251 = alloca %struct.Point**, align 8
  %252 = alloca %struct.Point**, align 8
  %253 = alloca %struct.Point**, align 8
  %254 = alloca %struct.Point**, align 8
  %__n.i.i.i11 = alloca i64, align 8
  %255 = alloca %struct.Point**, align 8
  %256 = alloca %struct.Point**, align 8
  %257 = alloca %struct.Point**, align 8
  %258 = alloca %struct.Point**, align 8
  %259 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %260 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %261 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %262 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %263 = alloca %struct.Point**, align 8
  %__d.i12 = alloca i64, align 8
  %__c.i13 = alloca i64, align 8
  %264 = alloca i64, align 8
  %265 = alloca i64, align 8
  %__t.i14 = alloca %"struct.std::__1::__split_buffer.9", align 8
  %266 = alloca %"class.std::__1::move_iterator", align 8
  %267 = alloca i8*
  %268 = alloca i32
  %269 = alloca %"class.std::__1::move_iterator", align 8
  %270 = alloca %"class.std::__1::allocator.2"*, align 8
  %271 = alloca i64, align 8
  %272 = alloca i8*, align 8
  %273 = alloca %"class.std::__1::allocator.2"*, align 8
  %274 = alloca i64, align 8
  %275 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %276 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %277 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %278 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %279 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %280 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %281 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %282 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %283 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %284 = alloca %"class.std::__1::move_iterator"*, align 8
  %285 = alloca %struct.Point**, align 8
  %286 = alloca %"class.std::__1::move_iterator"*, align 8
  %287 = alloca %struct.Point**, align 8
  %288 = alloca %"class.std::__1::move_iterator"*, align 8
  %289 = alloca %struct.Point**, align 8
  %290 = alloca %"class.std::__1::move_iterator"*, align 8
  %291 = alloca %struct.Point**, align 8
  %292 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %293 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %294 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %295 = alloca %struct.Point***, align 8
  %296 = alloca %struct.Point***, align 8
  %297 = alloca %struct.Point***, align 8
  %298 = alloca %struct.Point***, align 8
  %299 = alloca %struct.Point***, align 8
  %__t.i3.i = alloca %struct.Point**, align 8
  %300 = alloca %struct.Point***, align 8
  %301 = alloca %struct.Point***, align 8
  %302 = alloca %struct.Point***, align 8
  %303 = alloca %struct.Point***, align 8
  %304 = alloca %struct.Point***, align 8
  %__t.i2.i = alloca %struct.Point**, align 8
  %305 = alloca %struct.Point***, align 8
  %306 = alloca %struct.Point***, align 8
  %307 = alloca %struct.Point***, align 8
  %308 = alloca %struct.Point***, align 8
  %309 = alloca %struct.Point***, align 8
  %__t.i1.i = alloca %struct.Point**, align 8
  %310 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %311 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %312 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %313 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %314 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %315 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %316 = alloca %struct.Point***, align 8
  %317 = alloca %struct.Point***, align 8
  %318 = alloca %struct.Point***, align 8
  %319 = alloca %struct.Point***, align 8
  %320 = alloca %struct.Point***, align 8
  %__t.i.i = alloca %struct.Point**, align 8
  %321 = alloca %"struct.std::__1::__less"*, align 8
  %322 = alloca i64*, align 8
  %323 = alloca i64*, align 8
  %324 = alloca i64*, align 8
  %325 = alloca i64*, align 8
  %__comp.i.i.i = alloca %"struct.std::__1::__less", align 1
  %326 = alloca i64*, align 8
  %327 = alloca i64*, align 8
  %328 = alloca %"struct.std::__1::__less", align 1
  %329 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %330 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %331 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %332 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %333 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %334 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %335 = alloca %struct.Point**, align 8
  %336 = alloca %"class.std::__1::allocator"*, align 8
  %337 = alloca %struct.Point**, align 8
  %338 = alloca %struct.Point**, align 8
  %339 = alloca %struct.Point**, align 8
  %340 = alloca %struct.Point**, align 8
  %341 = alloca %struct.Point**, align 8
  %342 = alloca %struct.Point**, align 8
  %343 = alloca %struct.Point**, align 8
  %__n.i.i.i = alloca i64, align 8
  %344 = alloca %struct.Point**, align 8
  %345 = alloca %struct.Point**, align 8
  %346 = alloca %struct.Point**, align 8
  %347 = alloca %struct.Point**, align 8
  %348 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %349 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %350 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %351 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %352 = alloca %struct.Point**, align 8
  %__d.i = alloca i64, align 8
  %__c.i = alloca i64, align 8
  %353 = alloca i64, align 8
  %354 = alloca i64, align 8
  %__t.i5 = alloca %"struct.std::__1::__split_buffer.9", align 8
  %355 = alloca %"class.std::__1::move_iterator", align 8
  %356 = alloca i8*
  %357 = alloca i32
  %358 = alloca %"class.std::__1::move_iterator", align 8
  %359 = alloca %struct.Point***, align 8
  %360 = alloca %struct.Point***, align 8
  %361 = alloca %struct.Point***, align 8
  %362 = alloca %struct.Point***, align 8
  %363 = alloca %struct.Point***, align 8
  %__t.i4 = alloca %struct.Point**, align 8
  %364 = alloca %struct.Point***, align 8
  %365 = alloca %struct.Point***, align 8
  %366 = alloca %struct.Point***, align 8
  %367 = alloca %struct.Point***, align 8
  %368 = alloca %struct.Point***, align 8
  %__t.i3 = alloca %struct.Point**, align 8
  %369 = alloca %struct.Point***, align 8
  %370 = alloca %struct.Point***, align 8
  %371 = alloca %struct.Point***, align 8
  %372 = alloca %struct.Point***, align 8
  %373 = alloca %struct.Point***, align 8
  %__t.i2 = alloca %struct.Point**, align 8
  %374 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %375 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %376 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %377 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %378 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %379 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %380 = alloca %struct.Point***, align 8
  %381 = alloca %struct.Point***, align 8
  %382 = alloca %struct.Point***, align 8
  %383 = alloca %struct.Point***, align 8
  %384 = alloca %struct.Point***, align 8
  %__t.i = alloca %struct.Point**, align 8
  %385 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %386 = alloca %struct.Point**, align 8
  %387 = alloca %"struct.std::__1::integral_constant.12", align 1
  %388 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %389 = alloca %struct.Point**, align 8
  %390 = alloca %"struct.std::__1::integral_constant.12", align 1
  %391 = alloca %"struct.std::__1::is_trivially_destructible", align 1
  %392 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %393 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %394 = alloca %"class.std::__1::deque"*, align 8
  %395 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %396 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %397 = alloca %"class.std::__1::__deque_base"*, align 8
  %398 = alloca %"class.std::__1::deque"*, align 8
  %__a = alloca %"class.std::__1::allocator.2"*, align 8
  %__pt = alloca %struct.Point*, align 8
  %399 = alloca %struct.Point*, align 8
  %400 = alloca %struct.Point*, align 8
  %__pt1 = alloca %struct.Point*, align 8
  %__buf = alloca %"struct.std::__1::__split_buffer.9", align 8
  %401 = alloca i64, align 8
  %402 = alloca i64, align 8
  %403 = alloca %struct.Point*, align 8
  %404 = alloca i8*
  %405 = alloca i32
  %__i = alloca %struct.Point**, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %398, align 8
  %406 = load %"class.std::__1::deque"** %398
  %407 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %407, %"class.std::__1::__deque_base"** %397, align 8
  %408 = load %"class.std::__1::__deque_base"** %397
  %409 = getelementptr inbounds %"class.std::__1::__deque_base"* %408, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %409, %"class.std::__1::__compressed_pair.0"** %396, align 8
  %410 = load %"class.std::__1::__compressed_pair.0"** %396
  %411 = bitcast %"class.std::__1::__compressed_pair.0"* %410 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %411, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %395, align 8
  %412 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %395
  %413 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %412 to %"class.std::__1::allocator.2"*
  store %"class.std::__1::allocator.2"* %413, %"class.std::__1::allocator.2"** %__a, align 8
  store %"class.std::__1::deque"* %406, %"class.std::__1::deque"** %394, align 8
  %414 = load %"class.std::__1::deque"** %394
  %415 = bitcast %"class.std::__1::deque"* %414 to %"class.std::__1::__deque_base"*
  %416 = getelementptr inbounds %"class.std::__1::__deque_base"* %415, i32 0, i32 1
  %417 = load i64* %416, align 8
  %418 = icmp uge i64 %417, 512
  br i1 %418, label %419, label %661

; <label>:419                                     ; preds = %0
  %420 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %421 = getelementptr inbounds %"class.std::__1::__deque_base"* %420, i32 0, i32 1
  %422 = load i64* %421, align 8
  %423 = sub i64 %422, 512
  store i64 %423, i64* %421, align 8
  %424 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %425 = getelementptr inbounds %"class.std::__1::__deque_base"* %424, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %425, %"struct.std::__1::__split_buffer"** %393, align 8
  %426 = load %"struct.std::__1::__split_buffer"** %393
  %427 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %426, i32 0, i32 1
  %428 = load %struct.Point*** %427, align 8
  %429 = load %struct.Point** %428
  store %struct.Point* %429, %struct.Point** %__pt, align 8
  %430 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %431 = getelementptr inbounds %"class.std::__1::__deque_base"* %430, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %431, %"struct.std::__1::__split_buffer"** %392, align 8
  %432 = load %"struct.std::__1::__split_buffer"** %392
  %433 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %432, i32 0, i32 1
  %434 = load %struct.Point*** %433, align 8
  %435 = getelementptr inbounds %struct.Point** %434, i64 1
  store %"struct.std::__1::__split_buffer"* %432, %"struct.std::__1::__split_buffer"** %388, align 8
  store %struct.Point** %435, %struct.Point*** %389, align 8
  %436 = load %"struct.std::__1::__split_buffer"** %388
  %437 = load %struct.Point*** %389, align 8
  %438 = bitcast %"struct.std::__1::is_trivially_destructible"* %391 to %"struct.std::__1::integral_constant.12"*
  store %"struct.std::__1::__split_buffer"* %436, %"struct.std::__1::__split_buffer"** %385, align 8
  store %struct.Point** %437, %struct.Point*** %386, align 8
  %439 = load %"struct.std::__1::__split_buffer"** %385
  %440 = load %struct.Point*** %386, align 8
  %441 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %439, i32 0, i32 1
  store %struct.Point** %440, %struct.Point*** %441, align 8
  %442 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %443 = getelementptr inbounds %"class.std::__1::__deque_base"* %442, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %443, %"struct.std::__1::__split_buffer"** %351, align 8
  store %struct.Point** %__pt, %struct.Point*** %352, align 8
  %444 = load %"struct.std::__1::__split_buffer"** %351
  %445 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %446 = load %struct.Point*** %445, align 8
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %350, align 8
  %447 = load %"struct.std::__1::__split_buffer"** %350
  %448 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %447, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %448, %"class.std::__1::__compressed_pair"** %349, align 8
  %449 = load %"class.std::__1::__compressed_pair"** %349
  %450 = bitcast %"class.std::__1::__compressed_pair"* %449 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %450, %"class.std::__1::__libcpp_compressed_pair_imp"** %348, align 8
  %451 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %348
  %452 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %451, i32 0, i32 0
  %453 = load %struct.Point*** %452
  %454 = icmp eq %struct.Point** %446, %453
  br i1 %454, label %455, label %636

; <label>:455                                     ; preds = %419
  %456 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %457 = load %struct.Point*** %456, align 8
  %458 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %459 = load %struct.Point*** %458, align 8
  %460 = icmp ugt %struct.Point** %457, %459
  br i1 %460, label %461, label %509

; <label>:461                                     ; preds = %455
  %462 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %463 = load %struct.Point*** %462, align 8
  %464 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %465 = load %struct.Point*** %464, align 8
  %466 = ptrtoint %struct.Point** %463 to i64
  %467 = ptrtoint %struct.Point** %465 to i64
  %468 = sub i64 %466, %467
  %469 = sdiv exact i64 %468, 8
  store i64 %469, i64* %__d.i, align 8
  %470 = load i64* %__d.i, align 8
  %471 = add nsw i64 %470, 1
  %472 = sdiv i64 %471, 2
  store i64 %472, i64* %__d.i, align 8
  %473 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %474 = load %struct.Point*** %473, align 8
  %475 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %476 = load %struct.Point*** %475, align 8
  %477 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %478 = load %struct.Point*** %477, align 8
  %479 = load i64* %__d.i, align 8
  %480 = sub i64 0, %479
  %481 = getelementptr inbounds %struct.Point** %478, i64 %480
  store %struct.Point** %474, %struct.Point*** %345, align 8
  store %struct.Point** %476, %struct.Point*** %346, align 8
  store %struct.Point** %481, %struct.Point*** %347, align 8
  %482 = load %struct.Point*** %345, align 8
  store %struct.Point** %482, %struct.Point*** %344, align 8
  %483 = load %struct.Point*** %344, align 8
  %484 = load %struct.Point*** %346, align 8
  store %struct.Point** %484, %struct.Point*** %339, align 8
  %485 = load %struct.Point*** %339, align 8
  %486 = load %struct.Point*** %347, align 8
  store %struct.Point** %486, %struct.Point*** %340, align 8
  %487 = load %struct.Point*** %340, align 8
  store %struct.Point** %483, %struct.Point*** %341, align 8
  store %struct.Point** %485, %struct.Point*** %342, align 8
  store %struct.Point** %487, %struct.Point*** %343, align 8
  %488 = load %struct.Point*** %342, align 8
  %489 = load %struct.Point*** %341, align 8
  %490 = ptrtoint %struct.Point** %488 to i64
  %491 = ptrtoint %struct.Point** %489 to i64
  %492 = sub i64 %490, %491
  %493 = sdiv exact i64 %492, 8
  store i64 %493, i64* %__n.i.i.i, align 8
  %494 = load %struct.Point*** %343, align 8
  %495 = bitcast %struct.Point** %494 to i8*
  %496 = load %struct.Point*** %341, align 8
  %497 = bitcast %struct.Point** %496 to i8*
  %498 = load i64* %__n.i.i.i, align 8
  %499 = mul i64 %498, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %495, i8* %497, i64 %499, i32 8, i1 false) #1
  %500 = load %struct.Point*** %343, align 8
  %501 = load i64* %__n.i.i.i, align 8
  %502 = getelementptr inbounds %struct.Point** %500, i64 %501
  %503 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  store %struct.Point** %502, %struct.Point*** %503, align 8
  %504 = load i64* %__d.i, align 8
  %505 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %506 = load %struct.Point*** %505, align 8
  %507 = sub i64 0, %504
  %508 = getelementptr inbounds %struct.Point** %506, i64 %507
  store %struct.Point** %508, %struct.Point*** %505, align 8
  br label %635

; <label>:509                                     ; preds = %455
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %331, align 8
  %510 = load %"struct.std::__1::__split_buffer"** %331
  %511 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %510, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %511, %"class.std::__1::__compressed_pair"** %330, align 8
  %512 = load %"class.std::__1::__compressed_pair"** %330
  %513 = bitcast %"class.std::__1::__compressed_pair"* %512 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %513, %"class.std::__1::__libcpp_compressed_pair_imp"** %329, align 8
  %514 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %329
  %515 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %514, i32 0, i32 0
  %516 = load %struct.Point*** %515
  %517 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %518 = load %struct.Point*** %517, align 8
  %519 = ptrtoint %struct.Point** %516 to i64
  %520 = ptrtoint %struct.Point** %518 to i64
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
  store %"class.std::__1::__compressed_pair"* %544, %"class.std::__1::__compressed_pair"** %293, align 8
  %545 = load %"class.std::__1::__compressed_pair"** %293
  %546 = bitcast %"class.std::__1::__compressed_pair"* %545 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %546, %"class.std::__1::__libcpp_compressed_pair_imp"** %292, align 8
  %547 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %292
  %548 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %547 to %"class.std::__1::allocator"*
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %__t.i5, i64 %540, i64 %542, %"class.std::__1::allocator"* %548)
  %549 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %550 = load %struct.Point*** %549, align 8
  store %"class.std::__1::move_iterator"* %355, %"class.std::__1::move_iterator"** %286, align 8
  store %struct.Point** %550, %struct.Point*** %287, align 8
  %551 = load %"class.std::__1::move_iterator"** %286
  %552 = load %struct.Point*** %287, align 8
  store %"class.std::__1::move_iterator"* %551, %"class.std::__1::move_iterator"** %284, align 8
  store %struct.Point** %552, %struct.Point*** %285, align 8
  %553 = load %"class.std::__1::move_iterator"** %284
  %554 = getelementptr inbounds %"class.std::__1::move_iterator"* %553, i32 0, i32 0
  %555 = load %struct.Point*** %285, align 8
  store %struct.Point** %555, %struct.Point*** %554, align 8
  %556 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %557 = load %struct.Point*** %556, align 8
  store %"class.std::__1::move_iterator"* %358, %"class.std::__1::move_iterator"** %290, align 8
  store %struct.Point** %557, %struct.Point*** %291, align 8
  %558 = load %"class.std::__1::move_iterator"** %290
  %559 = load %struct.Point*** %291, align 8
  store %"class.std::__1::move_iterator"* %558, %"class.std::__1::move_iterator"** %288, align 8
  store %struct.Point** %559, %struct.Point*** %289, align 8
  %560 = load %"class.std::__1::move_iterator"** %288
  %561 = getelementptr inbounds %"class.std::__1::move_iterator"* %560, i32 0, i32 0
  %562 = load %struct.Point*** %289, align 8
  store %struct.Point** %562, %struct.Point*** %561, align 8
  %563 = getelementptr %"class.std::__1::move_iterator"* %355, i32 0, i32 0
  %564 = load %struct.Point*** %563
  %565 = getelementptr %"class.std::__1::move_iterator"* %358, i32 0, i32 0
  %566 = load %struct.Point*** %565
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_(%"struct.std::__1::__split_buffer.9"* %__t.i5, %struct.Point** %564, %struct.Point** %566)
          to label %567 unwind label %626

; <label>:567                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i
  %568 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 0
  %569 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i5, i32 0, i32 0
  store %struct.Point*** %568, %struct.Point**** %298, align 8
  store %struct.Point*** %569, %struct.Point**** %299, align 8
  %570 = load %struct.Point**** %298, align 8
  store %struct.Point*** %570, %struct.Point**** %297, align 8
  %571 = load %struct.Point**** %297, align 8
  %572 = load %struct.Point*** %571
  store %struct.Point** %572, %struct.Point*** %__t.i3.i, align 8
  %573 = load %struct.Point**** %299, align 8
  store %struct.Point*** %573, %struct.Point**** %295, align 8
  %574 = load %struct.Point**** %295, align 8
  %575 = load %struct.Point*** %574
  %576 = load %struct.Point**** %298, align 8
  store %struct.Point** %575, %struct.Point*** %576, align 8
  store %struct.Point*** %__t.i3.i, %struct.Point**** %296, align 8
  %577 = load %struct.Point**** %296, align 8
  %578 = load %struct.Point*** %577
  %579 = load %struct.Point**** %299, align 8
  store %struct.Point** %578, %struct.Point*** %579, align 8
  %580 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 1
  %581 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i5, i32 0, i32 1
  store %struct.Point*** %580, %struct.Point**** %303, align 8
  store %struct.Point*** %581, %struct.Point**** %304, align 8
  %582 = load %struct.Point**** %303, align 8
  store %struct.Point*** %582, %struct.Point**** %302, align 8
  %583 = load %struct.Point**** %302, align 8
  %584 = load %struct.Point*** %583
  store %struct.Point** %584, %struct.Point*** %__t.i2.i, align 8
  %585 = load %struct.Point**** %304, align 8
  store %struct.Point*** %585, %struct.Point**** %300, align 8
  %586 = load %struct.Point**** %300, align 8
  %587 = load %struct.Point*** %586
  %588 = load %struct.Point**** %303, align 8
  store %struct.Point** %587, %struct.Point*** %588, align 8
  store %struct.Point*** %__t.i2.i, %struct.Point**** %301, align 8
  %589 = load %struct.Point**** %301, align 8
  %590 = load %struct.Point*** %589
  %591 = load %struct.Point**** %304, align 8
  store %struct.Point** %590, %struct.Point*** %591, align 8
  %592 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %593 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i5, i32 0, i32 2
  store %struct.Point*** %592, %struct.Point**** %308, align 8
  store %struct.Point*** %593, %struct.Point**** %309, align 8
  %594 = load %struct.Point**** %308, align 8
  store %struct.Point*** %594, %struct.Point**** %307, align 8
  %595 = load %struct.Point**** %307, align 8
  %596 = load %struct.Point*** %595
  store %struct.Point** %596, %struct.Point*** %__t.i1.i, align 8
  %597 = load %struct.Point**** %309, align 8
  store %struct.Point*** %597, %struct.Point**** %305, align 8
  %598 = load %struct.Point**** %305, align 8
  %599 = load %struct.Point*** %598
  %600 = load %struct.Point**** %308, align 8
  store %struct.Point** %599, %struct.Point*** %600, align 8
  store %struct.Point*** %__t.i1.i, %struct.Point**** %306, align 8
  %601 = load %struct.Point**** %306, align 8
  %602 = load %struct.Point*** %601
  %603 = load %struct.Point**** %309, align 8
  store %struct.Point** %602, %struct.Point*** %603, align 8
  store %"struct.std::__1::__split_buffer"* %444, %"struct.std::__1::__split_buffer"** %312, align 8
  %604 = load %"struct.std::__1::__split_buffer"** %312
  %605 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %604, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %605, %"class.std::__1::__compressed_pair"** %311, align 8
  %606 = load %"class.std::__1::__compressed_pair"** %311
  %607 = bitcast %"class.std::__1::__compressed_pair"* %606 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %607, %"class.std::__1::__libcpp_compressed_pair_imp"** %310, align 8
  %608 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %310
  %609 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %608, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.9"* %__t.i5, %"struct.std::__1::__split_buffer.9"** %315, align 8
  %610 = load %"struct.std::__1::__split_buffer.9"** %315
  %611 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %610, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %611, %"class.std::__1::__compressed_pair.10"** %314, align 8
  %612 = load %"class.std::__1::__compressed_pair.10"** %314
  %613 = bitcast %"class.std::__1::__compressed_pair.10"* %612 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %613, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %313, align 8
  %614 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %313
  %615 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %614, i32 0, i32 0
  store %struct.Point*** %609, %struct.Point**** %319, align 8
  store %struct.Point*** %615, %struct.Point**** %320, align 8
  %616 = load %struct.Point**** %319, align 8
  store %struct.Point*** %616, %struct.Point**** %318, align 8
  %617 = load %struct.Point**** %318, align 8
  %618 = load %struct.Point*** %617
  store %struct.Point** %618, %struct.Point*** %__t.i.i, align 8
  %619 = load %struct.Point**** %320, align 8
  store %struct.Point*** %619, %struct.Point**** %316, align 8
  %620 = load %struct.Point**** %316, align 8
  %621 = load %struct.Point*** %620
  %622 = load %struct.Point**** %319, align 8
  store %struct.Point** %621, %struct.Point*** %622, align 8
  store %struct.Point*** %__t.i.i, %struct.Point**** %317, align 8
  %623 = load %struct.Point**** %317, align 8
  %624 = load %struct.Point*** %623
  %625 = load %struct.Point**** %320, align 8
  store %struct.Point** %624, %struct.Point*** %625, align 8
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i5)
  br label %635

; <label>:626                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i
  %627 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %628 = extractvalue { i8*, i32 } %627, 0
  store i8* %628, i8** %356
  %629 = extractvalue { i8*, i32 } %627, 1
  store i32 %629, i32* %357
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i5)
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
  store %"class.std::__1::__compressed_pair"* %638, %"class.std::__1::__compressed_pair"** %333, align 8
  %639 = load %"class.std::__1::__compressed_pair"** %333
  %640 = bitcast %"class.std::__1::__compressed_pair"* %639 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %640, %"class.std::__1::__libcpp_compressed_pair_imp"** %332, align 8
  %641 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %332
  %642 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %641 to %"class.std::__1::allocator"*
  %643 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %644 = load %struct.Point*** %643, align 8
  store %struct.Point** %644, %struct.Point*** %335, align 8
  %645 = load %struct.Point*** %335, align 8
  %646 = load %struct.Point*** %352, align 8
  store %"class.std::__1::allocator"* %642, %"class.std::__1::allocator"** %336, align 8
  store %struct.Point** %645, %struct.Point*** %337, align 8
  store %struct.Point** %646, %struct.Point*** %338, align 8
  %647 = load %struct.Point*** %337, align 8
  %648 = bitcast %struct.Point** %647 to i8*
  %649 = icmp eq i8* %648, null
  br i1 %649, label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit, label %650

; <label>:650                                     ; preds = %636
  %651 = bitcast i8* %648 to %struct.Point**
  %652 = load %struct.Point*** %338, align 8
  %653 = load %struct.Point** %652, align 8
  store %struct.Point* %653, %struct.Point** %651, align 8
  br label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit

; <label>:654                                     ; preds = %626
  %655 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %656 = extractvalue { i8*, i32 } %655, 0
  call void @__clang_call_terminate(i8* %656) #9
  unreachable

_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit: ; preds = %636, %650
  %657 = phi %struct.Point** [ %651, %650 ], [ null, %636 ]
  %658 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %444, i32 0, i32 2
  %659 = load %struct.Point*** %658, align 8
  %660 = getelementptr inbounds %struct.Point** %659, i32 1
  store %struct.Point** %660, %struct.Point*** %658, align 8
  br label %1588

; <label>:661                                     ; preds = %0
  %662 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %663 = getelementptr inbounds %"class.std::__1::__deque_base"* %662, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %663, %"struct.std::__1::__split_buffer"** %283, align 8
  %664 = load %"struct.std::__1::__split_buffer"** %283
  %665 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %664, i32 0, i32 2
  %666 = load %struct.Point*** %665, align 8
  %667 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %664, i32 0, i32 1
  %668 = load %struct.Point*** %667, align 8
  %669 = ptrtoint %struct.Point** %666 to i64
  %670 = ptrtoint %struct.Point** %668 to i64
  %671 = sub i64 %669, %670
  %672 = sdiv exact i64 %671, 8
  %673 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %674 = getelementptr inbounds %"class.std::__1::__deque_base"* %673, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %674, %"struct.std::__1::__split_buffer"** %282, align 8
  %675 = load %"struct.std::__1::__split_buffer"** %282
  store %"struct.std::__1::__split_buffer"* %675, %"struct.std::__1::__split_buffer"** %281, align 8
  %676 = load %"struct.std::__1::__split_buffer"** %281
  %677 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %676, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %677, %"class.std::__1::__compressed_pair"** %280, align 8
  %678 = load %"class.std::__1::__compressed_pair"** %280
  %679 = bitcast %"class.std::__1::__compressed_pair"* %678 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %679, %"class.std::__1::__libcpp_compressed_pair_imp"** %279, align 8
  %680 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %279
  %681 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %680, i32 0, i32 0
  %682 = load %struct.Point*** %681
  %683 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %675, i32 0, i32 0
  %684 = load %struct.Point*** %683, align 8
  %685 = ptrtoint %struct.Point** %682 to i64
  %686 = ptrtoint %struct.Point** %684 to i64
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
  store %"class.std::__1::__compressed_pair"* %695, %"class.std::__1::__compressed_pair"** %276, align 8
  %696 = load %"class.std::__1::__compressed_pair"** %276
  %697 = bitcast %"class.std::__1::__compressed_pair"* %696 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %697, %"class.std::__1::__libcpp_compressed_pair_imp"** %275, align 8
  %698 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %275
  %699 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %698, i32 0, i32 0
  %700 = load %struct.Point*** %699
  %701 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %693, i32 0, i32 2
  %702 = load %struct.Point*** %701, align 8
  %703 = ptrtoint %struct.Point** %700 to i64
  %704 = ptrtoint %struct.Point** %702 to i64
  %705 = sub i64 %703, %704
  %706 = sdiv exact i64 %705, 8
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %936

; <label>:708                                     ; preds = %690
  %709 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %710 = getelementptr inbounds %"class.std::__1::__deque_base"* %709, i32 0, i32 0
  %711 = load %"class.std::__1::allocator.2"** %__a, align 8
  store %"class.std::__1::allocator.2"* %711, %"class.std::__1::allocator.2"** %273, align 8
  store i64 512, i64* %274, align 8
  %712 = load %"class.std::__1::allocator.2"** %273, align 8
  %713 = load i64* %274, align 8
  store %"class.std::__1::allocator.2"* %712, %"class.std::__1::allocator.2"** %270, align 8
  store i64 %713, i64* %271, align 8
  store i8* null, i8** %272, align 8
  %714 = load %"class.std::__1::allocator.2"** %270
  %715 = load i64* %271, align 8
  %716 = mul i64 %715, 8
  %717 = call noalias i8* @_Znwm(i64 %716)
  %718 = bitcast i8* %717 to %struct.Point*
  store %struct.Point* %718, %struct.Point** %399
  store %"struct.std::__1::__split_buffer"* %710, %"struct.std::__1::__split_buffer"** %262, align 8
  store %struct.Point** %399, %struct.Point*** %263, align 8
  %719 = load %"struct.std::__1::__split_buffer"** %262
  %720 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %721 = load %struct.Point*** %720, align 8
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %261, align 8
  %722 = load %"struct.std::__1::__split_buffer"** %261
  %723 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %722, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %723, %"class.std::__1::__compressed_pair"** %260, align 8
  %724 = load %"class.std::__1::__compressed_pair"** %260
  %725 = bitcast %"class.std::__1::__compressed_pair"* %724 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %725, %"class.std::__1::__libcpp_compressed_pair_imp"** %259, align 8
  %726 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %259
  %727 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %726, i32 0, i32 0
  %728 = load %struct.Point*** %727
  %729 = icmp eq %struct.Point** %721, %728
  br i1 %729, label %730, label %911

; <label>:730                                     ; preds = %708
  %731 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %732 = load %struct.Point*** %731, align 8
  %733 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %734 = load %struct.Point*** %733, align 8
  %735 = icmp ugt %struct.Point** %732, %734
  br i1 %735, label %736, label %784

; <label>:736                                     ; preds = %730
  %737 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %738 = load %struct.Point*** %737, align 8
  %739 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %740 = load %struct.Point*** %739, align 8
  %741 = ptrtoint %struct.Point** %738 to i64
  %742 = ptrtoint %struct.Point** %740 to i64
  %743 = sub i64 %741, %742
  %744 = sdiv exact i64 %743, 8
  store i64 %744, i64* %__d.i12, align 8
  %745 = load i64* %__d.i12, align 8
  %746 = add nsw i64 %745, 1
  %747 = sdiv i64 %746, 2
  store i64 %747, i64* %__d.i12, align 8
  %748 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %749 = load %struct.Point*** %748, align 8
  %750 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %751 = load %struct.Point*** %750, align 8
  %752 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %753 = load %struct.Point*** %752, align 8
  %754 = load i64* %__d.i12, align 8
  %755 = sub i64 0, %754
  %756 = getelementptr inbounds %struct.Point** %753, i64 %755
  store %struct.Point** %749, %struct.Point*** %256, align 8
  store %struct.Point** %751, %struct.Point*** %257, align 8
  store %struct.Point** %756, %struct.Point*** %258, align 8
  %757 = load %struct.Point*** %256, align 8
  store %struct.Point** %757, %struct.Point*** %255, align 8
  %758 = load %struct.Point*** %255, align 8
  %759 = load %struct.Point*** %257, align 8
  store %struct.Point** %759, %struct.Point*** %250, align 8
  %760 = load %struct.Point*** %250, align 8
  %761 = load %struct.Point*** %258, align 8
  store %struct.Point** %761, %struct.Point*** %251, align 8
  %762 = load %struct.Point*** %251, align 8
  store %struct.Point** %758, %struct.Point*** %252, align 8
  store %struct.Point** %760, %struct.Point*** %253, align 8
  store %struct.Point** %762, %struct.Point*** %254, align 8
  %763 = load %struct.Point*** %253, align 8
  %764 = load %struct.Point*** %252, align 8
  %765 = ptrtoint %struct.Point** %763 to i64
  %766 = ptrtoint %struct.Point** %764 to i64
  %767 = sub i64 %765, %766
  %768 = sdiv exact i64 %767, 8
  store i64 %768, i64* %__n.i.i.i11, align 8
  %769 = load %struct.Point*** %254, align 8
  %770 = bitcast %struct.Point** %769 to i8*
  %771 = load %struct.Point*** %252, align 8
  %772 = bitcast %struct.Point** %771 to i8*
  %773 = load i64* %__n.i.i.i11, align 8
  %774 = mul i64 %773, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %770, i8* %772, i64 %774, i32 8, i1 false) #1
  %775 = load %struct.Point*** %254, align 8
  %776 = load i64* %__n.i.i.i11, align 8
  %777 = getelementptr inbounds %struct.Point** %775, i64 %776
  %778 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  store %struct.Point** %777, %struct.Point*** %778, align 8
  %779 = load i64* %__d.i12, align 8
  %780 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %781 = load %struct.Point*** %780, align 8
  %782 = sub i64 0, %779
  %783 = getelementptr inbounds %struct.Point** %781, i64 %782
  store %struct.Point** %783, %struct.Point*** %780, align 8
  br label %910

; <label>:784                                     ; preds = %730
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %242, align 8
  %785 = load %"struct.std::__1::__split_buffer"** %242
  %786 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %785, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %786, %"class.std::__1::__compressed_pair"** %241, align 8
  %787 = load %"class.std::__1::__compressed_pair"** %241
  %788 = bitcast %"class.std::__1::__compressed_pair"* %787 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %788, %"class.std::__1::__libcpp_compressed_pair_imp"** %240, align 8
  %789 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %240
  %790 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %789, i32 0, i32 0
  %791 = load %struct.Point*** %790
  %792 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %793 = load %struct.Point*** %792, align 8
  %794 = ptrtoint %struct.Point** %791 to i64
  %795 = ptrtoint %struct.Point** %793 to i64
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
  store %"class.std::__1::__compressed_pair"* %819, %"class.std::__1::__compressed_pair"** %204, align 8
  %820 = load %"class.std::__1::__compressed_pair"** %204
  %821 = bitcast %"class.std::__1::__compressed_pair"* %820 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %821, %"class.std::__1::__libcpp_compressed_pair_imp"** %203, align 8
  %822 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %203
  %823 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %822 to %"class.std::__1::allocator"*
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %__t.i14, i64 %815, i64 %817, %"class.std::__1::allocator"* %823)
  %824 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %825 = load %struct.Point*** %824, align 8
  store %"class.std::__1::move_iterator"* %266, %"class.std::__1::move_iterator"** %197, align 8
  store %struct.Point** %825, %struct.Point*** %198, align 8
  %826 = load %"class.std::__1::move_iterator"** %197
  %827 = load %struct.Point*** %198, align 8
  store %"class.std::__1::move_iterator"* %826, %"class.std::__1::move_iterator"** %195, align 8
  store %struct.Point** %827, %struct.Point*** %196, align 8
  %828 = load %"class.std::__1::move_iterator"** %195
  %829 = getelementptr inbounds %"class.std::__1::move_iterator"* %828, i32 0, i32 0
  %830 = load %struct.Point*** %196, align 8
  store %struct.Point** %830, %struct.Point*** %829, align 8
  %831 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %832 = load %struct.Point*** %831, align 8
  store %"class.std::__1::move_iterator"* %269, %"class.std::__1::move_iterator"** %201, align 8
  store %struct.Point** %832, %struct.Point*** %202, align 8
  %833 = load %"class.std::__1::move_iterator"** %201
  %834 = load %struct.Point*** %202, align 8
  store %"class.std::__1::move_iterator"* %833, %"class.std::__1::move_iterator"** %199, align 8
  store %struct.Point** %834, %struct.Point*** %200, align 8
  %835 = load %"class.std::__1::move_iterator"** %199
  %836 = getelementptr inbounds %"class.std::__1::move_iterator"* %835, i32 0, i32 0
  %837 = load %struct.Point*** %200, align 8
  store %struct.Point** %837, %struct.Point*** %836, align 8
  %838 = getelementptr %"class.std::__1::move_iterator"* %266, i32 0, i32 0
  %839 = load %struct.Point*** %838
  %840 = getelementptr %"class.std::__1::move_iterator"* %269, i32 0, i32 0
  %841 = load %struct.Point*** %840
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_(%"struct.std::__1::__split_buffer.9"* %__t.i14, %struct.Point** %839, %struct.Point** %841)
          to label %842 unwind label %901

; <label>:842                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i15
  %843 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 0
  %844 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i14, i32 0, i32 0
  store %struct.Point*** %843, %struct.Point**** %209, align 8
  store %struct.Point*** %844, %struct.Point**** %210, align 8
  %845 = load %struct.Point**** %209, align 8
  store %struct.Point*** %845, %struct.Point**** %208, align 8
  %846 = load %struct.Point**** %208, align 8
  %847 = load %struct.Point*** %846
  store %struct.Point** %847, %struct.Point*** %__t.i3.i6, align 8
  %848 = load %struct.Point**** %210, align 8
  store %struct.Point*** %848, %struct.Point**** %206, align 8
  %849 = load %struct.Point**** %206, align 8
  %850 = load %struct.Point*** %849
  %851 = load %struct.Point**** %209, align 8
  store %struct.Point** %850, %struct.Point*** %851, align 8
  store %struct.Point*** %__t.i3.i6, %struct.Point**** %207, align 8
  %852 = load %struct.Point**** %207, align 8
  %853 = load %struct.Point*** %852
  %854 = load %struct.Point**** %210, align 8
  store %struct.Point** %853, %struct.Point*** %854, align 8
  %855 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 1
  %856 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i14, i32 0, i32 1
  store %struct.Point*** %855, %struct.Point**** %214, align 8
  store %struct.Point*** %856, %struct.Point**** %215, align 8
  %857 = load %struct.Point**** %214, align 8
  store %struct.Point*** %857, %struct.Point**** %213, align 8
  %858 = load %struct.Point**** %213, align 8
  %859 = load %struct.Point*** %858
  store %struct.Point** %859, %struct.Point*** %__t.i2.i7, align 8
  %860 = load %struct.Point**** %215, align 8
  store %struct.Point*** %860, %struct.Point**** %211, align 8
  %861 = load %struct.Point**** %211, align 8
  %862 = load %struct.Point*** %861
  %863 = load %struct.Point**** %214, align 8
  store %struct.Point** %862, %struct.Point*** %863, align 8
  store %struct.Point*** %__t.i2.i7, %struct.Point**** %212, align 8
  %864 = load %struct.Point**** %212, align 8
  %865 = load %struct.Point*** %864
  %866 = load %struct.Point**** %215, align 8
  store %struct.Point** %865, %struct.Point*** %866, align 8
  %867 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %868 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i14, i32 0, i32 2
  store %struct.Point*** %867, %struct.Point**** %219, align 8
  store %struct.Point*** %868, %struct.Point**** %220, align 8
  %869 = load %struct.Point**** %219, align 8
  store %struct.Point*** %869, %struct.Point**** %218, align 8
  %870 = load %struct.Point**** %218, align 8
  %871 = load %struct.Point*** %870
  store %struct.Point** %871, %struct.Point*** %__t.i1.i8, align 8
  %872 = load %struct.Point**** %220, align 8
  store %struct.Point*** %872, %struct.Point**** %216, align 8
  %873 = load %struct.Point**** %216, align 8
  %874 = load %struct.Point*** %873
  %875 = load %struct.Point**** %219, align 8
  store %struct.Point** %874, %struct.Point*** %875, align 8
  store %struct.Point*** %__t.i1.i8, %struct.Point**** %217, align 8
  %876 = load %struct.Point**** %217, align 8
  %877 = load %struct.Point*** %876
  %878 = load %struct.Point**** %220, align 8
  store %struct.Point** %877, %struct.Point*** %878, align 8
  store %"struct.std::__1::__split_buffer"* %719, %"struct.std::__1::__split_buffer"** %223, align 8
  %879 = load %"struct.std::__1::__split_buffer"** %223
  %880 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %879, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %880, %"class.std::__1::__compressed_pair"** %222, align 8
  %881 = load %"class.std::__1::__compressed_pair"** %222
  %882 = bitcast %"class.std::__1::__compressed_pair"* %881 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %882, %"class.std::__1::__libcpp_compressed_pair_imp"** %221, align 8
  %883 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %221
  %884 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %883, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.9"* %__t.i14, %"struct.std::__1::__split_buffer.9"** %226, align 8
  %885 = load %"struct.std::__1::__split_buffer.9"** %226
  %886 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %885, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %886, %"class.std::__1::__compressed_pair.10"** %225, align 8
  %887 = load %"class.std::__1::__compressed_pair.10"** %225
  %888 = bitcast %"class.std::__1::__compressed_pair.10"* %887 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %888, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %224, align 8
  %889 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %224
  %890 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %889, i32 0, i32 0
  store %struct.Point*** %884, %struct.Point**** %230, align 8
  store %struct.Point*** %890, %struct.Point**** %231, align 8
  %891 = load %struct.Point**** %230, align 8
  store %struct.Point*** %891, %struct.Point**** %229, align 8
  %892 = load %struct.Point**** %229, align 8
  %893 = load %struct.Point*** %892
  store %struct.Point** %893, %struct.Point*** %__t.i.i9, align 8
  %894 = load %struct.Point**** %231, align 8
  store %struct.Point*** %894, %struct.Point**** %227, align 8
  %895 = load %struct.Point**** %227, align 8
  %896 = load %struct.Point*** %895
  %897 = load %struct.Point**** %230, align 8
  store %struct.Point** %896, %struct.Point*** %897, align 8
  store %struct.Point*** %__t.i.i9, %struct.Point**** %228, align 8
  %898 = load %struct.Point**** %228, align 8
  %899 = load %struct.Point*** %898
  %900 = load %struct.Point**** %231, align 8
  store %struct.Point** %899, %struct.Point*** %900, align 8
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i14)
  br label %910

; <label>:901                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i15
  %902 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %903 = extractvalue { i8*, i32 } %902, 0
  store i8* %903, i8** %267
  %904 = extractvalue { i8*, i32 } %902, 1
  store i32 %904, i32* %268
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i14)
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
  store %"class.std::__1::__compressed_pair"* %913, %"class.std::__1::__compressed_pair"** %244, align 8
  %914 = load %"class.std::__1::__compressed_pair"** %244
  %915 = bitcast %"class.std::__1::__compressed_pair"* %914 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %915, %"class.std::__1::__libcpp_compressed_pair_imp"** %243, align 8
  %916 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %243
  %917 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %916 to %"class.std::__1::allocator"*
  %918 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %919 = load %struct.Point*** %918, align 8
  store %struct.Point** %919, %struct.Point*** %246, align 8
  %920 = load %struct.Point*** %246, align 8
  %921 = load %struct.Point*** %263, align 8
  store %"class.std::__1::allocator"* %917, %"class.std::__1::allocator"** %247, align 8
  store %struct.Point** %920, %struct.Point*** %248, align 8
  store %struct.Point** %921, %struct.Point*** %249, align 8
  %922 = load %struct.Point*** %248, align 8
  %923 = bitcast %struct.Point** %922 to i8*
  %924 = icmp eq i8* %923, null
  br i1 %924, label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit16, label %925

; <label>:925                                     ; preds = %911
  %926 = bitcast i8* %923 to %struct.Point**
  %927 = load %struct.Point*** %249, align 8
  %928 = load %struct.Point** %927, align 8
  store %struct.Point* %928, %struct.Point** %926, align 8
  br label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit16

; <label>:929                                     ; preds = %901
  %930 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %931 = extractvalue { i8*, i32 } %930, 0
  call void @__clang_call_terminate(i8* %931) #9
  unreachable

_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit16: ; preds = %911, %925
  %932 = phi %struct.Point** [ %926, %925 ], [ null, %911 ]
  %933 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %719, i32 0, i32 2
  %934 = load %struct.Point*** %933, align 8
  %935 = getelementptr inbounds %struct.Point** %934, i32 1
  store %struct.Point** %935, %struct.Point*** %933, align 8
  br label %1184

; <label>:936                                     ; preds = %690
  %937 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %938 = getelementptr inbounds %"class.std::__1::__deque_base"* %937, i32 0, i32 0
  %939 = load %"class.std::__1::allocator.2"** %__a, align 8
  store %"class.std::__1::allocator.2"* %939, %"class.std::__1::allocator.2"** %193, align 8
  store i64 512, i64* %194, align 8
  %940 = load %"class.std::__1::allocator.2"** %193, align 8
  %941 = load i64* %194, align 8
  store %"class.std::__1::allocator.2"* %940, %"class.std::__1::allocator.2"** %190, align 8
  store i64 %941, i64* %191, align 8
  store i8* null, i8** %192, align 8
  %942 = load %"class.std::__1::allocator.2"** %190
  %943 = load i64* %191, align 8
  %944 = mul i64 %943, 8
  %945 = call noalias i8* @_Znwm(i64 %944)
  %946 = bitcast i8* %945 to %struct.Point*
  store %struct.Point* %946, %struct.Point** %400
  call void @_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE10push_frontERKS2_(%"struct.std::__1::__split_buffer"* %938, %struct.Point** %400)
  %947 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %948 = getelementptr inbounds %"class.std::__1::__deque_base"* %947, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %948, %"struct.std::__1::__split_buffer"** %189, align 8
  %949 = load %"struct.std::__1::__split_buffer"** %189
  %950 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %949, i32 0, i32 1
  %951 = load %struct.Point*** %950, align 8
  %952 = load %struct.Point** %951
  store %struct.Point* %952, %struct.Point** %__pt1, align 8
  %953 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %954 = getelementptr inbounds %"class.std::__1::__deque_base"* %953, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %954, %"struct.std::__1::__split_buffer"** %188, align 8
  %955 = load %"struct.std::__1::__split_buffer"** %188
  %956 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %955, i32 0, i32 1
  %957 = load %struct.Point*** %956, align 8
  %958 = getelementptr inbounds %struct.Point** %957, i64 1
  store %"struct.std::__1::__split_buffer"* %955, %"struct.std::__1::__split_buffer"** %184, align 8
  store %struct.Point** %958, %struct.Point*** %185, align 8
  %959 = load %"struct.std::__1::__split_buffer"** %184
  %960 = load %struct.Point*** %185, align 8
  %961 = bitcast %"struct.std::__1::is_trivially_destructible"* %187 to %"struct.std::__1::integral_constant.12"*
  store %"struct.std::__1::__split_buffer"* %959, %"struct.std::__1::__split_buffer"** %181, align 8
  store %struct.Point** %960, %struct.Point*** %182, align 8
  %962 = load %"struct.std::__1::__split_buffer"** %181
  %963 = load %struct.Point*** %182, align 8
  %964 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %962, i32 0, i32 1
  store %struct.Point** %963, %struct.Point*** %964, align 8
  %965 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %966 = getelementptr inbounds %"class.std::__1::__deque_base"* %965, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %966, %"struct.std::__1::__split_buffer"** %173, align 8
  store %struct.Point** %__pt1, %struct.Point*** %174, align 8
  %967 = load %"struct.std::__1::__split_buffer"** %173
  %968 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %969 = load %struct.Point*** %968, align 8
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %172, align 8
  %970 = load %"struct.std::__1::__split_buffer"** %172
  %971 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %970, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %971, %"class.std::__1::__compressed_pair"** %171, align 8
  %972 = load %"class.std::__1::__compressed_pair"** %171
  %973 = bitcast %"class.std::__1::__compressed_pair"* %972 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %973, %"class.std::__1::__libcpp_compressed_pair_imp"** %170, align 8
  %974 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %170
  %975 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %974, i32 0, i32 0
  %976 = load %struct.Point*** %975
  %977 = icmp eq %struct.Point** %969, %976
  br i1 %977, label %978, label %1159

; <label>:978                                     ; preds = %936
  %979 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %980 = load %struct.Point*** %979, align 8
  %981 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %982 = load %struct.Point*** %981, align 8
  %983 = icmp ugt %struct.Point** %980, %982
  br i1 %983, label %984, label %1032

; <label>:984                                     ; preds = %978
  %985 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %986 = load %struct.Point*** %985, align 8
  %987 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %988 = load %struct.Point*** %987, align 8
  %989 = ptrtoint %struct.Point** %986 to i64
  %990 = ptrtoint %struct.Point** %988 to i64
  %991 = sub i64 %989, %990
  %992 = sdiv exact i64 %991, 8
  store i64 %992, i64* %__d.i23, align 8
  %993 = load i64* %__d.i23, align 8
  %994 = add nsw i64 %993, 1
  %995 = sdiv i64 %994, 2
  store i64 %995, i64* %__d.i23, align 8
  %996 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %997 = load %struct.Point*** %996, align 8
  %998 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %999 = load %struct.Point*** %998, align 8
  %1000 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1001 = load %struct.Point*** %1000, align 8
  %1002 = load i64* %__d.i23, align 8
  %1003 = sub i64 0, %1002
  %1004 = getelementptr inbounds %struct.Point** %1001, i64 %1003
  store %struct.Point** %997, %struct.Point*** %167, align 8
  store %struct.Point** %999, %struct.Point*** %168, align 8
  store %struct.Point** %1004, %struct.Point*** %169, align 8
  %1005 = load %struct.Point*** %167, align 8
  store %struct.Point** %1005, %struct.Point*** %166, align 8
  %1006 = load %struct.Point*** %166, align 8
  %1007 = load %struct.Point*** %168, align 8
  store %struct.Point** %1007, %struct.Point*** %161, align 8
  %1008 = load %struct.Point*** %161, align 8
  %1009 = load %struct.Point*** %169, align 8
  store %struct.Point** %1009, %struct.Point*** %162, align 8
  %1010 = load %struct.Point*** %162, align 8
  store %struct.Point** %1006, %struct.Point*** %163, align 8
  store %struct.Point** %1008, %struct.Point*** %164, align 8
  store %struct.Point** %1010, %struct.Point*** %165, align 8
  %1011 = load %struct.Point*** %164, align 8
  %1012 = load %struct.Point*** %163, align 8
  %1013 = ptrtoint %struct.Point** %1011 to i64
  %1014 = ptrtoint %struct.Point** %1012 to i64
  %1015 = sub i64 %1013, %1014
  %1016 = sdiv exact i64 %1015, 8
  store i64 %1016, i64* %__n.i.i.i22, align 8
  %1017 = load %struct.Point*** %165, align 8
  %1018 = bitcast %struct.Point** %1017 to i8*
  %1019 = load %struct.Point*** %163, align 8
  %1020 = bitcast %struct.Point** %1019 to i8*
  %1021 = load i64* %__n.i.i.i22, align 8
  %1022 = mul i64 %1021, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1018, i8* %1020, i64 %1022, i32 8, i1 false) #1
  %1023 = load %struct.Point*** %165, align 8
  %1024 = load i64* %__n.i.i.i22, align 8
  %1025 = getelementptr inbounds %struct.Point** %1023, i64 %1024
  %1026 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  store %struct.Point** %1025, %struct.Point*** %1026, align 8
  %1027 = load i64* %__d.i23, align 8
  %1028 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1029 = load %struct.Point*** %1028, align 8
  %1030 = sub i64 0, %1027
  %1031 = getelementptr inbounds %struct.Point** %1029, i64 %1030
  store %struct.Point** %1031, %struct.Point*** %1028, align 8
  br label %1158

; <label>:1032                                    ; preds = %978
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %153, align 8
  %1033 = load %"struct.std::__1::__split_buffer"** %153
  %1034 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1033, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %1034, %"class.std::__1::__compressed_pair"** %152, align 8
  %1035 = load %"class.std::__1::__compressed_pair"** %152
  %1036 = bitcast %"class.std::__1::__compressed_pair"* %1035 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %1036, %"class.std::__1::__libcpp_compressed_pair_imp"** %151, align 8
  %1037 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %151
  %1038 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %1037, i32 0, i32 0
  %1039 = load %struct.Point*** %1038
  %1040 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %1041 = load %struct.Point*** %1040, align 8
  %1042 = ptrtoint %struct.Point** %1039 to i64
  %1043 = ptrtoint %struct.Point** %1041 to i64
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
  store %"class.std::__1::__compressed_pair"* %1067, %"class.std::__1::__compressed_pair"** %115, align 8
  %1068 = load %"class.std::__1::__compressed_pair"** %115
  %1069 = bitcast %"class.std::__1::__compressed_pair"* %1068 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %1069, %"class.std::__1::__libcpp_compressed_pair_imp"** %114, align 8
  %1070 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %114
  %1071 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %1070 to %"class.std::__1::allocator"*
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %__t.i25, i64 %1063, i64 %1065, %"class.std::__1::allocator"* %1071)
  %1072 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1073 = load %struct.Point*** %1072, align 8
  store %"class.std::__1::move_iterator"* %177, %"class.std::__1::move_iterator"** %108, align 8
  store %struct.Point** %1073, %struct.Point*** %109, align 8
  %1074 = load %"class.std::__1::move_iterator"** %108
  %1075 = load %struct.Point*** %109, align 8
  store %"class.std::__1::move_iterator"* %1074, %"class.std::__1::move_iterator"** %106, align 8
  store %struct.Point** %1075, %struct.Point*** %107, align 8
  %1076 = load %"class.std::__1::move_iterator"** %106
  %1077 = getelementptr inbounds %"class.std::__1::move_iterator"* %1076, i32 0, i32 0
  %1078 = load %struct.Point*** %107, align 8
  store %struct.Point** %1078, %struct.Point*** %1077, align 8
  %1079 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1080 = load %struct.Point*** %1079, align 8
  store %"class.std::__1::move_iterator"* %180, %"class.std::__1::move_iterator"** %112, align 8
  store %struct.Point** %1080, %struct.Point*** %113, align 8
  %1081 = load %"class.std::__1::move_iterator"** %112
  %1082 = load %struct.Point*** %113, align 8
  store %"class.std::__1::move_iterator"* %1081, %"class.std::__1::move_iterator"** %110, align 8
  store %struct.Point** %1082, %struct.Point*** %111, align 8
  %1083 = load %"class.std::__1::move_iterator"** %110
  %1084 = getelementptr inbounds %"class.std::__1::move_iterator"* %1083, i32 0, i32 0
  %1085 = load %struct.Point*** %111, align 8
  store %struct.Point** %1085, %struct.Point*** %1084, align 8
  %1086 = getelementptr %"class.std::__1::move_iterator"* %177, i32 0, i32 0
  %1087 = load %struct.Point*** %1086
  %1088 = getelementptr %"class.std::__1::move_iterator"* %180, i32 0, i32 0
  %1089 = load %struct.Point*** %1088
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_(%"struct.std::__1::__split_buffer.9"* %__t.i25, %struct.Point** %1087, %struct.Point** %1089)
          to label %1090 unwind label %1149

; <label>:1090                                    ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i26
  %1091 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 0
  %1092 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i25, i32 0, i32 0
  store %struct.Point*** %1091, %struct.Point**** %120, align 8
  store %struct.Point*** %1092, %struct.Point**** %121, align 8
  %1093 = load %struct.Point**** %120, align 8
  store %struct.Point*** %1093, %struct.Point**** %119, align 8
  %1094 = load %struct.Point**** %119, align 8
  %1095 = load %struct.Point*** %1094
  store %struct.Point** %1095, %struct.Point*** %__t.i3.i17, align 8
  %1096 = load %struct.Point**** %121, align 8
  store %struct.Point*** %1096, %struct.Point**** %117, align 8
  %1097 = load %struct.Point**** %117, align 8
  %1098 = load %struct.Point*** %1097
  %1099 = load %struct.Point**** %120, align 8
  store %struct.Point** %1098, %struct.Point*** %1099, align 8
  store %struct.Point*** %__t.i3.i17, %struct.Point**** %118, align 8
  %1100 = load %struct.Point**** %118, align 8
  %1101 = load %struct.Point*** %1100
  %1102 = load %struct.Point**** %121, align 8
  store %struct.Point** %1101, %struct.Point*** %1102, align 8
  %1103 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 1
  %1104 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i25, i32 0, i32 1
  store %struct.Point*** %1103, %struct.Point**** %125, align 8
  store %struct.Point*** %1104, %struct.Point**** %126, align 8
  %1105 = load %struct.Point**** %125, align 8
  store %struct.Point*** %1105, %struct.Point**** %124, align 8
  %1106 = load %struct.Point**** %124, align 8
  %1107 = load %struct.Point*** %1106
  store %struct.Point** %1107, %struct.Point*** %__t.i2.i18, align 8
  %1108 = load %struct.Point**** %126, align 8
  store %struct.Point*** %1108, %struct.Point**** %122, align 8
  %1109 = load %struct.Point**** %122, align 8
  %1110 = load %struct.Point*** %1109
  %1111 = load %struct.Point**** %125, align 8
  store %struct.Point** %1110, %struct.Point*** %1111, align 8
  store %struct.Point*** %__t.i2.i18, %struct.Point**** %123, align 8
  %1112 = load %struct.Point**** %123, align 8
  %1113 = load %struct.Point*** %1112
  %1114 = load %struct.Point**** %126, align 8
  store %struct.Point** %1113, %struct.Point*** %1114, align 8
  %1115 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1116 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i25, i32 0, i32 2
  store %struct.Point*** %1115, %struct.Point**** %130, align 8
  store %struct.Point*** %1116, %struct.Point**** %131, align 8
  %1117 = load %struct.Point**** %130, align 8
  store %struct.Point*** %1117, %struct.Point**** %129, align 8
  %1118 = load %struct.Point**** %129, align 8
  %1119 = load %struct.Point*** %1118
  store %struct.Point** %1119, %struct.Point*** %__t.i1.i19, align 8
  %1120 = load %struct.Point**** %131, align 8
  store %struct.Point*** %1120, %struct.Point**** %127, align 8
  %1121 = load %struct.Point**** %127, align 8
  %1122 = load %struct.Point*** %1121
  %1123 = load %struct.Point**** %130, align 8
  store %struct.Point** %1122, %struct.Point*** %1123, align 8
  store %struct.Point*** %__t.i1.i19, %struct.Point**** %128, align 8
  %1124 = load %struct.Point**** %128, align 8
  %1125 = load %struct.Point*** %1124
  %1126 = load %struct.Point**** %131, align 8
  store %struct.Point** %1125, %struct.Point*** %1126, align 8
  store %"struct.std::__1::__split_buffer"* %967, %"struct.std::__1::__split_buffer"** %134, align 8
  %1127 = load %"struct.std::__1::__split_buffer"** %134
  %1128 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1127, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %1128, %"class.std::__1::__compressed_pair"** %133, align 8
  %1129 = load %"class.std::__1::__compressed_pair"** %133
  %1130 = bitcast %"class.std::__1::__compressed_pair"* %1129 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %1130, %"class.std::__1::__libcpp_compressed_pair_imp"** %132, align 8
  %1131 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %132
  %1132 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %1131, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.9"* %__t.i25, %"struct.std::__1::__split_buffer.9"** %137, align 8
  %1133 = load %"struct.std::__1::__split_buffer.9"** %137
  %1134 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1133, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1134, %"class.std::__1::__compressed_pair.10"** %136, align 8
  %1135 = load %"class.std::__1::__compressed_pair.10"** %136
  %1136 = bitcast %"class.std::__1::__compressed_pair.10"* %1135 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1136, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %135, align 8
  %1137 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %135
  %1138 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1137, i32 0, i32 0
  store %struct.Point*** %1132, %struct.Point**** %141, align 8
  store %struct.Point*** %1138, %struct.Point**** %142, align 8
  %1139 = load %struct.Point**** %141, align 8
  store %struct.Point*** %1139, %struct.Point**** %140, align 8
  %1140 = load %struct.Point**** %140, align 8
  %1141 = load %struct.Point*** %1140
  store %struct.Point** %1141, %struct.Point*** %__t.i.i20, align 8
  %1142 = load %struct.Point**** %142, align 8
  store %struct.Point*** %1142, %struct.Point**** %138, align 8
  %1143 = load %struct.Point**** %138, align 8
  %1144 = load %struct.Point*** %1143
  %1145 = load %struct.Point**** %141, align 8
  store %struct.Point** %1144, %struct.Point*** %1145, align 8
  store %struct.Point*** %__t.i.i20, %struct.Point**** %139, align 8
  %1146 = load %struct.Point**** %139, align 8
  %1147 = load %struct.Point*** %1146
  %1148 = load %struct.Point**** %142, align 8
  store %struct.Point** %1147, %struct.Point*** %1148, align 8
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i25)
  br label %1158

; <label>:1149                                    ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i26
  %1150 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1151 = extractvalue { i8*, i32 } %1150, 0
  store i8* %1151, i8** %178
  %1152 = extractvalue { i8*, i32 } %1150, 1
  store i32 %1152, i32* %179
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i25)
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
  store %"class.std::__1::__compressed_pair"* %1161, %"class.std::__1::__compressed_pair"** %155, align 8
  %1162 = load %"class.std::__1::__compressed_pair"** %155
  %1163 = bitcast %"class.std::__1::__compressed_pair"* %1162 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %1163, %"class.std::__1::__libcpp_compressed_pair_imp"** %154, align 8
  %1164 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %154
  %1165 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %1164 to %"class.std::__1::allocator"*
  %1166 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1167 = load %struct.Point*** %1166, align 8
  store %struct.Point** %1167, %struct.Point*** %157, align 8
  %1168 = load %struct.Point*** %157, align 8
  %1169 = load %struct.Point*** %174, align 8
  store %"class.std::__1::allocator"* %1165, %"class.std::__1::allocator"** %158, align 8
  store %struct.Point** %1168, %struct.Point*** %159, align 8
  store %struct.Point** %1169, %struct.Point*** %160, align 8
  %1170 = load %struct.Point*** %159, align 8
  %1171 = bitcast %struct.Point** %1170 to i8*
  %1172 = icmp eq i8* %1171, null
  br i1 %1172, label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit27, label %1173

; <label>:1173                                    ; preds = %1159
  %1174 = bitcast i8* %1171 to %struct.Point**
  %1175 = load %struct.Point*** %160, align 8
  %1176 = load %struct.Point** %1175, align 8
  store %struct.Point* %1176, %struct.Point** %1174, align 8
  br label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit27

; <label>:1177                                    ; preds = %1149
  %1178 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %1179 = extractvalue { i8*, i32 } %1178, 0
  call void @__clang_call_terminate(i8* %1179) #9
  unreachable

_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit27: ; preds = %1159, %1173
  %1180 = phi %struct.Point** [ %1174, %1173 ], [ null, %1159 ]
  %1181 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %967, i32 0, i32 2
  %1182 = load %struct.Point*** %1181, align 8
  %1183 = getelementptr inbounds %struct.Point** %1182, i32 1
  store %struct.Point** %1183, %struct.Point*** %1181, align 8
  br label %1184

; <label>:1184                                    ; preds = %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit27, %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit16
  br label %1587

; <label>:1185                                    ; preds = %661
  %1186 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1187 = getelementptr inbounds %"class.std::__1::__deque_base"* %1186, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1187, %"struct.std::__1::__split_buffer"** %105, align 8
  %1188 = load %"struct.std::__1::__split_buffer"** %105
  store %"struct.std::__1::__split_buffer"* %1188, %"struct.std::__1::__split_buffer"** %104, align 8
  %1189 = load %"struct.std::__1::__split_buffer"** %104
  %1190 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1189, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %1190, %"class.std::__1::__compressed_pair"** %103, align 8
  %1191 = load %"class.std::__1::__compressed_pair"** %103
  %1192 = bitcast %"class.std::__1::__compressed_pair"* %1191 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %1192, %"class.std::__1::__libcpp_compressed_pair_imp"** %102, align 8
  %1193 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %102
  %1194 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %1193, i32 0, i32 0
  %1195 = load %struct.Point*** %1194
  %1196 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1188, i32 0, i32 0
  %1197 = load %struct.Point*** %1196, align 8
  %1198 = ptrtoint %struct.Point** %1195 to i64
  %1199 = ptrtoint %struct.Point** %1197 to i64
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
  %1223 = load %struct.Point*** %1222, align 8
  %1224 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1221, i32 0, i32 1
  %1225 = load %struct.Point*** %1224, align 8
  %1226 = ptrtoint %struct.Point** %1223 to i64
  %1227 = ptrtoint %struct.Point** %1225 to i64
  %1228 = sub i64 %1226, %1227
  %1229 = sdiv exact i64 %1228, 8
  %1230 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1231 = getelementptr inbounds %"class.std::__1::__deque_base"* %1230, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1231, %"struct.std::__1::__split_buffer"** %92, align 8
  %1232 = load %"struct.std::__1::__split_buffer"** %92
  %1233 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1232, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %1233, %"class.std::__1::__compressed_pair"** %91, align 8
  %1234 = load %"class.std::__1::__compressed_pair"** %91
  %1235 = bitcast %"class.std::__1::__compressed_pair"* %1234 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %1235, %"class.std::__1::__libcpp_compressed_pair_imp"** %90, align 8
  %1236 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %90
  %1237 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %1236 to %"class.std::__1::allocator"*
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %__buf, i64 %1218, i64 %1229, %"class.std::__1::allocator"* %1237)
  %1238 = load %"class.std::__1::allocator.2"** %__a, align 8
  store %"class.std::__1::allocator.2"* %1238, %"class.std::__1::allocator.2"** %88, align 8
  store i64 512, i64* %89, align 8
  %1239 = load %"class.std::__1::allocator.2"** %88, align 8
  %1240 = load i64* %89, align 8
  store %"class.std::__1::allocator.2"* %1239, %"class.std::__1::allocator.2"** %85, align 8
  store i64 %1240, i64* %86, align 8
  store i8* null, i8** %87, align 8
  %1241 = load %"class.std::__1::allocator.2"** %85
  %1242 = load i64* %86, align 8
  %1243 = mul i64 %1242, 8
  %1244 = invoke noalias i8* @_Znwm(i64 %1243)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorI5PointEEE8allocateERS3_m.exit unwind label %1467

_ZNSt3__116allocator_traitsINS_9allocatorI5PointEEE8allocateERS3_m.exit: ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit
  %1245 = bitcast i8* %1244 to %struct.Point*
  br label %1246

; <label>:1246                                    ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI5PointEEE8allocateERS3_m.exit
  store %struct.Point* %1245, %struct.Point** %403
  store %"struct.std::__1::__split_buffer.9"* %__buf, %"struct.std::__1::__split_buffer.9"** %77, align 8
  store %struct.Point** %403, %struct.Point*** %78, align 8
  %1247 = load %"struct.std::__1::__split_buffer.9"** %77
  %1248 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 2
  %1249 = load %struct.Point*** %1248, align 8
  store %"struct.std::__1::__split_buffer.9"* %1247, %"struct.std::__1::__split_buffer.9"** %76, align 8
  %1250 = load %"struct.std::__1::__split_buffer.9"** %76
  %1251 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1250, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1251, %"class.std::__1::__compressed_pair.10"** %75, align 8
  %1252 = load %"class.std::__1::__compressed_pair.10"** %75
  %1253 = bitcast %"class.std::__1::__compressed_pair.10"* %1252 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1253, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %74, align 8
  %1254 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %74
  %1255 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1254, i32 0, i32 0
  %1256 = load %struct.Point*** %1255
  %1257 = icmp eq %struct.Point** %1249, %1256
  br i1 %1257, label %1258, label %1440

; <label>:1258                                    ; preds = %1246
  %1259 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 1
  %1260 = load %struct.Point*** %1259, align 8
  %1261 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 0
  %1262 = load %struct.Point*** %1261, align 8
  %1263 = icmp ugt %struct.Point** %1260, %1262
  br i1 %1263, label %1264, label %1312

; <label>:1264                                    ; preds = %1258
  %1265 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 1
  %1266 = load %struct.Point*** %1265, align 8
  %1267 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 0
  %1268 = load %struct.Point*** %1267, align 8
  %1269 = ptrtoint %struct.Point** %1266 to i64
  %1270 = ptrtoint %struct.Point** %1268 to i64
  %1271 = sub i64 %1269, %1270
  %1272 = sdiv exact i64 %1271, 8
  store i64 %1272, i64* %__d.i34, align 8
  %1273 = load i64* %__d.i34, align 8
  %1274 = add nsw i64 %1273, 1
  %1275 = sdiv i64 %1274, 2
  store i64 %1275, i64* %__d.i34, align 8
  %1276 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 1
  %1277 = load %struct.Point*** %1276, align 8
  %1278 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 2
  %1279 = load %struct.Point*** %1278, align 8
  %1280 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 1
  %1281 = load %struct.Point*** %1280, align 8
  %1282 = load i64* %__d.i34, align 8
  %1283 = sub i64 0, %1282
  %1284 = getelementptr inbounds %struct.Point** %1281, i64 %1283
  store %struct.Point** %1277, %struct.Point*** %71, align 8
  store %struct.Point** %1279, %struct.Point*** %72, align 8
  store %struct.Point** %1284, %struct.Point*** %73, align 8
  %1285 = load %struct.Point*** %71, align 8
  store %struct.Point** %1285, %struct.Point*** %70, align 8
  %1286 = load %struct.Point*** %70, align 8
  %1287 = load %struct.Point*** %72, align 8
  store %struct.Point** %1287, %struct.Point*** %65, align 8
  %1288 = load %struct.Point*** %65, align 8
  %1289 = load %struct.Point*** %73, align 8
  store %struct.Point** %1289, %struct.Point*** %66, align 8
  %1290 = load %struct.Point*** %66, align 8
  store %struct.Point** %1286, %struct.Point*** %67, align 8
  store %struct.Point** %1288, %struct.Point*** %68, align 8
  store %struct.Point** %1290, %struct.Point*** %69, align 8
  %1291 = load %struct.Point*** %68, align 8
  %1292 = load %struct.Point*** %67, align 8
  %1293 = ptrtoint %struct.Point** %1291 to i64
  %1294 = ptrtoint %struct.Point** %1292 to i64
  %1295 = sub i64 %1293, %1294
  %1296 = sdiv exact i64 %1295, 8
  store i64 %1296, i64* %__n.i.i.i33, align 8
  %1297 = load %struct.Point*** %69, align 8
  %1298 = bitcast %struct.Point** %1297 to i8*
  %1299 = load %struct.Point*** %67, align 8
  %1300 = bitcast %struct.Point** %1299 to i8*
  %1301 = load i64* %__n.i.i.i33, align 8
  %1302 = mul i64 %1301, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1298, i8* %1300, i64 %1302, i32 8, i1 false) #1
  %1303 = load %struct.Point*** %69, align 8
  %1304 = load i64* %__n.i.i.i33, align 8
  %1305 = getelementptr inbounds %struct.Point** %1303, i64 %1304
  %1306 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 2
  store %struct.Point** %1305, %struct.Point*** %1306, align 8
  %1307 = load i64* %__d.i34, align 8
  %1308 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 1
  %1309 = load %struct.Point*** %1308, align 8
  %1310 = sub i64 0, %1307
  %1311 = getelementptr inbounds %struct.Point** %1309, i64 %1310
  store %struct.Point** %1311, %struct.Point*** %1308, align 8
  br label %1439

; <label>:1312                                    ; preds = %1258
  store %"struct.std::__1::__split_buffer.9"* %1247, %"struct.std::__1::__split_buffer.9"** %57, align 8
  %1313 = load %"struct.std::__1::__split_buffer.9"** %57
  %1314 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1313, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1314, %"class.std::__1::__compressed_pair.10"** %56, align 8
  %1315 = load %"class.std::__1::__compressed_pair.10"** %56
  %1316 = bitcast %"class.std::__1::__compressed_pair.10"* %1315 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1316, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %55, align 8
  %1317 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %55
  %1318 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1317, i32 0, i32 0
  %1319 = load %struct.Point*** %1318
  %1320 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 0
  %1321 = load %struct.Point*** %1320, align 8
  %1322 = ptrtoint %struct.Point** %1319 to i64
  %1323 = ptrtoint %struct.Point** %1321 to i64
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
  store %"struct.std::__1::__split_buffer.9"* %1247, %"struct.std::__1::__split_buffer.9"** %20, align 8
  %1346 = load %"struct.std::__1::__split_buffer.9"** %20
  %1347 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1346, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1347, %"class.std::__1::__compressed_pair.10"** %19, align 8
  %1348 = load %"class.std::__1::__compressed_pair.10"** %19
  %1349 = bitcast %"class.std::__1::__compressed_pair.10"* %1348 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1349, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %18, align 8
  %1350 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %18
  %1351 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1350, i32 0, i32 1
  %1352 = load %"class.std::__1::allocator"** %1351, align 8
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %__t.i36, i64 %1343, i64 %1345, %"class.std::__1::allocator"* %1352)
          to label %.noexc unwind label %1467

.noexc:                                           ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit.i37
  %1353 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 1
  %1354 = load %struct.Point*** %1353, align 8
  store %"class.std::__1::move_iterator"* %81, %"class.std::__1::move_iterator"** %12, align 8
  store %struct.Point** %1354, %struct.Point*** %13, align 8
  %1355 = load %"class.std::__1::move_iterator"** %12
  %1356 = load %struct.Point*** %13, align 8
  store %"class.std::__1::move_iterator"* %1355, %"class.std::__1::move_iterator"** %10, align 8
  store %struct.Point** %1356, %struct.Point*** %11, align 8
  %1357 = load %"class.std::__1::move_iterator"** %10
  %1358 = getelementptr inbounds %"class.std::__1::move_iterator"* %1357, i32 0, i32 0
  %1359 = load %struct.Point*** %11, align 8
  store %struct.Point** %1359, %struct.Point*** %1358, align 8
  %1360 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 2
  %1361 = load %struct.Point*** %1360, align 8
  store %"class.std::__1::move_iterator"* %84, %"class.std::__1::move_iterator"** %16, align 8
  store %struct.Point** %1361, %struct.Point*** %17, align 8
  %1362 = load %"class.std::__1::move_iterator"** %16
  %1363 = load %struct.Point*** %17, align 8
  store %"class.std::__1::move_iterator"* %1362, %"class.std::__1::move_iterator"** %14, align 8
  store %struct.Point** %1363, %struct.Point*** %15, align 8
  %1364 = load %"class.std::__1::move_iterator"** %14
  %1365 = getelementptr inbounds %"class.std::__1::move_iterator"* %1364, i32 0, i32 0
  %1366 = load %struct.Point*** %15, align 8
  store %struct.Point** %1366, %struct.Point*** %1365, align 8
  %1367 = getelementptr %"class.std::__1::move_iterator"* %81, i32 0, i32 0
  %1368 = load %struct.Point*** %1367
  %1369 = getelementptr %"class.std::__1::move_iterator"* %84, i32 0, i32 0
  %1370 = load %struct.Point*** %1369
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_(%"struct.std::__1::__split_buffer.9"* %__t.i36, %struct.Point** %1368, %struct.Point** %1370)
          to label %1371 unwind label %1430

; <label>:1371                                    ; preds = %.noexc
  %1372 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 0
  %1373 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i36, i32 0, i32 0
  store %struct.Point*** %1372, %struct.Point**** %24, align 8
  store %struct.Point*** %1373, %struct.Point**** %25, align 8
  %1374 = load %struct.Point**** %24, align 8
  store %struct.Point*** %1374, %struct.Point**** %23, align 8
  %1375 = load %struct.Point**** %23, align 8
  %1376 = load %struct.Point*** %1375
  store %struct.Point** %1376, %struct.Point*** %__t.i3.i28, align 8
  %1377 = load %struct.Point**** %25, align 8
  store %struct.Point*** %1377, %struct.Point**** %21, align 8
  %1378 = load %struct.Point**** %21, align 8
  %1379 = load %struct.Point*** %1378
  %1380 = load %struct.Point**** %24, align 8
  store %struct.Point** %1379, %struct.Point*** %1380, align 8
  store %struct.Point*** %__t.i3.i28, %struct.Point**** %22, align 8
  %1381 = load %struct.Point**** %22, align 8
  %1382 = load %struct.Point*** %1381
  %1383 = load %struct.Point**** %25, align 8
  store %struct.Point** %1382, %struct.Point*** %1383, align 8
  %1384 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 1
  %1385 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i36, i32 0, i32 1
  store %struct.Point*** %1384, %struct.Point**** %29, align 8
  store %struct.Point*** %1385, %struct.Point**** %30, align 8
  %1386 = load %struct.Point**** %29, align 8
  store %struct.Point*** %1386, %struct.Point**** %28, align 8
  %1387 = load %struct.Point**** %28, align 8
  %1388 = load %struct.Point*** %1387
  store %struct.Point** %1388, %struct.Point*** %__t.i2.i29, align 8
  %1389 = load %struct.Point**** %30, align 8
  store %struct.Point*** %1389, %struct.Point**** %26, align 8
  %1390 = load %struct.Point**** %26, align 8
  %1391 = load %struct.Point*** %1390
  %1392 = load %struct.Point**** %29, align 8
  store %struct.Point** %1391, %struct.Point*** %1392, align 8
  store %struct.Point*** %__t.i2.i29, %struct.Point**** %27, align 8
  %1393 = load %struct.Point**** %27, align 8
  %1394 = load %struct.Point*** %1393
  %1395 = load %struct.Point**** %30, align 8
  store %struct.Point** %1394, %struct.Point*** %1395, align 8
  %1396 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 2
  %1397 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t.i36, i32 0, i32 2
  store %struct.Point*** %1396, %struct.Point**** %34, align 8
  store %struct.Point*** %1397, %struct.Point**** %35, align 8
  %1398 = load %struct.Point**** %34, align 8
  store %struct.Point*** %1398, %struct.Point**** %33, align 8
  %1399 = load %struct.Point**** %33, align 8
  %1400 = load %struct.Point*** %1399
  store %struct.Point** %1400, %struct.Point*** %__t.i1.i30, align 8
  %1401 = load %struct.Point**** %35, align 8
  store %struct.Point*** %1401, %struct.Point**** %31, align 8
  %1402 = load %struct.Point**** %31, align 8
  %1403 = load %struct.Point*** %1402
  %1404 = load %struct.Point**** %34, align 8
  store %struct.Point** %1403, %struct.Point*** %1404, align 8
  store %struct.Point*** %__t.i1.i30, %struct.Point**** %32, align 8
  %1405 = load %struct.Point**** %32, align 8
  %1406 = load %struct.Point*** %1405
  %1407 = load %struct.Point**** %35, align 8
  store %struct.Point** %1406, %struct.Point*** %1407, align 8
  store %"struct.std::__1::__split_buffer.9"* %1247, %"struct.std::__1::__split_buffer.9"** %38, align 8
  %1408 = load %"struct.std::__1::__split_buffer.9"** %38
  %1409 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1408, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1409, %"class.std::__1::__compressed_pair.10"** %37, align 8
  %1410 = load %"class.std::__1::__compressed_pair.10"** %37
  %1411 = bitcast %"class.std::__1::__compressed_pair.10"* %1410 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1411, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %36, align 8
  %1412 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %36
  %1413 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1412, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.9"* %__t.i36, %"struct.std::__1::__split_buffer.9"** %41, align 8
  %1414 = load %"struct.std::__1::__split_buffer.9"** %41
  %1415 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1414, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1415, %"class.std::__1::__compressed_pair.10"** %40, align 8
  %1416 = load %"class.std::__1::__compressed_pair.10"** %40
  %1417 = bitcast %"class.std::__1::__compressed_pair.10"* %1416 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1417, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %39, align 8
  %1418 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %39
  %1419 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1418, i32 0, i32 0
  store %struct.Point*** %1413, %struct.Point**** %45, align 8
  store %struct.Point*** %1419, %struct.Point**** %46, align 8
  %1420 = load %struct.Point**** %45, align 8
  store %struct.Point*** %1420, %struct.Point**** %44, align 8
  %1421 = load %struct.Point**** %44, align 8
  %1422 = load %struct.Point*** %1421
  store %struct.Point** %1422, %struct.Point*** %__t.i.i31, align 8
  %1423 = load %struct.Point**** %46, align 8
  store %struct.Point*** %1423, %struct.Point**** %42, align 8
  %1424 = load %struct.Point**** %42, align 8
  %1425 = load %struct.Point*** %1424
  %1426 = load %struct.Point**** %45, align 8
  store %struct.Point** %1425, %struct.Point*** %1426, align 8
  store %struct.Point*** %__t.i.i31, %struct.Point**** %43, align 8
  %1427 = load %struct.Point**** %43, align 8
  %1428 = load %struct.Point*** %1427
  %1429 = load %struct.Point**** %46, align 8
  store %struct.Point** %1428, %struct.Point*** %1429, align 8
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i36)
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
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t.i36)
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
  store %"struct.std::__1::__split_buffer.9"* %1247, %"struct.std::__1::__split_buffer.9"** %60, align 8
  %1441 = load %"struct.std::__1::__split_buffer.9"** %60
  %1442 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1441, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1442, %"class.std::__1::__compressed_pair.10"** %59, align 8
  %1443 = load %"class.std::__1::__compressed_pair.10"** %59
  %1444 = bitcast %"class.std::__1::__compressed_pair.10"* %1443 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1444, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %58, align 8
  %1445 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %58
  %1446 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1445, i32 0, i32 1
  %1447 = load %"class.std::__1::allocator"** %1446, align 8
  %1448 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 2
  %1449 = load %struct.Point*** %1448, align 8
  store %struct.Point** %1449, %struct.Point*** %61, align 8
  %1450 = load %struct.Point*** %61, align 8
  %1451 = load %struct.Point*** %78, align 8
  store %"class.std::__1::allocator"* %1447, %"class.std::__1::allocator"** %62, align 8
  store %struct.Point** %1450, %struct.Point*** %63, align 8
  store %struct.Point** %1451, %struct.Point*** %64, align 8
  %1452 = load %struct.Point*** %63, align 8
  %1453 = bitcast %struct.Point** %1452 to i8*
  %1454 = icmp eq i8* %1453, null
  br i1 %1454, label %_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE9push_backERKS2_.exit, label %1455

; <label>:1455                                    ; preds = %1440
  %1456 = bitcast i8* %1453 to %struct.Point**
  %1457 = load %struct.Point*** %64, align 8
  %1458 = load %struct.Point** %1457, align 8
  store %struct.Point* %1458, %struct.Point** %1456, align 8
  br label %_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE9push_backERKS2_.exit

; <label>:1459                                    ; preds = %1430
  %1460 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
          catch i8* null
  %1461 = extractvalue { i8*, i32 } %1460, 0
  call void @__clang_call_terminate(i8* %1461) #9
  unreachable

_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE9push_backERKS2_.exit: ; preds = %1440, %1455
  %1462 = phi %struct.Point** [ %1456, %1455 ], [ null, %1440 ]
  %1463 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1247, i32 0, i32 2
  %1464 = load %struct.Point*** %1463, align 8
  %1465 = getelementptr inbounds %struct.Point** %1464, i32 1
  store %struct.Point** %1465, %struct.Point*** %1463, align 8
  br label %1466

; <label>:1466                                    ; preds = %_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE9push_backERKS2_.exit
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
  %1473 = call i8* @__cxa_begin_catch(i8* %1472) #1
  %1474 = load %"class.std::__1::allocator.2"** %__a, align 8
  store %"struct.std::__1::__split_buffer.9"* %__buf, %"struct.std::__1::__split_buffer.9"** %9, align 8
  %1475 = load %"struct.std::__1::__split_buffer.9"** %9
  %1476 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1475, i32 0, i32 2
  %1477 = load %struct.Point*** %1476, align 8
  %1478 = getelementptr inbounds %struct.Point** %1477, i64 -1
  br label %1479

; <label>:1479                                    ; preds = %1471
  %1480 = load %struct.Point** %1478
  store %"class.std::__1::allocator.2"* %1474, %"class.std::__1::allocator.2"** %6, align 8
  store %struct.Point* %1480, %struct.Point** %7, align 8
  store i64 512, i64* %8, align 8
  %1481 = load %"class.std::__1::allocator.2"** %6, align 8
  %1482 = load %struct.Point** %7, align 8
  %1483 = load i64* %8, align 8
  store %"class.std::__1::allocator.2"* %1481, %"class.std::__1::allocator.2"** %3, align 8
  store %struct.Point* %1482, %struct.Point** %4, align 8
  store i64 %1483, i64* %5, align 8
  %1484 = load %"class.std::__1::allocator.2"** %3
  %1485 = load %struct.Point** %4, align 8
  %1486 = bitcast %struct.Point* %1485 to i8*
  call void @_ZdlPv(i8* %1486) #1
  invoke void @__cxa_rethrow() #10
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
  %1497 = load %struct.Point*** %1496, align 8
  store %struct.Point** %1497, %struct.Point*** %__i, align 8
  br label %1498

; <label>:1498                                    ; preds = %1509, %1492
  %1499 = load %struct.Point*** %__i, align 8
  %1500 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1501 = getelementptr inbounds %"class.std::__1::__deque_base"* %1500, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1501, %"struct.std::__1::__split_buffer"** %1, align 8
  %1502 = load %"struct.std::__1::__split_buffer"** %1
  %1503 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1502, i32 0, i32 1
  %1504 = load %struct.Point*** %1503, align 8
  %1505 = icmp ne %struct.Point** %1499, %1504
  br i1 %1505, label %1506, label %1514

; <label>:1506                                    ; preds = %1498
  %1507 = load %struct.Point*** %__i, align 8
  %1508 = getelementptr inbounds %struct.Point** %1507, i32 -1
  store %struct.Point** %1508, %struct.Point*** %__i, align 8
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE10push_frontERKS2_(%"struct.std::__1::__split_buffer.9"* %__buf, %struct.Point** %1508)
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
  %1518 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__buf, i32 0, i32 0
  store %struct.Point*** %1517, %struct.Point**** %362, align 8
  store %struct.Point*** %1518, %struct.Point**** %363, align 8
  %1519 = load %struct.Point**** %362, align 8
  store %struct.Point*** %1519, %struct.Point**** %361, align 8
  %1520 = load %struct.Point**** %361, align 8
  %1521 = load %struct.Point*** %1520
  store %struct.Point** %1521, %struct.Point*** %__t.i4, align 8
  %1522 = load %struct.Point**** %363, align 8
  store %struct.Point*** %1522, %struct.Point**** %359, align 8
  %1523 = load %struct.Point**** %359, align 8
  %1524 = load %struct.Point*** %1523
  %1525 = load %struct.Point**** %362, align 8
  store %struct.Point** %1524, %struct.Point*** %1525, align 8
  store %struct.Point*** %__t.i4, %struct.Point**** %360, align 8
  %1526 = load %struct.Point**** %360, align 8
  %1527 = load %struct.Point*** %1526
  %1528 = load %struct.Point**** %363, align 8
  store %struct.Point** %1527, %struct.Point*** %1528, align 8
  br label %1529

; <label>:1529                                    ; preds = %1514
  %1530 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1531 = getelementptr inbounds %"class.std::__1::__deque_base"* %1530, i32 0, i32 0
  %1532 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1531, i32 0, i32 1
  %1533 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__buf, i32 0, i32 1
  store %struct.Point*** %1532, %struct.Point**** %367, align 8
  store %struct.Point*** %1533, %struct.Point**** %368, align 8
  %1534 = load %struct.Point**** %367, align 8
  store %struct.Point*** %1534, %struct.Point**** %366, align 8
  %1535 = load %struct.Point**** %366, align 8
  %1536 = load %struct.Point*** %1535
  store %struct.Point** %1536, %struct.Point*** %__t.i3, align 8
  %1537 = load %struct.Point**** %368, align 8
  store %struct.Point*** %1537, %struct.Point**** %364, align 8
  %1538 = load %struct.Point**** %364, align 8
  %1539 = load %struct.Point*** %1538
  %1540 = load %struct.Point**** %367, align 8
  store %struct.Point** %1539, %struct.Point*** %1540, align 8
  store %struct.Point*** %__t.i3, %struct.Point**** %365, align 8
  %1541 = load %struct.Point**** %365, align 8
  %1542 = load %struct.Point*** %1541
  %1543 = load %struct.Point**** %368, align 8
  store %struct.Point** %1542, %struct.Point*** %1543, align 8
  br label %1544

; <label>:1544                                    ; preds = %1529
  %1545 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1546 = getelementptr inbounds %"class.std::__1::__deque_base"* %1545, i32 0, i32 0
  %1547 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1546, i32 0, i32 2
  %1548 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__buf, i32 0, i32 2
  store %struct.Point*** %1547, %struct.Point**** %372, align 8
  store %struct.Point*** %1548, %struct.Point**** %373, align 8
  %1549 = load %struct.Point**** %372, align 8
  store %struct.Point*** %1549, %struct.Point**** %371, align 8
  %1550 = load %struct.Point**** %371, align 8
  %1551 = load %struct.Point*** %1550
  store %struct.Point** %1551, %struct.Point*** %__t.i2, align 8
  %1552 = load %struct.Point**** %373, align 8
  store %struct.Point*** %1552, %struct.Point**** %369, align 8
  %1553 = load %struct.Point**** %369, align 8
  %1554 = load %struct.Point*** %1553
  %1555 = load %struct.Point**** %372, align 8
  store %struct.Point** %1554, %struct.Point*** %1555, align 8
  store %struct.Point*** %__t.i2, %struct.Point**** %370, align 8
  %1556 = load %struct.Point**** %370, align 8
  %1557 = load %struct.Point*** %1556
  %1558 = load %struct.Point**** %373, align 8
  store %struct.Point** %1557, %struct.Point*** %1558, align 8
  br label %1559

; <label>:1559                                    ; preds = %1544
  %1560 = bitcast %"class.std::__1::deque"* %406 to %"class.std::__1::__deque_base"*
  %1561 = getelementptr inbounds %"class.std::__1::__deque_base"* %1560, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %1561, %"struct.std::__1::__split_buffer"** %376, align 8
  %1562 = load %"struct.std::__1::__split_buffer"** %376
  %1563 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %1562, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %1563, %"class.std::__1::__compressed_pair"** %375, align 8
  %1564 = load %"class.std::__1::__compressed_pair"** %375
  %1565 = bitcast %"class.std::__1::__compressed_pair"* %1564 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %1565, %"class.std::__1::__libcpp_compressed_pair_imp"** %374, align 8
  %1566 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %374
  %1567 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %1566, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.9"* %__buf, %"struct.std::__1::__split_buffer.9"** %379, align 8
  %1568 = load %"struct.std::__1::__split_buffer.9"** %379
  %1569 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %1568, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %1569, %"class.std::__1::__compressed_pair.10"** %378, align 8
  %1570 = load %"class.std::__1::__compressed_pair.10"** %378
  %1571 = bitcast %"class.std::__1::__compressed_pair.10"* %1570 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1571, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %377, align 8
  %1572 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %377
  %1573 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %1572, i32 0, i32 0
  store %struct.Point*** %1567, %struct.Point**** %383, align 8
  store %struct.Point*** %1573, %struct.Point**** %384, align 8
  %1574 = load %struct.Point**** %383, align 8
  store %struct.Point*** %1574, %struct.Point**** %382, align 8
  %1575 = load %struct.Point**** %382, align 8
  %1576 = load %struct.Point*** %1575
  store %struct.Point** %1576, %struct.Point*** %__t.i, align 8
  %1577 = load %struct.Point**** %384, align 8
  store %struct.Point*** %1577, %struct.Point**** %380, align 8
  %1578 = load %struct.Point**** %380, align 8
  %1579 = load %struct.Point*** %1578
  %1580 = load %struct.Point**** %383, align 8
  store %struct.Point** %1579, %struct.Point*** %1580, align 8
  store %struct.Point*** %__t.i, %struct.Point**** %381, align 8
  %1581 = load %struct.Point**** %381, align 8
  %1582 = load %struct.Point*** %1581
  %1583 = load %struct.Point**** %384, align 8
  store %struct.Point** %1582, %struct.Point*** %1583, align 8
  br label %1584

; <label>:1584                                    ; preds = %1559
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__buf)
  br label %1587

; <label>:1585                                    ; preds = %1510, %1491
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__buf)
          to label %1586 unwind label %1594

; <label>:1586                                    ; preds = %1585
  br label %1589

; <label>:1587                                    ; preds = %1584, %1184
  br label %1588

; <label>:1588                                    ; preds = %1587, %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE9push_backERKS2_.exit
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
  call void @__clang_call_terminate(i8* %1596) #9
  unreachable

; <label>:1597                                    ; preds = %1479
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr { %struct.Point**, %struct.Point* } @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEE3endEv(%"class.std::__1::__deque_base"* %this) #2 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %3 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %4 = alloca %struct.Point**, align 8
  %5 = alloca %struct.Point*, align 8
  %6 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %7 = alloca %struct.Point**, align 8
  %8 = alloca %struct.Point*, align 8
  %9 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %10 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %11 = alloca %"class.std::__1::__deque_base"*, align 8
  %12 = alloca %"class.std::__1::__deque_iterator", align 8
  %13 = alloca %"class.std::__1::__deque_base"*, align 8
  %__p = alloca i64, align 8
  %14 = alloca i8*
  %15 = alloca i32
  %__mp = alloca %struct.Point**, align 8
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %13, align 8
  %16 = load %"class.std::__1::__deque_base"** %13
  store %"class.std::__1::__deque_base"* %16, %"class.std::__1::__deque_base"** %11, align 8
  %17 = load %"class.std::__1::__deque_base"** %11
  %18 = getelementptr inbounds %"class.std::__1::__deque_base"* %17, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %18, %"class.std::__1::__compressed_pair.0"** %10, align 8
  %19 = load %"class.std::__1::__compressed_pair.0"** %10
  %20 = bitcast %"class.std::__1::__compressed_pair.0"* %19 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %20, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %9, align 8
  %21 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %9
  %22 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %21, i32 0, i32 0
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
  %31 = load %struct.Point*** %30, align 8
  %32 = load i64* %__p, align 8
  %33 = udiv i64 %32, 512
  %34 = getelementptr inbounds %struct.Point** %31, i64 %33
  store %struct.Point** %34, %struct.Point*** %__mp, align 8
  %35 = load %struct.Point*** %__mp, align 8
  %36 = getelementptr inbounds %"class.std::__1::__deque_base"* %16, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %36, %"struct.std::__1::__split_buffer"** %2, align 8
  %37 = load %"struct.std::__1::__split_buffer"** %2
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %37, i32 0, i32 2
  %39 = load %struct.Point*** %38, align 8
  %40 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %37, i32 0, i32 1
  %41 = load %struct.Point*** %40, align 8
  %42 = icmp eq %struct.Point** %39, %41
  br label %43

; <label>:43                                      ; preds = %23
  br i1 %42, label %44, label %45

; <label>:44                                      ; preds = %43
  br label %51

; <label>:45                                      ; preds = %43
  %46 = load %struct.Point*** %__mp, align 8
  %47 = load %struct.Point** %46, align 8
  %48 = load i64* %__p, align 8
  %49 = urem i64 %48, 512
  %50 = getelementptr inbounds %struct.Point* %47, i64 %49
  br label %51

; <label>:51                                      ; preds = %45, %44
  %52 = phi %struct.Point* [ null, %44 ], [ %50, %45 ]
  store %"class.std::__1::__deque_iterator"* %12, %"class.std::__1::__deque_iterator"** %6, align 8
  store %struct.Point** %35, %struct.Point*** %7, align 8
  store %struct.Point* %52, %struct.Point** %8, align 8
  %53 = load %"class.std::__1::__deque_iterator"** %6
  %54 = load %struct.Point*** %7, align 8
  %55 = load %struct.Point** %8, align 8
  store %"class.std::__1::__deque_iterator"* %53, %"class.std::__1::__deque_iterator"** %3, align 8
  store %struct.Point** %54, %struct.Point*** %4, align 8
  store %struct.Point* %55, %struct.Point** %5, align 8
  %56 = load %"class.std::__1::__deque_iterator"** %3
  %57 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %56, i32 0, i32 0
  %58 = load %struct.Point*** %4, align 8
  store %struct.Point** %58, %struct.Point*** %57, align 8
  %59 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %56, i32 0, i32 1
  %60 = load %struct.Point** %5, align 8
  store %struct.Point* %60, %struct.Point** %59, align 8
  %61 = bitcast %"class.std::__1::__deque_iterator"* %12 to { %struct.Point**, %struct.Point* }*
  %62 = load { %struct.Point**, %struct.Point* }* %61, align 1
  ret { %struct.Point**, %struct.Point* } %62
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
  call void @__cxa_call_unexpected(i8* %68) #10
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE10push_frontERKS2_(%"struct.std::__1::__split_buffer"* %this, %struct.Point** %__x) #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %4 = alloca %"class.std::__1::move_iterator"*, align 8
  %5 = alloca %struct.Point**, align 8
  %6 = alloca %"class.std::__1::move_iterator"*, align 8
  %7 = alloca %struct.Point**, align 8
  %8 = alloca %"class.std::__1::move_iterator"*, align 8
  %9 = alloca %struct.Point**, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca %struct.Point**, align 8
  %12 = alloca %"struct.std::__1::__less"*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %__comp.i.i = alloca %"struct.std::__1::__less", align 1
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %"struct.std::__1::__less", align 1
  %20 = alloca %struct.Point***, align 8
  %21 = alloca %struct.Point***, align 8
  %22 = alloca %struct.Point***, align 8
  %23 = alloca %struct.Point***, align 8
  %24 = alloca %struct.Point***, align 8
  %__t.i3 = alloca %struct.Point**, align 8
  %25 = alloca %struct.Point***, align 8
  %26 = alloca %struct.Point***, align 8
  %27 = alloca %struct.Point***, align 8
  %28 = alloca %struct.Point***, align 8
  %29 = alloca %struct.Point***, align 8
  %__t.i2 = alloca %struct.Point**, align 8
  %30 = alloca %struct.Point***, align 8
  %31 = alloca %struct.Point***, align 8
  %32 = alloca %struct.Point***, align 8
  %33 = alloca %struct.Point***, align 8
  %34 = alloca %struct.Point***, align 8
  %__t.i1 = alloca %struct.Point**, align 8
  %35 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %36 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %37 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %38 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %39 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %40 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %41 = alloca %struct.Point***, align 8
  %42 = alloca %struct.Point***, align 8
  %43 = alloca %struct.Point***, align 8
  %44 = alloca %struct.Point***, align 8
  %45 = alloca %struct.Point***, align 8
  %__t.i = alloca %struct.Point**, align 8
  %46 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %47 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %48 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %49 = alloca %struct.Point**, align 8
  %50 = alloca %struct.Point**, align 8
  %51 = alloca %struct.Point**, align 8
  %52 = alloca %struct.Point**, align 8
  %53 = alloca %struct.Point**, align 8
  %__n.i.i = alloca i64, align 8
  %54 = alloca %struct.Point**, align 8
  %55 = alloca %struct.Point**, align 8
  %56 = alloca %struct.Point**, align 8
  %57 = alloca %struct.Point**, align 8
  %58 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %59 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %60 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %61 = alloca %struct.Point**, align 8
  %62 = alloca %"class.std::__1::allocator"*, align 8
  %63 = alloca %struct.Point**, align 8
  %64 = alloca %struct.Point**, align 8
  %65 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %66 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %67 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %68 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %69 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %70 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %71 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %72 = alloca %struct.Point**, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.9", align 8
  %75 = alloca %"class.std::__1::move_iterator", align 8
  %76 = alloca i8*
  %77 = alloca i32
  %78 = alloca %"class.std::__1::move_iterator", align 8
  store %"struct.std::__1::__split_buffer"* %this, %"struct.std::__1::__split_buffer"** %71, align 8
  store %struct.Point** %__x, %struct.Point*** %72, align 8
  %79 = load %"struct.std::__1::__split_buffer"** %71
  %80 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %81 = load %struct.Point*** %80, align 8
  %82 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 0
  %83 = load %struct.Point*** %82, align 8
  %84 = icmp eq %struct.Point** %81, %83
  br i1 %84, label %85, label %279

; <label>:85                                      ; preds = %0
  %86 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %87 = load %struct.Point*** %86, align 8
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %70, align 8
  %88 = load %"struct.std::__1::__split_buffer"** %70
  %89 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %88, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %89, %"class.std::__1::__compressed_pair"** %69, align 8
  %90 = load %"class.std::__1::__compressed_pair"** %69
  %91 = bitcast %"class.std::__1::__compressed_pair"* %90 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %91, %"class.std::__1::__libcpp_compressed_pair_imp"** %68, align 8
  %92 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %68
  %93 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %92, i32 0, i32 0
  %94 = load %struct.Point*** %93
  %95 = icmp ult %struct.Point** %87, %94
  br i1 %95, label %96, label %149

; <label>:96                                      ; preds = %85
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %67, align 8
  %97 = load %"struct.std::__1::__split_buffer"** %67
  %98 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %97, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %98, %"class.std::__1::__compressed_pair"** %66, align 8
  %99 = load %"class.std::__1::__compressed_pair"** %66
  %100 = bitcast %"class.std::__1::__compressed_pair"* %99 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %100, %"class.std::__1::__libcpp_compressed_pair_imp"** %65, align 8
  %101 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %65
  %102 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %101, i32 0, i32 0
  %103 = load %struct.Point*** %102
  %104 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %105 = load %struct.Point*** %104, align 8
  %106 = ptrtoint %struct.Point** %103 to i64
  %107 = ptrtoint %struct.Point** %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 8
  store i64 %109, i64* %__d, align 8
  %110 = load i64* %__d, align 8
  %111 = add nsw i64 %110, 1
  %112 = sdiv i64 %111, 2
  store i64 %112, i64* %__d, align 8
  %113 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %114 = load %struct.Point*** %113, align 8
  %115 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %116 = load %struct.Point*** %115, align 8
  %117 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %118 = load %struct.Point*** %117, align 8
  %119 = load i64* %__d, align 8
  %120 = getelementptr inbounds %struct.Point** %118, i64 %119
  store %struct.Point** %114, %struct.Point*** %55, align 8
  store %struct.Point** %116, %struct.Point*** %56, align 8
  store %struct.Point** %120, %struct.Point*** %57, align 8
  %121 = load %struct.Point*** %55, align 8
  store %struct.Point** %121, %struct.Point*** %54, align 8
  %122 = load %struct.Point*** %54, align 8
  %123 = load %struct.Point*** %56, align 8
  store %struct.Point** %123, %struct.Point*** %49, align 8
  %124 = load %struct.Point*** %49, align 8
  %125 = load %struct.Point*** %57, align 8
  store %struct.Point** %125, %struct.Point*** %50, align 8
  %126 = load %struct.Point*** %50, align 8
  store %struct.Point** %122, %struct.Point*** %51, align 8
  store %struct.Point** %124, %struct.Point*** %52, align 8
  store %struct.Point** %126, %struct.Point*** %53, align 8
  %127 = load %struct.Point*** %52, align 8
  %128 = load %struct.Point*** %51, align 8
  %129 = ptrtoint %struct.Point** %127 to i64
  %130 = ptrtoint %struct.Point** %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  store i64 %132, i64* %__n.i.i, align 8
  %133 = load i64* %__n.i.i, align 8
  %134 = load %struct.Point*** %53, align 8
  %135 = sub i64 0, %133
  %136 = getelementptr inbounds %struct.Point** %134, i64 %135
  store %struct.Point** %136, %struct.Point*** %53, align 8
  %137 = load %struct.Point*** %53, align 8
  %138 = bitcast %struct.Point** %137 to i8*
  %139 = load %struct.Point*** %51, align 8
  %140 = bitcast %struct.Point** %139 to i8*
  %141 = load i64* %__n.i.i, align 8
  %142 = mul i64 %141, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %138, i8* %140, i64 %142, i32 8, i1 false) #1
  %143 = load %struct.Point*** %53, align 8
  %144 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  store %struct.Point** %143, %struct.Point*** %144, align 8
  %145 = load i64* %__d, align 8
  %146 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %147 = load %struct.Point*** %146, align 8
  %148 = getelementptr inbounds %struct.Point** %147, i64 %145
  store %struct.Point** %148, %struct.Point*** %146, align 8
  br label %278

; <label>:149                                     ; preds = %85
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %48, align 8
  %150 = load %"struct.std::__1::__split_buffer"** %48
  %151 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %150, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %151, %"class.std::__1::__compressed_pair"** %47, align 8
  %152 = load %"class.std::__1::__compressed_pair"** %47
  %153 = bitcast %"class.std::__1::__compressed_pair"* %152 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %153, %"class.std::__1::__libcpp_compressed_pair_imp"** %46, align 8
  %154 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %46
  %155 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %154, i32 0, i32 0
  %156 = load %struct.Point*** %155
  %157 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 0
  %158 = load %struct.Point*** %157, align 8
  %159 = ptrtoint %struct.Point** %156 to i64
  %160 = ptrtoint %struct.Point** %158 to i64
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
  store %"class.std::__1::__compressed_pair"* %185, %"class.std::__1::__compressed_pair"** %2, align 8
  %186 = load %"class.std::__1::__compressed_pair"** %2
  %187 = bitcast %"class.std::__1::__compressed_pair"* %186 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %187, %"class.std::__1::__libcpp_compressed_pair_imp"** %1, align 8
  %188 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %1
  %189 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %188 to %"class.std::__1::allocator"*
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %__t, i64 %180, i64 %183, %"class.std::__1::allocator"* %189)
  %190 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %191 = load %struct.Point*** %190, align 8
  store %"class.std::__1::move_iterator"* %75, %"class.std::__1::move_iterator"** %6, align 8
  store %struct.Point** %191, %struct.Point*** %7, align 8
  %192 = load %"class.std::__1::move_iterator"** %6
  %193 = load %struct.Point*** %7, align 8
  store %"class.std::__1::move_iterator"* %192, %"class.std::__1::move_iterator"** %4, align 8
  store %struct.Point** %193, %struct.Point*** %5, align 8
  %194 = load %"class.std::__1::move_iterator"** %4
  %195 = getelementptr inbounds %"class.std::__1::move_iterator"* %194, i32 0, i32 0
  %196 = load %struct.Point*** %5, align 8
  store %struct.Point** %196, %struct.Point*** %195, align 8
  br label %197

; <label>:197                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit
  %198 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %199 = load %struct.Point*** %198, align 8
  store %"class.std::__1::move_iterator"* %78, %"class.std::__1::move_iterator"** %10, align 8
  store %struct.Point** %199, %struct.Point*** %11, align 8
  %200 = load %"class.std::__1::move_iterator"** %10
  %201 = load %struct.Point*** %11, align 8
  store %"class.std::__1::move_iterator"* %200, %"class.std::__1::move_iterator"** %8, align 8
  store %struct.Point** %201, %struct.Point*** %9, align 8
  %202 = load %"class.std::__1::move_iterator"** %8
  %203 = getelementptr inbounds %"class.std::__1::move_iterator"* %202, i32 0, i32 0
  %204 = load %struct.Point*** %9, align 8
  store %struct.Point** %204, %struct.Point*** %203, align 8
  br label %205

; <label>:205                                     ; preds = %197
  %206 = getelementptr %"class.std::__1::move_iterator"* %75, i32 0, i32 0
  %207 = load %struct.Point*** %206
  %208 = getelementptr %"class.std::__1::move_iterator"* %78, i32 0, i32 0
  %209 = load %struct.Point*** %208
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_(%"struct.std::__1::__split_buffer.9"* %__t, %struct.Point** %207, %struct.Point** %209)
          to label %210 unwind label %273

; <label>:210                                     ; preds = %205
  %211 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 0
  %212 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t, i32 0, i32 0
  store %struct.Point*** %211, %struct.Point**** %23, align 8
  store %struct.Point*** %212, %struct.Point**** %24, align 8
  %213 = load %struct.Point**** %23, align 8
  store %struct.Point*** %213, %struct.Point**** %22, align 8
  %214 = load %struct.Point**** %22, align 8
  %215 = load %struct.Point*** %214
  store %struct.Point** %215, %struct.Point*** %__t.i3, align 8
  %216 = load %struct.Point**** %24, align 8
  store %struct.Point*** %216, %struct.Point**** %20, align 8
  %217 = load %struct.Point**** %20, align 8
  %218 = load %struct.Point*** %217
  %219 = load %struct.Point**** %23, align 8
  store %struct.Point** %218, %struct.Point*** %219, align 8
  store %struct.Point*** %__t.i3, %struct.Point**** %21, align 8
  %220 = load %struct.Point**** %21, align 8
  %221 = load %struct.Point*** %220
  %222 = load %struct.Point**** %24, align 8
  store %struct.Point** %221, %struct.Point*** %222, align 8
  br label %223

; <label>:223                                     ; preds = %210
  %224 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %225 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t, i32 0, i32 1
  store %struct.Point*** %224, %struct.Point**** %28, align 8
  store %struct.Point*** %225, %struct.Point**** %29, align 8
  %226 = load %struct.Point**** %28, align 8
  store %struct.Point*** %226, %struct.Point**** %27, align 8
  %227 = load %struct.Point**** %27, align 8
  %228 = load %struct.Point*** %227
  store %struct.Point** %228, %struct.Point*** %__t.i2, align 8
  %229 = load %struct.Point**** %29, align 8
  store %struct.Point*** %229, %struct.Point**** %25, align 8
  %230 = load %struct.Point**** %25, align 8
  %231 = load %struct.Point*** %230
  %232 = load %struct.Point**** %28, align 8
  store %struct.Point** %231, %struct.Point*** %232, align 8
  store %struct.Point*** %__t.i2, %struct.Point**** %26, align 8
  %233 = load %struct.Point**** %26, align 8
  %234 = load %struct.Point*** %233
  %235 = load %struct.Point**** %29, align 8
  store %struct.Point** %234, %struct.Point*** %235, align 8
  br label %236

; <label>:236                                     ; preds = %223
  %237 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 2
  %238 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t, i32 0, i32 2
  store %struct.Point*** %237, %struct.Point**** %33, align 8
  store %struct.Point*** %238, %struct.Point**** %34, align 8
  %239 = load %struct.Point**** %33, align 8
  store %struct.Point*** %239, %struct.Point**** %32, align 8
  %240 = load %struct.Point**** %32, align 8
  %241 = load %struct.Point*** %240
  store %struct.Point** %241, %struct.Point*** %__t.i1, align 8
  %242 = load %struct.Point**** %34, align 8
  store %struct.Point*** %242, %struct.Point**** %30, align 8
  %243 = load %struct.Point**** %30, align 8
  %244 = load %struct.Point*** %243
  %245 = load %struct.Point**** %33, align 8
  store %struct.Point** %244, %struct.Point*** %245, align 8
  store %struct.Point*** %__t.i1, %struct.Point**** %31, align 8
  %246 = load %struct.Point**** %31, align 8
  %247 = load %struct.Point*** %246
  %248 = load %struct.Point**** %34, align 8
  store %struct.Point** %247, %struct.Point*** %248, align 8
  br label %249

; <label>:249                                     ; preds = %236
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %37, align 8
  %250 = load %"struct.std::__1::__split_buffer"** %37
  %251 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %250, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %251, %"class.std::__1::__compressed_pair"** %36, align 8
  %252 = load %"class.std::__1::__compressed_pair"** %36
  %253 = bitcast %"class.std::__1::__compressed_pair"* %252 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %253, %"class.std::__1::__libcpp_compressed_pair_imp"** %35, align 8
  %254 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %35
  %255 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp"* %254, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.9"* %__t, %"struct.std::__1::__split_buffer.9"** %40, align 8
  %256 = load %"struct.std::__1::__split_buffer.9"** %40
  %257 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %256, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %257, %"class.std::__1::__compressed_pair.10"** %39, align 8
  %258 = load %"class.std::__1::__compressed_pair.10"** %39
  %259 = bitcast %"class.std::__1::__compressed_pair.10"* %258 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %259, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %38, align 8
  %260 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %38
  %261 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %260, i32 0, i32 0
  store %struct.Point*** %255, %struct.Point**** %44, align 8
  store %struct.Point*** %261, %struct.Point**** %45, align 8
  %262 = load %struct.Point**** %44, align 8
  store %struct.Point*** %262, %struct.Point**** %43, align 8
  %263 = load %struct.Point**** %43, align 8
  %264 = load %struct.Point*** %263
  store %struct.Point** %264, %struct.Point*** %__t.i, align 8
  %265 = load %struct.Point**** %45, align 8
  store %struct.Point*** %265, %struct.Point**** %41, align 8
  %266 = load %struct.Point**** %41, align 8
  %267 = load %struct.Point*** %266
  %268 = load %struct.Point**** %44, align 8
  store %struct.Point** %267, %struct.Point*** %268, align 8
  store %struct.Point*** %__t.i, %struct.Point**** %42, align 8
  %269 = load %struct.Point**** %42, align 8
  %270 = load %struct.Point*** %269
  %271 = load %struct.Point**** %45, align 8
  store %struct.Point** %270, %struct.Point*** %271, align 8
  br label %272

; <label>:272                                     ; preds = %249
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t)
  br label %278

; <label>:273                                     ; preds = %205
  %274 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %275 = extractvalue { i8*, i32 } %274, 0
  store i8* %275, i8** %76
  %276 = extractvalue { i8*, i32 } %274, 1
  store i32 %276, i32* %77
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t)
          to label %277 unwind label %307

; <label>:277                                     ; preds = %273
  br label %302

; <label>:278                                     ; preds = %272, %96
  br label %279

; <label>:279                                     ; preds = %278, %0
  store %"struct.std::__1::__split_buffer"* %79, %"struct.std::__1::__split_buffer"** %60, align 8
  %280 = load %"struct.std::__1::__split_buffer"** %60
  %281 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %280, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %281, %"class.std::__1::__compressed_pair"** %59, align 8
  %282 = load %"class.std::__1::__compressed_pair"** %59
  %283 = bitcast %"class.std::__1::__compressed_pair"* %282 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %283, %"class.std::__1::__libcpp_compressed_pair_imp"** %58, align 8
  %284 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %58
  %285 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %284 to %"class.std::__1::allocator"*
  %286 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %287 = load %struct.Point*** %286, align 8
  %288 = getelementptr inbounds %struct.Point** %287, i64 -1
  store %struct.Point** %288, %struct.Point*** %61, align 8
  %289 = load %struct.Point*** %61, align 8
  %290 = load %struct.Point*** %72, align 8
  store %"class.std::__1::allocator"* %285, %"class.std::__1::allocator"** %62, align 8
  store %struct.Point** %289, %struct.Point*** %63, align 8
  store %struct.Point** %290, %struct.Point*** %64, align 8
  %291 = load %struct.Point*** %63, align 8
  %292 = bitcast %struct.Point** %291 to i8*
  %293 = icmp eq i8* %292, null
  br i1 %293, label %_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit, label %294

; <label>:294                                     ; preds = %279
  %295 = bitcast i8* %292 to %struct.Point**
  %296 = load %struct.Point*** %64, align 8
  %297 = load %struct.Point** %296, align 8
  store %struct.Point* %297, %struct.Point** %295, align 8
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit: ; preds = %279, %294
  %298 = phi %struct.Point** [ %295, %294 ], [ null, %279 ]
  %299 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %79, i32 0, i32 1
  %300 = load %struct.Point*** %299, align 8
  %301 = getelementptr inbounds %struct.Point** %300, i32 -1
  store %struct.Point** %301, %struct.Point*** %299, align 8
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
  call void @__clang_call_terminate(i8* %309) #9
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %this, i64 %__cap, i64 %__start, %"class.std::__1::allocator"* %__a) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__1::allocator"*, align 8
  store %"struct.std::__1::__split_buffer.9"* %this, %"struct.std::__1::__split_buffer.9"** %1, align 8
  store i64 %__cap, i64* %2, align 8
  store i64 %__start, i64* %3, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %4, align 8
  %5 = load %"struct.std::__1::__split_buffer.9"** %1
  %6 = load i64* %2, align 8
  %7 = load i64* %3, align 8
  %8 = load %"class.std::__1::allocator"** %4
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC2EmmS5_(%"struct.std::__1::__split_buffer.9"* %5, i64 %6, i64 %7, %"class.std::__1::allocator"* %8)
  ret void
}

declare void @__cxa_rethrow()

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE10push_frontERKS2_(%"struct.std::__1::__split_buffer.9"* %this, %struct.Point** %__x) #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %4 = alloca %"class.std::__1::move_iterator"*, align 8
  %5 = alloca %struct.Point**, align 8
  %6 = alloca %"class.std::__1::move_iterator"*, align 8
  %7 = alloca %struct.Point**, align 8
  %8 = alloca %"class.std::__1::move_iterator"*, align 8
  %9 = alloca %struct.Point**, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca %struct.Point**, align 8
  %12 = alloca %"struct.std::__1::__less"*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %__comp.i.i = alloca %"struct.std::__1::__less", align 1
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %"struct.std::__1::__less", align 1
  %20 = alloca %struct.Point***, align 8
  %21 = alloca %struct.Point***, align 8
  %22 = alloca %struct.Point***, align 8
  %23 = alloca %struct.Point***, align 8
  %24 = alloca %struct.Point***, align 8
  %__t.i3 = alloca %struct.Point**, align 8
  %25 = alloca %struct.Point***, align 8
  %26 = alloca %struct.Point***, align 8
  %27 = alloca %struct.Point***, align 8
  %28 = alloca %struct.Point***, align 8
  %29 = alloca %struct.Point***, align 8
  %__t.i2 = alloca %struct.Point**, align 8
  %30 = alloca %struct.Point***, align 8
  %31 = alloca %struct.Point***, align 8
  %32 = alloca %struct.Point***, align 8
  %33 = alloca %struct.Point***, align 8
  %34 = alloca %struct.Point***, align 8
  %__t.i1 = alloca %struct.Point**, align 8
  %35 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %36 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %37 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %38 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %39 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %40 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %41 = alloca %struct.Point***, align 8
  %42 = alloca %struct.Point***, align 8
  %43 = alloca %struct.Point***, align 8
  %44 = alloca %struct.Point***, align 8
  %45 = alloca %struct.Point***, align 8
  %__t.i = alloca %struct.Point**, align 8
  %46 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %47 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %48 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %49 = alloca %struct.Point**, align 8
  %50 = alloca %struct.Point**, align 8
  %51 = alloca %struct.Point**, align 8
  %52 = alloca %struct.Point**, align 8
  %53 = alloca %struct.Point**, align 8
  %__n.i.i = alloca i64, align 8
  %54 = alloca %struct.Point**, align 8
  %55 = alloca %struct.Point**, align 8
  %56 = alloca %struct.Point**, align 8
  %57 = alloca %struct.Point**, align 8
  %58 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %59 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %60 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %61 = alloca %struct.Point**, align 8
  %62 = alloca %"class.std::__1::allocator"*, align 8
  %63 = alloca %struct.Point**, align 8
  %64 = alloca %struct.Point**, align 8
  %65 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %66 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %67 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %68 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %69 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %70 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %71 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %72 = alloca %struct.Point**, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.9", align 8
  %75 = alloca %"class.std::__1::move_iterator", align 8
  %76 = alloca i8*
  %77 = alloca i32
  %78 = alloca %"class.std::__1::move_iterator", align 8
  store %"struct.std::__1::__split_buffer.9"* %this, %"struct.std::__1::__split_buffer.9"** %71, align 8
  store %struct.Point** %__x, %struct.Point*** %72, align 8
  %79 = load %"struct.std::__1::__split_buffer.9"** %71
  %80 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 1
  %81 = load %struct.Point*** %80, align 8
  %82 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 0
  %83 = load %struct.Point*** %82, align 8
  %84 = icmp eq %struct.Point** %81, %83
  br i1 %84, label %85, label %280

; <label>:85                                      ; preds = %0
  %86 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 2
  %87 = load %struct.Point*** %86, align 8
  store %"struct.std::__1::__split_buffer.9"* %79, %"struct.std::__1::__split_buffer.9"** %70, align 8
  %88 = load %"struct.std::__1::__split_buffer.9"** %70
  %89 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %88, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %89, %"class.std::__1::__compressed_pair.10"** %69, align 8
  %90 = load %"class.std::__1::__compressed_pair.10"** %69
  %91 = bitcast %"class.std::__1::__compressed_pair.10"* %90 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %91, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %68, align 8
  %92 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %68
  %93 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %92, i32 0, i32 0
  %94 = load %struct.Point*** %93
  %95 = icmp ult %struct.Point** %87, %94
  br i1 %95, label %96, label %149

; <label>:96                                      ; preds = %85
  store %"struct.std::__1::__split_buffer.9"* %79, %"struct.std::__1::__split_buffer.9"** %67, align 8
  %97 = load %"struct.std::__1::__split_buffer.9"** %67
  %98 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %97, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %98, %"class.std::__1::__compressed_pair.10"** %66, align 8
  %99 = load %"class.std::__1::__compressed_pair.10"** %66
  %100 = bitcast %"class.std::__1::__compressed_pair.10"* %99 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %100, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %65, align 8
  %101 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %65
  %102 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %101, i32 0, i32 0
  %103 = load %struct.Point*** %102
  %104 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 2
  %105 = load %struct.Point*** %104, align 8
  %106 = ptrtoint %struct.Point** %103 to i64
  %107 = ptrtoint %struct.Point** %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 8
  store i64 %109, i64* %__d, align 8
  %110 = load i64* %__d, align 8
  %111 = add nsw i64 %110, 1
  %112 = sdiv i64 %111, 2
  store i64 %112, i64* %__d, align 8
  %113 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 1
  %114 = load %struct.Point*** %113, align 8
  %115 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 2
  %116 = load %struct.Point*** %115, align 8
  %117 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 2
  %118 = load %struct.Point*** %117, align 8
  %119 = load i64* %__d, align 8
  %120 = getelementptr inbounds %struct.Point** %118, i64 %119
  store %struct.Point** %114, %struct.Point*** %55, align 8
  store %struct.Point** %116, %struct.Point*** %56, align 8
  store %struct.Point** %120, %struct.Point*** %57, align 8
  %121 = load %struct.Point*** %55, align 8
  store %struct.Point** %121, %struct.Point*** %54, align 8
  %122 = load %struct.Point*** %54, align 8
  %123 = load %struct.Point*** %56, align 8
  store %struct.Point** %123, %struct.Point*** %49, align 8
  %124 = load %struct.Point*** %49, align 8
  %125 = load %struct.Point*** %57, align 8
  store %struct.Point** %125, %struct.Point*** %50, align 8
  %126 = load %struct.Point*** %50, align 8
  store %struct.Point** %122, %struct.Point*** %51, align 8
  store %struct.Point** %124, %struct.Point*** %52, align 8
  store %struct.Point** %126, %struct.Point*** %53, align 8
  %127 = load %struct.Point*** %52, align 8
  %128 = load %struct.Point*** %51, align 8
  %129 = ptrtoint %struct.Point** %127 to i64
  %130 = ptrtoint %struct.Point** %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  store i64 %132, i64* %__n.i.i, align 8
  %133 = load i64* %__n.i.i, align 8
  %134 = load %struct.Point*** %53, align 8
  %135 = sub i64 0, %133
  %136 = getelementptr inbounds %struct.Point** %134, i64 %135
  store %struct.Point** %136, %struct.Point*** %53, align 8
  %137 = load %struct.Point*** %53, align 8
  %138 = bitcast %struct.Point** %137 to i8*
  %139 = load %struct.Point*** %51, align 8
  %140 = bitcast %struct.Point** %139 to i8*
  %141 = load i64* %__n.i.i, align 8
  %142 = mul i64 %141, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %138, i8* %140, i64 %142, i32 8, i1 false) #1
  %143 = load %struct.Point*** %53, align 8
  %144 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 1
  store %struct.Point** %143, %struct.Point*** %144, align 8
  %145 = load i64* %__d, align 8
  %146 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 2
  %147 = load %struct.Point*** %146, align 8
  %148 = getelementptr inbounds %struct.Point** %147, i64 %145
  store %struct.Point** %148, %struct.Point*** %146, align 8
  br label %279

; <label>:149                                     ; preds = %85
  store %"struct.std::__1::__split_buffer.9"* %79, %"struct.std::__1::__split_buffer.9"** %48, align 8
  %150 = load %"struct.std::__1::__split_buffer.9"** %48
  %151 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %150, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %151, %"class.std::__1::__compressed_pair.10"** %47, align 8
  %152 = load %"class.std::__1::__compressed_pair.10"** %47
  %153 = bitcast %"class.std::__1::__compressed_pair.10"* %152 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %153, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %46, align 8
  %154 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %46
  %155 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %154, i32 0, i32 0
  %156 = load %struct.Point*** %155
  %157 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 0
  %158 = load %struct.Point*** %157, align 8
  %159 = ptrtoint %struct.Point** %156 to i64
  %160 = ptrtoint %struct.Point** %158 to i64
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
  store %"struct.std::__1::__split_buffer.9"* %79, %"struct.std::__1::__split_buffer.9"** %3, align 8
  %184 = load %"struct.std::__1::__split_buffer.9"** %3
  %185 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %184, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %185, %"class.std::__1::__compressed_pair.10"** %2, align 8
  %186 = load %"class.std::__1::__compressed_pair.10"** %2
  %187 = bitcast %"class.std::__1::__compressed_pair.10"* %186 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %187, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %1, align 8
  %188 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %1
  %189 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %188, i32 0, i32 1
  %190 = load %"class.std::__1::allocator"** %189, align 8
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC1EmmS5_(%"struct.std::__1::__split_buffer.9"* %__t, i64 %180, i64 %183, %"class.std::__1::allocator"* %190)
  %191 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 1
  %192 = load %struct.Point*** %191, align 8
  store %"class.std::__1::move_iterator"* %75, %"class.std::__1::move_iterator"** %6, align 8
  store %struct.Point** %192, %struct.Point*** %7, align 8
  %193 = load %"class.std::__1::move_iterator"** %6
  %194 = load %struct.Point*** %7, align 8
  store %"class.std::__1::move_iterator"* %193, %"class.std::__1::move_iterator"** %4, align 8
  store %struct.Point** %194, %struct.Point*** %5, align 8
  %195 = load %"class.std::__1::move_iterator"** %4
  %196 = getelementptr inbounds %"class.std::__1::move_iterator"* %195, i32 0, i32 0
  %197 = load %struct.Point*** %5, align 8
  store %struct.Point** %197, %struct.Point*** %196, align 8
  br label %198

; <label>:198                                     ; preds = %_ZNSt3__13maxImEERKT_S3_S3_.exit
  %199 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 2
  %200 = load %struct.Point*** %199, align 8
  store %"class.std::__1::move_iterator"* %78, %"class.std::__1::move_iterator"** %10, align 8
  store %struct.Point** %200, %struct.Point*** %11, align 8
  %201 = load %"class.std::__1::move_iterator"** %10
  %202 = load %struct.Point*** %11, align 8
  store %"class.std::__1::move_iterator"* %201, %"class.std::__1::move_iterator"** %8, align 8
  store %struct.Point** %202, %struct.Point*** %9, align 8
  %203 = load %"class.std::__1::move_iterator"** %8
  %204 = getelementptr inbounds %"class.std::__1::move_iterator"* %203, i32 0, i32 0
  %205 = load %struct.Point*** %9, align 8
  store %struct.Point** %205, %struct.Point*** %204, align 8
  br label %206

; <label>:206                                     ; preds = %198
  %207 = getelementptr %"class.std::__1::move_iterator"* %75, i32 0, i32 0
  %208 = load %struct.Point*** %207
  %209 = getelementptr %"class.std::__1::move_iterator"* %78, i32 0, i32 0
  %210 = load %struct.Point*** %209
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_(%"struct.std::__1::__split_buffer.9"* %__t, %struct.Point** %208, %struct.Point** %210)
          to label %211 unwind label %274

; <label>:211                                     ; preds = %206
  %212 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 0
  %213 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t, i32 0, i32 0
  store %struct.Point*** %212, %struct.Point**** %23, align 8
  store %struct.Point*** %213, %struct.Point**** %24, align 8
  %214 = load %struct.Point**** %23, align 8
  store %struct.Point*** %214, %struct.Point**** %22, align 8
  %215 = load %struct.Point**** %22, align 8
  %216 = load %struct.Point*** %215
  store %struct.Point** %216, %struct.Point*** %__t.i3, align 8
  %217 = load %struct.Point**** %24, align 8
  store %struct.Point*** %217, %struct.Point**** %20, align 8
  %218 = load %struct.Point**** %20, align 8
  %219 = load %struct.Point*** %218
  %220 = load %struct.Point**** %23, align 8
  store %struct.Point** %219, %struct.Point*** %220, align 8
  store %struct.Point*** %__t.i3, %struct.Point**** %21, align 8
  %221 = load %struct.Point**** %21, align 8
  %222 = load %struct.Point*** %221
  %223 = load %struct.Point**** %24, align 8
  store %struct.Point** %222, %struct.Point*** %223, align 8
  br label %224

; <label>:224                                     ; preds = %211
  %225 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 1
  %226 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t, i32 0, i32 1
  store %struct.Point*** %225, %struct.Point**** %28, align 8
  store %struct.Point*** %226, %struct.Point**** %29, align 8
  %227 = load %struct.Point**** %28, align 8
  store %struct.Point*** %227, %struct.Point**** %27, align 8
  %228 = load %struct.Point**** %27, align 8
  %229 = load %struct.Point*** %228
  store %struct.Point** %229, %struct.Point*** %__t.i2, align 8
  %230 = load %struct.Point**** %29, align 8
  store %struct.Point*** %230, %struct.Point**** %25, align 8
  %231 = load %struct.Point**** %25, align 8
  %232 = load %struct.Point*** %231
  %233 = load %struct.Point**** %28, align 8
  store %struct.Point** %232, %struct.Point*** %233, align 8
  store %struct.Point*** %__t.i2, %struct.Point**** %26, align 8
  %234 = load %struct.Point**** %26, align 8
  %235 = load %struct.Point*** %234
  %236 = load %struct.Point**** %29, align 8
  store %struct.Point** %235, %struct.Point*** %236, align 8
  br label %237

; <label>:237                                     ; preds = %224
  %238 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 2
  %239 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %__t, i32 0, i32 2
  store %struct.Point*** %238, %struct.Point**** %33, align 8
  store %struct.Point*** %239, %struct.Point**** %34, align 8
  %240 = load %struct.Point**** %33, align 8
  store %struct.Point*** %240, %struct.Point**** %32, align 8
  %241 = load %struct.Point**** %32, align 8
  %242 = load %struct.Point*** %241
  store %struct.Point** %242, %struct.Point*** %__t.i1, align 8
  %243 = load %struct.Point**** %34, align 8
  store %struct.Point*** %243, %struct.Point**** %30, align 8
  %244 = load %struct.Point**** %30, align 8
  %245 = load %struct.Point*** %244
  %246 = load %struct.Point**** %33, align 8
  store %struct.Point** %245, %struct.Point*** %246, align 8
  store %struct.Point*** %__t.i1, %struct.Point**** %31, align 8
  %247 = load %struct.Point**** %31, align 8
  %248 = load %struct.Point*** %247
  %249 = load %struct.Point**** %34, align 8
  store %struct.Point** %248, %struct.Point*** %249, align 8
  br label %250

; <label>:250                                     ; preds = %237
  store %"struct.std::__1::__split_buffer.9"* %79, %"struct.std::__1::__split_buffer.9"** %37, align 8
  %251 = load %"struct.std::__1::__split_buffer.9"** %37
  %252 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %251, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %252, %"class.std::__1::__compressed_pair.10"** %36, align 8
  %253 = load %"class.std::__1::__compressed_pair.10"** %36
  %254 = bitcast %"class.std::__1::__compressed_pair.10"* %253 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %254, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %35, align 8
  %255 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %35
  %256 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %255, i32 0, i32 0
  store %"struct.std::__1::__split_buffer.9"* %__t, %"struct.std::__1::__split_buffer.9"** %40, align 8
  %257 = load %"struct.std::__1::__split_buffer.9"** %40
  %258 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %257, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %258, %"class.std::__1::__compressed_pair.10"** %39, align 8
  %259 = load %"class.std::__1::__compressed_pair.10"** %39
  %260 = bitcast %"class.std::__1::__compressed_pair.10"* %259 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %260, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %38, align 8
  %261 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %38
  %262 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %261, i32 0, i32 0
  store %struct.Point*** %256, %struct.Point**** %44, align 8
  store %struct.Point*** %262, %struct.Point**** %45, align 8
  %263 = load %struct.Point**** %44, align 8
  store %struct.Point*** %263, %struct.Point**** %43, align 8
  %264 = load %struct.Point**** %43, align 8
  %265 = load %struct.Point*** %264
  store %struct.Point** %265, %struct.Point*** %__t.i, align 8
  %266 = load %struct.Point**** %45, align 8
  store %struct.Point*** %266, %struct.Point**** %41, align 8
  %267 = load %struct.Point**** %41, align 8
  %268 = load %struct.Point*** %267
  %269 = load %struct.Point**** %44, align 8
  store %struct.Point** %268, %struct.Point*** %269, align 8
  store %struct.Point*** %__t.i, %struct.Point**** %42, align 8
  %270 = load %struct.Point**** %42, align 8
  %271 = load %struct.Point*** %270
  %272 = load %struct.Point**** %45, align 8
  store %struct.Point** %271, %struct.Point*** %272, align 8
  br label %273

; <label>:273                                     ; preds = %250
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t)
  br label %279

; <label>:274                                     ; preds = %206
  %275 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %276 = extractvalue { i8*, i32 } %275, 0
  store i8* %276, i8** %76
  %277 = extractvalue { i8*, i32 } %275, 1
  store i32 %277, i32* %77
  invoke void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %__t)
          to label %278 unwind label %309

; <label>:278                                     ; preds = %274
  br label %304

; <label>:279                                     ; preds = %273, %96
  br label %280

; <label>:280                                     ; preds = %279, %0
  store %"struct.std::__1::__split_buffer.9"* %79, %"struct.std::__1::__split_buffer.9"** %60, align 8
  %281 = load %"struct.std::__1::__split_buffer.9"** %60
  %282 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %281, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %282, %"class.std::__1::__compressed_pair.10"** %59, align 8
  %283 = load %"class.std::__1::__compressed_pair.10"** %59
  %284 = bitcast %"class.std::__1::__compressed_pair.10"* %283 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %284, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %58, align 8
  %285 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %58
  %286 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %285, i32 0, i32 1
  %287 = load %"class.std::__1::allocator"** %286, align 8
  %288 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 1
  %289 = load %struct.Point*** %288, align 8
  %290 = getelementptr inbounds %struct.Point** %289, i64 -1
  store %struct.Point** %290, %struct.Point*** %61, align 8
  %291 = load %struct.Point*** %61, align 8
  %292 = load %struct.Point*** %72, align 8
  store %"class.std::__1::allocator"* %287, %"class.std::__1::allocator"** %62, align 8
  store %struct.Point** %291, %struct.Point*** %63, align 8
  store %struct.Point** %292, %struct.Point*** %64, align 8
  %293 = load %struct.Point*** %63, align 8
  %294 = bitcast %struct.Point** %293 to i8*
  %295 = icmp eq i8* %294, null
  br i1 %295, label %_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit, label %296

; <label>:296                                     ; preds = %280
  %297 = bitcast i8* %294 to %struct.Point**
  %298 = load %struct.Point*** %64, align 8
  %299 = load %struct.Point** %298, align 8
  store %struct.Point* %299, %struct.Point** %297, align 8
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit: ; preds = %280, %296
  %300 = phi %struct.Point** [ %297, %296 ], [ null, %280 ]
  %301 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %79, i32 0, i32 1
  %302 = load %struct.Point*** %301, align 8
  %303 = getelementptr inbounds %struct.Point** %302, i32 -1
  store %struct.Point** %303, %struct.Point*** %301, align 8
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
  call void @__clang_call_terminate(i8* %311) #9
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer.9"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  store %"struct.std::__1::__split_buffer.9"* %this, %"struct.std::__1::__split_buffer.9"** %1, align 8
  %2 = load %"struct.std::__1::__split_buffer.9"** %1
  call void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED2Ev(%"struct.std::__1::__split_buffer.9"* %2)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEED2Ev(%"struct.std::__1::__split_buffer.9"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %2 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %4 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %5 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %6 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %7 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %8 = alloca %"class.std::__1::allocator"*, align 8
  %9 = alloca %struct.Point**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::__1::allocator"*, align 8
  %12 = alloca %struct.Point**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.Point**, align 8
  %15 = alloca %"class.std::__1::allocator"*, align 8
  %16 = alloca %struct.Point**, align 8
  %17 = alloca %"class.std::__1::allocator"*, align 8
  %18 = alloca %struct.Point**, align 8
  %19 = alloca %"struct.std::__1::integral_constant", align 1
  %20 = alloca %"struct.std::__1::__has_destroy", align 1
  %21 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %22 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %23 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %24 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %25 = alloca %struct.Point**, align 8
  %26 = alloca %"struct.std::__1::integral_constant", align 1
  %27 = alloca i8*
  %28 = alloca i32
  %29 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %30 = alloca %struct.Point**, align 8
  %31 = alloca %"struct.std::__1::integral_constant", align 1
  %32 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %33 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  store %"struct.std::__1::__split_buffer.9"* %this, %"struct.std::__1::__split_buffer.9"** %33, align 8
  %34 = load %"struct.std::__1::__split_buffer.9"** %33
  store %"struct.std::__1::__split_buffer.9"* %34, %"struct.std::__1::__split_buffer.9"** %32, align 8
  %35 = load %"struct.std::__1::__split_buffer.9"** %32
  %36 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %35, i32 0, i32 1
  %37 = load %struct.Point*** %36, align 8
  store %"struct.std::__1::__split_buffer.9"* %35, %"struct.std::__1::__split_buffer.9"** %29, align 8
  store %struct.Point** %37, %struct.Point*** %30, align 8
  %38 = load %"struct.std::__1::__split_buffer.9"** %29
  %39 = load %struct.Point*** %30, align 8
  store %"struct.std::__1::__split_buffer.9"* %38, %"struct.std::__1::__split_buffer.9"** %24, align 8
  store %struct.Point** %39, %struct.Point*** %25, align 8
  %40 = load %"struct.std::__1::__split_buffer.9"** %24
  br label %41

; <label>:41                                      ; preds = %46, %0
  %42 = load %struct.Point*** %25, align 8
  %43 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %40, i32 0, i32 2
  %44 = load %struct.Point*** %43, align 8
  %45 = icmp ne %struct.Point** %42, %44
  br i1 %45, label %46, label %_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE5clearEv.exit

; <label>:46                                      ; preds = %41
  store %"struct.std::__1::__split_buffer.9"* %40, %"struct.std::__1::__split_buffer.9"** %23, align 8
  %47 = load %"struct.std::__1::__split_buffer.9"** %23
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %47, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %48, %"class.std::__1::__compressed_pair.10"** %22, align 8
  %49 = load %"class.std::__1::__compressed_pair.10"** %22
  %50 = bitcast %"class.std::__1::__compressed_pair.10"* %49 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %50, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %21, align 8
  %51 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %21
  %52 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %51, i32 0, i32 1
  %53 = load %"class.std::__1::allocator"** %52, align 8
  %54 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %40, i32 0, i32 2
  %55 = load %struct.Point*** %54, align 8
  %56 = getelementptr inbounds %struct.Point** %55, i32 -1
  store %struct.Point** %56, %struct.Point*** %54, align 8
  store %struct.Point** %56, %struct.Point*** %14, align 8
  %57 = load %struct.Point*** %14, align 8
  store %"class.std::__1::allocator"* %53, %"class.std::__1::allocator"** %17, align 8
  store %struct.Point** %57, %struct.Point*** %18, align 8
  %58 = bitcast %"struct.std::__1::__has_destroy"* %20 to %"struct.std::__1::integral_constant"*
  %59 = load %"class.std::__1::allocator"** %17, align 8
  %60 = load %struct.Point*** %18, align 8
  store %"class.std::__1::allocator"* %59, %"class.std::__1::allocator"** %15, align 8
  store %struct.Point** %60, %struct.Point*** %16, align 8
  %61 = load %struct.Point*** %16, align 8
  br label %41

_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE5clearEv.exit: ; preds = %41
  %62 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %34, i32 0, i32 0
  %63 = load %struct.Point*** %62, align 8
  %64 = icmp ne %struct.Point** %63, null
  br i1 %64, label %65, label %95

; <label>:65                                      ; preds = %_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE5clearEv.exit
  store %"struct.std::__1::__split_buffer.9"* %34, %"struct.std::__1::__split_buffer.9"** %7, align 8
  %66 = load %"struct.std::__1::__split_buffer.9"** %7
  %67 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %66, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %67, %"class.std::__1::__compressed_pair.10"** %6, align 8
  %68 = load %"class.std::__1::__compressed_pair.10"** %6
  %69 = bitcast %"class.std::__1::__compressed_pair.10"* %68 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %69, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %5, align 8
  %70 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %5
  %71 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %70, i32 0, i32 1
  %72 = load %"class.std::__1::allocator"** %71, align 8
  %73 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %34, i32 0, i32 0
  %74 = load %struct.Point*** %73, align 8
  store %"struct.std::__1::__split_buffer.9"* %34, %"struct.std::__1::__split_buffer.9"** %4, align 8
  %75 = load %"struct.std::__1::__split_buffer.9"** %4
  store %"struct.std::__1::__split_buffer.9"* %75, %"struct.std::__1::__split_buffer.9"** %3, align 8
  %76 = load %"struct.std::__1::__split_buffer.9"** %3
  %77 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %76, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %77, %"class.std::__1::__compressed_pair.10"** %2, align 8
  %78 = load %"class.std::__1::__compressed_pair.10"** %2
  %79 = bitcast %"class.std::__1::__compressed_pair.10"* %78 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %79, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %1, align 8
  %80 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %1
  %81 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %80, i32 0, i32 0
  %82 = load %struct.Point*** %81
  %83 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %75, i32 0, i32 0
  %84 = load %struct.Point*** %83, align 8
  %85 = ptrtoint %struct.Point** %82 to i64
  %86 = ptrtoint %struct.Point** %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 8
  store %"class.std::__1::allocator"* %72, %"class.std::__1::allocator"** %11, align 8
  store %struct.Point** %74, %struct.Point*** %12, align 8
  store i64 %88, i64* %13, align 8
  %89 = load %"class.std::__1::allocator"** %11, align 8
  %90 = load %struct.Point*** %12, align 8
  %91 = load i64* %13, align 8
  store %"class.std::__1::allocator"* %89, %"class.std::__1::allocator"** %8, align 8
  store %struct.Point** %90, %struct.Point*** %9, align 8
  store i64 %91, i64* %10, align 8
  %92 = load %"class.std::__1::allocator"** %8
  %93 = load %struct.Point*** %9, align 8
  %94 = bitcast %struct.Point** %93 to i8*
  call void @_ZdlPv(i8* %94) #1
  br label %95

; <label>:95                                      ; preds = %65, %_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE5clearEv.exit
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_(%"struct.std::__1::__split_buffer.9"* %this, %struct.Point** %__first.coerce, %struct.Point** %__last.coerce) #0 align 2 {
  %1 = alloca %"class.std::__1::move_iterator"*, align 8
  %2 = alloca %"class.std::__1::move_iterator"*, align 8
  %3 = alloca %"class.std::__1::move_iterator"*, align 8
  %4 = alloca %"class.std::__1::move_iterator"*, align 8
  %5 = alloca %struct.Point**, align 8
  %6 = alloca %"class.std::__1::move_iterator"*, align 8
  %7 = alloca %"class.std::__1::allocator"*, align 8
  %8 = alloca %struct.Point**, align 8
  %9 = alloca %struct.Point**, align 8
  %10 = alloca %"class.std::__1::move_iterator"*, align 8
  %11 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %12 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %13 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %14 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %__a = alloca %"class.std::__1::allocator"*, align 8
  store %"struct.std::__1::__split_buffer.9"* %this, %"struct.std::__1::__split_buffer.9"** %14, align 8
  %15 = getelementptr %"class.std::__1::move_iterator"* %__first, i32 0, i32 0
  store %struct.Point** %__first.coerce, %struct.Point*** %15
  %16 = getelementptr %"class.std::__1::move_iterator"* %__last, i32 0, i32 0
  store %struct.Point** %__last.coerce, %struct.Point*** %16
  %17 = load %"struct.std::__1::__split_buffer.9"** %14
  store %"struct.std::__1::__split_buffer.9"* %17, %"struct.std::__1::__split_buffer.9"** %13, align 8
  %18 = load %"struct.std::__1::__split_buffer.9"** %13
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %18, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %19, %"class.std::__1::__compressed_pair.10"** %12, align 8
  %20 = load %"class.std::__1::__compressed_pair.10"** %12
  %21 = bitcast %"class.std::__1::__compressed_pair.10"* %20 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %21, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %11, align 8
  %22 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %11
  %23 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %22, i32 0, i32 1
  %24 = load %"class.std::__1::allocator"** %23, align 8
  store %"class.std::__1::allocator"* %24, %"class.std::__1::allocator"** %__a, align 8
  br label %25

; <label>:25                                      ; preds = %54, %0
  store %"class.std::__1::move_iterator"* %__first, %"class.std::__1::move_iterator"** %3, align 8
  store %"class.std::__1::move_iterator"* %__last, %"class.std::__1::move_iterator"** %4, align 8
  %26 = load %"class.std::__1::move_iterator"** %3, align 8
  store %"class.std::__1::move_iterator"* %26, %"class.std::__1::move_iterator"** %2, align 8
  %27 = load %"class.std::__1::move_iterator"** %2
  %28 = getelementptr inbounds %"class.std::__1::move_iterator"* %27, i32 0, i32 0
  %29 = load %struct.Point*** %28, align 8
  %30 = load %"class.std::__1::move_iterator"** %4, align 8
  store %"class.std::__1::move_iterator"* %30, %"class.std::__1::move_iterator"** %1, align 8
  %31 = load %"class.std::__1::move_iterator"** %1
  %32 = getelementptr inbounds %"class.std::__1::move_iterator"* %31, i32 0, i32 0
  %33 = load %struct.Point*** %32, align 8
  %34 = icmp ne %struct.Point** %29, %33
  br i1 %34, label %35, label %59

; <label>:35                                      ; preds = %25
  %36 = load %"class.std::__1::allocator"** %__a, align 8
  %37 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %17, i32 0, i32 2
  %38 = load %struct.Point*** %37, align 8
  store %struct.Point** %38, %struct.Point*** %5, align 8
  %39 = load %struct.Point*** %5, align 8
  store %"class.std::__1::move_iterator"* %__first, %"class.std::__1::move_iterator"** %6, align 8
  %40 = load %"class.std::__1::move_iterator"** %6
  %41 = getelementptr inbounds %"class.std::__1::move_iterator"* %40, i32 0, i32 0
  %42 = load %struct.Point*** %41, align 8
  store %"class.std::__1::allocator"* %36, %"class.std::__1::allocator"** %7, align 8
  store %struct.Point** %39, %struct.Point*** %8, align 8
  store %struct.Point** %42, %struct.Point*** %9, align 8
  %43 = load %struct.Point*** %8, align 8
  %44 = bitcast %struct.Point** %43 to i8*
  %45 = icmp eq i8* %44, null
  br i1 %45, label %_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit, label %46

; <label>:46                                      ; preds = %35
  %47 = bitcast i8* %44 to %struct.Point**
  %48 = load %struct.Point*** %9, align 8
  %49 = load %struct.Point** %48, align 8
  store %struct.Point* %49, %struct.Point** %47, align 8
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit: ; preds = %35, %46
  %50 = phi %struct.Point** [ %47, %46 ], [ null, %35 ]
  %51 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %17, i32 0, i32 2
  %52 = load %struct.Point*** %51, align 8
  %53 = getelementptr inbounds %struct.Point** %52, i32 1
  store %struct.Point** %53, %struct.Point*** %51, align 8
  br label %54

; <label>:54                                      ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIP5PointEEE9constructIS3_S3_EEvRS4_PT_RKT0_.exit
  store %"class.std::__1::move_iterator"* %__first, %"class.std::__1::move_iterator"** %10, align 8
  %55 = load %"class.std::__1::move_iterator"** %10
  %56 = getelementptr inbounds %"class.std::__1::move_iterator"* %55, i32 0, i32 0
  %57 = load %struct.Point*** %56, align 8
  %58 = getelementptr inbounds %struct.Point** %57, i32 1
  store %struct.Point** %58, %struct.Point*** %56, align 8
  br label %25

; <label>:59                                      ; preds = %25
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIP5PointRNS_9allocatorIS2_EEEC2EmmS5_(%"struct.std::__1::__split_buffer.9"* %this, i64 %__cap, i64 %__start, %"class.std::__1::allocator"* %__a) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::allocator"*, align 8
  %2 = alloca %"class.std::__1::allocator"*, align 8
  %3 = alloca %struct.Point***, align 8
  %4 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %5 = alloca %struct.Point**, align 8
  %6 = alloca %"class.std::__1::allocator"*, align 8
  %7 = alloca %struct.Point***, align 8
  %8 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %9 = alloca %struct.Point**, align 8
  %10 = alloca %"class.std::__1::allocator"*, align 8
  %11 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %12 = alloca %struct.Point**, align 8
  %13 = alloca %"class.std::__1::allocator"*, align 8
  %14 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %15 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %16 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %17 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %18 = alloca %"class.std::__1::allocator"*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %"class.std::__1::allocator"*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %"struct.std::__1::nullptr_t", align 8
  %28 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %29 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.11"*, align 8
  %30 = alloca %"class.std::__1::__compressed_pair.10"*, align 8
  %31 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %32 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %35 = alloca i64, align 8
  %36 = alloca %"struct.std::__1::nullptr_t", align 8
  %37 = alloca %"struct.std::__1::__split_buffer.9"*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca %"class.std::__1::allocator"*, align 8
  %41 = alloca %"struct.std::__1::nullptr_t", align 8
  %42 = alloca %"struct.std::__1::nullptr_t", align 8
  store %"struct.std::__1::__split_buffer.9"* %this, %"struct.std::__1::__split_buffer.9"** %37, align 8
  store i64 %__cap, i64* %38, align 8
  store i64 %__start, i64* %39, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %40, align 8
  %43 = load %"struct.std::__1::__split_buffer.9"** %37
  %44 = bitcast %"struct.std::__1::__split_buffer.9"* %43 to %"class.std::__1::__split_buffer_common"*
  %45 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %43, i32 0, i32 3
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
  %54 = load %"class.std::__1::allocator"** %40, align 8
  store %"class.std::__1::__compressed_pair.10"* %45, %"class.std::__1::__compressed_pair.10"** %11, align 8
  store %struct.Point** null, %struct.Point*** %12, align 8
  store %"class.std::__1::allocator"* %54, %"class.std::__1::allocator"** %13, align 8
  %55 = load %"class.std::__1::__compressed_pair.10"** %11
  %56 = load %struct.Point*** %12, align 8
  %57 = load %"class.std::__1::allocator"** %13
  store %"class.std::__1::__compressed_pair.10"* %55, %"class.std::__1::__compressed_pair.10"** %8, align 8
  store %struct.Point** %56, %struct.Point*** %9, align 8
  store %"class.std::__1::allocator"* %57, %"class.std::__1::allocator"** %10, align 8
  %58 = load %"class.std::__1::__compressed_pair.10"** %8
  %59 = bitcast %"class.std::__1::__compressed_pair.10"* %58 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %struct.Point*** %9, %struct.Point**** %7, align 8
  %60 = load %struct.Point**** %7, align 8
  %61 = load %struct.Point*** %60
  %62 = load %"class.std::__1::allocator"** %10, align 8
  store %"class.std::__1::allocator"* %62, %"class.std::__1::allocator"** %1, align 8
  %63 = load %"class.std::__1::allocator"** %1, align 8
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %59, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %4, align 8
  store %struct.Point** %61, %struct.Point*** %5, align 8
  store %"class.std::__1::allocator"* %63, %"class.std::__1::allocator"** %6, align 8
  %64 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %4
  %65 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %64, i32 0, i32 0
  store %struct.Point*** %5, %struct.Point**** %3, align 8
  %66 = load %struct.Point**** %3, align 8
  %67 = load %struct.Point*** %66
  store %struct.Point** %67, %struct.Point*** %65, align 8
  %68 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %64, i32 0, i32 1
  %69 = load %"class.std::__1::allocator"** %6, align 8
  store %"class.std::__1::allocator"* %69, %"class.std::__1::allocator"** %2, align 8
  %70 = load %"class.std::__1::allocator"** %2, align 8
  store %"class.std::__1::allocator"* %70, %"class.std::__1::allocator"** %68, align 8
  %71 = load i64* %38, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

; <label>:73                                      ; preds = %0
  store %"struct.std::__1::__split_buffer.9"* %43, %"struct.std::__1::__split_buffer.9"** %16, align 8
  %74 = load %"struct.std::__1::__split_buffer.9"** %16
  %75 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %74, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %75, %"class.std::__1::__compressed_pair.10"** %15, align 8
  %76 = load %"class.std::__1::__compressed_pair.10"** %15
  %77 = bitcast %"class.std::__1::__compressed_pair.10"* %76 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %77, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %14, align 8
  %78 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %14
  %79 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %78, i32 0, i32 1
  %80 = load %"class.std::__1::allocator"** %79, align 8
  %81 = load i64* %38, align 8
  store %"class.std::__1::allocator"* %80, %"class.std::__1::allocator"** %21, align 8
  store i64 %81, i64* %22, align 8
  %82 = load %"class.std::__1::allocator"** %21, align 8
  %83 = load i64* %22, align 8
  store %"class.std::__1::allocator"* %82, %"class.std::__1::allocator"** %18, align 8
  store i64 %83, i64* %19, align 8
  store i8* null, i8** %20, align 8
  %84 = load %"class.std::__1::allocator"** %18
  %85 = load i64* %19, align 8
  %86 = mul i64 %85, 8
  %87 = call noalias i8* @_Znwm(i64 %86)
  %88 = bitcast i8* %87 to %struct.Point**
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
  %99 = phi %struct.Point** [ %88, %73 ], [ null, %89 ]
  %100 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %43, i32 0, i32 0
  store %struct.Point** %99, %struct.Point*** %100, align 8
  %101 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %43, i32 0, i32 0
  %102 = load %struct.Point*** %101, align 8
  %103 = load i64* %39, align 8
  %104 = getelementptr inbounds %struct.Point** %102, i64 %103
  %105 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %43, i32 0, i32 2
  store %struct.Point** %104, %struct.Point*** %105, align 8
  %106 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %43, i32 0, i32 1
  store %struct.Point** %104, %struct.Point*** %106, align 8
  %107 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %43, i32 0, i32 0
  %108 = load %struct.Point*** %107, align 8
  %109 = load i64* %38, align 8
  %110 = getelementptr inbounds %struct.Point** %108, i64 %109
  store %"struct.std::__1::__split_buffer.9"* %43, %"struct.std::__1::__split_buffer.9"** %31, align 8
  %111 = load %"struct.std::__1::__split_buffer.9"** %31
  %112 = getelementptr inbounds %"struct.std::__1::__split_buffer.9"* %111, i32 0, i32 3
  store %"class.std::__1::__compressed_pair.10"* %112, %"class.std::__1::__compressed_pair.10"** %30, align 8
  %113 = load %"class.std::__1::__compressed_pair.10"** %30
  %114 = bitcast %"class.std::__1::__compressed_pair.10"* %113 to %"class.std::__1::__libcpp_compressed_pair_imp.11"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.11"* %114, %"class.std::__1::__libcpp_compressed_pair_imp.11"** %29, align 8
  %115 = load %"class.std::__1::__libcpp_compressed_pair_imp.11"** %29
  %116 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.11"* %115, i32 0, i32 0
  store %struct.Point** %110, %struct.Point*** %116
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #8

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEE8pop_backEv(%"class.std::__1::deque"* %this) #0 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %struct.Point*, align 8
  %3 = alloca %"class.std::__1::allocator.2"*, align 8
  %4 = alloca %struct.Point*, align 8
  %5 = alloca %"class.std::__1::allocator.2"*, align 8
  %6 = alloca %struct.Point*, align 8
  %7 = alloca %"struct.std::__1::integral_constant", align 1
  %8 = alloca %"struct.std::__1::__has_destroy.13", align 1
  %9 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %10 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %11 = alloca %"class.std::__1::__deque_base"*, align 8
  %12 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %13 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %14 = alloca %"class.std::__1::__deque_base"*, align 8
  %15 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %16 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %17 = alloca %"class.std::__1::deque"*, align 8
  %18 = alloca %"class.std::__1::deque"*, align 8
  %19 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %20 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %21 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %22 = alloca %"class.std::__1::__deque_base"*, align 8
  %23 = alloca %"class.std::__1::allocator.2"*, align 8
  %24 = alloca %struct.Point*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %"class.std::__1::allocator.2"*, align 8
  %27 = alloca %struct.Point*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.Point**, align 8
  %30 = alloca %"class.std::__1::allocator"*, align 8
  %31 = alloca %struct.Point**, align 8
  %32 = alloca %"class.std::__1::allocator"*, align 8
  %33 = alloca %struct.Point**, align 8
  %34 = alloca %"struct.std::__1::integral_constant", align 1
  %35 = alloca %"struct.std::__1::__has_destroy", align 1
  %36 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %37 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %38 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %39 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %40 = alloca %struct.Point**, align 8
  %41 = alloca %"struct.std::__1::integral_constant", align 1
  %42 = alloca i8*
  %43 = alloca i32
  %44 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %45 = alloca %struct.Point**, align 8
  %46 = alloca %"struct.std::__1::integral_constant", align 1
  %47 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %48 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %49 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %50 = alloca %"class.std::__1::__deque_base"*, align 8
  %51 = alloca %"class.std::__1::deque"*, align 8
  %__a = alloca %"class.std::__1::allocator.2"*, align 8
  %__p = alloca i64, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %51, align 8
  %52 = load %"class.std::__1::deque"** %51
  %53 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %53, %"class.std::__1::__deque_base"** %50, align 8
  %54 = load %"class.std::__1::__deque_base"** %50
  %55 = getelementptr inbounds %"class.std::__1::__deque_base"* %54, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %55, %"class.std::__1::__compressed_pair.0"** %49, align 8
  %56 = load %"class.std::__1::__compressed_pair.0"** %49
  %57 = bitcast %"class.std::__1::__compressed_pair.0"* %56 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %57, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %48, align 8
  %58 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %48
  %59 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %58 to %"class.std::__1::allocator.2"*
  store %"class.std::__1::allocator.2"* %59, %"class.std::__1::allocator.2"** %__a, align 8
  %60 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %60, %"class.std::__1::__deque_base"** %22, align 8
  %61 = load %"class.std::__1::__deque_base"** %22
  %62 = getelementptr inbounds %"class.std::__1::__deque_base"* %61, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %62, %"class.std::__1::__compressed_pair.0"** %21, align 8
  %63 = load %"class.std::__1::__compressed_pair.0"** %21
  %64 = bitcast %"class.std::__1::__compressed_pair.0"* %63 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %64, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %20, align 8
  %65 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %20
  %66 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %65, i32 0, i32 0
  %67 = load i64* %66
  %68 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %69 = getelementptr inbounds %"class.std::__1::__deque_base"* %68, i32 0, i32 1
  %70 = load i64* %69, align 8
  %71 = add i64 %67, %70
  %72 = sub i64 %71, 1
  store i64 %72, i64* %__p, align 8
  %73 = load %"class.std::__1::allocator.2"** %__a, align 8
  %74 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %75 = getelementptr inbounds %"class.std::__1::__deque_base"* %74, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %75, %"struct.std::__1::__split_buffer"** %1, align 8
  %76 = load %"struct.std::__1::__split_buffer"** %1
  %77 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %76, i32 0, i32 1
  %78 = load %struct.Point*** %77, align 8
  %79 = load i64* %__p, align 8
  %80 = udiv i64 %79, 512
  %81 = getelementptr inbounds %struct.Point** %78, i64 %80
  %82 = load %struct.Point** %81, align 8
  %83 = load i64* %__p, align 8
  %84 = urem i64 %83, 512
  %85 = getelementptr inbounds %struct.Point* %82, i64 %84
  store %struct.Point* %85, %struct.Point** %2, align 8
  %86 = load %struct.Point** %2, align 8
  store %"class.std::__1::allocator.2"* %73, %"class.std::__1::allocator.2"** %5, align 8
  store %struct.Point* %86, %struct.Point** %6, align 8
  %87 = bitcast %"struct.std::__1::__has_destroy.13"* %8 to %"struct.std::__1::integral_constant"*
  %88 = load %"class.std::__1::allocator.2"** %5, align 8
  %89 = load %struct.Point** %6, align 8
  store %"class.std::__1::allocator.2"* %88, %"class.std::__1::allocator.2"** %3, align 8
  store %struct.Point* %89, %struct.Point** %4, align 8
  %90 = load %struct.Point** %4, align 8
  %91 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %91, %"class.std::__1::__deque_base"** %11, align 8
  %92 = load %"class.std::__1::__deque_base"** %11
  %93 = getelementptr inbounds %"class.std::__1::__deque_base"* %92, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %93, %"class.std::__1::__compressed_pair.0"** %10, align 8
  %94 = load %"class.std::__1::__compressed_pair.0"** %10
  %95 = bitcast %"class.std::__1::__compressed_pair.0"* %94 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %95, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %9, align 8
  %96 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %9
  %97 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %96, i32 0, i32 0
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
  %106 = load %struct.Point*** %105, align 8
  %107 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %104, i32 0, i32 1
  %108 = load %struct.Point*** %107, align 8
  %109 = ptrtoint %struct.Point** %106 to i64
  %110 = ptrtoint %struct.Point** %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %0
  br label %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit

; <label>:115                                     ; preds = %0
  %116 = bitcast %"class.std::__1::deque"* %101 to %"class.std::__1::__deque_base"*
  %117 = getelementptr inbounds %"class.std::__1::__deque_base"* %116, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %117, %"struct.std::__1::__split_buffer"** %15, align 8
  %118 = load %"struct.std::__1::__split_buffer"** %15
  %119 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %118, i32 0, i32 2
  %120 = load %struct.Point*** %119, align 8
  %121 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %118, i32 0, i32 1
  %122 = load %struct.Point*** %121, align 8
  %123 = ptrtoint %struct.Point** %120 to i64
  %124 = ptrtoint %struct.Point** %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 8
  %127 = mul i64 %126, 512
  %128 = sub i64 %127, 1
  br label %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit

_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit: ; preds = %114, %115
  %129 = phi i64 [ 0, %114 ], [ %128, %115 ]
  %130 = bitcast %"class.std::__1::deque"* %100 to %"class.std::__1::__deque_base"*
  %131 = getelementptr inbounds %"class.std::__1::__deque_base"* %130, i32 0, i32 1
  %132 = load i64* %131, align 8
  %133 = bitcast %"class.std::__1::deque"* %100 to %"class.std::__1::__deque_base"*
  store %"class.std::__1::__deque_base"* %133, %"class.std::__1::__deque_base"** %14, align 8
  %134 = load %"class.std::__1::__deque_base"** %14
  %135 = getelementptr inbounds %"class.std::__1::__deque_base"* %134, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %135, %"class.std::__1::__compressed_pair.0"** %13, align 8
  %136 = load %"class.std::__1::__compressed_pair.0"** %13
  %137 = bitcast %"class.std::__1::__compressed_pair.0"* %136 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %137, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %12, align 8
  %138 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %12
  %139 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %138, i32 0, i32 0
  %140 = load i64* %139
  %141 = add i64 %132, %140
  %142 = sub i64 %129, %141
  %143 = icmp uge i64 %142, 1024
  br i1 %143, label %144, label %188

; <label>:144                                     ; preds = %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit
  %145 = load %"class.std::__1::allocator.2"** %__a, align 8
  %146 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %147 = getelementptr inbounds %"class.std::__1::__deque_base"* %146, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %147, %"struct.std::__1::__split_buffer"** %19, align 8
  %148 = load %"struct.std::__1::__split_buffer"** %19
  %149 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %148, i32 0, i32 2
  %150 = load %struct.Point*** %149, align 8
  %151 = getelementptr inbounds %struct.Point** %150, i64 -1
  %152 = load %struct.Point** %151
  store %"class.std::__1::allocator.2"* %145, %"class.std::__1::allocator.2"** %26, align 8
  store %struct.Point* %152, %struct.Point** %27, align 8
  store i64 512, i64* %28, align 8
  %153 = load %"class.std::__1::allocator.2"** %26, align 8
  %154 = load %struct.Point** %27, align 8
  %155 = load i64* %28, align 8
  store %"class.std::__1::allocator.2"* %153, %"class.std::__1::allocator.2"** %23, align 8
  store %struct.Point* %154, %struct.Point** %24, align 8
  store i64 %155, i64* %25, align 8
  %156 = load %"class.std::__1::allocator.2"** %23
  %157 = load %struct.Point** %24, align 8
  %158 = bitcast %struct.Point* %157 to i8*
  call void @_ZdlPv(i8* %158) #1
  %159 = bitcast %"class.std::__1::deque"* %52 to %"class.std::__1::__deque_base"*
  %160 = getelementptr inbounds %"class.std::__1::__deque_base"* %159, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %160, %"struct.std::__1::__split_buffer"** %47, align 8
  %161 = load %"struct.std::__1::__split_buffer"** %47
  %162 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %161, i32 0, i32 2
  %163 = load %struct.Point*** %162, align 8
  %164 = getelementptr inbounds %struct.Point** %163, i64 -1
  store %"struct.std::__1::__split_buffer"* %161, %"struct.std::__1::__split_buffer"** %44, align 8
  store %struct.Point** %164, %struct.Point*** %45, align 8
  %165 = load %"struct.std::__1::__split_buffer"** %44
  %166 = load %struct.Point*** %45, align 8
  store %"struct.std::__1::__split_buffer"* %165, %"struct.std::__1::__split_buffer"** %39, align 8
  store %struct.Point** %166, %struct.Point*** %40, align 8
  %167 = load %"struct.std::__1::__split_buffer"** %39
  br label %168

; <label>:168                                     ; preds = %173, %144
  %169 = load %struct.Point*** %40, align 8
  %170 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %167, i32 0, i32 2
  %171 = load %struct.Point*** %170, align 8
  %172 = icmp ne %struct.Point** %169, %171
  br i1 %172, label %173, label %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE8pop_backEv.exit

; <label>:173                                     ; preds = %168
  store %"struct.std::__1::__split_buffer"* %167, %"struct.std::__1::__split_buffer"** %38, align 8
  %174 = load %"struct.std::__1::__split_buffer"** %38
  %175 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %174, i32 0, i32 3
  store %"class.std::__1::__compressed_pair"* %175, %"class.std::__1::__compressed_pair"** %37, align 8
  %176 = load %"class.std::__1::__compressed_pair"** %37
  %177 = bitcast %"class.std::__1::__compressed_pair"* %176 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %177, %"class.std::__1::__libcpp_compressed_pair_imp"** %36, align 8
  %178 = load %"class.std::__1::__libcpp_compressed_pair_imp"** %36
  %179 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %178 to %"class.std::__1::allocator"*
  %180 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %167, i32 0, i32 2
  %181 = load %struct.Point*** %180, align 8
  %182 = getelementptr inbounds %struct.Point** %181, i32 -1
  store %struct.Point** %182, %struct.Point*** %180, align 8
  store %struct.Point** %182, %struct.Point*** %29, align 8
  %183 = load %struct.Point*** %29, align 8
  store %"class.std::__1::allocator"* %179, %"class.std::__1::allocator"** %32, align 8
  store %struct.Point** %183, %struct.Point*** %33, align 8
  %184 = bitcast %"struct.std::__1::__has_destroy"* %35 to %"struct.std::__1::integral_constant"*
  %185 = load %"class.std::__1::allocator"** %32, align 8
  %186 = load %struct.Point*** %33, align 8
  store %"class.std::__1::allocator"* %185, %"class.std::__1::allocator"** %30, align 8
  store %struct.Point** %186, %struct.Point*** %31, align 8
  %187 = load %struct.Point*** %31, align 8
  br label %168

_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE8pop_backEv.exit: ; preds = %168
  br label %188

; <label>:188                                     ; preds = %_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEE8pop_backEv.exit, %_ZNKSt3__15dequeI5PointNS_9allocatorIS1_EEE12__back_spareEv.exit
  ret void
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15stackI5PointNS_5dequeIS1_NS_9allocatorIS1_EEEEED2Ev(%"class.std::__1::stack"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::__1::stack"*, align 8
  store %"class.std::__1::stack"* %this, %"class.std::__1::stack"** %1, align 8
  %2 = load %"class.std::__1::stack"** %1
  %3 = getelementptr inbounds %"class.std::__1::stack"* %2, i32 0, i32 0
  call void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEED1Ev(%"class.std::__1::deque"* %3)
  ret void
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEED1Ev(%"class.std::__1::deque"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::__1::deque"*, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %1, align 8
  %2 = load %"class.std::__1::deque"** %1
  call void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEED2Ev(%"class.std::__1::deque"* %2)
  ret void
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeI5PointNS_9allocatorIS1_EEED2Ev(%"class.std::__1::deque"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::__1::deque"*, align 8
  store %"class.std::__1::deque"* %this, %"class.std::__1::deque"** %1, align 8
  %2 = load %"class.std::__1::deque"** %1
  %3 = bitcast %"class.std::__1::deque"* %2 to %"class.std::__1::__deque_base"*
  call void @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEED2Ev(%"class.std::__1::__deque_base"* %3)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEED2Ev(%"class.std::__1::__deque_base"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::__1::allocator.2"*, align 8
  %2 = alloca %struct.Point*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__1::allocator.2"*, align 8
  %5 = alloca %struct.Point*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %8 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %9 = alloca %"class.std::__1::__deque_base"*, align 8
  %10 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %11 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %12 = alloca %"class.std::__1::__deque_base"*, align 8
  %__i = alloca %struct.Point**, align 8
  %__e = alloca %struct.Point**, align 8
  %13 = alloca i8*
  %14 = alloca i32
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %12, align 8
  %15 = load %"class.std::__1::__deque_base"** %12
  call void @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEE5clearEv(%"class.std::__1::__deque_base"* %15) #1
  %16 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %16, %"struct.std::__1::__split_buffer"** %11, align 8
  %17 = load %"struct.std::__1::__split_buffer"** %11
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %17, i32 0, i32 1
  %19 = load %struct.Point*** %18, align 8
  store %struct.Point** %19, %struct.Point*** %__i, align 8
  %20 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %20, %"struct.std::__1::__split_buffer"** %10, align 8
  %21 = load %"struct.std::__1::__split_buffer"** %10
  %22 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %21, i32 0, i32 2
  %23 = load %struct.Point*** %22, align 8
  store %struct.Point** %23, %struct.Point*** %__e, align 8
  br label %24

; <label>:24                                      ; preds = %44, %0
  %25 = load %struct.Point*** %__i, align 8
  %26 = load %struct.Point*** %__e, align 8
  %27 = icmp ne %struct.Point** %25, %26
  br i1 %27, label %28, label %52

; <label>:28                                      ; preds = %24
  store %"class.std::__1::__deque_base"* %15, %"class.std::__1::__deque_base"** %9, align 8
  %29 = load %"class.std::__1::__deque_base"** %9
  %30 = getelementptr inbounds %"class.std::__1::__deque_base"* %29, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %30, %"class.std::__1::__compressed_pair.0"** %8, align 8
  %31 = load %"class.std::__1::__compressed_pair.0"** %8
  %32 = bitcast %"class.std::__1::__compressed_pair.0"* %31 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %32, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %7, align 8
  %33 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %7
  %34 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %33 to %"class.std::__1::allocator.2"*
  br label %35

; <label>:35                                      ; preds = %28
  %36 = load %struct.Point*** %__i, align 8
  %37 = load %struct.Point** %36, align 8
  store %"class.std::__1::allocator.2"* %34, %"class.std::__1::allocator.2"** %4, align 8
  store %struct.Point* %37, %struct.Point** %5, align 8
  store i64 512, i64* %6, align 8
  %38 = load %"class.std::__1::allocator.2"** %4, align 8
  %39 = load %struct.Point** %5, align 8
  %40 = load i64* %6, align 8
  store %"class.std::__1::allocator.2"* %38, %"class.std::__1::allocator.2"** %1, align 8
  store %struct.Point* %39, %struct.Point** %2, align 8
  store i64 %40, i64* %3, align 8
  %41 = load %"class.std::__1::allocator.2"** %1
  %42 = load %struct.Point** %2, align 8
  %43 = bitcast %struct.Point* %42 to i8*
  call void @_ZdlPv(i8* %43) #1
  br label %44

; <label>:44                                      ; preds = %35
  %45 = load %struct.Point*** %__i, align 8
  %46 = getelementptr inbounds %struct.Point** %45, i32 1
  store %struct.Point** %46, %struct.Point*** %__i, align 8
  br label %24
                                                  ; No predecessors!
  %48 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %13
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %14
  %51 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  invoke void @_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer"* %51)
          to label %54 unwind label %60

; <label>:52                                      ; preds = %24
  %53 = getelementptr inbounds %"class.std::__1::__deque_base"* %15, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIP5PointNS_9allocatorIS2_EEED1Ev(%"struct.std::__1::__split_buffer"* %53)
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
  call void @__clang_call_terminate(i8* %62) #9
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEE5clearEv(%"class.std::__1::__deque_base"* %this) #2 align 2 {
  %1 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %2 = alloca %struct.Point*, align 8
  %3 = alloca %"class.std::__1::allocator.2"*, align 8
  %4 = alloca %struct.Point*, align 8
  %5 = alloca %"class.std::__1::allocator.2"*, align 8
  %6 = alloca %struct.Point*, align 8
  %7 = alloca %"struct.std::__1::integral_constant", align 1
  %8 = alloca %"struct.std::__1::__has_destroy.13", align 1
  %9 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %10 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %11 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %12 = alloca %"class.std::__1::__deque_base"*, align 8
  %13 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %14 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %15 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %16 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %17 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %18 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %19 = alloca %"class.std::__1::allocator.2"*, align 8
  %20 = alloca %struct.Point*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %"class.std::__1::allocator.2"*, align 8
  %23 = alloca %struct.Point*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %26 = alloca %struct.Point**, align 8
  %27 = alloca %"struct.std::__1::integral_constant.12", align 1
  %28 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %29 = alloca %struct.Point**, align 8
  %30 = alloca %"struct.std::__1::integral_constant.12", align 1
  %31 = alloca %"struct.std::__1::is_trivially_destructible", align 1
  %32 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %33 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %34 = alloca %"class.std::__1::__libcpp_compressed_pair_imp.1"*, align 8
  %35 = alloca %"class.std::__1::__compressed_pair.0"*, align 8
  %36 = alloca %"class.std::__1::__deque_base"*, align 8
  %37 = alloca %"class.std::__1::__deque_base"*, align 8
  %__a = alloca %"class.std::__1::allocator.2"*, align 8
  %38 = alloca i8*
  %39 = alloca i32
  %__i = alloca %"class.std::__1::__deque_iterator", align 8
  %__e = alloca %"class.std::__1::__deque_iterator", align 8
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %37, align 8
  %40 = load %"class.std::__1::__deque_base"** %37
  store %"class.std::__1::__deque_base"* %40, %"class.std::__1::__deque_base"** %36, align 8
  %41 = load %"class.std::__1::__deque_base"** %36
  %42 = getelementptr inbounds %"class.std::__1::__deque_base"* %41, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %42, %"class.std::__1::__compressed_pair.0"** %35, align 8
  %43 = load %"class.std::__1::__compressed_pair.0"** %35
  %44 = bitcast %"class.std::__1::__compressed_pair.0"* %43 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %44, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %34, align 8
  %45 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %34
  %46 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp.1"* %45 to %"class.std::__1::allocator.2"*
  br label %47

; <label>:47                                      ; preds = %0
  store %"class.std::__1::allocator.2"* %46, %"class.std::__1::allocator.2"** %__a, align 8
  %48 = call { %struct.Point**, %struct.Point* } @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEE5beginEv(%"class.std::__1::__deque_base"* %40) #1
  %49 = bitcast %"class.std::__1::__deque_iterator"* %__i to { %struct.Point**, %struct.Point* }*
  %50 = getelementptr { %struct.Point**, %struct.Point* }* %49, i32 0, i32 0
  %51 = extractvalue { %struct.Point**, %struct.Point* } %48, 0
  store %struct.Point** %51, %struct.Point*** %50, align 1
  %52 = getelementptr { %struct.Point**, %struct.Point* }* %49, i32 0, i32 1
  %53 = extractvalue { %struct.Point**, %struct.Point* } %48, 1
  store %struct.Point* %53, %struct.Point** %52, align 1
  %54 = call { %struct.Point**, %struct.Point* } @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEE3endEv(%"class.std::__1::__deque_base"* %40) #1
  %55 = bitcast %"class.std::__1::__deque_iterator"* %__e to { %struct.Point**, %struct.Point* }*
  %56 = getelementptr { %struct.Point**, %struct.Point* }* %55, i32 0, i32 0
  %57 = extractvalue { %struct.Point**, %struct.Point* } %54, 0
  store %struct.Point** %57, %struct.Point*** %56, align 1
  %58 = getelementptr { %struct.Point**, %struct.Point* }* %55, i32 0, i32 1
  %59 = extractvalue { %struct.Point**, %struct.Point* } %54, 1
  store %struct.Point* %59, %struct.Point** %58, align 1
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
  %65 = load %struct.Point** %64, align 8
  %66 = load %"class.std::__1::__deque_iterator"** %16, align 8
  %67 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %66, i32 0, i32 1
  %68 = load %struct.Point** %67, align 8
  %69 = icmp eq %struct.Point* %65, %68
  %70 = xor i1 %69, true
  br label %71

; <label>:71                                      ; preds = %60
  br i1 %70, label %72, label %114

; <label>:72                                      ; preds = %71
  %73 = load %"class.std::__1::allocator.2"** %__a, align 8
  store %"class.std::__1::__deque_iterator"* %__i, %"class.std::__1::__deque_iterator"** %1, align 8
  %74 = load %"class.std::__1::__deque_iterator"** %1
  %75 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %74, i32 0, i32 1
  %76 = load %struct.Point** %75, align 8
  br label %77

; <label>:77                                      ; preds = %72
  store %struct.Point* %76, %struct.Point** %2, align 8
  %78 = load %struct.Point** %2, align 8
  %79 = bitcast %struct.Point* %78 to i8*
  %80 = bitcast i8* %79 to %struct.Point*
  store %"class.std::__1::allocator.2"* %73, %"class.std::__1::allocator.2"** %5, align 8
  store %struct.Point* %80, %struct.Point** %6, align 8
  %81 = bitcast %"struct.std::__1::__has_destroy.13"* %8 to %"struct.std::__1::integral_constant"*
  %82 = load %"class.std::__1::allocator.2"** %5, align 8
  %83 = load %struct.Point** %6, align 8
  store %"class.std::__1::allocator.2"* %82, %"class.std::__1::allocator.2"** %3, align 8
  store %struct.Point* %83, %struct.Point** %4, align 8
  %84 = load %struct.Point** %4, align 8
  br label %85

; <label>:85                                      ; preds = %77
  br label %86

; <label>:86                                      ; preds = %85
  store %"class.std::__1::__deque_iterator"* %__i, %"class.std::__1::__deque_iterator"** %9, align 8
  %87 = load %"class.std::__1::__deque_iterator"** %9
  %88 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 1
  %89 = load %struct.Point** %88, align 8
  %90 = getelementptr inbounds %struct.Point* %89, i32 1
  store %struct.Point* %90, %struct.Point** %88, align 8
  %91 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 0
  %92 = load %struct.Point*** %91, align 8
  %93 = load %struct.Point** %92, align 8
  %94 = ptrtoint %struct.Point* %90 to i64
  %95 = ptrtoint %struct.Point* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 8
  %98 = icmp eq i64 %97, 512
  br i1 %98, label %99, label %_ZNSt3__116__deque_iteratorI5PointPS1_RS1_PS2_lLl512EEppEv.exit

; <label>:99                                      ; preds = %86
  %100 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 0
  %101 = load %struct.Point*** %100, align 8
  %102 = getelementptr inbounds %struct.Point** %101, i32 1
  store %struct.Point** %102, %struct.Point*** %100, align 8
  %103 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 0
  %104 = load %struct.Point*** %103, align 8
  %105 = load %struct.Point** %104, align 8
  %106 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %87, i32 0, i32 1
  store %struct.Point* %105, %struct.Point** %106, align 8
  br label %_ZNSt3__116__deque_iteratorI5PointPS1_RS1_PS2_lLl512EEppEv.exit

_ZNSt3__116__deque_iteratorI5PointPS1_RS1_PS2_lLl512EEppEv.exit: ; preds = %86, %99
  br label %107

; <label>:107                                     ; preds = %_ZNSt3__116__deque_iteratorI5PointPS1_RS1_PS2_lLl512EEppEv.exit
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
  call void @__cxa_call_unexpected(i8* %113) #10
  unreachable

; <label>:114                                     ; preds = %71
  store %"class.std::__1::__deque_base"* %40, %"class.std::__1::__deque_base"** %12, align 8
  %115 = load %"class.std::__1::__deque_base"** %12
  %116 = getelementptr inbounds %"class.std::__1::__deque_base"* %115, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.0"* %116, %"class.std::__1::__compressed_pair.0"** %11, align 8
  %117 = load %"class.std::__1::__compressed_pair.0"** %11
  %118 = bitcast %"class.std::__1::__compressed_pair.0"* %117 to %"class.std::__1::__libcpp_compressed_pair_imp.1"*
  store %"class.std::__1::__libcpp_compressed_pair_imp.1"* %118, %"class.std::__1::__libcpp_compressed_pair_imp.1"** %10, align 8
  %119 = load %"class.std::__1::__libcpp_compressed_pair_imp.1"** %10
  %120 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp.1"* %119, i32 0, i32 0
  br label %121

; <label>:121                                     ; preds = %114
  store i64 0, i64* %120
  br label %122

; <label>:122                                     ; preds = %160, %121
  %123 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %123, %"struct.std::__1::__split_buffer"** %13, align 8
  %124 = load %"struct.std::__1::__split_buffer"** %13
  %125 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %124, i32 0, i32 2
  %126 = load %struct.Point*** %125, align 8
  %127 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %124, i32 0, i32 1
  %128 = load %struct.Point*** %127, align 8
  %129 = ptrtoint %struct.Point** %126 to i64
  %130 = ptrtoint %struct.Point** %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  br label %133

; <label>:133                                     ; preds = %122
  %134 = icmp ugt i64 %132, 2
  br i1 %134, label %135, label %161

; <label>:135                                     ; preds = %133
  %136 = load %"class.std::__1::allocator.2"** %__a, align 8
  %137 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %137, %"struct.std::__1::__split_buffer"** %14, align 8
  %138 = load %"struct.std::__1::__split_buffer"** %14
  %139 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %138, i32 0, i32 1
  %140 = load %struct.Point*** %139, align 8
  br label %141

; <label>:141                                     ; preds = %135
  %142 = load %struct.Point** %140
  store %"class.std::__1::allocator.2"* %136, %"class.std::__1::allocator.2"** %22, align 8
  store %struct.Point* %142, %struct.Point** %23, align 8
  store i64 512, i64* %24, align 8
  %143 = load %"class.std::__1::allocator.2"** %22, align 8
  %144 = load %struct.Point** %23, align 8
  %145 = load i64* %24, align 8
  store %"class.std::__1::allocator.2"* %143, %"class.std::__1::allocator.2"** %19, align 8
  store %struct.Point* %144, %struct.Point** %20, align 8
  store i64 %145, i64* %21, align 8
  %146 = load %"class.std::__1::allocator.2"** %19
  %147 = load %struct.Point** %20, align 8
  %148 = bitcast %struct.Point* %147 to i8*
  call void @_ZdlPv(i8* %148) #1
  %149 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %149, %"struct.std::__1::__split_buffer"** %32, align 8
  %150 = load %"struct.std::__1::__split_buffer"** %32
  %151 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %150, i32 0, i32 1
  %152 = load %struct.Point*** %151, align 8
  %153 = getelementptr inbounds %struct.Point** %152, i64 1
  store %"struct.std::__1::__split_buffer"* %150, %"struct.std::__1::__split_buffer"** %28, align 8
  store %struct.Point** %153, %struct.Point*** %29, align 8
  %154 = load %"struct.std::__1::__split_buffer"** %28
  %155 = load %struct.Point*** %29, align 8
  %156 = bitcast %"struct.std::__1::is_trivially_destructible"* %31 to %"struct.std::__1::integral_constant.12"*
  store %"struct.std::__1::__split_buffer"* %154, %"struct.std::__1::__split_buffer"** %25, align 8
  store %struct.Point** %155, %struct.Point*** %26, align 8
  %157 = load %"struct.std::__1::__split_buffer"** %25
  %158 = load %struct.Point*** %26, align 8
  %159 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %157, i32 0, i32 1
  store %struct.Point** %158, %struct.Point*** %159, align 8
  br label %160

; <label>:160                                     ; preds = %141
  br label %122

; <label>:161                                     ; preds = %133
  %162 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %162, %"struct.std::__1::__split_buffer"** %33, align 8
  %163 = load %"struct.std::__1::__split_buffer"** %33
  %164 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %163, i32 0, i32 2
  %165 = load %struct.Point*** %164, align 8
  %166 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %163, i32 0, i32 1
  %167 = load %struct.Point*** %166, align 8
  %168 = ptrtoint %struct.Point** %165 to i64
  %169 = ptrtoint %struct.Point** %167 to i64
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
  store i64 256, i64* %174, align 8
  br label %177

; <label>:175                                     ; preds = %172
  %176 = getelementptr inbounds %"class.std::__1::__deque_base"* %40, i32 0, i32 1
  store i64 512, i64* %176, align 8
  br label %177

; <label>:177                                     ; preds = %172, %175, %173
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr { %struct.Point**, %struct.Point* } @_ZNSt3__112__deque_baseI5PointNS_9allocatorIS1_EEE5beginEv(%"class.std::__1::__deque_base"* %this) #2 align 2 {
  %1 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %2 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %3 = alloca %struct.Point**, align 8
  %4 = alloca %struct.Point*, align 8
  %5 = alloca %"class.std::__1::__deque_iterator"*, align 8
  %6 = alloca %struct.Point**, align 8
  %7 = alloca %struct.Point*, align 8
  %8 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %9 = alloca %"class.std::__1::__deque_iterator", align 8
  %10 = alloca %"class.std::__1::__deque_base"*, align 8
  %__mp = alloca %struct.Point**, align 8
  %11 = alloca i8*
  %12 = alloca i32
  store %"class.std::__1::__deque_base"* %this, %"class.std::__1::__deque_base"** %10, align 8
  %13 = load %"class.std::__1::__deque_base"** %10
  %14 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %14, %"struct.std::__1::__split_buffer"** %8, align 8
  %15 = load %"struct.std::__1::__split_buffer"** %8
  %16 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %15, i32 0, i32 1
  %17 = load %struct.Point*** %16, align 8
  %18 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 1
  %19 = load i64* %18, align 8
  %20 = udiv i64 %19, 512
  %21 = getelementptr inbounds %struct.Point** %17, i64 %20
  store %struct.Point** %21, %struct.Point*** %__mp, align 8
  %22 = load %struct.Point*** %__mp, align 8
  %23 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 0
  store %"struct.std::__1::__split_buffer"* %23, %"struct.std::__1::__split_buffer"** %1, align 8
  %24 = load %"struct.std::__1::__split_buffer"** %1
  %25 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %24, i32 0, i32 2
  %26 = load %struct.Point*** %25, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer"* %24, i32 0, i32 1
  %28 = load %struct.Point*** %27, align 8
  %29 = icmp eq %struct.Point** %26, %28
  br label %30

; <label>:30                                      ; preds = %0
  br i1 %29, label %31, label %32

; <label>:31                                      ; preds = %30
  br label %39

; <label>:32                                      ; preds = %30
  %33 = load %struct.Point*** %__mp, align 8
  %34 = load %struct.Point** %33, align 8
  %35 = getelementptr inbounds %"class.std::__1::__deque_base"* %13, i32 0, i32 1
  %36 = load i64* %35, align 8
  %37 = urem i64 %36, 512
  %38 = getelementptr inbounds %struct.Point* %34, i64 %37
  br label %39

; <label>:39                                      ; preds = %32, %31
  %40 = phi %struct.Point* [ null, %31 ], [ %38, %32 ]
  store %"class.std::__1::__deque_iterator"* %9, %"class.std::__1::__deque_iterator"** %5, align 8
  store %struct.Point** %22, %struct.Point*** %6, align 8
  store %struct.Point* %40, %struct.Point** %7, align 8
  %41 = load %"class.std::__1::__deque_iterator"** %5
  %42 = load %struct.Point*** %6, align 8
  %43 = load %struct.Point** %7, align 8
  store %"class.std::__1::__deque_iterator"* %41, %"class.std::__1::__deque_iterator"** %2, align 8
  store %struct.Point** %42, %struct.Point*** %3, align 8
  store %struct.Point* %43, %struct.Point** %4, align 8
  %44 = load %"class.std::__1::__deque_iterator"** %2
  %45 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %44, i32 0, i32 0
  %46 = load %struct.Point*** %3, align 8
  store %struct.Point** %46, %struct.Point*** %45, align 8
  %47 = getelementptr inbounds %"class.std::__1::__deque_iterator"* %44, i32 0, i32 1
  %48 = load %struct.Point** %4, align 8
  store %struct.Point* %48, %struct.Point** %47, align 8
  %49 = bitcast %"class.std::__1::__deque_iterator"* %9 to { %struct.Point**, %struct.Point* }*
  %50 = load { %struct.Point**, %struct.Point* }* %49, align 1
  ret { %struct.Point**, %struct.Point* } %50
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
  call void @__cxa_call_unexpected(i8* %56) #10
  unreachable
}

attributes #0 = { ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline inlinehint ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 5.1 (clang-503.0.40) (based on LLVM 3.4svn)"}
