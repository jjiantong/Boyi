; ModuleID = 'apps/MM/baseline.cl'
source_filename = "apps/MM/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrixMult.A_local = internal unnamed_addr global [64 x [64 x float]] undef, align 16
@matrixMult.B_local = internal unnamed_addr global [64 x [64 x float]] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @matrixMult(float* noalias nocapture %C, float* nocapture readonly %A, float* nocapture readonly %B, i32 %A_width, i32 %B_width) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 !reqd_work_group_size !7 {
entry:
  %call = tail call i64 @get_group_id(i32 0) #3
  %call1 = tail call i64 @get_group_id(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @get_local_id(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @get_local_id(i32 1) #3
  %conv6 = trunc i64 %call5 to i32
  %cmp84 = icmp sgt i32 %A_width, 0
  br i1 %cmp84, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nsw i32 %A_width, 6
  %mul7 = mul nsw i32 %mul, %conv2
  %add = add nsw i32 %mul7, %A_width
  %conv = trunc i64 %call to i32
  %mul10 = mul nsw i32 %conv6, %A_width
  %add11 = add i32 %mul10, %conv4
  %sext = shl i64 %call5, 32
  %idxprom13 = ashr exact i64 %sext, 32
  %sext81 = shl i64 %call3, 32
  %idxprom15 = ashr exact i64 %sext81, 32
  %arrayidx16 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.A_local, i64 0, i64 %idxprom13, i64 %idxprom15
  %0 = bitcast float* %arrayidx16 to i32*
  %mul17 = mul nsw i32 %conv6, %B_width
  %add18 = add i32 %mul17, %conv4
  %arrayidx25 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.B_local, i64 0, i64 %idxprom15, i64 %idxprom13
  %1 = bitcast float* %arrayidx25 to i32*
  %mul42 = shl i32 %B_width, 6
  %2 = shl i32 %conv, 6
  %3 = sext i32 %2 to i64
  %4 = sext i32 %mul42 to i64
  %5 = mul i32 %conv2, %A_width
  %6 = shl i32 %5, 6
  %7 = sext i32 %6 to i64
  %8 = sext i32 %add to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup29, %entry
  %running_sum.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %26, %for.cond.cleanup29 ]
  %call45 = tail call i64 @get_global_id(i32 1) #3
  %call46 = tail call i64 @get_global_size(i32 0) #3
  %mul47 = mul i64 %call46, %call45
  %call48 = tail call i64 @get_global_id(i32 0) #3
  %add49 = add i64 %mul47, %call48
  %arrayidx50 = getelementptr inbounds float, float* %C, i64 %add49
  store float %running_sum.0.lcssa, float* %arrayidx50, align 4, !tbaa !8
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup29
  %indvars.iv90 = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next91, %for.cond.cleanup29 ]
  %indvars.iv88 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next89, %for.cond.cleanup29 ]
  %running_sum.085 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %26, %for.cond.cleanup29 ]
  %9 = trunc i64 %indvars.iv90 to i32
  %add12 = add i32 %add11, %9
  %idxprom = sext i32 %add12 to i64
  %arrayidx = getelementptr inbounds float, float* %A, i64 %idxprom
  %10 = bitcast float* %arrayidx to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !8
  store i32 %11, i32* %0, align 4, !tbaa !8
  %12 = trunc i64 %indvars.iv88 to i32
  %add19 = add i32 %add18, %12
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %B, i64 %idxprom20
  %13 = bitcast float* %arrayidx21 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !8
  store i32 %14, i32* %1, align 4, !tbaa !8
  tail call void @barrier(i32 1) #3
  br label %for.body30

for.cond.cleanup29:                               ; preds = %for.body30
  tail call void @barrier(i32 1) #3
  %indvars.iv.next91 = add i64 %indvars.iv90, 64
  %indvars.iv.next89 = add i64 %indvars.iv88, %4
  %cmp = icmp slt i64 %indvars.iv.next91, %8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.body30:                                       ; preds = %for.body30, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.3, %for.body30 ]
  %running_sum.182 = phi float [ %running_sum.085, %for.body ], [ %26, %for.body30 ]
  %arrayidx34 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.A_local, i64 0, i64 %idxprom13, i64 %indvars.iv
  %15 = load float, float* %arrayidx34, align 16, !tbaa !8
  %arrayidx38 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.B_local, i64 0, i64 %idxprom15, i64 %indvars.iv
  %16 = load float, float* %arrayidx38, align 16, !tbaa !8
  %17 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %running_sum.182)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx34.1 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.A_local, i64 0, i64 %idxprom13, i64 %indvars.iv.next
  %18 = load float, float* %arrayidx34.1, align 4, !tbaa !8
  %arrayidx38.1 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.B_local, i64 0, i64 %idxprom15, i64 %indvars.iv.next
  %19 = load float, float* %arrayidx38.1, align 4, !tbaa !8
  %20 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %17)
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx34.2 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.A_local, i64 0, i64 %idxprom13, i64 %indvars.iv.next.1
  %21 = load float, float* %arrayidx34.2, align 8, !tbaa !8
  %arrayidx38.2 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.B_local, i64 0, i64 %idxprom15, i64 %indvars.iv.next.1
  %22 = load float, float* %arrayidx38.2, align 8, !tbaa !8
  %23 = tail call float @llvm.fmuladd.f32(float %21, float %22, float %20)
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx34.3 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.A_local, i64 0, i64 %idxprom13, i64 %indvars.iv.next.2
  %24 = load float, float* %arrayidx34.3, align 4, !tbaa !8
  %arrayidx38.3 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @matrixMult.B_local, i64 0, i64 %idxprom15, i64 %indvars.iv.next.2
  %25 = load float, float* %arrayidx38.3, align 4, !tbaa !8
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %25, float %23)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond.3, label %for.cond.cleanup29, label %for.body30
}

; Function Attrs: convergent
declare dso_local i64 @get_group_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent
declare dso_local i64 @get_global_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_global_size(i32) local_unnamed_addr #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!6 = !{!"restrict", !"", !"", !"", !""}
!7 = !{i32 64, i32 64, i32 1}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
