; ModuleID = 'SWI.cl'
source_filename = "SWI.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local spir_kernel void @Padding_kernel(i32 %n, i32 %m, i32 %pad, double* nocapture %matrix) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %matrix73 = bitcast double* %matrix to i8*
  %reg = alloca [40000 x double], align 16
  %0 = bitcast [40000 x double]* %reg to i8*
  %add = add nsw i32 %pad, %n
  %mul = mul nsw i32 %add, %m
  call void @llvm.lifetime.start.p0i8(i64 320000, i8* nonnull %0) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %0, i8* align 8 %matrix73, i64 320000, i1 false)
  %cmp570 = icmp sgt i32 %mul, 0
  br i1 %cmp570, label %for.body7, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %if.end, %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %matrix73, i8* nonnull align 16 %0, i64 320000, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 320000, i8* nonnull %0) #2
  ret void

for.body7:                                        ; preds = %entry, %if.end
  %i3.071.in = phi i32 [ %i3.071, %if.end ], [ %mul, %entry ]
  %i3.071 = add nsw i32 %i3.071.in, -1
  %rem = srem i32 %i3.071, %add
  %div = sdiv i32 %i3.071, %add
  %cmp10 = icmp slt i32 %rem, %n
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body7
  %mul11 = mul nsw i32 %div, %n
  %add12 = add nsw i32 %mul11, %rem
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [40000 x double], [40000 x double]* %reg, i64 0, i64 %idxprom13
  %1 = bitcast double* %arrayidx14 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %mul16 = mul nsw i32 %div, %add
  %add17 = add nsw i32 %mul16, %rem
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [40000 x double], [40000 x double]* %reg, i64 0, i64 %idxprom18
  %3 = bitcast double* %arrayidx19 to i64*
  store i64 %2, i64* %3, align 8, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %for.body7
  %mul21 = mul nsw i32 %div, %add
  %add22 = add nsw i32 %mul21, %rem
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [40000 x double], [40000 x double]* %reg, i64 0, i64 %idxprom23
  store double 0.000000e+00, double* %arrayidx24, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp5 = icmp sgt i32 %i3.071, 0
  br i1 %cmp5, label %for.body7, label %for.cond28.preheader
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
!3 = !{i32 0, i32 0, i32 0, i32 1}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"int", !"int", !"int", !"double*"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
