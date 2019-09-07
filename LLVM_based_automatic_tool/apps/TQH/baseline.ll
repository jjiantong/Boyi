; ModuleID = 'apps/TQH/baseline.cl'
source_filename = "apps/TQH/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_t = type { i32, i32 }

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @TQHistogram_gpu(%struct.task_t* nocapture readonly %queue, i32* nocapture readonly %data, i32* nocapture %histo, i32 %offset, %struct.task_t* nocapture %t, i32 %gpuQueueSize, i32* %consumed, i32* nocapture %next, i32* %l_histo, i32 %frame_size, i32 %n_bins) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @get_local_id(i32 0) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_group_id(i32 0) #2
  %call3 = tail call i64 @get_local_size(i32 0) #2
  %conv4 = trunc i64 %call3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %consumed, i32 1) #2
  store i32 %call6, i32* %next, align 4, !tbaa !7
  %idxprom = sext i32 %call6 to i64
  %id = getelementptr inbounds %struct.task_t, %struct.task_t* %queue, i64 %idxprom, i32 0
  %0 = load i32, i32* %id, align 4, !tbaa !11
  %id7 = getelementptr inbounds %struct.task_t, %struct.task_t* %t, i64 0, i32 0
  store i32 %0, i32* %id7, align 4, !tbaa !11
  %1 = load i32, i32* %next, align 4, !tbaa !7
  %idxprom8 = sext i32 %1 to i64
  %op = getelementptr inbounds %struct.task_t, %struct.task_t* %queue, i64 %idxprom8, i32 1
  %2 = load i32, i32* %op, align 4, !tbaa !13
  %op10 = getelementptr inbounds %struct.task_t, %struct.task_t* %t, i64 0, i32 1
  store i32 %2, i32* %op10, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @barrier(i32 1) #2
  %3 = load i32, i32* %next, align 4, !tbaa !7
  %cmp11118 = icmp slt i32 %3, %gpuQueueSize
  br i1 %cmp11118, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %op13 = getelementptr inbounds %struct.task_t, %struct.task_t* %t, i64 0, i32 1
  %cmp17112 = icmp slt i32 %conv, %n_bins
  %cmp23114 = icmp slt i32 %conv, %frame_size
  %id27 = getelementptr inbounds %struct.task_t, %struct.task_t* %t, i64 0, i32 0
  %sext = shl i64 %call, 32
  %4 = ashr exact i64 %sext, 32
  %sext121 = shl i64 %call3, 32
  %5 = ashr exact i64 %sext121, 32
  %6 = sext i32 %n_bins to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end68
  %7 = load i32, i32* %op13, align 4, !tbaa !13
  %cmp14 = icmp eq i32 %7, 1
  br i1 %cmp14, label %for.cond.preheader, label %if.end55

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp17112, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  tail call void @barrier(i32 1) #2
  br i1 %cmp23114, label %for.body26, label %for.cond.cleanup25

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %4, %for.cond.preheader ]
  %arrayidx20 = getelementptr inbounds i32, i32* %l_histo, i64 %indvars.iv
  store i32 0, i32* %arrayidx20, align 4, !tbaa !7
  %indvars.iv.next = add i64 %indvars.iv, %5
  %cmp17 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp17, label %for.body, label %for.cond.cleanup

for.cond.cleanup25:                               ; preds = %for.body26, %for.cond.cleanup
  tail call void @barrier(i32 1) #2
  br i1 %cmp17112, label %for.body43, label %if.end55

for.body26:                                       ; preds = %for.cond.cleanup, %for.body26
  %i21.0115 = phi i32 [ %add36, %for.body26 ], [ %conv, %for.cond.cleanup ]
  %8 = load i32, i32* %id27, align 4, !tbaa !11
  %sub = sub nsw i32 %8, %offset
  %mul = mul nsw i32 %sub, %frame_size
  %add28 = add nsw i32 %mul, %i21.0115
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %data, i64 %idxprom29
  %9 = load i32, i32* %arrayidx30, align 4, !tbaa !7
  %mul31 = mul nsw i32 %9, %n_bins
  %shr = ashr i32 %mul31, 8
  %idxprom32 = sext i32 %shr to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %l_histo, i64 %idxprom32
  %call34 = tail call i32 @_Z10atomic_addPU7CLlocalVii(i32* %arrayidx33, i32 1) #2
  %add36 = add nsw i32 %i21.0115, %conv4
  %cmp23 = icmp slt i32 %add36, %frame_size
  br i1 %cmp23, label %for.body26, label %for.cond.cleanup25

for.body43:                                       ; preds = %for.cond.cleanup25, %for.body43
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body43 ], [ %4, %for.cond.cleanup25 ]
  %arrayidx45 = getelementptr inbounds i32, i32* %l_histo, i64 %indvars.iv119
  %10 = load i32, i32* %arrayidx45, align 4, !tbaa !7
  %11 = load i32, i32* %id27, align 4, !tbaa !11
  %sub47 = sub nsw i32 %11, %offset
  %mul48 = mul nsw i32 %sub47, %n_bins
  %12 = trunc i64 %indvars.iv119 to i32
  %add49 = add nsw i32 %mul48, %12
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %histo, i64 %idxprom50
  store i32 %10, i32* %arrayidx51, align 4, !tbaa !7
  %indvars.iv.next120 = add i64 %indvars.iv119, %5
  %cmp40 = icmp slt i64 %indvars.iv.next120, %6
  br i1 %cmp40, label %for.body43, label %if.end55

if.end55:                                         ; preds = %for.body43, %for.cond.cleanup25, %while.body
  br i1 %cmp, label %if.then58, label %if.end68

if.then58:                                        ; preds = %if.end55
  %call59 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %consumed, i32 1) #2
  store i32 %call59, i32* %next, align 4, !tbaa !7
  %idxprom60 = sext i32 %call59 to i64
  %id62 = getelementptr inbounds %struct.task_t, %struct.task_t* %queue, i64 %idxprom60, i32 0
  %13 = load i32, i32* %id62, align 4, !tbaa !11
  store i32 %13, i32* %id27, align 4, !tbaa !11
  %14 = load i32, i32* %next, align 4, !tbaa !7
  %idxprom64 = sext i32 %14 to i64
  %op66 = getelementptr inbounds %struct.task_t, %struct.task_t* %queue, i64 %idxprom64, i32 1
  %15 = load i32, i32* %op66, align 4, !tbaa !13
  store i32 %15, i32* %op13, align 4, !tbaa !13
  br label %if.end68

if.end68:                                         ; preds = %if.then58, %if.end55
  tail call void @barrier(i32 1) #2
  %16 = load i32, i32* %next, align 4, !tbaa !7
  %cmp11 = icmp slt i32 %16, %gpuQueueSize
  br i1 %cmp11, label %while.body, label %while.end

while.end:                                        ; preds = %if.end68, %if.end
  ret void
}

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_group_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_local_size(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU8CLglobalVii(i32*, i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU7CLlocalVii(i32*, i32) local_unnamed_addr #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 3, i32 0, i32 1, i32 3, i32 3, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"task_t*", !"int*", !"int*", !"int", !"task_t*", !"int", !"int*", !"int*", !"int*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"", !8, i64 0, !8, i64 4}
!13 = !{!12, !8, i64 4}
