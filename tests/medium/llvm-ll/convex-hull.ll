; ModuleID = 'source/convex-hull.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.Point = type { i32, i32 }
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
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl" }
%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl" = type { %struct.Point**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { %struct.Point*, %struct.Point*, %struct.Point*, %struct.Point** }
%"class.std::allocator" = type { i8 }
%"struct.std::_Deque_iterator.0" = type { %struct.Point*, %struct.Point*, %struct.Point*, %struct.Point** }
%"class.std::allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.2" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@p0 = global %struct.Point zeroinitializer, align 4
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZZ4mainE6points = private unnamed_addr constant [8 x %struct.Point] [%struct.Point { i32 0, i32 3 }, %struct.Point { i32 1, i32 1 }, %struct.Point { i32 2, i32 2 }, %struct.Point { i32 4, i32 4 }, %struct.Point zeroinitializer, %struct.Point { i32 1, i32 2 }, %struct.Point { i32 3, i32 1 }, %struct.Point { i32 3, i32 3 }], align 16
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
define i64 @_Z9nextToTopRSt5stackI5PointSt5dequeIS0_SaIS0_EEE(%"class.std::stack"* %S) #2 {
entry:
  %retval = alloca %struct.Point, align 4
  %S.addr = alloca %"class.std::stack"*, align 8
  %p = alloca %struct.Point, align 4
  store %"class.std::stack"* %S, %"class.std::stack"** %S.addr, align 8
  %0 = load %"class.std::stack"** %S.addr, align 8
  %call = call %struct.Point* @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3topEv(%"class.std::stack"* %0)
  %1 = bitcast %struct.Point* %p to i8*
  %2 = bitcast %struct.Point* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 4, i1 false)
  %3 = load %"class.std::stack"** %S.addr, align 8
  call void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3popEv(%"class.std::stack"* %3)
  %4 = load %"class.std::stack"** %S.addr, align 8
  %call1 = call %struct.Point* @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3topEv(%"class.std::stack"* %4)
  %5 = bitcast %struct.Point* %retval to i8*
  %6 = bitcast %struct.Point* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 4, i1 false)
  %7 = load %"class.std::stack"** %S.addr, align 8
  call void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::stack"* %7, %struct.Point* %p)
  %8 = bitcast %struct.Point* %retval to i64*
  %9 = load i64* %8, align 1
  ret i64 %9
}

; Function Attrs: uwtable
define linkonce_odr %struct.Point* @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3topEv(%"class.std::stack"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %call = call %struct.Point* @_ZNSt5dequeI5PointSaIS0_EE4backEv(%"class.std::deque"* %c)
  ret %struct.Point* %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3popEv(%"class.std::stack"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeI5PointSaIS0_EE8pop_backEv(%"class.std::deque"* %c)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::stack"* %this, %struct.Point* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  %__x.addr = alloca %struct.Point*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  store %struct.Point* %__x, %struct.Point** %__x.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %0 = load %struct.Point** %__x.addr, align 8
  call void @_ZNSt5dequeI5PointSaIS0_EE9push_backERKS0_(%"class.std::deque"* %c, %struct.Point* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z4swapR5PointS0_(%struct.Point* %p1, %struct.Point* %p2) #3 {
entry:
  %p1.addr = alloca %struct.Point*, align 8
  %p2.addr = alloca %struct.Point*, align 8
  %temp = alloca %struct.Point, align 4
  store %struct.Point* %p1, %struct.Point** %p1.addr, align 8
  store %struct.Point* %p2, %struct.Point** %p2.addr, align 8
  %0 = load %struct.Point** %p1.addr, align 8
  %1 = bitcast %struct.Point* %temp to i8*
  %2 = bitcast %struct.Point* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 4, i1 false)
  %3 = load %struct.Point** %p1.addr, align 8
  %4 = load %struct.Point** %p2.addr, align 8
  %5 = bitcast %struct.Point* %3 to i8*
  %6 = bitcast %struct.Point* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 4, i1 false)
  %7 = load %struct.Point** %p2.addr, align 8
  %8 = bitcast %struct.Point* %7 to i8*
  %9 = bitcast %struct.Point* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Z4dist5PointS_(i64 %p1.coerce, i64 %p2.coerce) #3 {
entry:
  %p1 = alloca %struct.Point, align 8
  %p2 = alloca %struct.Point, align 8
  %0 = bitcast %struct.Point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 1
  %1 = bitcast %struct.Point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 1
  %x = getelementptr inbounds %struct.Point* %p1, i32 0, i32 0
  %2 = load i32* %x, align 4
  %x1 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 0
  %3 = load i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  %x2 = getelementptr inbounds %struct.Point* %p1, i32 0, i32 0
  %4 = load i32* %x2, align 4
  %x3 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 0
  %5 = load i32* %x3, align 4
  %sub4 = sub nsw i32 %4, %5
  %mul = mul nsw i32 %sub, %sub4
  %y = getelementptr inbounds %struct.Point* %p1, i32 0, i32 1
  %6 = load i32* %y, align 4
  %y5 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 1
  %7 = load i32* %y5, align 4
  %sub6 = sub nsw i32 %6, %7
  %y7 = getelementptr inbounds %struct.Point* %p1, i32 0, i32 1
  %8 = load i32* %y7, align 4
  %y8 = getelementptr inbounds %struct.Point* %p2, i32 0, i32 1
  %9 = load i32* %y8, align 4
  %sub9 = sub nsw i32 %8, %9
  %mul10 = mul nsw i32 %sub6, %sub9
  %add = add nsw i32 %mul, %mul10
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @_Z11orientation5PointS_S_(i64 %p.coerce, i64 %q.coerce, i64 %r.coerce) #3 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.Point, align 8
  %q = alloca %struct.Point, align 8
  %r = alloca %struct.Point, align 8
  %val = alloca i32, align 4
  %0 = bitcast %struct.Point* %p to i64*
  store i64 %p.coerce, i64* %0, align 1
  %1 = bitcast %struct.Point* %q to i64*
  store i64 %q.coerce, i64* %1, align 1
  %2 = bitcast %struct.Point* %r to i64*
  store i64 %r.coerce, i64* %2, align 1
  %y = getelementptr inbounds %struct.Point* %q, i32 0, i32 1
  %3 = load i32* %y, align 4
  %y1 = getelementptr inbounds %struct.Point* %p, i32 0, i32 1
  %4 = load i32* %y1, align 4
  %sub = sub nsw i32 %3, %4
  %x = getelementptr inbounds %struct.Point* %r, i32 0, i32 0
  %5 = load i32* %x, align 4
  %x2 = getelementptr inbounds %struct.Point* %q, i32 0, i32 0
  %6 = load i32* %x2, align 4
  %sub3 = sub nsw i32 %5, %6
  %mul = mul nsw i32 %sub, %sub3
  %x4 = getelementptr inbounds %struct.Point* %q, i32 0, i32 0
  %7 = load i32* %x4, align 4
  %x5 = getelementptr inbounds %struct.Point* %p, i32 0, i32 0
  %8 = load i32* %x5, align 4
  %sub6 = sub nsw i32 %7, %8
  %y7 = getelementptr inbounds %struct.Point* %r, i32 0, i32 1
  %9 = load i32* %y7, align 4
  %y8 = getelementptr inbounds %struct.Point* %q, i32 0, i32 1
  %10 = load i32* %y8, align 4
  %sub9 = sub nsw i32 %9, %10
  %mul10 = mul nsw i32 %sub6, %sub9
  %sub11 = sub nsw i32 %mul, %mul10
  store i32 %sub11, i32* %val, align 4
  %11 = load i32* %val, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i32* %val, align 4
  %cmp12 = icmp sgt i32 %12, 0
  %cond = select i1 %cmp12, i32 1, i32 2
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @_Z7comparePKvS0_(i8* %vp1, i8* %vp2) #3 {
entry:
  %retval = alloca i32, align 4
  %vp1.addr = alloca i8*, align 8
  %vp2.addr = alloca i8*, align 8
  %p1 = alloca %struct.Point*, align 8
  %p2 = alloca %struct.Point*, align 8
  %o = alloca i32, align 4
  %agg.tmp = alloca %struct.Point, align 4
  %agg.tmp1 = alloca %struct.Point, align 4
  %agg.tmp2 = alloca %struct.Point, align 4
  %agg.tmp3 = alloca %struct.Point, align 4
  %agg.tmp4 = alloca %struct.Point, align 4
  %agg.tmp6 = alloca %struct.Point, align 4
  %agg.tmp7 = alloca %struct.Point, align 4
  store i8* %vp1, i8** %vp1.addr, align 8
  store i8* %vp2, i8** %vp2.addr, align 8
  %0 = load i8** %vp1.addr, align 8
  %1 = bitcast i8* %0 to %struct.Point*
  store %struct.Point* %1, %struct.Point** %p1, align 8
  %2 = load i8** %vp2.addr, align 8
  %3 = bitcast i8* %2 to %struct.Point*
  store %struct.Point* %3, %struct.Point** %p2, align 8
  %4 = bitcast %struct.Point* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.Point* @p0 to i8*), i64 8, i32 4, i1 false)
  %5 = load %struct.Point** %p1, align 8
  %6 = bitcast %struct.Point* %agg.tmp1 to i8*
  %7 = bitcast %struct.Point* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 4, i1 false)
  %8 = load %struct.Point** %p2, align 8
  %9 = bitcast %struct.Point* %agg.tmp2 to i8*
  %10 = bitcast %struct.Point* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 4, i1 false)
  %11 = bitcast %struct.Point* %agg.tmp to i64*
  %12 = load i64* %11, align 1
  %13 = bitcast %struct.Point* %agg.tmp1 to i64*
  %14 = load i64* %13, align 1
  %15 = bitcast %struct.Point* %agg.tmp2 to i64*
  %16 = load i64* %15, align 1
  %call = call i32 @_Z11orientation5PointS_S_(i64 %12, i64 %14, i64 %16)
  store i32 %call, i32* %o, align 4
  %17 = load i32* %o, align 4
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = bitcast %struct.Point* %agg.tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.Point* @p0 to i8*), i64 8, i32 4, i1 false)
  %19 = load %struct.Point** %p2, align 8
  %20 = bitcast %struct.Point* %agg.tmp4 to i8*
  %21 = bitcast %struct.Point* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 4, i1 false)
  %22 = bitcast %struct.Point* %agg.tmp3 to i64*
  %23 = load i64* %22, align 1
  %24 = bitcast %struct.Point* %agg.tmp4 to i64*
  %25 = load i64* %24, align 1
  %call5 = call i32 @_Z4dist5PointS_(i64 %23, i64 %25)
  %26 = bitcast %struct.Point* %agg.tmp6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.Point* @p0 to i8*), i64 8, i32 4, i1 false)
  %27 = load %struct.Point** %p1, align 8
  %28 = bitcast %struct.Point* %agg.tmp7 to i8*
  %29 = bitcast %struct.Point* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 4, i1 false)
  %30 = bitcast %struct.Point* %agg.tmp6 to i64*
  %31 = load i64* %30, align 1
  %32 = bitcast %struct.Point* %agg.tmp7 to i64*
  %33 = load i64* %32, align 1
  %call8 = call i32 @_Z4dist5PointS_(i64 %31, i64 %33)
  %cmp9 = icmp sge i32 %call5, %call8
  %cond = select i1 %cmp9, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %34 = load i32* %o, align 4
  %cmp10 = icmp eq i32 %34, 2
  %cond11 = select i1 %cmp10, i32 -1, i32 1
  store i32 %cond11, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load i32* %retval
  ret i32 %35
}

