; ModuleID = 'apps/RSCD/baseline_2.cl'
source_filename = "apps/RSCD/baseline_2.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowvector = type { i32, i32, i32, i32 }

; Function Attrs: norecurse nounwind uwtable writeonly
define dso_local i32 @gen_model_param(i32 %x1, i32 %y1, i32 %vx1, i32 %vy1, i32 %x2, i32 %y2, i32 %vx2, i32 %vy2, float* nocapture %model_param) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %vx2, 1
  %sub = sub nsw i32 %vx1, %mul
  %mul1 = mul nsw i32 %sub, %vx1
  %mul2 = mul nsw i32 %vx2, %vx2
  %mul3 = mul nsw i32 %vy1, %vy1
  %mul5 = shl nsw i32 %vy1, 1
  %sub6 = sub nsw i32 %mul5, %vy2
  %mul7 = mul nsw i32 %sub6, %vy2
  %add = add nuw i32 %mul2, %mul3
  %add4 = add i32 %add, %mul1
  %sub8 = sub i32 %add4, %mul7
  %conv = sitofp i32 %sub8 to float
  %cmp = icmp eq i32 %sub8, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mul12 = mul nsw i32 %x2, %vx1
  %mul16 = mul nsw i32 %vy2, %y1
  %mul18.neg = mul i32 %vy2, %y2
  %mul14.neg208 = add i32 %x1, %x2
  %reass.add198 = mul i32 %mul14.neg208, %vx2
  %reass.add199 = add i32 %reass.add198, %mul18.neg
  %add17 = add i32 %mul16, %mul12
  %sub19 = sub i32 %add17, %reass.add199
  %mul20 = mul nsw i32 %sub19, %vx1
  %mul23 = mul nsw i32 %x2, %vy1
  %mul27 = mul nsw i32 %vx2, %y1
  %mul29 = mul nsw i32 %vx2, %y2
  %reass.mul202 = mul i32 %mul14.neg208, %vy2
  %sub26 = sub i32 %mul23, %mul27
  %sub28 = add i32 %sub26, %mul29
  %add30 = sub i32 %sub28, %reass.mul202
  %mul31 = mul nsw i32 %add30, %vy1
  %mul33 = mul nsw i32 %vy2, %vy2
  %add35 = add nuw nsw i32 %mul33, %mul2
  %mul36 = mul nsw i32 %add35, %x1
  %add32 = add i32 %mul20, %mul36
  %add37 = add i32 %add32, %mul31
  %conv38 = sitofp i32 %add37 to float
  %div = fdiv float %conv38, %conv, !fpmath !3
  store float %div, float* %model_param, align 4, !tbaa !4
  %mul39 = mul nsw i32 %vy1, %x1
  %mul46.neg209 = add i32 %y2, %y1
  %reass.add203 = mul i32 %mul46.neg209, %vx1
  %sub43 = sub i32 %mul39, %mul23
  %add45 = add i32 %sub43, %mul27
  %sub47 = sub i32 %add45, %reass.add203
  %mul48 = mul nsw i32 %sub47, %vx2
  %.neg197 = mul i32 %vx1, %x1
  %mul53.neg = mul i32 %vy1, %y1
  %mul57.neg = mul i32 %y2, %vy1
  %reass.add205 = add i32 %mul53.neg, %.neg197
  %reass.add206 = add i32 %reass.add205, %mul57.neg
  %sub58 = sub i32 %add17, %reass.add206
  %mul59 = mul nsw i32 %sub58, %vy2
  %mul61 = mul nsw i32 %vx1, %vx1
  %add63 = add nuw nsw i32 %mul3, %mul61
  %mul64 = mul nsw i32 %add63, %y2
  %add60 = add i32 %mul59, %mul64
  %add65 = add i32 %add60, %mul48
  %conv66 = sitofp i32 %add65 to float
  %div67 = fdiv float %conv66, %conv, !fpmath !3
  %arrayidx68 = getelementptr inbounds float, float* %model_param, i64 1
  store float %div67, float* %arrayidx68, align 4, !tbaa !4
  %mul69 = shl nsw i32 %x2, 1
  %sub70 = sub nsw i32 %x1, %mul69
  %mul71 = mul nsw i32 %sub70, %x1
  %mul72 = mul nsw i32 %x2, %x2
  %mul74 = shl nsw i32 %y2, 1
  %sub75 = sub nsw i32 %y1, %mul74
  %mul76 = mul nsw i32 %sub75, %y1
  %mul78 = mul nsw i32 %y2, %y2
  %add73 = add nuw i32 %mul78, %mul72
  %add77 = add i32 %add73, %mul71
  %add79 = add i32 %add77, %mul76
  %conv80 = sitofp i32 %add79 to float
  %cmp81 = icmp eq i32 %add79, 0
  br i1 %cmp81, label %cleanup, label %if.end84

