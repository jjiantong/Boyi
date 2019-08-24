; ModuleID = 'apps/PAD/baseline.cl'
source_filename = "apps/PAD/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @Padding_kernel(i32 %n, i32 %m, i32 %pad, i32 %n_tasks, float %alpha, double* nocapture %matrix_out, double* nocapture readonly %matrix, i32* %flags) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %reg = alloca [32 x double], align 16
  %cmp.i = fcmp ult float %alpha, 0.000000e+00
  %cmp4.i = fcmp ugt float %alpha, 1.000000e+00
  %or.cond.i = or i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %partitioner_create.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %conv7.i = sitofp i32 %n_tasks to float
  %mul.i = fmul float %conv7.i, %alpha
  %conv8.i = fptosi float %mul.i to i32
  br label %partitioner_create.exit

partitioner_create.exit:                          ; preds = %entry, %if.then.i
  %retval.sroa.3.0.i = phi i32 [ %conv8.i, %if.then.i ], [ 0, %entry ]
  %add = add nsw i32 %pad, %n
  %mul = mul nsw i32 %add, %m
  %call1 = tail call i64 @get_local_size(i32 0) #3
  %call4 = tail call i64 @get_local_size(i32 0) #3
  %call6 = tail call i64 @get_local_size(i32 0) #3
  %call.i154 = tail call i64 @get_group_id(i32 0) #3
  %0 = trunc i64 %call.i154 to i32
  %conv1.i155 = add i32 %retval.sroa.3.0.i, %0
  %cmp.i158175 = icmp slt i32 %conv1.i155, %n_tasks
  br i1 %cmp.i158175, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %partitioner_create.exit
  %conv = sext i32 %mul to i64
  %add3 = add nsw i64 %conv, -1
  %mul2 = shl i64 %call1, 5
  %sub = add i64 %add3, %mul2
  %mul5 = shl i64 %call4, 5
  %div = udiv i64 %sub, %mul5
  %1 = bitcast [32 x double]* %reg to i8*
  %mul8 = shl i64 %div, 37
  %sub12 = mul i64 %mul8, %call6
  %sext = add i64 %sub12, -4294967296
  %conv13 = ashr exact i64 %sext, 32
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup80, %partitioner_create.exit
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup80
  %p.sroa.5.0176 = phi i32 [ %conv1.i155, %for.body.lr.ph ], [ %conv1.i, %for.cond.cleanup80 ]
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #4
  %mul14 = shl nsw i32 %p.sroa.5.0176, 5
  %conv15 = sext i32 %mul14 to i64
  %call16 = tail call i64 @get_local_size(i32 0) #3
  %mul17 = mul i64 %call16, %conv15
  %call18 = tail call i64 @get_local_id(i32 0) #3
  %add19.neg = sub i64 %conv13, %call18
  %sub20 = sub i64 %add19.neg, %mul17
  %conv21 = trunc i64 %sub20 to i32
  %div23 = sdiv i32 %conv21, %add
  %rem = srem i32 %conv21, %add
  %mul25 = mul nsw i32 %div23, %n
  %add26 = add nsw i32 %mul25, %rem
  br label %for.body30

for.cond.cleanup29:                               ; preds = %if.end
  tail call void @barrier(i32 1) #3
  %call52 = tail call i64 @get_local_id(i32 0) #3
  %cmp53 = icmp eq i64 %call52, 0
  br i1 %cmp53, label %while.cond.preheader, label %if.end65

while.cond.preheader:                             ; preds = %for.cond.cleanup29
  %idxprom56 = sext i32 %p.sroa.5.0176 to i64
  %arrayidx57 = getelementptr inbounds i32, i32* %flags, i64 %idxprom56
  br label %while.cond

for.body30:                                       ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %if.end ]
  %pos2.0166 = phi i32 [ %add26, %for.body ], [ %add51, %if.end ]
  %my_x.0165 = phi i32 [ %rem, %for.body ], [ %rem49, %if.end ]
  %pos.0164 = phi i64 [ %sub20, %for.body ], [ %sub44, %if.end ]
  %cmp31 = icmp sgt i32 %pos2.0166, -1
  %cmp33 = icmp slt i32 %my_x.0165, %n
  %or.cond = and i1 %cmp33, %cmp31
  %cmp36 = icmp slt i32 %pos2.0166, %mul
  %or.cond152 = and i1 %cmp36, %or.cond
  br i1 %or.cond152, label %if.then, label %if.else

