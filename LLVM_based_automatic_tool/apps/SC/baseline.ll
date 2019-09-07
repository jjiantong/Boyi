; ModuleID = 'apps/SC/baseline.cl'
source_filename = "apps/SC/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local void @reduce(i32* nocapture %l_count, i32 %local_cnt, i32* nocapture %l_data) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @get_local_id(i32 0) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_local_size(i32 0) #4
  %conv2 = trunc i64 %call1 to i32
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i32, i32* %l_data, i64 %idxprom
  store i32 %local_cnt, i32* %arrayidx, align 4, !tbaa !3
  tail call void @barrier(i32 1) #4
  %cmp31 = icmp sgt i32 %conv2, 1
  br i1 %cmp31, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then14, label %if.end16

for.body:                                         ; preds = %entry, %if.end
  %s.032.in = phi i32 [ %s.032, %if.end ], [ %conv2, %entry ]
  %s.032 = ashr i32 %s.032.in, 1
  %cmp4 = icmp sgt i32 %s.032, %conv
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %s.032, %conv
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %l_data, i64 %idxprom6
  %0 = load i32, i32* %arrayidx7, align 4, !tbaa !3
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !3
  %add10 = add nsw i32 %1, %0
  store i32 %add10, i32* %arrayidx, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  tail call void @barrier(i32 1) #4
  %cmp = icmp sgt i32 %s.032.in, 3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