if.end84:                                         ; preds = %if.end
  %sub85 = sub nsw i32 %x1, %x2
  %sub86 = sub nsw i32 %vx1, %vx2
  %mul87 = mul nsw i32 %sub86, %sub85
  %sub88 = sub nsw i32 %y1, %y2
  %sub89 = sub nsw i32 %vy1, %vy2
  %mul90 = mul nsw i32 %sub89, %sub88
  %add91 = add nsw i32 %mul90, %mul87
  %conv92 = sitofp i32 %add91 to float
  %div93 = fdiv float %conv92, %conv80, !fpmath !3
  %arrayidx94 = getelementptr inbounds float, float* %model_param, i64 2
  store float %div93, float* %arrayidx94, align 4, !tbaa !4
  %mul97 = mul nsw i32 %sub89, %sub85
  %sub98 = sub nsw i32 %y2, %y1
  %mul100 = mul nsw i32 %sub86, %sub98
  %add101 = add nsw i32 %mul97, %mul100
  %conv102 = sitofp i32 %add101 to float
  %div103 = fdiv float %conv102, %conv80, !fpmath !3
  %arrayidx104 = getelementptr inbounds float, float* %model_param, i64 3
  store float %div103, float* %arrayidx104, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end84
  %retval.0 = phi i32 [ 1, %if.end84 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @RANSAC_model(%struct.flowvector* noalias nocapture readonly %flowvectors, i32* noalias nocapture readonly %random_numbers, float* nocapture %params) local_unnamed_addr #2 !kernel_arg_addr_space !8 !kernel_arg_access_qual !9 !kernel_arg_type !10 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
entry:
  %model_param = alloca [4 x float], align 16
  %call = tail call i64 @get_global_id(i32 0) #5
  %0 = bitcast [4 x float]* %model_param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 16, i1 false)
  %mul = shl i64 %call, 1
  %arrayidx = getelementptr inbounds i32, i32* %random_numbers, i64 %mul
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %idxprom = sext i32 %1 to i64
  %fv.sroa.0.0..sroa_idx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom, i32 0
  %fv.sroa.0.0.copyload = load i32, i32* %fv.sroa.0.0..sroa_idx, align 4
  %fv.sroa.5.0..sroa_idx60 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom, i32 1
  %fv.sroa.5.0.copyload = load i32, i32* %fv.sroa.5.0..sroa_idx60, align 4
  %fv.sroa.7.0..sroa_idx63 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom, i32 2
  %fv.sroa.7.0.copyload = load i32, i32* %fv.sroa.7.0..sroa_idx63, align 4
  %fv.sroa.8.0..sroa_idx65 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom, i32 3
  %fv.sroa.8.0.copyload = load i32, i32* %fv.sroa.8.0..sroa_idx65, align 4
  %add4 = or i64 %mul, 1
  %arrayidx5 = getelementptr inbounds i32, i32* %random_numbers, i64 %add4
  %2 = load i32, i32* %arrayidx5, align 4, !tbaa !12
  %idxprom7 = sext i32 %2 to i64
  %fv.sroa.9.16..sroa_idx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom7, i32 0
  %fv.sroa.9.16.copyload = load i32, i32* %fv.sroa.9.16..sroa_idx, align 4
  %fv.sroa.12.16..sroa_idx69 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom7, i32 1
  %fv.sroa.12.16.copyload = load i32, i32* %fv.sroa.12.16..sroa_idx69, align 4
  %fv.sroa.14.16..sroa_idx72 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom7, i32 2
  %fv.sroa.14.16.copyload = load i32, i32* %fv.sroa.14.16..sroa_idx72, align 4
  %fv.sroa.15.16..sroa_idx74 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %idxprom7, i32 3
  %fv.sroa.15.16.copyload = load i32, i32* %fv.sroa.15.16..sroa_idx74, align 4
  %sub = sub nsw i32 %fv.sroa.7.0.copyload, %fv.sroa.0.0.copyload
  %sub13 = sub nsw i32 %fv.sroa.8.0.copyload, %fv.sroa.5.0.copyload
  %sub18 = sub nsw i32 %fv.sroa.14.16.copyload, %fv.sroa.9.16.copyload
  %sub23 = sub nsw i32 %fv.sroa.15.16.copyload, %fv.sroa.12.16.copyload
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %model_param, i64 0, i64 0
  %call32 = call i32 @gen_model_param(i32 %fv.sroa.0.0.copyload, i32 %fv.sroa.5.0.copyload, i32 %sub, i32 %sub13, i32 %fv.sroa.9.16.copyload, i32 %fv.sroa.12.16.copyload, i32 %sub18, i32 %sub23, float* nonnull %arraydecay)
  %cmp = icmp eq i32 %call32, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.phi.trans.insert = bitcast [4 x float]* %model_param to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 16, !tbaa !4
  br label %if.end

