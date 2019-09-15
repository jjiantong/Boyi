; ModuleID = 'basic.cl'
source_filename = "basic.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local spir_kernel void @Histogram_kernel(i32 %size, i32 %bins, float %alpha, i32* nocapture readonly %data, i32* nocapture %histo) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %l_histo = alloca [256 x i32], align 16
  %0 = bitcast [256 x i32]* %l_histo to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 1024, i1 false)
  br label %for.body4

for.body4:                                        ; preds = %for.body4, %entry
  %indvars.iv39 = phi i64 [ 0, %entry ], [ %indvars.iv.next40, %for.body4 ]
  %arrayidx6 = getelementptr inbounds i32, i32* %data, i64 %indvars.iv39
  %1 = load i32, i32* %arrayidx6, align 4, !tbaa !7
  %mul = mul i32 %1, %bins
  %shr = lshr i32 %mul, 12
  %idxprom7 = zext i32 %shr to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* %l_histo, i64 0, i64 %idxprom7
  %2 = load i32, i32* %arrayidx8, align 4, !tbaa !7
  %inc9 = add i32 %2, 1
  store i32 %inc9, i32* %arrayidx8, align 4, !tbaa !7
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond41 = icmp eq i64 %indvars.iv.next40, 157286400
  br i1 %exitcond41, label %for.body17, label %for.body4, !llvm.loop !11

for.cond.cleanup16:                               ; preds = %for.body17
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #2
  ret void

for.body17:                                       ; preds = %for.body4, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 0, %for.body4 ]
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %l_histo, i64 0, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx19, align 4, !tbaa !7
  %arrayidx21 = getelementptr inbounds i32, i32* %histo, i64 %indvars.iv
  %4 = load i32, i32* %arrayidx21, align 4, !tbaa !7
  %add = add i32 %4, %3
  store i32 %add, i32* %arrayidx21, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.cond.cleanup16, label %for.body17, !llvm.loop !13
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 0, i32 0, i32 0, i32 1, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"int", !"float", !"uint*", !"uint*"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.count", i32 1}
!13 = distinct !{!13, !12}
