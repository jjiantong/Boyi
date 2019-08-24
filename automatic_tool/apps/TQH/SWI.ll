; ModuleID = 'SWI.cl'
source_filename = "SWI.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_t = type { i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local spir_kernel void @TQHistogram_gpu(%struct.task_t* nocapture readonly %queue, i32* nocapture readonly %data, i32* nocapture %histo, i32 %offset, i32 %gpuQueueSize, i32 %frame_size, i32 %n_bins) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %histogram = alloca [256 x i32], align 16
  %0 = bitcast [256 x i32]* %histogram to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #2
  %cmp75 = icmp sgt i32 %gpuQueueSize, 0
  br i1 %cmp75, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cmp669 = icmp sgt i32 %n_bins, 0
  %cmp1371 = icmp sgt i32 %frame_size, 0
  %1 = zext i32 %n_bins to i64
  %2 = shl nuw nsw i64 %1, 2
  %wide.trip.count = zext i32 %frame_size to i64
  %wide.trip.count86 = zext i32 %gpuQueueSize to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %3 = icmp eq i32 %frame_size, 1
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup29, %entry
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #2
  ret void

for.body:                                         ; preds = %for.cond.cleanup29, %for.body.lr.ph
  %indvars.iv84 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next85, %for.cond.cleanup29 ]
  %id = getelementptr inbounds %struct.task_t, %struct.task_t* %queue, i64 %indvars.iv84, i32 0
  %4 = load i32, i32* %id, align 4, !tbaa !7
  br i1 %cmp669, label %for.body8.preheader, label %for.cond12.preheader

for.body8.preheader:                              ; preds = %for.body
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 %2, i1 false)
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.body8.preheader, %for.body
  br i1 %cmp1371, label %for.body15.lr.ph, label %for.cond27.preheader

for.body15.lr.ph:                                 ; preds = %for.cond12.preheader
  %sub = sub nsw i32 %4, %offset
  %mul = mul nsw i32 %sub, %frame_size
  %5 = sext i32 %mul to i64
  br i1 %3, label %for.cond27.preheader.loopexit.unr-lcssa, label %for.body15

for.cond27.preheader.loopexit.unr-lcssa:          ; preds = %for.body15, %for.body15.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next.1, %for.body15 ]
  br i1 %lcmp.mod, label %for.cond27.preheader, label %for.body15.epil

for.body15.epil:                                  ; preds = %for.cond27.preheader.loopexit.unr-lcssa
  %6 = add nsw i64 %indvars.iv.unr, %5
  %arrayidx18.epil = getelementptr inbounds i32, i32* %data, i64 %6
  %7 = load i32, i32* %arrayidx18.epil, align 4, !tbaa !12
  %mul19.epil = mul nsw i32 %7, %n_bins
  %shr.epil = ashr i32 %mul19.epil, 8
  %idxprom20.epil = sext i32 %shr.epil to i64
  %arrayidx21.epil = getelementptr inbounds [256 x i32], [256 x i32]* %histogram, i64 0, i64 %idxprom20.epil
  %8 = load i32, i32* %arrayidx21.epil, align 4, !tbaa !12
  %inc22.epil = add nsw i32 %8, 1
  store i32 %inc22.epil, i32* %arrayidx21.epil, align 4, !tbaa !12
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.body15.epil, %for.cond27.preheader.loopexit.unr-lcssa, %for.cond12.preheader
  br i1 %cmp669, label %for.body30.lr.ph, label %for.cond.cleanup29

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %sub34 = sub nsw i32 %4, %offset
  %mul35 = mul nsw i32 %sub34, %n_bins
  %9 = sext i32 %mul35 to i64
  %scevgep = getelementptr i32, i32* %histo, i64 %9
  %scevgep83 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %scevgep83, i8* nonnull align 16 %0, i64 %2, i1 false)
  br label %for.cond.cleanup29

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body15 ], [ 0, %for.body15.lr.ph ]
  %niter = phi i64 [ %niter.nsub.1, %for.body15 ], [ %unroll_iter, %for.body15.lr.ph ]
  %10 = add nsw i64 %indvars.iv, %5
  %arrayidx18 = getelementptr inbounds i32, i32* %data, i64 %10
  %11 = load i32, i32* %arrayidx18, align 4, !tbaa !12
  %mul19 = mul nsw i32 %11, %n_bins
  %shr = ashr i32 %mul19, 8
  %idxprom20 = sext i32 %shr to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* %histogram, i64 0, i64 %idxprom20
  %12 = load i32, i32* %arrayidx21, align 4, !tbaa !12
  %inc22 = add nsw i32 %12, 1
  store i32 %inc22, i32* %arrayidx21, align 4, !tbaa !12
  %indvars.iv.next = or i64 %indvars.iv, 1
  %13 = add nsw i64 %indvars.iv.next, %5
  %arrayidx18.1 = getelementptr inbounds i32, i32* %data, i64 %13
  %14 = load i32, i32* %arrayidx18.1, align 4, !tbaa !12
  %mul19.1 = mul nsw i32 %14, %n_bins
  %shr.1 = ashr i32 %mul19.1, 8
  %idxprom20.1 = sext i32 %shr.1 to i64
  %arrayidx21.1 = getelementptr inbounds [256 x i32], [256 x i32]* %histogram, i64 0, i64 %idxprom20.1
  %15 = load i32, i32* %arrayidx21.1, align 4, !tbaa !12
  %inc22.1 = add nsw i32 %15, 1
  store i32 %inc22.1, i32* %arrayidx21.1, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond27.preheader.loopexit.unr-lcssa, label %for.body15

for.cond.cleanup29:                               ; preds = %for.body30.lr.ph, %for.cond27.preheader
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond87 = icmp eq i64 %indvars.iv.next85, %wide.trip.count86
  br i1 %exitcond87, label %for.cond.cleanup, label %for.body
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"task_t*", !"int*", !"int*", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !9, i64 4}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!9, !9, i64 0}