if.then:                                          ; preds = %entry
  store float -2.011000e+03, float* %arraydecay, align 16, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ -990158848, %if.then ]
  %mul35 = shl i64 %call, 2
  %arrayidx37 = getelementptr inbounds float, float* %params, i64 %mul35
  %4 = bitcast float* %arrayidx37 to i32*
  store i32 %3, i32* %4, align 4, !tbaa !4
  %arrayidx38 = getelementptr inbounds [4 x float], [4 x float]* %model_param, i64 0, i64 1
  %5 = bitcast float* %arrayidx38 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !4
  %add40 = or i64 %mul35, 1
  %arrayidx41 = getelementptr inbounds float, float* %params, i64 %add40
  %7 = bitcast float* %arrayidx41 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !4
  %arrayidx42 = getelementptr inbounds [4 x float], [4 x float]* %model_param, i64 0, i64 2
  %8 = bitcast float* %arrayidx42 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !4
  %add44 = or i64 %mul35, 2
  %arrayidx45 = getelementptr inbounds float, float* %params, i64 %add44
  %10 = bitcast float* %arrayidx45 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !4
  %arrayidx46 = getelementptr inbounds [4 x float], [4 x float]* %model_param, i64 0, i64 3
  %11 = bitcast float* %arrayidx46 to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !4
  %add48 = or i64 %mul35, 3
  %arrayidx49 = getelementptr inbounds float, float* %params, i64 %add48
  %13 = bitcast float* %arrayidx49 to i32*
  store i32 %12, i32* %13, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret void
}

; Function Attrs: convergent
declare dso_local i64 @get_global_id(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @RANSAC_threshold(i32 %flowvector_count, i32 %error_threshold, float %convergence_threshold, %struct.flowvector* noalias nocapture readonly %flowvectors, i32* noalias nocapture %model_candidate, i32* noalias nocapture %outliers_candidate, i32* %g_out_id, float* nocapture readonly %params) local_unnamed_addr #2 !kernel_arg_addr_space !14 !kernel_arg_access_qual !15 !kernel_arg_type !16 !kernel_arg_base_type !16 !kernel_arg_type_qual !17 {
entry:
  %call = tail call i64 @get_global_id(i32 0) #5
  %mul = shl i64 %call, 2
  %arrayidx = getelementptr inbounds float, float* %params, i64 %mul
  %0 = load float, float* %arrayidx, align 4, !tbaa !4
  %add3 = or i64 %mul, 1
  %arrayidx4 = getelementptr inbounds float, float* %params, i64 %add3
  %1 = load float, float* %arrayidx4, align 4, !tbaa !4
  %add7 = or i64 %mul, 2
  %arrayidx8 = getelementptr inbounds float, float* %params, i64 %add7
  %2 = load float, float* %arrayidx8, align 4, !tbaa !4
  %add11 = or i64 %mul, 3
  %arrayidx12 = getelementptr inbounds float, float* %params, i64 %add11
  %3 = load float, float* %arrayidx12, align 4, !tbaa !4
  %cmp = fcmp une float %0, -2.011000e+03
  br i1 %cmp, label %for.cond.preheader, label %if.end74

for.cond.preheader:                               ; preds = %entry
  %cmp15115 = icmp sgt i32 %flowvector_count, 0
  br i1 %cmp15115, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv52 = sitofp i32 %error_threshold to float
  %wide.trip.count = zext i32 %flowvector_count to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %for.cond.preheader
  %outlier_local_count.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %outlier_local_count.1, %if.end ]
  %conv61 = sitofp i32 %outlier_local_count.0.lcssa to float
  %conv62 = sitofp i32 %flowvector_count to float
  %mul63 = fmul float %conv62, %convergence_threshold
  %cmp64 = fcmp ogt float %mul63, %conv61
  br i1 %cmp64, label %if.then66, label %if.end74

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %outlier_local_count.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %outlier_local_count.1, %if.end ]
  %fvreg.sroa.0.0..sroa_idx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %indvars.iv, i32 0
  %fvreg.sroa.0.0.copyload = load i32, i32* %fvreg.sroa.0.0..sroa_idx, align 4
  %fvreg.sroa.6.0..sroa_idx80 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %indvars.iv, i32 1
  %fvreg.sroa.6.0.copyload = load i32, i32* %fvreg.sroa.6.0..sroa_idx80, align 4
  %fvreg.sroa.9.0..sroa_idx84 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %indvars.iv, i32 2
  %fvreg.sroa.9.0.copyload = load i32, i32* %fvreg.sroa.9.0..sroa_idx84, align 4
  %conv = sitofp i32 %fvreg.sroa.0.0.copyload to float
  %sub = fsub float %conv, %0
  %mul20 = fmul float %2, %sub
  %conv21 = fptosi float %mul20 to i32
  %conv22 = sitofp i32 %fvreg.sroa.6.0.copyload to float
  %sub24 = fsub float %conv22, %1
  %mul26 = fmul float %3, %sub24
  %conv27 = fptosi float %mul26 to i32
  %sub28 = sub i32 %fvreg.sroa.0.0.copyload, %fvreg.sroa.9.0.copyload
  %add29 = add i32 %sub28, %conv21
  %sub30 = sub i32 %add29, %conv27
  %conv31 = sitofp i32 %sub30 to float
  %call51 = tail call float @llvm.fabs.f32(float %conv31) #7
  %cmp53 = fcmp ult float %call51, %conv52
  br i1 %cmp53, label %lor.lhs.false, label %if.then59

