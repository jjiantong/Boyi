; ModuleID = 'apps/PS/baseline.cl'
source_filename = "apps/PS/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ScanLargeArrays_kernel.block = internal unnamed_addr global [512 x i32] undef, align 16
@prefixSum_kernel.block = internal unnamed_addr global [512 x i32] undef, align 16
@blockAddition_kernel.value.0 = internal unnamed_addr global i32 undef, align 4

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @ScanLargeArrays_kernel(i32* noalias nocapture %output, i32* noalias nocapture readonly %input, i32 %block_size, i32* noalias nocapture %sumBuffer) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @get_local_id(i32 0) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_global_id(i32 0) #2
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @get_group_id(i32 0) #2
  %mul = shl nsw i32 %conv2, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i32, i32* %input, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %mul5 = shl nsw i32 %conv, 1
  %idxprom6 = sext i32 %mul5 to i64
  %arrayidx7 = getelementptr inbounds [512 x i32], [512 x i32]* @ScanLargeArrays_kernel.block, i64 0, i64 %idxprom6
  store i32 %0, i32* %arrayidx7, align 8, !tbaa !7
  %add = or i32 %mul, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %input, i64 %idxprom9
  %1 = load i32, i32* %arrayidx10, align 4, !tbaa !7
  %add12 = or i32 %mul5, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [512 x i32], [512 x i32]* @ScanLargeArrays_kernel.block, i64 0, i64 %idxprom13
  store i32 %1, i32* %arrayidx14, align 4, !tbaa !7
  %add22 = add nsw i32 %mul5, 2
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %d.0.in = phi i32 [ %block_size, %entry ], [ %d.0, %if.end ]
  %offset.0 = phi i32 [ 1, %entry ], [ %mul30, %if.end ]
  %d.0 = lshr i32 %d.0.in, 1
  %cmp = icmp eq i32 %d.0, 0
  tail call void @barrier(i32 1) #2
  br i1 %cmp, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  %cmp32 = icmp eq i32 %conv, 0
  br i1 %cmp32, label %if.then34, label %if.end43

for.body:                                         ; preds = %for.cond
  %cmp16 = icmp sgt i32 %d.0, %conv
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %mul20 = mul nsw i32 %offset.0, %add12
  %sub = add nsw i32 %mul20, -1
  %mul23 = mul nsw i32 %offset.0, %add22
  %sub24 = add nsw i32 %mul23, -1
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [512 x i32], [512 x i32]* @ScanLargeArrays_kernel.block, i64 0, i64 %idxprom25
  %2 = load i32, i32* %arrayidx26, align 4, !tbaa !7
  %idxprom27 = sext i32 %sub24 to i64
  %arrayidx28 = getelementptr inbounds [512 x i32], [512 x i32]* @ScanLargeArrays_kernel.block, i64 0, i64 %idxprom27
  %3 = load i32, i32* %arrayidx28, align 4, !tbaa !7
  %add29 = add nsw i32 %3, %2
  store i32 %add29, i32* %arrayidx28, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %mul30 = shl nsw i32 %offset.0, 1
  br label %for.cond

if.then34:                                        ; preds = %for.cond.cleanup
  %sub35 = add i32 %block_size, -1
  %idxprom36 = zext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [512 x i32], [512 x i32]* @ScanLargeArrays_kernel.block, i64 0, i64 %idxprom36
  %4 = load i32, i32* %arrayidx37, align 4, !tbaa !7
  %sext = shl i64 %call3, 32
  %idxprom38 = ashr exact i64 %sext, 32
  %arrayidx39 = getelementptr inbounds i32, i32* %sumBuffer, i64 %idxprom38
  store i32 %4, i32* %arrayidx39, align 4, !tbaa !7
  store i32 0, i32* %arrayidx37, align 4, !tbaa !7
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %for.cond.cleanup
  %cmp46132 = icmp ugt i32 %block_size, 1
  br i1 %cmp46132, label %for.body49, label %for.cond.cleanup48

for.cond.cleanup48:                               ; preds = %for.inc74, %if.end43
  tail call void @barrier(i32 1) #2
  %5 = load i32, i32* %arrayidx7, align 8, !tbaa !7
  %arrayidx82 = getelementptr inbounds i32, i32* %output, i64 %idxprom
  store i32 %5, i32* %arrayidx82, align 4, !tbaa !7
  %6 = load i32, i32* %arrayidx14, align 4, !tbaa !7
  %arrayidx90 = getelementptr inbounds i32, i32* %output, i64 %idxprom9
  store i32 %6, i32* %arrayidx90, align 4, !tbaa !7
  ret void