if.then14:                                        ; preds = %for.cond.cleanup
  %2 = load i32, i32* %l_data, align 4, !tbaa !3
  store i32 %2, i32* %l_count, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.cond.cleanup
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i64 @get_local_size(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: convergent nounwind uwtable
define dso_local i32 @block_binary_prefix_sums(i32* nocapture %l_count, i32 %x, i32* nocapture %l_data) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @get_local_id(i32 0) #4
  %arrayidx = getelementptr inbounds i32, i32* %l_data, i64 %call
  store i32 %x, i32* %arrayidx, align 4, !tbaa !3
  %call1 = tail call i64 @get_local_size(i32 0) #4
  %conv = trunc i64 %call1 to i32
  %cmp111 = icmp sgt i32 %conv, 1
  br i1 %cmp111, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %offset.0.lcssa = phi i32 [ 1, %entry ], [ %shl, %if.end ]
  %cmp23 = icmp slt i32 %offset.0.lcssa, %conv
  %shl26 = zext i1 %cmp23 to i32
  %spec.select = shl i32 %offset.0.lcssa, %shl26
  %shr28 = ashr i32 %spec.select, 1
  %cmp30107 = icmp sgt i32 %spec.select, 1
  br i1 %cmp30107, label %for.body33, label %for.cond.cleanup32

for.body:                                         ; preds = %entry, %if.end
  %l.0114.in = phi i32 [ %l.0114, %if.end ], [ %conv, %entry ]
  %offset.0112 = phi i32 [ %shl, %if.end ], [ 1, %entry ]
  %l.0114 = ashr i32 %l.0114.in, 1
  tail call void @barrier(i32 1) #4
  %call3 = tail call i64 @get_local_id(i32 0) #4
  %conv4 = sext i32 %l.0114 to i64
  %cmp5 = icmp ult i64 %call3, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call8 = tail call i64 @get_local_id(i32 0) #4
  %call8.tr = trunc i64 %call8 to i32
  %0 = shl i32 %call8.tr, 1
  %1 = or i32 %0, 1
  %2 = mul i32 %1, %offset.0112
  %conv10 = add i32 %2, -1
  %call12 = tail call i64 @get_local_id(i32 0) #4
  %call12.tr = trunc i64 %call12 to i32
  %3 = shl i32 %call12.tr, 1
  %4 = add i32 %3, 2
  %5 = mul i32 %4, %offset.0112
  %conv17 = add i32 %5, -1
  %idxprom = sext i32 %conv10 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %l_data, i64 %idxprom
  %6 = load i32, i32* %arrayidx18, align 4, !tbaa !3
  %idxprom19 = sext i32 %conv17 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %l_data, i64 %idxprom19
  %7 = load i32, i32* %arrayidx20, align 4, !tbaa !3
  %add21 = add nsw i32 %7, %6
  store i32 %add21, i32* %arrayidx20, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %shl = shl i32 %offset.0112, 1
  %cmp = icmp sgt i32 %l.0114.in, 3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup32:                               ; preds = %for.inc57, %for.cond.cleanup
  tail call void @barrier(i32 1) #4
  %call60 = tail call i64 @get_local_id(i32 0) #4
  %arrayidx61 = getelementptr inbounds i32, i32* %l_data, i64 %call60
  %8 = load i32, i32* %arrayidx61, align 4, !tbaa !3
  %9 = load i32, i32* %l_count, align 4, !tbaa !3
  %add62 = sub i32 %8, %x
  %sub63 = add i32 %add62, %9
  tail call void @barrier(i32 1) #4
  %call64 = tail call i64 @get_local_id(i32 0) #4
  %call65 = tail call i64 @get_local_size(i32 0) #4
  %sub66 = add i64 %call65, -1
  %cmp67 = icmp eq i64 %call64, %sub66
  br i1 %cmp67, label %if.then69, label %if.end73

for.body33:                                       ; preds = %for.cond.cleanup, %for.inc57
  %offset.2109 = phi i32 [ %shr35, %for.inc57 ], [ %spec.select, %for.cond.cleanup ]
  %d.0108 = phi i32 [ %shl58, %for.inc57 ], [ 0, %for.cond.cleanup ]
  %add34 = or i32 %d.0108, 1
  %shr35 = ashr i32 %offset.2109, 1
  tail call void @barrier(i32 1) #4
  %call36 = tail call i64 @get_local_id(i32 0) #4
  %conv37 = sext i32 %add34 to i64
  %cmp38 = icmp ult i64 %call36, %conv37
  br i1 %cmp38, label %if.then40, label %for.inc57

if.then40:                                        ; preds = %for.body33
  %call43 = tail call i64 @get_local_id(i32 0) #4
  %10 = trunc i64 %call43 to i32
  %11 = add i32 %10, 1
  %12 = mul i32 %11, %shr35
  %conv47 = add i32 %12, -1
  %shr49 = ashr i32 %offset.2109, 2
  %add50 = add nsw i32 %conv47, %shr49
  %idxprom51 = sext i32 %conv47 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %l_data, i64 %idxprom51
  %13 = load i32, i32* %arrayidx52, align 4, !tbaa !3
  %idxprom53 = sext i32 %add50 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %l_data, i64 %idxprom53
  %14 = load i32, i32* %arrayidx54, align 4, !tbaa !3
  %add55 = add nsw i32 %14, %13
  store i32 %add55, i32* %arrayidx54, align 4, !tbaa !3
  br label %for.inc57

for.inc57:                                        ; preds = %for.body33, %if.then40
  %shl58 = shl i32 %add34, 1
  %cmp30 = icmp slt i32 %shl58, %shr28
  br i1 %cmp30, label %for.body33, label %for.cond.cleanup32

if.then69:                                        ; preds = %for.cond.cleanup32
  %call70 = tail call i64 @get_local_id(i32 0) #4
  %arrayidx71 = getelementptr inbounds i32, i32* %l_data, i64 %call70
  %15 = load i32, i32* %arrayidx71, align 4, !tbaa !3
  %16 = load i32, i32* %l_count, align 4, !tbaa !3
  %add72 = add nsw i32 %16, %15
  store i32 %add72, i32* %l_count, align 4, !tbaa !3
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %for.cond.cleanup32
  ret i32 %sub63
}

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @StreamCompaction_kernel(i32 %size, i32 %value, i32* nocapture %l_data, i32* nocapture %l_count, i32 %n_tasks, float %alpha, i32* nocapture %output, i32* nocapture readonly %input, i32* %flags) local_unnamed_addr #3 !kernel_arg_addr_space !7 !kernel_arg_access_qual !8 !kernel_arg_type !9 !kernel_arg_base_type !9 !kernel_arg_type_qual !10 {
entry:
  %reg = alloca [32 x i32], align 16
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
  %call.i = tail call i64 @get_group_id(i32 0) #4
  %0 = trunc i64 %call.i to i32
  %conv1.i = add i32 %retval.sroa.3.0.i, %0
  %cmp.i115135 = icmp slt i32 %conv1.i, %n_tasks
  br i1 %cmp.i115135, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %partitioner_create.exit
  %1 = bitcast [32 x i32]* %reg to i8*
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup57, %partitioner_create.exit
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup57
  %p.sroa.6.0136 = phi i32 [ %conv1.i, %for.body.lr.ph ], [ %conv1.i118, %for.cond.cleanup57 ]
  %call3 = tail call i64 @get_local_id(i32 0) #4
  %cmp = icmp eq i64 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %l_count, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  tail call void @barrier(i32 1) #4
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #5
  %sub = sub nsw i32 %p.sroa.6.0136, %retval.sroa.3.0.i
  %mul = shl nsw i32 %sub, 5
  %conv = sext i32 %mul to i64
  %call4 = tail call i64 @get_local_size(i32 0) #4
  %mul5 = mul i64 %call4, %conv
  %call6 = tail call i64 @get_local_id(i32 0) #4
  %add = add i64 %mul5, %call6
  br label %for.body12

