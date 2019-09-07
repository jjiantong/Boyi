; ModuleID = 'apps/KM/baseline.cl'
source_filename = "apps/KM/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmeans_kernel_c.l_clusters = internal unnamed_addr global [1024 x float] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @kmeans_kernel_c(float* noalias nocapture readonly %feature, float* noalias nocapture readonly %clusters, i32* noalias nocapture %membership, i32 %npoints, i32 %nclusters, i32 %nfeatures) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @get_global_id(i32 0) #3
  %call1 = tail call i64 @get_local_id(i32 0) #3
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp ult i32 %conv2, %nclusters
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = shl i32 %conv2, 3
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %clusters, i64 %idxprom
  %0 = bitcast float* %arrayidx to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !7
  %arrayidx7 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom
  %2 = bitcast float* %arrayidx7 to i32*
  store i32 %1, i32* %2, align 16, !tbaa !7
  %add9 = or i32 %mul, 1
  %idxprom10 = zext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds float, float* %clusters, i64 %idxprom10
  %3 = bitcast float* %arrayidx11 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %arrayidx15 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom10
  %5 = bitcast float* %arrayidx15 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !7
  %add17 = or i32 %mul, 2
  %idxprom18 = zext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, float* %clusters, i64 %idxprom18
  %6 = bitcast float* %arrayidx19 to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !7
  %arrayidx23 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom18
  %8 = bitcast float* %arrayidx23 to i32*
  store i32 %7, i32* %8, align 8, !tbaa !7
  %add25 = or i32 %mul, 3
  %idxprom26 = zext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %clusters, i64 %idxprom26
  %9 = bitcast float* %arrayidx27 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %arrayidx31 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom26
  %11 = bitcast float* %arrayidx31 to i32*
  store i32 %10, i32* %11, align 4, !tbaa !7
  %add33 = or i32 %mul, 4
  %idxprom34 = zext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds float, float* %clusters, i64 %idxprom34
  %12 = bitcast float* %arrayidx35 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %arrayidx39 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom34
  %14 = bitcast float* %arrayidx39 to i32*
  store i32 %13, i32* %14, align 16, !tbaa !7
  %add41 = or i32 %mul, 5
  %idxprom42 = zext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds float, float* %clusters, i64 %idxprom42
  %15 = bitcast float* %arrayidx43 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !7
  %arrayidx47 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom42
  %17 = bitcast float* %arrayidx47 to i32*
  store i32 %16, i32* %17, align 4, !tbaa !7
  %add49 = or i32 %mul, 6
  %idxprom50 = zext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds float, float* %clusters, i64 %idxprom50
  %18 = bitcast float* %arrayidx51 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %arrayidx55 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom50
  %20 = bitcast float* %arrayidx55 to i32*
  store i32 %19, i32* %20, align 8, !tbaa !7
  %add57 = or i32 %mul, 7
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds float, float* %clusters, i64 %idxprom58
  %21 = bitcast float* %arrayidx59 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %arrayidx63 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %idxprom58
  %23 = bitcast float* %arrayidx63 to i32*
  store i32 %22, i32* %23, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @barrier(i32 1) #3
  %call64 = tail call i64 @get_global_size(i32 0) #3
  %conv65 = trunc i64 %call64 to i32
  %call66 = tail call i64 @get_global_id(i32 0) #3
  %conv67 = trunc i64 %call66 to i32
  %cmp68159 = icmp ult i32 %conv67, %npoints
  br i1 %cmp68159, label %for.cond70.preheader.lr.ph, label %for.end99

for.cond70.preheader.lr.ph:                       ; preds = %if.end
  %cmp71153 = icmp sgt i32 %nclusters, 0
  %cmp75150 = icmp sgt i32 %nfeatures, 0
  %24 = sext i32 %nfeatures to i64
  %wide.trip.count = zext i32 %nfeatures to i64
  %wide.trip.count167 = zext i32 %nclusters to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %25 = icmp eq i32 %nfeatures, 1
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %for.cond70.preheader.lr.ph, %for.cond.cleanup
  %point_id.0161 = phi i32 [ %conv67, %for.cond70.preheader.lr.ph ], [ %add98, %for.cond.cleanup ]
  %index.0160 = phi i32 [ 0, %for.cond70.preheader.lr.ph ], [ %index.1.lcssa, %for.cond.cleanup ]
  br i1 %cmp71153, label %for.cond74.preheader, label %for.cond.cleanup

for.cond74.preheader:                             ; preds = %for.cond70.preheader, %for.cond.cleanup77
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.cond.cleanup77 ], [ 0, %for.cond70.preheader ]
  %index.1157 = phi i32 [ %index.2, %for.cond.cleanup77 ], [ %index.0160, %for.cond70.preheader ]
  %min_dist.0156 = phi float [ %min_dist.1, %for.cond.cleanup77 ], [ 0x47EFFFFFE0000000, %for.cond70.preheader ]
  br i1 %cmp75150, label %for.body78.lr.ph, label %for.cond.cleanup77

for.body78.lr.ph:                                 ; preds = %for.cond74.preheader
  %26 = mul nsw i64 %indvars.iv164, %24
  br i1 %25, label %for.cond.cleanup77.loopexit.unr-lcssa, label %for.body78