lor.lhs.false:                                    ; preds = %for.body
  %mul38 = fmul float %2, %sub24
  %conv39 = fptosi float %mul38 to i32
  %mul45 = fmul float %3, %sub
  %conv46 = fptosi float %mul45 to i32
  %fvreg.sroa.10.0..sroa_idx86 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %flowvectors, i64 %indvars.iv, i32 3
  %fvreg.sroa.10.0.copyload = load i32, i32* %fvreg.sroa.10.0..sroa_idx86, align 4
  %add47 = add i32 %fvreg.sroa.6.0.copyload, %conv46
  %add48 = add i32 %add47, %conv39
  %sub49 = sub i32 %add48, %fvreg.sroa.10.0.copyload
  %conv50 = sitofp i32 %sub49 to float
  %call55 = tail call float @llvm.fabs.f32(float %conv50) #7
  %cmp57 = fcmp ult float %call55, %conv52
  br i1 %cmp57, label %if.end, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false, %for.body
  %inc = add nsw i32 %outlier_local_count.0117, 1
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then59
  %outlier_local_count.1 = phi i32 [ %inc, %if.then59 ], [ %outlier_local_count.0117, %lor.lhs.false ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body

if.then66:                                        ; preds = %for.cond.cleanup
  %call67 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %g_out_id, i32 1) #5
  %idxprom68 = sext i32 %call67 to i64
  %arrayidx69 = getelementptr inbounds i32, i32* %outliers_candidate, i64 %idxprom68
  store i32 %outlier_local_count.0.lcssa, i32* %arrayidx69, align 4, !tbaa !12
  %conv70 = trunc i64 %call to i32
  %arrayidx72 = getelementptr inbounds i32, i32* %model_candidate, i64 %idxprom68
  store i32 %conv70, i32* %arrayidx72, align 4, !tbaa !12
  br label %if.end74

if.end74:                                         ; preds = %for.cond.cleanup, %if.then66, %entry
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare dso_local float @llvm.fabs.f32(float) #4

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU8CLglobalVii(i32*, i32) local_unnamed_addr #3

attributes #0 = { norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind }
attributes #7 = { convergent }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{float 2.500000e+00}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i32 1, i32 1, i32 1}
!9 = !{!"none", !"none", !"none"}
!10 = !{!"flowvector*", !"int*", !"float*"}
!11 = !{!"restrict", !"restrict", !""}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1}
!15 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!16 = !{!"int", !"int", !"float", !"flowvector*", !"int*", !"int*", !"int*", !"float*"}
!17 = !{!"", !"", !"", !"restrict", !"restrict", !"restrict", !"", !""}