; Function Attrs: uwtable
define void @_Z10convexHullP5Pointi(%struct.Point* %points, i32 %n) #2 {
entry:
  %points.addr = alloca %struct.Point*, align 8
  %n.addr = alloca i32, align 4
  %ymin = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %y1 = alloca i32, align 4
  %S = alloca %"class.std::stack", align 8
  %ref.tmp = alloca %"class.std::deque", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %i28 = alloca i32, align 4
  %agg.tmp = alloca %struct.Point, align 4
  %agg.tmp33 = alloca %struct.Point, align 4
  %agg.tmp36 = alloca %struct.Point, align 4
  %p = alloca %struct.Point, align 4
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point* %0, i64 0
  %y = getelementptr inbounds %struct.Point* %arrayidx, i32 0, i32 1
  %1 = load i32* %y, align 4
  store i32 %1, i32* %ymin, align 4
  store i32 0, i32* %min, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Point** %points.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.Point* %5, i64 %idxprom
  %y3 = getelementptr inbounds %struct.Point* %arrayidx2, i32 0, i32 1
  %6 = load i32* %y3, align 4
  store i32 %6, i32* %y1, align 4
  %7 = load i32* %y1, align 4
  %8 = load i32* %ymin, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i32* %ymin, align 4
  %10 = load i32* %y1, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.Point** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.Point* %12, i64 %idxprom6
  %x = getelementptr inbounds %struct.Point* %arrayidx7, i32 0, i32 0
  %13 = load i32* %x, align 4
  %14 = load i32* %min, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.Point** %points.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.Point* %15, i64 %idxprom8
  %x10 = getelementptr inbounds %struct.Point* %arrayidx9, i32 0, i32 0
  %16 = load i32* %x10, align 4
  %cmp11 = icmp slt i32 %13, %16
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body
  %17 = load i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.Point** %points.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.Point* %18, i64 %idxprom12
  %y14 = getelementptr inbounds %struct.Point* %arrayidx13, i32 0, i32 1
  %19 = load i32* %y14, align 4
  store i32 %19, i32* %ymin, align 4
  %20 = load i32* %i, align 4
  store i32 %20, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.Point** %points.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.Point* %22, i64 0
  %23 = load i32* %min, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.Point** %points.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.Point* %24, i64 %idxprom16
  call void @_Z4swapR5PointS0_(%struct.Point* %arrayidx15, %struct.Point* %arrayidx17)
  %25 = load %struct.Point** %points.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.Point* %25, i64 0
  %26 = bitcast %struct.Point* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Point* @p0 to i8*), i8* %26, i64 8, i32 4, i1 false)
  %27 = load %struct.Point** %points.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.Point* %27, i64 1
  %28 = bitcast %struct.Point* %arrayidx19 to i8*
  %29 = load i32* %n.addr, align 4
  %sub = sub nsw i32 %29, 1
  %conv = sext i32 %sub to i64
  call void @qsort(i8* %28, i64 %conv, i64 8, i32 (i8*, i8*)* @_Z7comparePKvS0_)
  call void @_ZNSt5dequeI5PointSaIS0_EEC2Ev(%"class.std::deque"* %ref.tmp)
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEEC2ERKS3_(%"class.std::stack"* %S, %"class.std::deque"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.end
  call void @_ZNSt5dequeI5PointSaIS0_EED2Ev(%"class.std::deque"* %ref.tmp)
  %30 = load %struct.Point** %points.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.Point* %30, i64 0
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::stack"* %S, %struct.Point* %arrayidx21)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %invoke.cont
  %31 = load %struct.Point** %points.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.Point* %31, i64 1
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::stack"* %S, %struct.Point* %arrayidx24)
          to label %invoke.cont25 unwind label %lpad22

invoke.cont25:                                    ; preds = %invoke.cont23
  %32 = load %struct.Point** %points.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.Point* %32, i64 2
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::stack"* %S, %struct.Point* %arrayidx26)
          to label %invoke.cont27 unwind label %lpad22

invoke.cont27:                                    ; preds = %invoke.cont25
  store i32 3, i32* %i28, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc46, %invoke.cont27
  %33 = load i32* %i28, align 4
  %34 = load i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %33, %34
  br i1 %cmp30, label %for.body31, label %for.end48

for.body31:                                       ; preds = %for.cond29
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont42, %for.body31
  %call = invoke i64 @_Z9nextToTopRSt5stackI5PointSt5dequeIS0_SaIS0_EEE(%"class.std::stack"* %S)
          to label %invoke.cont32 unwind label %lpad22

invoke.cont32:                                    ; preds = %while.cond
  %35 = bitcast %struct.Point* %agg.tmp to i64*
  store i64 %call, i64* %35, align 1
  %call35 = invoke %struct.Point* @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3topEv(%"class.std::stack"* %S)
          to label %invoke.cont34 unwind label %lpad22

invoke.cont34:                                    ; preds = %invoke.cont32
  %36 = bitcast %struct.Point* %agg.tmp33 to i8*
  %37 = bitcast %struct.Point* %call35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 4, i1 false)
  %38 = load i32* %i28, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load %struct.Point** %points.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.Point* %39, i64 %idxprom37
  %40 = bitcast %struct.Point* %agg.tmp36 to i8*
  %41 = bitcast %struct.Point* %arrayidx38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 8, i32 4, i1 false)
  %42 = bitcast %struct.Point* %agg.tmp to i64*
  %43 = load i64* %42, align 1
  %44 = bitcast %struct.Point* %agg.tmp33 to i64*
  %45 = load i64* %44, align 1
  %46 = bitcast %struct.Point* %agg.tmp36 to i64*
  %47 = load i64* %46, align 1
  %call40 = invoke i32 @_Z11orientation5PointS_S_(i64 %43, i64 %45, i64 %47)
          to label %invoke.cont39 unwind label %lpad22

invoke.cont39:                                    ; preds = %invoke.cont34
  %cmp41 = icmp ne i32 %call40, 2
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont39
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3popEv(%"class.std::stack"* %S)
          to label %invoke.cont42 unwind label %lpad22

invoke.cont42:                                    ; preds = %while.body
  br label %while.cond

lpad:                                             ; preds = %for.end
  %48 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %exn.slot
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %ehselector.slot
  invoke void @_ZNSt5dequeI5PointSaIS0_EED2Ev(%"class.std::deque"* %ref.tmp)
          to label %invoke.cont20 unwind label %terminate.lpad

invoke.cont20:                                    ; preds = %lpad
  br label %eh.resume

lpad22:                                           ; preds = %invoke.cont67, %invoke.cont65, %invoke.cont63, %invoke.cont60, %invoke.cont58, %invoke.cont55, %invoke.cont53, %while.body52, %while.cond49, %while.end, %while.body, %invoke.cont34, %invoke.cont32, %while.cond, %invoke.cont25, %invoke.cont23, %invoke.cont
  %51 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %exn.slot
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %ehselector.slot
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEED2Ev(%"class.std::stack"* %S)
          to label %invoke.cont71 unwind label %terminate.lpad

