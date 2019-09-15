; ModuleID = 'basic.cl'
source_filename = "basic.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local spir_kernel void @StreamCompaction_kernel(i32 %size, i32 %value, i32* nocapture %input) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %input49 = bitcast i32* %input to i8*
  %reg = alloca [65536 x i32], align 16
  %0 = bitcast [65536 x i32]* %reg to i8*
  call void @llvm.lifetime.start.p0i8(i64 262144, i8* nonnull %0) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %0, i8* align 4 %input49, i64 262144, i1 false)
  br label %for.body6

for.body6:                                        ; preds = %for.inc15, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc15 ]
  %pos.046 = phi i32 [ 0, %entry ], [ %pos.1, %for.inc15 ]
  %arrayidx8 = getelementptr inbounds [65536 x i32], [65536 x i32]* %reg, i64 0, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx8, align 4, !tbaa !7
  %cmp9 = icmp eq i32 %1, %value
  br i1 %cmp9, label %for.inc15, label %if.then

if.then:                                          ; preds = %for.body6
  %idxprom12 = sext i32 %pos.046 to i64
  %arrayidx13 = getelementptr inbounds [65536 x i32], [65536 x i32]* %reg, i64 0, i64 %idxprom12
  store i32 %1, i32* %arrayidx13, align 4, !tbaa !7
  %inc14 = add nsw i32 %pos.046, 1
  br label %for.inc15

for.inc15:                                        ; preds = %for.body6, %if.then
  %pos.1 = phi i32 [ %inc14, %if.then ], [ %pos.046, %for.body6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond, label %for.body22.preheader, label %for.body6, !llvm.loop !11

for.body22.preheader:                             ; preds = %for.inc15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %input49, i8* nonnull align 16 %0, i64 262144, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 262144, i8* nonnull %0) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!3 = !{i32 0, i32 0, i32 1}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"int", !"int", !"int*"}
!6 = !{!"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.count", i32 1}