for.body49:                                       ; preds = %if.end43, %for.inc74
  %offset.1134 = phi i32 [ %shr50, %for.inc74 ], [ %offset.0, %if.end43 ]
  %d44.0133 = phi i32 [ %mul75, %for.inc74 ], [ 1, %if.end43 ]
  %shr50 = ashr i32 %offset.1134, 1
  tail call void @barrier(i32 1) #2
  %cmp51 = icmp sgt i32 %d44.0133, %conv
  br i1 %cmp51, label %if.then53, label %for.inc74

if.then53:                                        ; preds = %for.body49
  %mul57 = mul nsw i32 %shr50, %add12
  %sub58 = add nsw i32 %mul57, -1
  %mul62 = mul nsw i32 %shr50, %add22
  %sub63 = add nsw i32 %mul62, -1
  %idxprom64 = sext i32 %sub58 to i64
  %arrayidx65 = getelementptr inbounds [512 x i32], [512 x i32]* @ScanLargeArrays_kernel.block, i64 0, i64 %idxprom64
  %7 = load i32, i32* %arrayidx65, align 4, !tbaa !7
  %idxprom66 = sext i32 %sub63 to i64
  %arrayidx67 = getelementptr inbounds [512 x i32], [512 x i32]* @ScanLargeArrays_kernel.block, i64 0, i64 %idxprom66
  %8 = load i32, i32* %arrayidx67, align 4, !tbaa !7
  store i32 %8, i32* %arrayidx65, align 4, !tbaa !7
  %9 = load i32, i32* %arrayidx67, align 4, !tbaa !7
  %add72 = add nsw i32 %9, %7
  store i32 %add72, i32* %arrayidx67, align 4, !tbaa !7
  br label %for.inc74

for.inc74:                                        ; preds = %for.body49, %if.then53
  %mul75 = shl nsw i32 %d44.0133, 1
  %cmp46 = icmp ult i32 %mul75, %block_size
  br i1 %cmp46, label %for.body49, label %for.cond.cleanup48
}

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_global_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_group_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @prefixSum_kernel(i32* noalias nocapture %output, i32* noalias nocapture readonly %input, i32 %length) local_unnamed_addr #0 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !14 {
entry:
  %call = tail call i64 @get_local_id(i32 0) #2
  %conv = trunc i64 %call to i32
  %mul = shl nsw i32 %conv, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i32, i32* %input, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %arrayidx3 = getelementptr inbounds [512 x i32], [512 x i32]* @prefixSum_kernel.block, i64 0, i64 %idxprom
  store i32 %0, i32* %arrayidx3, align 8, !tbaa !7
  %add = or i32 %mul, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %input, i64 %idxprom5
  %1 = load i32, i32* %arrayidx6, align 4, !tbaa !7
  %arrayidx10 = getelementptr inbounds [512 x i32], [512 x i32]* @prefixSum_kernel.block, i64 0, i64 %idxprom5
  store i32 %1, i32* %arrayidx10, align 4, !tbaa !7
  %d.0124 = lshr i32 %length, 1
  %cmp125 = icmp eq i32 %d.0124, 0
  br i1 %cmp125, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add18 = add nsw i32 %mul, 2
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %offset.0.lcssa = phi i32 [ 1, %entry ], [ %mul26, %if.end ]
  %cmp28 = icmp eq i32 %conv, 0
  br i1 %cmp28, label %if.then30, label %if.end34

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %d.0128 = phi i32 [ %d.0124, %for.body.lr.ph ], [ %d.0, %if.end ]
  %offset.0126 = phi i32 [ 1, %for.body.lr.ph ], [ %mul26, %if.end ]
  tail call void @barrier(i32 1) #2
  %cmp12 = icmp sgt i32 %d.0128, %conv
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %mul16 = mul nsw i32 %offset.0126, %add
  %sub = add nsw i32 %mul16, -1
  %mul19 = mul nsw i32 %offset.0126, %add18
  %sub20 = add nsw i32 %mul19, -1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [512 x i32], [512 x i32]* @prefixSum_kernel.block, i64 0, i64 %idxprom21
  %2 = load i32, i32* %arrayidx22, align 4, !tbaa !7
  %idxprom23 = sext i32 %sub20 to i64
  %arrayidx24 = getelementptr inbounds [512 x i32], [512 x i32]* @prefixSum_kernel.block, i64 0, i64 %idxprom23
  %3 = load i32, i32* %arrayidx24, align 4, !tbaa !7
  %add25 = add nsw i32 %3, %2
  store i32 %add25, i32* %arrayidx24, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %mul26 = shl nsw i32 %offset.0126, 1
  %d.0 = lshr i32 %d.0128, 1
  %cmp = icmp eq i32 %d.0, 0
  br i1 %cmp, label %for.cond.cleanup, label %for.body

if.then30:                                        ; preds = %for.cond.cleanup
  %sub31 = add i32 %length, -1
  %idxprom32 = zext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [512 x i32], [512 x i32]* @prefixSum_kernel.block, i64 0, i64 %idxprom32
  store i32 0, i32* %arrayidx33, align 4, !tbaa !7
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.cond.cleanup
  %cmp37121 = icmp ugt i32 %length, 1
  br i1 %cmp37121, label %for.body40.lr.ph, label %for.cond.cleanup39