while.end:                                        ; preds = %invoke.cont39
  %54 = load i32* %i28, align 4
  %idxprom43 = sext i32 %54 to i64
  %55 = load %struct.Point** %points.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.Point* %55, i64 %idxprom43
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::stack"* %S, %struct.Point* %arrayidx44)
          to label %invoke.cont45 unwind label %lpad22

invoke.cont45:                                    ; preds = %while.end
  br label %for.inc46

for.inc46:                                        ; preds = %invoke.cont45
  %56 = load i32* %i28, align 4
  %inc47 = add nsw i32 %56, 1
  store i32 %inc47, i32* %i28, align 4
  br label %for.cond29

for.end48:                                        ; preds = %for.cond29
  br label %while.cond49

while.cond49:                                     ; preds = %invoke.cont69, %for.end48
  %call51 = invoke zeroext i1 @_ZNKSt5stackI5PointSt5dequeIS0_SaIS0_EEE5emptyEv(%"class.std::stack"* %S)
          to label %invoke.cont50 unwind label %lpad22

invoke.cont50:                                    ; preds = %while.cond49
  %lnot = xor i1 %call51, true
  br i1 %lnot, label %while.body52, label %while.end70

while.body52:                                     ; preds = %invoke.cont50
  %call54 = invoke %struct.Point* @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3topEv(%"class.std::stack"* %S)
          to label %invoke.cont53 unwind label %lpad22

invoke.cont53:                                    ; preds = %while.body52
  %57 = bitcast %struct.Point* %p to i8*
  %58 = bitcast %struct.Point* %call54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 8, i32 4, i1 false)
  %call56 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont55 unwind label %lpad22

invoke.cont55:                                    ; preds = %invoke.cont53
  %x57 = getelementptr inbounds %struct.Point* %p, i32 0, i32 0
  %59 = load i32* %x57, align 4
  %call59 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call56, i32 %59)
          to label %invoke.cont58 unwind label %lpad22

invoke.cont58:                                    ; preds = %invoke.cont55
  %call61 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %call59, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0))
          to label %invoke.cont60 unwind label %lpad22

invoke.cont60:                                    ; preds = %invoke.cont58
  %y62 = getelementptr inbounds %struct.Point* %p, i32 0, i32 1
  %60 = load i32* %y62, align 4
  %call64 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call61, i32 %60)
          to label %invoke.cont63 unwind label %lpad22

invoke.cont63:                                    ; preds = %invoke.cont60
  %call66 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %call64, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
          to label %invoke.cont65 unwind label %lpad22

invoke.cont65:                                    ; preds = %invoke.cont63
  %call68 = invoke %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call66, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont67 unwind label %lpad22

invoke.cont67:                                    ; preds = %invoke.cont65
  invoke void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEE3popEv(%"class.std::stack"* %S)
          to label %invoke.cont69 unwind label %lpad22

invoke.cont69:                                    ; preds = %invoke.cont67
  br label %while.cond49

while.end70:                                      ; preds = %invoke.cont50
  call void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEED2Ev(%"class.std::stack"* %S)
  ret void

invoke.cont71:                                    ; preds = %lpad22
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont71, %invoke.cont20
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val72 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val72

terminate.lpad:                                   ; preds = %lpad22, %lpad
  %61 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %62 = extractvalue { i8*, i32 } %61, 0
  call void @__clang_call_terminate(i8* %62) #11
  unreachable
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #0

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEEC2ERKS3_(%"class.std::stack"* %this, %"class.std::deque"* %__c) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  %__c.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  store %"class.std::deque"* %__c, %"class.std::deque"** %__c.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %0 = load %"class.std::deque"** %__c.addr, align 8
  call void @_ZNSt5dequeI5PointSaIS0_EEC2ERKS2_(%"class.std::deque"* %c, %"class.std::deque"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EEC2Ev(%"class.std::deque"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EEC2Ev(%"class.std::_Deque_base"* %0)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EED2Ev(%"class.std::deque"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  invoke void @_ZNSt5dequeI5PointSaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"class.std::deque"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt5dequeI5PointSaIS0_EE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"class.std::deque"* %this1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = invoke %"class.std::allocator"* @_ZNSt11_Deque_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont3
  invoke void @_ZNSt5dequeI5PointSaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_(%"class.std::deque"* %this1, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"class.std::allocator"* %call)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EED2Ev(%"class.std::_Deque_base"* %1)
  ret void

lpad:                                             ; preds = %invoke.cont4, %invoke.cont3, %invoke.cont, %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EED2Ev(%"class.std::_Deque_base"* %5)
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
  call void @__clang_call_terminate(i8* %7) #11
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

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5stackI5PointSt5dequeIS0_SaIS0_EEE5emptyEv(%"class.std::stack"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  %call = call zeroext i1 @_ZNKSt5dequeI5PointSaIS0_EE5emptyEv(%"class.std::deque"* %c)
  ret i1 %call
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #0

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #0

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt5stackI5PointSt5dequeIS0_SaIS0_EEED2Ev(%"class.std::stack"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %this.addr, align 8
  %this1 = load %"class.std::stack"** %this.addr
  %c = getelementptr inbounds %"class.std::stack"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeI5PointSaIS0_EED2Ev(%"class.std::deque"* %c)
  ret void
}

; Function Attrs: uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %points = alloca [8 x %struct.Point], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = bitcast [8 x %struct.Point]* %points to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([8 x %struct.Point]* @_ZZ4mainE6points to i8*), i64 64, i32 16, i1 false)
  store i32 8, i32* %n, align 4
  %arraydecay = getelementptr inbounds [8 x %struct.Point]* %points, i32 0, i32 0
  %1 = load i32* %n, align 4
  call void @_Z10convexHullP5Pointi(%struct.Point* %arraydecay, i32 %1)
  ret i32 0
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5dequeI5PointSaIS0_EE5emptyEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %call = call zeroext i1 @_ZSteqI5PointRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_(%"struct.std::_Deque_iterator"* %_M_finish, %"struct.std::_Deque_iterator"* %_M_start)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqI5PointRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #6 {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load %struct.Point** %_M_cur, align 8
  %2 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur1 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %3 = load %struct.Point** %_M_cur1, align 8
  %cmp = icmp eq %struct.Point* %1, %3
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EEC2ERKS2_(%"class.std::deque"* %this, %"class.std::deque"* %__x) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__x.addr = alloca %"class.std::deque"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator.0", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %"class.std::deque"* %__x, %"class.std::deque"** %__x.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %1 = load %"class.std::deque"** %__x.addr, align 8
  %2 = bitcast %"class.std::deque"* %1 to %"class.std::_Deque_base"*
  %call = call %"class.std::allocator"* @_ZNKSt11_Deque_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2)
  %3 = load %"class.std::deque"** %__x.addr, align 8
  %call2 = call i64 @_ZNKSt5dequeI5PointSaIS0_EE4sizeEv(%"class.std::deque"* %3)
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EEC2ERKS1_m(%"class.std::_Deque_base"* %0, %"class.std::allocator"* %call, i64 %call2)
  %4 = load %"class.std::deque"** %__x.addr, align 8
  invoke void @_ZNKSt5dequeI5PointSaIS0_EE5beginEv(%"struct.std::_Deque_iterator.0"* sret %agg.tmp, %"class.std::deque"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = load %"class.std::deque"** %__x.addr, align 8
  invoke void @_ZNKSt5dequeI5PointSaIS0_EE3endEv(%"struct.std::_Deque_iterator.0"* sret %agg.tmp3, %"class.std::deque"* %5)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %_M_start)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %7 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call8 = invoke %"class.std::allocator"* @_ZNSt11_Deque_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %7)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  invoke void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_ES1_ET0_T_SA_S9_RSaIT1_E(%"struct.std::_Deque_iterator"* sret %tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp3, %"struct.std::_Deque_iterator"* %agg.tmp5, %"class.std::allocator"* %call8)
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
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EED2Ev(%"class.std::_Deque_base"* %11)
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
  call void @__clang_call_terminate(i8* %13) #11
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EEC2ERKS1_m(%"class.std::_Deque_base"* %this, %"class.std::allocator"* %__a, i64 %__num_elements) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implC2ERKS1_(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, %"class.std::allocator"* %0)
  %1 = load i64* %__num_elements.addr, align 8
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this1, i64 %1)
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
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt11_Deque_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt5dequeI5PointSaIS0_EE4sizeEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %call = call i64 @_ZStmiI5PointRS0_PS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator"* %_M_finish, %"struct.std::_Deque_iterator"* %_M_start)
  ret i64 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_ES1_ET0_T_SA_S9_RSaIT1_E(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__first, %"struct.std::_Deque_iterator.0"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result, %"class.std::allocator"*) #5 {
