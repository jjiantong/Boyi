; ModuleID = 'basic.cl'
source_filename = "basic.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_t = type { i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local spir_kernel void @TQHistogram_gpu(%struct.task_t* nocapture readonly %queue, i32* nocapture readonly %data, i32* nocapture %histo, i32 %offset, i32 %gpuQueueSize, i32 %frame_size, i32 %n_bins) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %histogram = alloca [256 x i32], align 16
  %0 = bitcast [256 x i32]* %histogram to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #2
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond27.preheader
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #2
  ret void

for.body:                                         ; preds = %for.cond27.preheader, %entry
  %indvars.iv76 = phi i64 [ 0, %entry ], [ %indvars.iv.next77, %for.cond27.preheader ]
  %id = getelementptr inbounds %struct.task_t, %struct.task_t* %queue, i64 %indvars.iv76, i32 0
  %1 = load i32, i32* %id, align 4, !tbaa !7
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 1024, i1 false)
  %sub = sub nsw i32 %1, %offset
  %mul = mul nsw i32 %sub, %frame_size
  %2 = sext i32 %mul to i64
  br label %for.body15

for.cond27.preheader:                             ; preds = %for.body15
  %mul35 = mul nsw i32 %sub, %n_bins
  %3 = sext i32 %mul35 to i64
  %scevgep = getelementptr i32, i32* %histo, i64 %3
  %scevgep75 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %scevgep75, i8* nonnull align 16 %0, i64 1024, i1 false)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond78 = icmp eq i64 %indvars.iv.next77, 320
  br i1 %exitcond78, label %for.cond.cleanup, label %for.body, !llvm.loop !12

for.body15:                                       ; preds = %for.body15, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body15 ]
  %4 = add nsw i64 %indvars.iv, %2
  %arrayidx18 = getelementptr inbounds i32, i32* %data, i64 %4
  %5 = load i32, i32* %arrayidx18, align 4, !tbaa !14
  %mul19 = mul nsw i32 %5, %n_bins
  %shr = ashr i32 %mul19, 8
  %idxprom20 = sext i32 %shr to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* %histogram, i64 0, i64 %idxprom20
  %6 = load i32, i32* %arrayidx21, align 4, !tbaa !14
  %inc22 = add nsw i32 %6, 1
  store i32 %inc22, i32* %arrayidx21, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 101376
  br i1 %exitcond, label %for.cond27.preheader, label %for.body15, !llvm.loop !15
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.count", i32 1}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !13}