for.cond.cleanup11:                               ; preds = %if.end27
  %call.i119 = tail call i64 @get_local_id(i32 0) #4
  %conv.i120 = trunc i64 %call.i119 to i32
  %call1.i = tail call i64 @get_local_size(i32 0) #4
  %conv2.i = trunc i64 %call1.i to i32
  %sext.i = shl i64 %call.i119, 32
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx.i = getelementptr inbounds i32, i32* %l_data, i64 %idxprom.i
  store i32 %local_cnt.1, i32* %arrayidx.i, align 4, !tbaa !3
  tail call void @barrier(i32 1) #4
  %cmp31.i = icmp sgt i32 %conv2.i, 1
  br i1 %cmp31.i, label %for.body.i, label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %if.end.i, %for.cond.cleanup11
  %cmp12.i = icmp eq i32 %conv.i120, 0
  br i1 %cmp12.i, label %if.then14.i, label %reduce.exit

for.body.i:                                       ; preds = %for.cond.cleanup11, %if.end.i
  %s.032.in.i = phi i32 [ %s.032.i, %if.end.i ], [ %conv2.i, %for.cond.cleanup11 ]
  %s.032.i = ashr i32 %s.032.in.i, 1
  %cmp4.i = icmp sgt i32 %s.032.i, %conv.i120
  br i1 %cmp4.i, label %if.then.i121, label %if.end.i

if.then.i121:                                     ; preds = %for.body.i
  %add.i = add nsw i32 %s.032.i, %conv.i120
  %idxprom6.i = sext i32 %add.i to i64
  %arrayidx7.i = getelementptr inbounds i32, i32* %l_data, i64 %idxprom6.i
  %2 = load i32, i32* %arrayidx7.i, align 4, !tbaa !3
  %3 = load i32, i32* %arrayidx.i, align 4, !tbaa !3
  %add10.i = add nsw i32 %3, %2
  store i32 %add10.i, i32* %arrayidx.i, align 4, !tbaa !3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i121, %for.body.i
  tail call void @barrier(i32 1) #4
  %cmp.i122 = icmp sgt i32 %s.032.in.i, 3
  br i1 %cmp.i122, label %for.body.i, label %for.cond.cleanup.i

if.then14.i:                                      ; preds = %for.cond.cleanup.i
  %4 = load i32, i32* %l_data, align 4, !tbaa !3
  store i32 %4, i32* %l_count, align 4, !tbaa !3
  br label %reduce.exit

reduce.exit:                                      ; preds = %for.cond.cleanup.i, %if.then14.i
  %call35 = tail call i64 @get_local_id(i32 0) #4
  %cmp36 = icmp eq i64 %call35, 0
  br i1 %cmp36, label %while.cond.preheader, label %if.end52

while.cond.preheader:                             ; preds = %reduce.exit
  %idxprom39 = sext i32 %p.sroa.6.0136 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %flags, i64 %idxprom39
  br label %while.cond