entry:
  %.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp to i8*
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp1 to i8*
  %4 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt18uninitialized_copyISt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET0_T_SA_S9_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeI5PointSaIS0_EE5beginEv(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_EC2ERKS_IS0_RS0_PS0_E(%"struct.std::_Deque_iterator.0"* %agg.result, %"struct.std::_Deque_iterator"* %_M_start)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeI5PointSaIS0_EE3endEv(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_EC2ERKS_IS0_RS0_PS0_E(%"struct.std::_Deque_iterator.0"* %agg.result, %"struct.std::_Deque_iterator"* %_M_finish)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load %struct.Point** %_M_cur2, align 8
  store %struct.Point* %1, %struct.Point** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %3 = load %struct.Point** %_M_first3, align 8
  store %struct.Point* %3, %struct.Point** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 2
  %5 = load %struct.Point** %_M_last4, align 8
  store %struct.Point* %5, %struct.Point** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %6 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %7 = load %struct.Point*** %_M_node5, align 8
  store %struct.Point** %7, %struct.Point*** %_M_node, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNSt11_Deque_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 0
  %0 = load %struct.Point*** %_M_map, align 8
  %tobool = icmp ne %struct.Point** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %1 = load %struct.Point*** %_M_node, align 8
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_node4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load %struct.Point*** %_M_node4, align 8
  %add.ptr = getelementptr inbounds %struct.Point** %2, i64 1
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this1, %struct.Point** %1, %struct.Point** %add.ptr)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map6 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl5, i32 0, i32 0
  %3 = load %struct.Point*** %_M_map6, align 8
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %4 = load i64* %_M_map_size, align 8
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %this1, %struct.Point** %3, i64 %4)
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
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl10) #1
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont8, %entry
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl9) #1
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this, %struct.Point** %__nstart, %struct.Point** %__nfinish) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca %struct.Point**, align 8
  %__nfinish.addr = alloca %struct.Point**, align 8
  %__n = alloca %struct.Point**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.Point** %__nstart, %struct.Point*** %__nstart.addr, align 8
  store %struct.Point** %__nfinish, %struct.Point*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %0 = load %struct.Point*** %__nstart.addr, align 8
  store %struct.Point** %0, %struct.Point*** %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.Point*** %__n, align 8
  %2 = load %struct.Point*** %__nfinish.addr, align 8
  %cmp = icmp ult %struct.Point** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Point*** %__n, align 8
  %4 = load %struct.Point** %3, align 8
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %this1, %struct.Point* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.Point*** %__n, align 8
  %incdec.ptr = getelementptr inbounds %struct.Point** %5, i32 1
  store %struct.Point** %incdec.ptr, %struct.Point*** %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %this, %struct.Point** %__p, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca %struct.Point**, align 8
  %__n.addr = alloca i64, align 8
  %temp.lvalue = alloca %"class.std::allocator.1", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.Point** %__p, %struct.Point*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  call void @_ZNKSt11_Deque_baseI5PointSaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.1"* sret %temp.lvalue, %"class.std::_Deque_base"* %this1)
  %0 = bitcast %"class.std::allocator.1"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.2"*
  %1 = load %struct.Point*** %__p.addr, align 8
  %2 = load i64* %__n.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIP5PointE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.2"* %0, %struct.Point** %1, i64 %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIP5PointED2Ev(%"class.std::allocator.1"* %temp.lvalue) #1
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSaIP5PointED2Ev(%"class.std::allocator.1"* %temp.lvalue) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"** %this.addr
  %0 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI5PointED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI5PointED2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI5PointED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseI5PointSaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.1"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %call = call %"class.std::allocator"* @_ZNKSt11_Deque_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this1)
  call void @_ZNSaIP5PointEC2IS_EERKSaIT_E(%"class.std::allocator.1"* %agg.result, %"class.std::allocator"* %call) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP5PointE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.2"* %this, %struct.Point** %__p, i64) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %__p.addr = alloca %struct.Point**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  store %struct.Point** %__p, %struct.Point*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"** %this.addr
  %1 = load %struct.Point*** %__p.addr, align 8
  %2 = bitcast %struct.Point** %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP5PointED2Ev(%"class.std::allocator.1"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %this.addr, align 8
  %this1 = load %"class.std::allocator.1"** %this.addr
  %0 = bitcast %"class.std::allocator.1"* %this1 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIP5PointED2Ev(%"class.__gnu_cxx::new_allocator.2"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP5PointED2Ev(%"class.__gnu_cxx::new_allocator.2"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"** %this.addr
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP5PointEC2IS_EERKSaIT_E(%"class.std::allocator.1"* %this, %"class.std::allocator"*) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.1"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.1"** %this.addr
  %1 = bitcast %"class.std::allocator.1"* %this1 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIP5PointEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %1) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP5PointEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %this, %struct.Point* %__p) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca %struct.Point*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.Point* %__p, %struct.Point** %__p.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %struct.Point** %__p.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  call void @_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %1, %struct.Point* %2, i64 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %this, %struct.Point* %__p, i64) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.Point*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.Point* %__p, %struct.Point** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load %struct.Point** %__p.addr, align 8
  %2 = bitcast %struct.Point* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #6 {
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
define linkonce_odr void @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_EC2ERKS_IS0_RS0_PS0_E(%"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.0"*, align 8
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %this.addr, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.0"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load %struct.Point** %_M_cur2, align 8
  store %struct.Point* %1, %struct.Point** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %3 = load %struct.Point** %_M_first3, align 8
  store %struct.Point* %3, %struct.Point** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 2
  %5 = load %struct.Point** %_M_last4, align 8
  store %struct.Point* %5, %struct.Point** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 3
  %6 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %7 = load %struct.Point*** %_M_node5, align 8
  store %struct.Point** %7, %struct.Point*** %_M_node, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt18uninitialized_copyISt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET0_T_SA_S9_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__first, %"struct.std::_Deque_iterator.0"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt20__uninitialized_copyILb1EE18uninitialized_copyISt15_Deque_iteratorI5PointRKS3_PS4_ES2_IS3_RS3_PS3_EEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt20__uninitialized_copyILb1EE18uninitialized_copyISt15_Deque_iteratorI5PointRKS3_PS4_ES2_IS3_RS3_PS3_EEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__first, %"struct.std::_Deque_iterator.0"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #2 align 2 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt4copyISt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET0_T_SA_S9_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt4copyISt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET0_T_SA_S9_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__first, %"struct.std::_Deque_iterator.0"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp1 to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  call void @_ZNSt12__miter_baseISt15_Deque_iteratorI5PointRKS1_PS2_ELb0EE3__bES5_(%"struct.std::_Deque_iterator.0"* sret %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp1)
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp3 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt12__miter_baseISt15_Deque_iteratorI5PointRKS1_PS2_ELb0EE3__bES5_(%"struct.std::_Deque_iterator.0"* sret %agg.tmp2, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp3)
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.tmp4, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET1_T0_SA_S9_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp4)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET1_T0_SA_S9_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__first, %"struct.std::_Deque_iterator.0"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %0 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp1 to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  call void @_ZNSt12__niter_baseISt15_Deque_iteratorI5PointRKS1_PS2_ELb0EE3__bES5_(%"struct.std::_Deque_iterator.0"* sret %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp1)
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp3 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt12__niter_baseISt15_Deque_iteratorI5PointRKS1_PS2_ELb0EE3__bES5_(%"struct.std::_Deque_iterator.0"* sret %agg.tmp2, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp3)
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt12__niter_baseISt15_Deque_iteratorI5PointRS1_PS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator"* sret %agg.tmp4, %"struct.std::_Deque_iterator"* %agg.tmp5)
  call void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET1_T0_SA_S9_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__miter_baseISt15_Deque_iteratorI5PointRKS1_PS2_ELb0EE3__bES5_(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__it) #3 align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_iterator.0"* %agg.result to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorI5PointRKS1_PS2_ES0_IS1_RS1_PS1_EET1_T0_SA_S9_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__first, %"struct.std::_Deque_iterator.0"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #5 {
entry:
  %__simple = alloca i8, align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator.0", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store i8 0, i8* %__simple, align 1
  %0 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %agg.tmp1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorI5PointRKS4_PS5_ES3_IS4_RS4_PS4_EEET0_T_SD_SC_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp, %"struct.std::_Deque_iterator.0"* byval align 8 %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__niter_baseISt15_Deque_iteratorI5PointRKS1_PS2_ELb0EE3__bES5_(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__it) #3 align 2 {