for.body40.lr.ph:                                 ; preds = %if.end34
  %add52 = add nsw i32 %mul, 2
  br label %for.body40

for.cond.cleanup39:                               ; preds = %for.inc65, %if.end34
  tail call void @barrier(i32 1) #2
  %4 = load i32, i32* %arrayidx3, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds i32, i32* %output, i64 %idxprom
  store i32 %4, i32* %arrayidx73, align 4, !tbaa !7
  %5 = load i32, i32* %arrayidx10, align 4, !tbaa !7
  %arrayidx81 = getelementptr inbounds i32, i32* %output, i64 %idxprom5
  store i32 %5, i32* %arrayidx81, align 4, !tbaa !7
  ret void

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc65
  %offset.1123 = phi i32 [ %offset.0.lcssa, %for.body40.lr.ph ], [ %shr41, %for.inc65 ]
  %d35.0122 = phi i32 [ 1, %for.body40.lr.ph ], [ %mul66, %for.inc65 ]
  %shr41 = ashr i32 %offset.1123, 1
  tail call void @barrier(i32 1) #2
  %cmp42 = icmp sgt i32 %d35.0122, %conv
  br i1 %cmp42, label %if.then44, label %for.inc65

if.then44:                                        ; preds = %for.body40
  %mul48 = mul nsw i32 %shr41, %add
  %sub49 = add nsw i32 %mul48, -1
  %mul53 = mul nsw i32 %shr41, %add52
  %sub54 = add nsw i32 %mul53, -1
  %idxprom55 = sext i32 %sub49 to i64
  %arrayidx56 = getelementptr inbounds [512 x i32], [512 x i32]* @prefixSum_kernel.block, i64 0, i64 %idxprom55
  %6 = load i32, i32* %arrayidx56, align 4, !tbaa !7
  %idxprom57 = sext i32 %sub54 to i64
  %arrayidx58 = getelementptr inbounds [512 x i32], [512 x i32]* @prefixSum_kernel.block, i64 0, i64 %idxprom57
  %7 = load i32, i32* %arrayidx58, align 4, !tbaa !7
  store i32 %7, i32* %arrayidx56, align 4, !tbaa !7
  %8 = load i32, i32* %arrayidx58, align 4, !tbaa !7
  %add63 = add nsw i32 %8, %6
  store i32 %add63, i32* %arrayidx58, align 4, !tbaa !7
  br label %for.inc65

for.inc65:                                        ; preds = %for.body40, %if.then44
  %mul66 = shl nsw i32 %d35.0122, 1
  %cmp37 = icmp ult i32 %mul66, %length
  br i1 %cmp37, label %for.body40, label %for.cond.cleanup39
}

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @blockAddition_kernel(i32* noalias nocapture readonly %input, i32* noalias nocapture %output) local_unnamed_addr #0 !kernel_arg_addr_space !15 !kernel_arg_access_qual !16 !kernel_arg_type !17 !kernel_arg_base_type !17 !kernel_arg_type_qual !18 {
entry:
  %call = tail call i64 @get_global_id(i32 0) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_group_id(i32 0) #2
  %call3 = tail call i64 @get_local_id(i32 0) #2
  %conv4 = trunc i64 %call3 to i32
  %cmp = icmp eq i32 %conv4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sext = shl i64 %call1, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i32, i32* %input, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  store i32 %0, i32* @blockAddition_kernel.value.0, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @barrier(i32 1) #2
  %1 = load i32, i32* @blockAddition_kernel.value.0, align 4, !tbaa !7
  %mul = shl nsw i32 %conv, 1
  %idxprom6 = sext i32 %mul to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %output, i64 %idxprom6
  %2 = load i32, i32* %arrayidx7, align 4, !tbaa !7
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %arrayidx7, align 4, !tbaa !7
  %add9 = or i32 %mul, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %output, i64 %idxprom10
  %3 = load i32, i32* %arrayidx11, align 4, !tbaa !7
  %add12 = add nsw i32 %3, %1
  store i32 %add12, i32* %arrayidx11, align 4, !tbaa !7
  ret void
}

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 1, i32 1, i32 0, i32 1}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"uint", !"int*"}
!6 = !{!"restrict", !"restrict", !"", !"restrict"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i32 1, i32 1, i32 0}
!12 = !{!"none", !"none", !"none"}
!13 = !{!"int*", !"int*", !"uint"}
!14 = !{!"restrict", !"restrict", !""}
!15 = !{i32 1, i32 1}
!16 = !{!"none", !"none"}
!17 = !{!"int*", !"int*"}
!18 = !{!"restrict", !"restrict"}