for.body12:                                       ; preds = %if.end27, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %if.end27 ]
  %pos.0.in130 = phi i64 [ %add, %if.end ], [ %add30, %if.end27 ]
  %local_cnt.0129 = phi i32 [ 0, %if.end ], [ %local_cnt.1, %if.end27 ]
  %pos.0 = trunc i64 %pos.0.in130 to i32
  %cmp13 = icmp slt i32 %pos.0, %size
  %sext113 = shl i64 %pos.0.in130, 32
  %idxprom = ashr exact i64 %sext113, 32
  br i1 %cmp13, label %if.then15, label %if.end27

if.then15:                                        ; preds = %for.body12
  %arrayidx16 = getelementptr inbounds i32, i32* %input, i64 %idxprom
  %5 = load i32, i32* %arrayidx16, align 4, !tbaa !3
  %cmp21 = icmp ne i32 %5, %value
  %inc = zext i1 %cmp21 to i32
  %spec.select = add nsw i32 %local_cnt.0129, %inc
  br label %if.end27

if.end27:                                         ; preds = %for.body12, %if.then15
  %value.sink = phi i32 [ %5, %if.then15 ], [ %value, %for.body12 ]
  %local_cnt.1 = phi i32 [ %spec.select, %if.then15 ], [ %local_cnt.0129, %for.body12 ]
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %indvars.iv
  store i32 %value.sink, i32* %6, align 4
  %call28 = tail call i64 @get_local_size(i32 0) #4
  %add30 = add i64 %call28, %idxprom
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for.cond.cleanup11, label %for.body12

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %call41 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %arrayidx40, i32 0) #4
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %add44 = add nsw i32 %p.sroa.6.0136, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %flags, i64 %idxprom45
  %7 = load i32, i32* %l_count, align 4, !tbaa !3
  %add48 = add nsw i32 %7, %call41
  %call49 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %arrayidx46, i32 %add48) #4
  %sub50 = add nsw i32 %call41, -1
  store i32 %sub50, i32* %l_count, align 4, !tbaa !3
  br label %if.end52

if.end52:                                         ; preds = %while.end, %reduce.exit
  tail call void @barrier(i32 3) #4
  br label %for.body58

for.cond.cleanup57:                               ; preds = %for.inc76
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #5
  %call.i117 = tail call i64 @get_num_groups(i32 0) #4
  %8 = trunc i64 %call.i117 to i32
  %conv1.i118 = add i32 %p.sroa.6.0136, %8
  %cmp.i115 = icmp slt i32 %conv1.i118, %n_tasks
  br i1 %cmp.i115, label %for.body, label %for.cond.cleanup

for.body58:                                       ; preds = %for.inc76, %if.end52
  %indvars.iv137 = phi i64 [ 0, %if.end52 ], [ %indvars.iv.next138, %for.inc76 ]
  %arrayidx61 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %indvars.iv137
  %9 = load i32, i32* %arrayidx61, align 4, !tbaa !3
  %cmp62 = icmp ne i32 %9, %value
  %cond = zext i1 %cmp62 to i32
  %call65 = tail call i32 @block_binary_prefix_sums(i32* %l_count, i32 %cond, i32* %l_data) #6
  %cmp68 = icmp eq i32 %9, %value
  br i1 %cmp68, label %for.inc76, label %if.then70

if.then70:                                        ; preds = %for.body58
  %idxprom73 = sext i32 %call65 to i64
  %arrayidx74 = getelementptr inbounds i32, i32* %output, i64 %idxprom73
  store i32 %9, i32* %arrayidx74, align 4, !tbaa !3
  br label %for.inc76

for.inc76:                                        ; preds = %for.body58, %if.then70
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond139 = icmp eq i64 %indvars.iv.next138, 32
  br i1 %exitcond139, label %for.cond.cleanup57, label %for.body58
}

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU8CLglobalVii(i32*, i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i64 @get_group_id(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i64 @get_num_groups(i32) local_unnamed_addr #2

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent nounwind }
attributes #5 = { nounwind }
attributes #6 = { convergent }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 1}
!8 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!9 = !{!"int", !"int", !"int*", !"int*", !"int", !"float", !"int*", !"int*", !"int*"}
!10 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