entry:
  %0 = bitcast %"struct.std::_Deque_iterator.0"* %agg.result to i8*
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12__niter_baseISt15_Deque_iteratorI5PointRS1_PS1_ELb0EE3__bES4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #2 align 2 {
entry:
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %__it)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorI5PointRKS4_PS5_ES3_IS4_RS4_PS4_EEET0_T_SD_SC_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.0"* byval align 8 %__first, %"struct.std::_Deque_iterator.0"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #2 align 2 {
entry:
  %__n = alloca i64, align 8
  %call = call i64 @_ZStmiI5PointRKS0_PS1_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS8_SB_(%"struct.std::_Deque_iterator.0"* %__last, %"struct.std::_Deque_iterator.0"* %__first)
  store i64 %call, i64* %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64* %__n, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call %struct.Point* @_ZNKSt15_Deque_iteratorI5PointRS0_PS0_EdeEv(%"struct.std::_Deque_iterator"* %__result)
  %call2 = call %struct.Point* @_ZNKSt15_Deque_iteratorI5PointRKS0_PS1_EdeEv(%"struct.std::_Deque_iterator.0"* %__first)
  %1 = bitcast %struct.Point* %call1 to i8*
  %2 = bitcast %struct.Point* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 4, i1 false)
  %call3 = call %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_EppEv(%"struct.std::_Deque_iterator.0"* %__first)
  %call4 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EppEv(%"struct.std::_Deque_iterator"* %__result)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64* %__n, align 8
  %dec = add nsw i64 %3, -1
  store i64 %dec, i64* %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %__result)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZStmiI5PointRKS0_PS1_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS8_SB_(%"struct.std::_Deque_iterator.0"* %__x, %"struct.std::_Deque_iterator.0"* %__y) #6 {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator.0"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator.0"*, align 8
  store %"struct.std::_Deque_iterator.0"* %__x, %"struct.std::_Deque_iterator.0"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator.0"* %__y, %"struct.std::_Deque_iterator.0"** %__y.addr, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_E14_S_buffer_sizeEv()
  %0 = load %"struct.std::_Deque_iterator.0"** %__x.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %0, i32 0, i32 3
  %1 = load %struct.Point*** %_M_node, align 8
  %2 = load %"struct.std::_Deque_iterator.0"** %__y.addr, align 8
  %_M_node1 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 3
  %3 = load %struct.Point*** %_M_node1, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Point** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Point** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 1
  %mul = mul nsw i64 %call, %sub
  %4 = load %"struct.std::_Deque_iterator.0"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %4, i32 0, i32 0
  %5 = load %struct.Point** %_M_cur, align 8
  %6 = load %"struct.std::_Deque_iterator.0"** %__x.addr, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %6, i32 0, i32 1
  %7 = load %struct.Point** %_M_first, align 8
  %sub.ptr.lhs.cast2 = ptrtoint %struct.Point* %5 to i64
  %sub.ptr.rhs.cast3 = ptrtoint %struct.Point* %7 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 8
  %add = add nsw i64 %mul, %sub.ptr.div5
  %8 = load %"struct.std::_Deque_iterator.0"** %__y.addr, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %8, i32 0, i32 2
  %9 = load %struct.Point** %_M_last, align 8
  %10 = load %"struct.std::_Deque_iterator.0"** %__y.addr, align 8
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %10, i32 0, i32 0
  %11 = load %struct.Point** %_M_cur6, align 8
  %sub.ptr.lhs.cast7 = ptrtoint %struct.Point* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint %struct.Point* %11 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = sdiv exact i64 %sub.ptr.sub9, 8
  %add11 = add nsw i64 %add, %sub.ptr.div10
  ret i64 %add11
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Point* @_ZNKSt15_Deque_iteratorI5PointRS0_PS0_EdeEv(%"struct.std::_Deque_iterator"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.Point** %_M_cur, align 8
  ret %struct.Point* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Point* @_ZNKSt15_Deque_iteratorI5PointRKS0_PS1_EdeEv(%"struct.std::_Deque_iterator.0"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.0"*, align 8
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.0"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 0
  %0 = load %struct.Point** %_M_cur, align 8
  ret %struct.Point* %0
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_EppEv(%"struct.std::_Deque_iterator.0"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.0"*, align 8
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.0"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 0
  %0 = load %struct.Point** %_M_cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.Point* %0, i32 1
  store %struct.Point* %incdec.ptr, %struct.Point** %_M_cur, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 0
  %1 = load %struct.Point** %_M_cur2, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 2
  %2 = load %struct.Point** %_M_last, align 8
  %cmp = icmp eq %struct.Point* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 3
  %3 = load %struct.Point*** %_M_node, align 8
  %add.ptr = getelementptr inbounds %struct.Point** %3, i64 1
  call void @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_E11_M_set_nodeEPPS0_(%"struct.std::_Deque_iterator.0"* %this1, %struct.Point** %add.ptr)
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 1
  %4 = load %struct.Point** %_M_first, align 8
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 0
  store %struct.Point* %4, %struct.Point** %_M_cur3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %"struct.std::_Deque_iterator.0"* %this1
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EppEv(%"struct.std::_Deque_iterator"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.Point** %_M_cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.Point* %0, i32 1
  store %struct.Point* %incdec.ptr, %struct.Point** %_M_cur, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %1 = load %struct.Point** %_M_cur2, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %2 = load %struct.Point** %_M_last, align 8
  %cmp = icmp eq %struct.Point* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %3 = load %struct.Point*** %_M_node, align 8
  %add.ptr = getelementptr inbounds %struct.Point** %3, i64 1
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %this1, %struct.Point** %add.ptr)
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %4 = load %struct.Point** %_M_first, align 8
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store %struct.Point* %4, %struct.Point** %_M_cur3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %"struct.std::_Deque_iterator"* %this1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %this, %struct.Point** %__new_node) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__new_node.addr = alloca %struct.Point**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store %struct.Point** %__new_node, %struct.Point*** %__new_node.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %0 = load %struct.Point*** %__new_node.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store %struct.Point** %0, %struct.Point*** %_M_node, align 8
  %1 = load %struct.Point*** %__new_node.addr, align 8
  %2 = load %struct.Point** %1, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store %struct.Point* %2, %struct.Point** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %3 = load %struct.Point** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E14_S_buffer_sizeEv()
  %add.ptr = getelementptr inbounds %struct.Point* %3, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store %struct.Point* %add.ptr, %struct.Point** %_M_last, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E14_S_buffer_sizeEv() #3 align 2 {
entry:
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  ret i64 %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_E11_M_set_nodeEPPS0_(%"struct.std::_Deque_iterator.0"* %this, %struct.Point** %__new_node) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator.0"*, align 8
  %__new_node.addr = alloca %struct.Point**, align 8
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %this.addr, align 8
  store %struct.Point** %__new_node, %struct.Point*** %__new_node.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator.0"** %this.addr
  %0 = load %struct.Point*** %__new_node.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 3
  store %struct.Point** %0, %struct.Point*** %_M_node, align 8
  %1 = load %struct.Point*** %__new_node.addr, align 8
  %2 = load %struct.Point** %1, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 1
  store %struct.Point* %2, %struct.Point** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 1
  %3 = load %struct.Point** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_E14_S_buffer_sizeEv()
  %add.ptr = getelementptr inbounds %struct.Point* %3, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %this1, i32 0, i32 2
  store %struct.Point* %add.ptr, %struct.Point** %_M_last, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorI5PointRKS0_PS1_E14_S_buffer_sizeEv() #3 align 2 {
entry:
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZStmiI5PointRS0_PS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #6 {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E14_S_buffer_sizeEv()
  %0 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %0, i32 0, i32 3
  %1 = load %struct.Point*** %_M_node, align 8
  %2 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_node1 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %3 = load %struct.Point*** %_M_node1, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Point** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Point** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 1
  %mul = mul nsw i64 %call, %sub
  %4 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 0
  %5 = load %struct.Point** %_M_cur, align 8
  %6 = load %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 1
  %7 = load %struct.Point** %_M_first, align 8
  %sub.ptr.lhs.cast2 = ptrtoint %struct.Point* %5 to i64
  %sub.ptr.rhs.cast3 = ptrtoint %struct.Point* %7 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 8
  %add = add nsw i64 %mul, %sub.ptr.div5
  %8 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 2
  %9 = load %struct.Point** %_M_last, align 8
  %10 = load %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 0
  %11 = load %struct.Point** %_M_cur6, align 8
  %sub.ptr.lhs.cast7 = ptrtoint %struct.Point* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint %struct.Point* %11 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = sdiv exact i64 %sub.ptr.sub9, 8
  %add11 = add nsw i64 %add, %sub.ptr.div10
  ret i64 %add11
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implC2ERKS1_(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this, %"class.std::allocator"* %__a) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"** %this.addr
  %0 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaI5PointEC2ERKS0_(%"class.std::allocator"* %0, %"class.std::allocator"* %1) #1
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 0
  store %struct.Point** null, %struct.Point*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %_M_start)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %_M_finish)
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
  %5 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI5PointED2Ev(%"class.std::allocator"* %5) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp2 = alloca i64, align 8
  %__nstart = alloca %struct.Point**, align 8
  %__nfinish = alloca %struct.Point**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %0 = load i64* %__num_elements.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
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
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  store i64 %2, i64* %_M_map_size, align 8
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size6 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %3 = load i64* %_M_map_size6, align 8
  %call7 = call %struct.Point** @_ZNSt11_Deque_baseI5PointSaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this1, i64 %3)
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl8, i32 0, i32 0
  store %struct.Point** %call7, %struct.Point*** %_M_map, align 8
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map10 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl9, i32 0, i32 0
  %4 = load %struct.Point*** %_M_map10, align 8
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size12 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl11, i32 0, i32 1
  %5 = load i64* %_M_map_size12, align 8
  %6 = load i64* %__num_nodes, align 8
  %sub = sub i64 %5, %6
  %div13 = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds %struct.Point** %4, i64 %div13
  store %struct.Point** %add.ptr, %struct.Point*** %__nstart, align 8
  %7 = load %struct.Point*** %__nstart, align 8
  %8 = load i64* %__num_nodes, align 8
  %add.ptr14 = getelementptr inbounds %struct.Point** %7, i64 %8
  store %struct.Point** %add.ptr14, %struct.Point*** %__nfinish, align 8
  %9 = load %struct.Point*** %__nstart, align 8
  %10 = load %struct.Point*** %__nfinish, align 8
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE15_M_create_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this1, %struct.Point** %9, %struct.Point** %10)
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
  %_M_map16 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl15, i32 0, i32 0
  %15 = load %struct.Point*** %_M_map16, align 8
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size18 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl17, i32 0, i32 1
  %16 = load i64* %_M_map_size18, align 8
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %this1, %struct.Point** %15, i64 %16)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %catch
  %_M_impl21 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map22 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl21, i32 0, i32 0
  store %struct.Point** null, %struct.Point*** %_M_map22, align 8
  %_M_impl23 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size24 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl23, i32 0, i32 1
  store i64 0, i64* %_M_map_size24, align 8
  invoke void @__cxa_rethrow() #12
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
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl26, i32 0, i32 2
  %20 = load %struct.Point*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_start, %struct.Point** %20)
  %_M_impl27 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl27, i32 0, i32 3
  %21 = load %struct.Point*** %__nfinish, align 8
  %add.ptr28 = getelementptr inbounds %struct.Point** %21, i64 -1
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_finish, %struct.Point** %add.ptr28)
  %_M_impl29 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl29, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start30, i32 0, i32 1
  %22 = load %struct.Point** %_M_first, align 8
  %_M_impl31 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start32 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl31, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start32, i32 0, i32 0
  store %struct.Point* %22, %struct.Point** %_M_cur, align 8
  %_M_impl33 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish34 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl33, i32 0, i32 3
  %_M_first35 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish34, i32 0, i32 1
  %23 = load %struct.Point** %_M_first35, align 8
  %24 = load i64* %__num_elements.addr, align 8
  %call36 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %rem = urem i64 %24, %call36
  %add.ptr37 = getelementptr inbounds %struct.Point* %23, i64 %rem
  %_M_impl38 = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish39 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl38, i32 0, i32 3
  %_M_cur40 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish39, i32 0, i32 0
  store %struct.Point* %add.ptr37, %struct.Point** %_M_cur40, align 8
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
  call void @__clang_call_terminate(i8* %26) #11
  unreachable

