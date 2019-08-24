; ModuleID = 'basic.cl'
source_filename = "basic.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define dso_local spir_kernel void @prefixSum(i32* noalias nocapture %output, i32* noalias nocapture readonly %input, i32 %in_size) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  store i32 0, i32* %output, align 4, !tbaa !7
  %cmp14 = icmp ugt i32 %in_size, 1
  br i1 %cmp14, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %in_size to i64
  %0 = add nsw i64 %wide.trip.count, -2
  %1 = add i32 %in_size, 3
  %2 = and i32 %1, 3
  %xtraiter = zext i32 %2 to i64
  %3 = icmp ult i64 %0, 3
  br i1 %3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %4 = xor i64 %xtraiter, -1
  %unroll_iter = add nsw i64 %4, %wide.trip.count
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %.unr = phi i32 [ 0, %for.body.preheader ], [ %add.3, %for.body ]
  %indvars.iv.unr = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod = icmp eq i32 %2, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil
  %5 = phi i32 [ %add.epil, %for.body.epil ], [ %.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %for.cond.cleanup.loopexit.unr-lcssa ]
  %6 = add nsw i64 %indvars.iv.epil, -1
  %arrayidx4.epil = getelementptr inbounds i32, i32* %input, i64 %6
  %7 = load i32, i32* %arrayidx4.epil, align 4, !tbaa !7
  %add.epil = add nsw i32 %7, %5
  %arrayidx6.epil = getelementptr inbounds i32, i32* %output, i64 %indvars.iv.epil
  store i32 %add.epil, i32* %arrayidx6.epil, align 4, !tbaa !7
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !11

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil, %entry
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %8 = phi i32 [ 0, %for.body.preheader.new ], [ %add.3, %for.body ]
  %indvars.iv = phi i64 [ 1, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.3, %for.body ]
  %9 = add nsw i64 %indvars.iv, -1
  %arrayidx4 = getelementptr inbounds i32, i32* %input, i64 %9
  %10 = load i32, i32* %arrayidx4, align 4, !tbaa !7
  %add = add nsw i32 %10, %8
  %arrayidx6 = getelementptr inbounds i32, i32* %output, i64 %indvars.iv
  store i32 %add, i32* %arrayidx6, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx4.1 = getelementptr inbounds i32, i32* %input, i64 %indvars.iv
  %11 = load i32, i32* %arrayidx4.1, align 4, !tbaa !7
  %add.1 = add nsw i32 %11, %add
  %arrayidx6.1 = getelementptr inbounds i32, i32* %output, i64 %indvars.iv.next
  store i32 %add.1, i32* %arrayidx6.1, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx4.2 = getelementptr inbounds i32, i32* %input, i64 %indvars.iv.next
  %12 = load i32, i32* %arrayidx4.2, align 4, !tbaa !7
  %add.2 = add nsw i32 %12, %add.1
  %arrayidx6.2 = getelementptr inbounds i32, i32* %output, i64 %indvars.iv.next.1
  store i32 %add.2, i32* %arrayidx6.2, align 4, !tbaa !7
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx4.3 = getelementptr inbounds i32, i32* %input, i64 %indvars.iv.next.1
  %13 = load i32, i32* %arrayidx4.3, align 4, !tbaa !7
  %add.3 = add nsw i32 %13, %add.2
  %arrayidx6.3 = getelementptr inbounds i32, i32* %output, i64 %indvars.iv.next.2
  store i32 %add.3, i32* %arrayidx6.3, align 4, !tbaa !7
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"uint"}
!6 = !{!"restrict", !"restrict", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