for.cond.cleanup:                                 ; preds = %for.cond.cleanup77, %for.cond70.preheader
  %index.1.lcssa = phi i32 [ %index.0160, %for.cond70.preheader ], [ %index.2, %for.cond.cleanup77 ]
  %idxprom95 = zext i32 %point_id.0161 to i64
  %arrayidx96 = getelementptr inbounds i32, i32* %membership, i64 %idxprom95
  store i32 %index.1.lcssa, i32* %arrayidx96, align 4, !tbaa !11
  %add98 = add i32 %point_id.0161, %conv65
  %cmp68 = icmp ult i32 %add98, %npoints
  br i1 %cmp68, label %for.cond70.preheader, label %for.end99

for.cond.cleanup77.loopexit.unr-lcssa:            ; preds = %for.body78, %for.body78.lr.ph
  %.lcssa.ph = phi float [ undef, %for.body78.lr.ph ], [ %42, %for.body78 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next.1, %for.body78 ]
  %ans.0151.unr = phi float [ 0.000000e+00, %for.body78.lr.ph ], [ %42, %for.body78 ]
  br i1 %lcmp.mod, label %for.cond.cleanup77, label %for.body78.epil

for.body78.epil:                                  ; preds = %for.cond.cleanup77.loopexit.unr-lcssa
  %27 = add nsw i64 %indvars.iv.unr, %26
  %arrayidx82.epil = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %27
  %28 = load float, float* %arrayidx82.epil, align 4, !tbaa !7
  %29 = trunc i64 %indvars.iv.unr to i32
  %mul83.epil = mul nsw i32 %29, %npoints
  %add84.epil = add i32 %mul83.epil, %point_id.0161
  %idxprom85.epil = zext i32 %add84.epil to i64
  %arrayidx86.epil = getelementptr inbounds float, float* %feature, i64 %idxprom85.epil
  %30 = load float, float* %arrayidx86.epil, align 4, !tbaa !7
  %sub.epil = fsub float %30, %28
  %31 = tail call float @llvm.fmuladd.f32(float %sub.epil, float %sub.epil, float %ans.0151.unr)
  br label %for.cond.cleanup77

for.cond.cleanup77:                               ; preds = %for.body78.epil, %for.cond.cleanup77.loopexit.unr-lcssa, %for.cond74.preheader
  %ans.0.lcssa = phi float [ 0.000000e+00, %for.cond74.preheader ], [ %.lcssa.ph, %for.cond.cleanup77.loopexit.unr-lcssa ], [ %31, %for.body78.epil ]
  %cmp88 = fcmp olt float %ans.0.lcssa, %min_dist.0156
  %min_dist.1 = select i1 %cmp88, float %ans.0.lcssa, float %min_dist.0156
  %32 = trunc i64 %indvars.iv164 to i32
  %index.2 = select i1 %cmp88, i32 %32, i32 %index.1157
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond168 = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168, label %for.cond.cleanup, label %for.cond74.preheader

for.body78:                                       ; preds = %for.body78.lr.ph, %for.body78
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body78 ], [ 0, %for.body78.lr.ph ]
  %ans.0151 = phi float [ %42, %for.body78 ], [ 0.000000e+00, %for.body78.lr.ph ]
  %niter = phi i64 [ %niter.nsub.1, %for.body78 ], [ %unroll_iter, %for.body78.lr.ph ]
  %33 = add nsw i64 %indvars.iv, %26
  %arrayidx82 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %33
  %34 = load float, float* %arrayidx82, align 4, !tbaa !7
  %35 = trunc i64 %indvars.iv to i32
  %mul83 = mul nsw i32 %35, %npoints
  %add84 = add i32 %mul83, %point_id.0161
  %idxprom85 = zext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds float, float* %feature, i64 %idxprom85
  %36 = load float, float* %arrayidx86, align 4, !tbaa !7
  %sub = fsub float %36, %34
  %37 = tail call float @llvm.fmuladd.f32(float %sub, float %sub, float %ans.0151)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %38 = add nsw i64 %indvars.iv.next, %26
  %arrayidx82.1 = getelementptr inbounds [1024 x float], [1024 x float]* @kmeans_kernel_c.l_clusters, i64 0, i64 %38
  %39 = load float, float* %arrayidx82.1, align 4, !tbaa !7
  %40 = trunc i64 %indvars.iv.next to i32
  %mul83.1 = mul nsw i32 %40, %npoints
  %add84.1 = add i32 %mul83.1, %point_id.0161
  %idxprom85.1 = zext i32 %add84.1 to i64
  %arrayidx86.1 = getelementptr inbounds float, float* %feature, i64 %idxprom85.1
  %41 = load float, float* %arrayidx86.1, align 4, !tbaa !7
  %sub.1 = fsub float %41, %39
  %42 = tail call float @llvm.fmuladd.f32(float %sub.1, float %sub.1, float %37)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup77.loopexit.unr-lcssa, label %for.body78

for.end99:                                        ; preds = %for.cond.cleanup, %if.end
  ret void
}

; Function Attrs: convergent
declare dso_local i64 @get_global_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_global_size(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int*", !"int", !"int", !"int"}
!6 = !{!"restrict", !"restrict", !"restrict", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