unreachable:                                      ; preds = %invoke.cont20
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #6 {
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
define linkonce_odr %struct.Point** @_ZNSt11_Deque_baseI5PointSaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__n.addr = alloca i64, align 8
  %temp.lvalue = alloca %"class.std::allocator.1", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  call void @_ZNKSt11_Deque_baseI5PointSaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.1"* sret %temp.lvalue, %"class.std::_Deque_base"* %this1)
  %0 = bitcast %"class.std::allocator.1"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.2"*
  %1 = load i64* %__n.addr, align 8
  %call = invoke %struct.Point** @_ZN9__gnu_cxx13new_allocatorIP5PointE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %0, i64 %1, i8* null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIP5PointED2Ev(%"class.std::allocator.1"* %temp.lvalue) #1
  ret %struct.Point** %call

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  call void @_ZNSaIP5PointED2Ev(%"class.std::allocator.1"* %temp.lvalue) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE15_M_create_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this, %struct.Point** %__nstart, %struct.Point** %__nfinish) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca %struct.Point**, align 8
  %__nfinish.addr = alloca %struct.Point**, align 8
  %__cur = alloca %struct.Point**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.Point** %__nstart, %struct.Point*** %__nstart.addr, align 8
  store %struct.Point** %__nfinish, %struct.Point*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %0 = load %struct.Point*** %__nstart.addr, align 8
  store %struct.Point** %0, %struct.Point*** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.Point*** %__cur, align 8
  %2 = load %struct.Point*** %__nfinish.addr, align 8
  %cmp = icmp ult %struct.Point** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = invoke %struct.Point* @_ZNSt11_Deque_baseI5PointSaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %3 = load %struct.Point*** %__cur, align 8
  store %struct.Point* %call, %struct.Point** %3, align 8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %4 = load %struct.Point*** %__cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.Point** %4, i32 1
  store %struct.Point** %incdec.ptr, %struct.Point*** %__cur, align 8
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
  %9 = load %struct.Point*** %__nstart.addr, align 8
  %10 = load %struct.Point*** %__cur, align 8
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this1, %struct.Point** %9, %struct.Point** %10)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #12
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
  call void @__clang_call_terminate(i8* %15) #11
  unreachable

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: uwtable
define linkonce_odr %struct.Point* @_ZNSt11_Deque_baseI5PointSaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %call2 = call %struct.Point* @_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %call, i8* null)
  ret %struct.Point* %call2
}

; Function Attrs: uwtable
define linkonce_odr %struct.Point* @_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %struct.Point*
  ret %struct.Point* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 2305843009213693951
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #9

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #10

; Function Attrs: uwtable
define linkonce_odr %struct.Point** @_ZN9__gnu_cxx13new_allocatorIP5PointE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIP5PointE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %struct.Point**
  ret %struct.Point** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP5PointE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.2"** %this.addr
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI5PointEC2ERKS0_(%"class.std::allocator"* %this, %"class.std::allocator"* %__a) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  %1 = load %"class.std::allocator"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator"* %1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI5PointEC2ERKS2_(%"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"* %2) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store %struct.Point* null, %struct.Point** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store %struct.Point* null, %struct.Point** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store %struct.Point* null, %struct.Point** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store %struct.Point** null, %struct.Point*** %_M_node, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointEC2ERKS2_(%"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"*) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"*) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %_M_start)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %_M_finish)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl)
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this1, i64 0)
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
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseI5PointSaIS0_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"** %this.addr
  %0 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI5PointEC2Ev(%"class.std::allocator"* %0) #1
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 0
  store %struct.Point** null, %struct.Point*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %_M_start)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %_M_finish)
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
  %4 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI5PointED2Ev(%"class.std::allocator"* %4) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI5PointEC2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE9push_backERKS0_(%"class.std::deque"* %this, %struct.Point* %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__x.addr = alloca %struct.Point*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %struct.Point* %__x, %struct.Point** %__x.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %1 = load %struct.Point** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 2
  %3 = load %struct.Point** %_M_last, align 8
  %add.ptr = getelementptr inbounds %struct.Point* %3, i64 -1
  %cmp = icmp ne %struct.Point* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl4 to %"class.__gnu_cxx::new_allocator"*
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl5, i32 0, i32 3
  %_M_cur7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish6, i32 0, i32 0
  %7 = load %struct.Point** %_M_cur7, align 8
  %8 = load %struct.Point** %__x.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI5PointE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %5, %struct.Point* %7, %struct.Point* %8)
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %10 = load %struct.Point** %_M_cur10, align 8
  %incdec.ptr = getelementptr inbounds %struct.Point* %10, i32 1
  store %struct.Point* %incdec.ptr, %struct.Point** %_M_cur10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.Point** %__x.addr, align 8
  call void @_ZNSt5dequeI5PointSaIS0_EE16_M_push_back_auxERKS0_(%"class.std::deque"* %this1, %struct.Point* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %this, %struct.Point* %__p, %struct.Point* %__val) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.Point*, align 8
  %__val.addr = alloca %struct.Point*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.Point* %__p, %struct.Point** %__p.addr, align 8
  store %struct.Point* %__val, %struct.Point** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %0 = load %struct.Point** %__p.addr, align 8
  %1 = bitcast %struct.Point* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %struct.Point*
  %3 = load %struct.Point** %__val.addr, align 8
  %4 = bitcast %struct.Point* %2 to i8*
  %5 = bitcast %struct.Point* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false)
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %6 = phi %struct.Point* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE16_M_push_back_auxERKS0_(%"class.std::deque"* %this, %struct.Point* %__t) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__t.addr = alloca %struct.Point*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %struct.Point* %__t, %struct.Point** %__t.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  call void @_ZNSt5dequeI5PointSaIS0_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %this1, i64 1)
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call %struct.Point* @_ZNSt11_Deque_baseI5PointSaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %0)
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load %struct.Point*** %_M_node, align 8
  %add.ptr = getelementptr inbounds %struct.Point** %2, i64 1
  store %struct.Point* %call, %struct.Point** %add.ptr, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2 to %"class.__gnu_cxx::new_allocator"*
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_finish4 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish4, i32 0, i32 0
  %6 = load %struct.Point** %_M_cur, align 8
  %7 = load %struct.Point** %__t.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorI5PointE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %4, %struct.Point* %6, %struct.Point* %7)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl5, i32 0, i32 3
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_finish8 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl7, i32 0, i32 3
  %_M_node9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish8, i32 0, i32 3
  %10 = load %struct.Point*** %_M_node9, align 8
  %add.ptr10 = getelementptr inbounds %struct.Point** %10, i64 1
  invoke void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_finish6, %struct.Point** %add.ptr10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_finish13 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl12, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish13, i32 0, i32 1
  %12 = load %struct.Point** %_M_first, align 8
  %13 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl14 = getelementptr inbounds %"class.std::_Deque_base"* %13, i32 0, i32 0
  %_M_finish15 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl14, i32 0, i32 3
  %_M_cur16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish15, i32 0, i32 0
  store %struct.Point* %12, %struct.Point** %_M_cur16, align 8
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
  %_M_finish18 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl17, i32 0, i32 3
  %_M_node19 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish18, i32 0, i32 3
  %20 = load %struct.Point*** %_M_node19, align 8
  %add.ptr20 = getelementptr inbounds %struct.Point** %20, i64 1
  %21 = load %struct.Point** %add.ptr20, align 8
  invoke void @_ZNSt11_Deque_baseI5PointSaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %18, %struct.Point* %21)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %catch
  invoke void @__cxa_rethrow() #12
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
  call void @__clang_call_terminate(i8* %26) #11
  unreachable

