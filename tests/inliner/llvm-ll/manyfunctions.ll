; ModuleID = 'source/manyfunctions.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

; Function Attrs: nounwind ssp uwtable
define void @clear_map() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @reset_world() #0 {
  call void @clear_map()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @reset_enemy(i32 %i) #0 {
  %1 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @init() #0 {
  %i = alloca i32, align 4
  call void @reset_world()
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %6, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  call void @reset_enemy(i32 %5)
  br label %6

; <label>:6                                       ; preds = %4
  %7 = load i32* %i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %i, align 4
  br label %1

; <label>:9                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @render_map() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @check_collisions() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @update_world() #0 {
  call void @render_map()
  call void @check_collisions()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @move() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @attack() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @update_enemy(i32 %i) #0 {
  %1 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  call void @move()
  call void @attack()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @update() #0 {
  %i = alloca i32, align 4
  call void @update_world()
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %6, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  call void @update_enemy(i32 %5)
  br label %6

; <label>:6                                       ; preds = %4
  %7 = load i32* %i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %i, align 4
  br label %1

; <label>:9                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @finalize_world() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @adjust_health() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @finalize_enemy(i32 %i) #0 {
  %1 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  call void @adjust_health()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @finalize() #0 {
  %i = alloca i32, align 4
  call void @finalize_world()
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %6, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  call void @finalize_enemy(i32 %5)
  br label %6

; <label>:6                                       ; preds = %4
  %7 = load i32* %i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %i, align 4
  br label %1

; <label>:9                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %8, %0
  %5 = load i32* %i, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %4
  call void @init()
  call void @update()
  call void @finalize()
  br label %8

; <label>:8                                       ; preds = %7
  %9 = load i32* %i, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %4

; <label>:11                                      ; preds = %4
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 5.1 (clang-503.0.40) (based on LLVM 3.4svn)"}