if.then:                                          ; preds = %for.body30
  %idxprom = sext i32 %pos2.0166 to i64
  %arrayidx = getelementptr inbounds double, double* %matrix, i64 %idxprom
  %2 = bitcast double* %arrayidx to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [32 x double], [32 x double]* %reg, i64 0, i64 %indvars.iv
  %4 = bitcast double* %arrayidx39 to i64*
  store i64 %3, i64* %4, align 8, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %for.body30
  %arrayidx41 = getelementptr inbounds [32 x double], [32 x double]* %reg, i64 0, i64 %indvars.iv
  store double 0.000000e+00, double* %arrayidx41, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call42 = tail call i64 @get_local_size(i32 0) #3
  %sext151 = shl i64 %pos.0164, 32
  %conv43 = ashr exact i64 %sext151, 32
  %sub44 = sub i64 %conv43, %call42
  %conv45 = trunc i64 %sub44 to i32
  %div47 = sdiv i32 %conv45, %add
  %rem49 = srem i32 %conv45, %add
  %mul50 = mul nsw i32 %div47, %n
  %add51 = add nsw i32 %mul50, %rem49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for.cond.cleanup29, label %for.body30

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %call58 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %arrayidx57, i32 0) #3
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %add61 = add nsw i32 %p.sroa.5.0176, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %flags, i64 %idxprom62
  %call64 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %arrayidx63, i32 1) #3
  br label %if.end65

if.end65:                                         ; preds = %while.end, %for.cond.cleanup29
  tail call void @barrier(i32 3) #3
  %call70 = tail call i64 @get_local_size(i32 0) #3
  %mul71 = mul i64 %call70, %conv15
  %call72 = tail call i64 @get_local_id(i32 0) #3
  %add73.neg = sub i64 %conv13, %call72
  %sub74 = sub i64 %add73.neg, %mul71
  br label %for.body81

for.cond.cleanup80:                               ; preds = %if.end92
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #4
  %call.i = tail call i64 @get_num_groups(i32 0) #3
  %5 = trunc i64 %call.i to i32
  %conv1.i = add i32 %p.sroa.5.0176, %5
  %cmp.i158 = icmp slt i32 %conv1.i, %n_tasks
  br i1 %cmp.i158, label %for.body, label %for.cond.cleanup

for.body81:                                       ; preds = %if.end92, %if.end65
  %indvars.iv177 = phi i64 [ 0, %if.end65 ], [ %indvars.iv.next178, %if.end92 ]
  %pos.1174.in = phi i64 [ %sub74, %if.end65 ], [ %sub95, %if.end92 ]
  %pos.1174 = trunc i64 %pos.1174.in to i32
  %cmp82 = icmp sgt i32 %pos.1174, -1
  %cmp85 = icmp sgt i32 %mul, %pos.1174
  %or.cond153 = and i1 %cmp82, %cmp85
  br i1 %or.cond153, label %if.then87, label %for.body81.if.end92_crit_edge

for.body81.if.end92_crit_edge:                    ; preds = %for.body81
  %.pre = shl i64 %pos.1174.in, 32
  %.pre180 = ashr exact i64 %.pre, 32
  br label %if.end92

if.then87:                                        ; preds = %for.body81
  %arrayidx89 = getelementptr inbounds [32 x double], [32 x double]* %reg, i64 0, i64 %indvars.iv177
  %6 = bitcast double* %arrayidx89 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !7
  %sext150 = shl i64 %pos.1174.in, 32
  %idxprom90 = ashr exact i64 %sext150, 32
  %arrayidx91 = getelementptr inbounds double, double* %matrix_out, i64 %idxprom90
  %8 = bitcast double* %arrayidx91 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !7
  br label %if.end92

if.end92:                                         ; preds = %for.body81.if.end92_crit_edge, %if.then87
  %conv94.pre-phi = phi i64 [ %.pre180, %for.body81.if.end92_crit_edge ], [ %idxprom90, %if.then87 ]
  %call93 = tail call i64 @get_local_size(i32 0) #3
  %sub95 = sub i64 %conv94.pre-phi, %call93
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %exitcond179 = icmp eq i64 %indvars.iv.next178, 32
  br i1 %exitcond179, label %for.cond.cleanup80, label %for.body81
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: convergent
declare dso_local i64 @get_local_size(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU8CLglobalVii(i32*, i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i64 @get_group_id(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i64 @get_num_groups(i32) local_unnamed_addr #2

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"int", !"int", !"int", !"float", !"double*", !"double*", !"int*"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