unreachable:                                      ; preds = %invoke.cont22
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #2 align 2 {
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
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  %2 = load i64* %_M_map_size, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %4 = load %struct.Point*** %_M_node, align 8
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl3, i32 0, i32 0
  %6 = load %struct.Point*** %_M_map, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Point** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Point** %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub i64 %2, %sub.ptr.div
  %cmp = icmp ugt i64 %add, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64* %__nodes_to_add.addr, align 8
  call void @_ZNSt5dequeI5PointSaIS0_EE17_M_reallocate_mapEmb(%"class.std::deque"* %this1, i64 %7, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__nodes_to_add.addr = alloca i64, align 8
  %__add_at_front.addr = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca %struct.Point**, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca %struct.Point**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i64 %__nodes_to_add, i64* %__nodes_to_add.addr, align 8
  %frombool = zext i1 %__add_at_front to i8
  store i8 %frombool, i8* %__add_at_front.addr, align 1
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %1 = load %struct.Point*** %_M_node, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %3 = load %struct.Point*** %_M_node3, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Point** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Point** %3 to i64
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
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %7 = load i64* %_M_map_size, align 8
  %8 = load i64* %__new_num_nodes, align 8
  %mul = mul i64 2, %8
  %cmp = icmp ugt i64 %7, %mul
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl6, i32 0, i32 0
  %10 = load %struct.Point*** %_M_map, align 8
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_map_size8 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %12 = load i64* %_M_map_size8, align 8
  %13 = load i64* %__new_num_nodes, align 8
  %sub = sub i64 %12, %13
  %div = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds %struct.Point** %10, i64 %div
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
  %add.ptr9 = getelementptr inbounds %struct.Point** %add.ptr, i64 %cond
  store %struct.Point** %add.ptr9, %struct.Point*** %__new_nstart, align 8
  %16 = load %struct.Point*** %__new_nstart, align 8
  %17 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0
  %_M_start11 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl10, i32 0, i32 2
  %_M_node12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start11, i32 0, i32 3
  %18 = load %struct.Point*** %_M_node12, align 8
  %cmp13 = icmp ult %struct.Point** %16, %18
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %cond.end
  %19 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl15, i32 0, i32 2
  %_M_node17 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start16, i32 0, i32 3
  %20 = load %struct.Point*** %_M_node17, align 8
  %21 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl18 = getelementptr inbounds %"class.std::_Deque_base"* %21, i32 0, i32 0
  %_M_finish19 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl18, i32 0, i32 3
  %_M_node20 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish19, i32 0, i32 3
  %22 = load %struct.Point*** %_M_node20, align 8
  %add.ptr21 = getelementptr inbounds %struct.Point** %22, i64 1
  %23 = load %struct.Point*** %__new_nstart, align 8
  %call = call %struct.Point** @_ZSt4copyIPP5PointS2_ET0_T_S4_S3_(%struct.Point** %20, %struct.Point** %add.ptr21, %struct.Point** %23)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %24 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl22 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %_M_start23 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl22, i32 0, i32 2
  %_M_node24 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start23, i32 0, i32 3
  %25 = load %struct.Point*** %_M_node24, align 8
  %26 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0
  %_M_finish26 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl25, i32 0, i32 3
  %_M_node27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish26, i32 0, i32 3
  %27 = load %struct.Point*** %_M_node27, align 8
  %add.ptr28 = getelementptr inbounds %struct.Point** %27, i64 1
  %28 = load %struct.Point*** %__new_nstart, align 8
  %29 = load i64* %__old_num_nodes, align 8
  %add.ptr29 = getelementptr inbounds %struct.Point** %28, i64 %29
  %call30 = call %struct.Point** @_ZSt13copy_backwardIPP5PointS2_ET0_T_S4_S3_(%struct.Point** %25, %struct.Point** %add.ptr28, %struct.Point** %add.ptr29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end65

if.else31:                                        ; preds = %entry
  %30 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base"* %30, i32 0, i32 0
  %_M_map_size33 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl32, i32 0, i32 1
  %31 = load i64* %_M_map_size33, align 8
  %32 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl34 = getelementptr inbounds %"class.std::_Deque_base"* %32, i32 0, i32 0
  %_M_map_size35 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl34, i32 0, i32 1
  %call36 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %_M_map_size35, i64* %__nodes_to_add.addr)
  %33 = load i64* %call36
  %add37 = add i64 %31, %33
  %add38 = add i64 %add37, 2
  store i64 %add38, i64* %__new_map_size, align 8
  %34 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %35 = load i64* %__new_map_size, align 8
  %call39 = call %struct.Point** @_ZNSt11_Deque_baseI5PointSaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %34, i64 %35)
  store %struct.Point** %call39, %struct.Point*** %__new_map, align 8
  %36 = load %struct.Point*** %__new_map, align 8
  %37 = load i64* %__new_map_size, align 8
  %38 = load i64* %__new_num_nodes, align 8
  %sub40 = sub i64 %37, %38
  %div41 = udiv i64 %sub40, 2
  %add.ptr42 = getelementptr inbounds %struct.Point** %36, i64 %div41
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
  %add.ptr48 = getelementptr inbounds %struct.Point** %add.ptr42, i64 %cond47
  store %struct.Point** %add.ptr48, %struct.Point*** %__new_nstart, align 8
  %41 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl49 = getelementptr inbounds %"class.std::_Deque_base"* %41, i32 0, i32 0
  %_M_start50 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl49, i32 0, i32 2
  %_M_node51 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_start50, i32 0, i32 3
  %42 = load %struct.Point*** %_M_node51, align 8
  %43 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl52 = getelementptr inbounds %"class.std::_Deque_base"* %43, i32 0, i32 0
  %_M_finish53 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl52, i32 0, i32 3
  %_M_node54 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish53, i32 0, i32 3
  %44 = load %struct.Point*** %_M_node54, align 8
  %add.ptr55 = getelementptr inbounds %struct.Point** %44, i64 1
  %45 = load %struct.Point*** %__new_nstart, align 8
  %call56 = call %struct.Point** @_ZSt4copyIPP5PointS2_ET0_T_S4_S3_(%struct.Point** %42, %struct.Point** %add.ptr55, %struct.Point** %45)
  %46 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %47 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl57 = getelementptr inbounds %"class.std::_Deque_base"* %47, i32 0, i32 0
  %_M_map58 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl57, i32 0, i32 0
  %48 = load %struct.Point*** %_M_map58, align 8
  %49 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl59 = getelementptr inbounds %"class.std::_Deque_base"* %49, i32 0, i32 0
  %_M_map_size60 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl59, i32 0, i32 1
  %50 = load i64* %_M_map_size60, align 8
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %46, %struct.Point** %48, i64 %50)
  %51 = load %struct.Point*** %__new_map, align 8
  %52 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl61 = getelementptr inbounds %"class.std::_Deque_base"* %52, i32 0, i32 0
  %_M_map62 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl61, i32 0, i32 0
  store %struct.Point** %51, %struct.Point*** %_M_map62, align 8
  %53 = load i64* %__new_map_size, align 8
  %54 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl63 = getelementptr inbounds %"class.std::_Deque_base"* %54, i32 0, i32 0
  %_M_map_size64 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl63, i32 0, i32 1
  store i64 %53, i64* %_M_map_size64, align 8
  br label %if.end65

if.end65:                                         ; preds = %cond.end46, %if.end
  %55 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl66 = getelementptr inbounds %"class.std::_Deque_base"* %55, i32 0, i32 0
  %_M_start67 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl66, i32 0, i32 2
  %56 = load %struct.Point*** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_start67, %struct.Point** %56)
  %57 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl68 = getelementptr inbounds %"class.std::_Deque_base"* %57, i32 0, i32 0
  %_M_finish69 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl68, i32 0, i32 3
  %58 = load %struct.Point*** %__new_nstart, align 8
  %59 = load i64* %__old_num_nodes, align 8
  %add.ptr70 = getelementptr inbounds %struct.Point** %58, i64 %59
  %add.ptr71 = getelementptr inbounds %struct.Point** %add.ptr70, i64 -1
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_finish69, %struct.Point** %add.ptr71)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.Point** @_ZSt4copyIPP5PointS2_ET0_T_S4_S3_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #5 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  %0 = load %struct.Point*** %__first.addr, align 8
  %call = call %struct.Point** @_ZNSt12__miter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %0)
  %1 = load %struct.Point*** %__last.addr, align 8
  %call1 = call %struct.Point** @_ZNSt12__miter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %1)
  %2 = load %struct.Point*** %__result.addr, align 8
  %call2 = call %struct.Point** @_ZSt14__copy_move_a2ILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %call, %struct.Point** %call1, %struct.Point** %2)
  ret %struct.Point** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.Point** @_ZSt13copy_backwardIPP5PointS2_ET0_T_S4_S3_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #5 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  %0 = load %struct.Point*** %__first.addr, align 8
  %call = call %struct.Point** @_ZNSt12__miter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %0)
  %1 = load %struct.Point*** %__last.addr, align 8
  %call1 = call %struct.Point** @_ZNSt12__miter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %1)
  %2 = load %struct.Point*** %__result.addr, align 8
  %call2 = call %struct.Point** @_ZSt23__copy_move_backward_a2ILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %call, %struct.Point** %call1, %struct.Point** %2)
  ret %struct.Point** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.Point** @_ZSt23__copy_move_backward_a2ILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #5 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  %0 = load %struct.Point*** %__first.addr, align 8
  %call = call %struct.Point** @_ZNSt12__niter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %0)
  %1 = load %struct.Point*** %__last.addr, align 8
  %call1 = call %struct.Point** @_ZNSt12__niter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %1)
  %2 = load %struct.Point*** %__result.addr, align 8
  %call2 = call %struct.Point** @_ZNSt12__niter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %2)
  %call3 = call %struct.Point** @_ZSt22__copy_move_backward_aILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %call, %struct.Point** %call1, %struct.Point** %call2)
  ret %struct.Point** %call3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Point** @_ZNSt12__miter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %__it) #3 align 2 {
