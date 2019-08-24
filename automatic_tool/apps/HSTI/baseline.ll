; ModuleID = 'apps/HSTI/baseline.cl'
source_filename = "apps/HSTI/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @Histogram_kernel(i32 %size, i32 %bins, i32 %n_tasks, float %alpha, i32* nocapture readonly %data, i32* %histo, i32* %l_histo) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %cmp.i = fcmp oge float %alpha, 0.000000e+00
  %cmp2.i = fcmp ole float %alpha, 1.000000e+00
  %or.cond.i = and i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %partitioner_create.exit

if.then.i:                                        ; preds = %entry
  %conv.i = sitofp i32 %n_tasks to float
  %mul.i = fmul float %conv.i, %alpha
  %conv4.i = fptosi float %mul.i to i32
  br label %partitioner_create.exit

partitioner_create.exit:                          ; preds = %entry, %if.then.i
  %retval.sroa.3.0.i = phi i32 [ %conv4.i, %if.then.i ], [ 0, %entry ]
  %call1 = tail call i64 @get_group_id(i32 0) #2
  %call2 = tail call i64 @get_local_id(i32 0) #2
  %conv3 = trunc i64 %call2 to i32
  %call4 = tail call i64 @get_local_size(i32 0) #2
  %conv5 = trunc i64 %call4 to i32
  %call6 = tail call i64 @get_num_groups(i32 0) #2
  %cmp72 = icmp slt i32 %conv3, %bins
  br i1 %cmp72, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %partitioner_create.exit
  %sext77 = shl i64 %call2, 32
  %0 = ashr exact i64 %sext77, 32
  %sext78 = shl i64 %call4, 32
  %1 = ashr exact i64 %sext78, 32
  %2 = sext i32 %bins to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %partitioner_create.exit
  tail call void @barrier(i32 1) #2
  %call.i58 = tail call i64 @get_group_id(i32 0) #2
  %3 = trunc i64 %call.i58 to i32
  %conv1.i59 = add i32 %retval.sroa.3.0.i, %3
  %cmp.i6270 = icmp slt i32 %conv1.i59, %n_tasks
  br i1 %cmp.i6270, label %for.body13, label %for.cond.cleanup12

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv74 = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next75, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %l_histo, i64 %indvars.iv74
  store i32 0, i32* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next75 = add i64 %indvars.iv74, %1
  %cmp = icmp slt i64 %indvars.iv.next75, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup12:                               ; preds = %for.body13, %for.cond.cleanup
  tail call void @barrier(i32 1) #2
  br i1 %cmp72, label %for.body29.preheader, label %for.cond.cleanup28

for.body29.preheader:                             ; preds = %for.cond.cleanup12
  %sext = shl i64 %call2, 32
  %4 = ashr exact i64 %sext, 32
  %sext76 = shl i64 %call4, 32
  %5 = ashr exact i64 %sext76, 32
  %6 = sext i32 %bins to i64
  br label %for.body29

for.body13:                                       ; preds = %for.cond.cleanup, %for.body13
  %p.sroa.5.071 = phi i32 [ %conv1.i, %for.body13 ], [ %conv1.i59, %for.cond.cleanup ]
  %mul = mul nsw i32 %p.sroa.5.071, %conv5
  %add14 = add nsw i32 %mul, %conv3
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %data, i64 %idxprom15
  %7 = load i32, i32* %arrayidx16, align 4, !tbaa !7
  %mul17 = mul i32 %7, %bins
  %shr = lshr i32 %mul17, 12
  %idxprom18 = zext i32 %shr to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %l_histo, i64 %idxprom18
  %call20 = tail call i32 @_Z10atomic_addPU7CLlocalVjj(i32* %arrayidx19, i32 1) #2
  %call.i = tail call i64 @get_num_groups(i32 0) #2
  %8 = trunc i64 %call.i to i32
  %conv1.i = add i32 %p.sroa.5.071, %8
  %cmp.i62 = icmp slt i32 %conv1.i, %n_tasks
  br i1 %cmp.i62, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup28:                               ; preds = %for.body29, %for.cond.cleanup12
  ret void

for.body29:                                       ; preds = %for.body29.preheader, %for.body29
  %indvars.iv = phi i64 [ %4, %for.body29.preheader ], [ %indvars.iv.next, %for.body29 ]
  %add.ptr = getelementptr inbounds i32, i32* %histo, i64 %indvars.iv
  %arrayidx31 = getelementptr inbounds i32, i32* %l_histo, i64 %indvars.iv
  %9 = load i32, i32* %arrayidx31, align 4, !tbaa !7
  %call32 = tail call i32 @_Z10atomic_addPU8CLglobalVjj(i32* %add.ptr, i32 %9) #2
  %indvars.iv.next = add i64 %indvars.iv, %5
  %cmp26 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp26, label %for.body29, label %for.cond.cleanup28
}

; Function Attrs: convergent
declare dso_local i64 @get_group_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_local_size(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_num_groups(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU7CLlocalVjj(i32*, i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU8CLglobalVjj(i32*, i32) local_unnamed_addr #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 3}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"int", !"int", !"float", !"uint*", !"uint*", !"uint*"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