entry:
  %__it.addr = alloca %struct.Point**, align 8
  store %struct.Point** %__it, %struct.Point*** %__it.addr, align 8
  %0 = load %struct.Point*** %__it.addr, align 8
  ret %struct.Point** %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.Point** @_ZSt22__copy_move_backward_aILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #5 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  %__simple = alloca i8, align 1
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.Point*** %__first.addr, align 8
  %1 = load %struct.Point*** %__last.addr, align 8
  %2 = load %struct.Point*** %__result.addr, align 8
  %call = call %struct.Point** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP5PointEEPT_PKS5_S8_S6_(%struct.Point** %0, %struct.Point** %1, %struct.Point** %2)
  ret %struct.Point** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Point** @_ZNSt12__niter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %__it) #3 align 2 {
entry:
  %__it.addr = alloca %struct.Point**, align 8
  store %struct.Point** %__it, %struct.Point*** %__it.addr, align 8
  %0 = load %struct.Point*** %__it.addr, align 8
  ret %struct.Point** %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Point** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP5PointEEPT_PKS5_S8_S6_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #3 align 2 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  %_Num = alloca i64, align 8
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  %0 = load %struct.Point*** %__last.addr, align 8
  %1 = load %struct.Point*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Point** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Point** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load %struct.Point*** %__result.addr, align 8
  %3 = load i64* %_Num, align 8
  %idx.neg = sub i64 0, %3
  %add.ptr = getelementptr inbounds %struct.Point** %2, i64 %idx.neg
  %4 = bitcast %struct.Point** %add.ptr to i8*
  %5 = load %struct.Point*** %__first.addr, align 8
  %6 = bitcast %struct.Point** %5 to i8*
  %7 = load i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  %8 = load %struct.Point*** %__result.addr, align 8
  %9 = load i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %9
  %add.ptr2 = getelementptr inbounds %struct.Point** %8, i64 %idx.neg1
  ret %struct.Point** %add.ptr2
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.Point** @_ZSt14__copy_move_a2ILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #5 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  %0 = load %struct.Point*** %__first.addr, align 8
  %call = call %struct.Point** @_ZNSt12__niter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %0)
  %1 = load %struct.Point*** %__last.addr, align 8
  %call1 = call %struct.Point** @_ZNSt12__niter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %1)
  %2 = load %struct.Point*** %__result.addr, align 8
  %call2 = call %struct.Point** @_ZNSt12__niter_baseIPP5PointLb0EE3__bES2_(%struct.Point** %2)
  %call3 = call %struct.Point** @_ZSt13__copy_move_aILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %call, %struct.Point** %call1, %struct.Point** %call2)
  ret %struct.Point** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.Point** @_ZSt13__copy_move_aILb0EPP5PointS2_ET1_T0_S4_S3_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #5 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  %__simple = alloca i8, align 1
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.Point*** %__first.addr, align 8
  %1 = load %struct.Point*** %__last.addr, align 8
  %2 = load %struct.Point*** %__result.addr, align 8
  %call = call %struct.Point** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP5PointEEPT_PKS5_S8_S6_(%struct.Point** %0, %struct.Point** %1, %struct.Point** %2)
  ret %struct.Point** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Point** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP5PointEEPT_PKS5_S8_S6_(%struct.Point** %__first, %struct.Point** %__last, %struct.Point** %__result) #3 align 2 {
entry:
  %__first.addr = alloca %struct.Point**, align 8
  %__last.addr = alloca %struct.Point**, align 8
  %__result.addr = alloca %struct.Point**, align 8
  store %struct.Point** %__first, %struct.Point*** %__first.addr, align 8
  store %struct.Point** %__last, %struct.Point*** %__last.addr, align 8
  store %struct.Point** %__result, %struct.Point*** %__result.addr, align 8
  %0 = load %struct.Point*** %__result.addr, align 8
  %1 = bitcast %struct.Point** %0 to i8*
  %2 = load %struct.Point*** %__first.addr, align 8
  %3 = bitcast %struct.Point** %2 to i8*
  %4 = load %struct.Point*** %__last.addr, align 8
  %5 = load %struct.Point*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Point** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Point** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %mul = mul i64 8, %sub.ptr.div
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 8, i1 false)
  %6 = load %struct.Point*** %__result.addr, align 8
  %7 = load %struct.Point*** %__last.addr, align 8
  %8 = load %struct.Point*** %__first.addr, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.Point** %7 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.Point** %8 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %add.ptr = getelementptr inbounds %struct.Point** %6, i64 %sub.ptr.div4
  ret %struct.Point** %add.ptr
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE8pop_backEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %1 = load %struct.Point** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 1
  %3 = load %struct.Point** %_M_first, align 8
  %cmp = icmp ne %struct.Point* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl4, i32 0, i32 3
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish5, i32 0, i32 0
  %5 = load %struct.Point** %_M_cur6, align 8
  %incdec.ptr = getelementptr inbounds %struct.Point* %5, i32 -1
  store %struct.Point* %incdec.ptr, %struct.Point** %_M_cur6, align 8
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl7 to %"class.__gnu_cxx::new_allocator"*
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %9 = load %struct.Point** %_M_cur10, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI5PointE7destroyEPS1_(%"class.__gnu_cxx::new_allocator"* %7, %struct.Point* %9)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_ZNSt5dequeI5PointSaIS0_EE15_M_pop_back_auxEv(%"class.std::deque"* %this1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI5PointE7destroyEPS1_(%"class.__gnu_cxx::new_allocator"* %this, %struct.Point* %__p) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.Point*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.Point* %__p, %struct.Point** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %0 = load %struct.Point** %__p.addr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeI5PointSaIS0_EE15_M_pop_back_auxEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 1
  %2 = load %struct.Point** %_M_first, align 8
  call void @_ZNSt11_Deque_baseI5PointSaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %0, %struct.Point* %2)
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl4, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish5, i32 0, i32 3
  %5 = load %struct.Point*** %_M_node, align 8
  %add.ptr = getelementptr inbounds %struct.Point** %5, i64 -1
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_finish3, %struct.Point** %add.ptr)
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl6, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish7, i32 0, i32 2
  %7 = load %struct.Point** %_M_last, align 8
  %add.ptr8 = getelementptr inbounds %struct.Point* %7, i64 -1
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish10 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl9, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish10, i32 0, i32 0
  store %struct.Point* %add.ptr8, %struct.Point** %_M_cur, align 8
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %10 = bitcast %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl11 to %"class.__gnu_cxx::new_allocator"*
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_finish13 = getelementptr inbounds %"struct.std::_Deque_base<Point, std::allocator<Point> >::_Deque_impl"* %_M_impl12, i32 0, i32 3
  %_M_cur14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %_M_finish13, i32 0, i32 0
  %12 = load %struct.Point** %_M_cur14, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI5PointE7destroyEPS1_(%"class.__gnu_cxx::new_allocator"* %10, %struct.Point* %12)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %struct.Point* @_ZNSt5dequeI5PointSaIS0_EE4backEv(%"class.std::deque"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"** %this.addr
  call void @_ZNSt5dequeI5PointSaIS0_EE3endEv(%"struct.std::_Deque_iterator"* sret %__tmp, %"class.std::deque"* %this1)
  %call = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EmmEv(%"struct.std::_Deque_iterator"* %__tmp)
  %call2 = call %struct.Point* @_ZNKSt15_Deque_iteratorI5PointRS0_PS0_EdeEv(%"struct.std::_Deque_iterator"* %__tmp)
  ret %struct.Point* %call2
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorI5PointRS0_PS0_EmmEv(%"struct.std::_Deque_iterator"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"** %this.addr
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.Point** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %1 = load %struct.Point** %_M_first, align 8
  %cmp = icmp eq %struct.Point* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %2 = load %struct.Point*** %_M_node, align 8
  %add.ptr = getelementptr inbounds %struct.Point** %2, i64 -1
  call void @_ZNSt15_Deque_iteratorI5PointRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %this1, %struct.Point** %add.ptr)
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %3 = load %struct.Point** %_M_last, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store %struct.Point* %3, %struct.Point** %_M_cur2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %4 = load %struct.Point** %_M_cur3, align 8
  %incdec.ptr = getelementptr inbounds %struct.Point* %4, i32 -1
  store %struct.Point* %incdec.ptr, %struct.Point** %_M_cur3, align 8
  ret %"struct.std::_Deque_iterator"* %this1
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
attributes #5 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
