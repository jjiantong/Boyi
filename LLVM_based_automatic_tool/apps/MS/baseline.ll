; ModuleID = 'apps/MS/baseline.cl'
source_filename = "apps/MS/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @hw_mandelbrot_frame(double %x0, double %y0, double %stepSize, i32 %maxIterations, i32* noalias nocapture %framebuffer, i32* noalias nocapture readonly %colorLUT, i32 %windowWidth) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @get_global_id(i32 0) #3
  %call1 = tail call i64 @get_global_id(i32 1) #3
  %conv = uitofp i64 %call to double
  %0 = tail call double @llvm.fmuladd.f64(double %conv, double %stepSize, double %x0)
  %conv2 = uitofp i64 %call1 to double
  %neg = fsub double -0.000000e+00, %conv2
  %1 = tail call double @llvm.fmuladd.f64(double %neg, double %stepSize, double %y0)
  %cmp438 = icmp eq i32 %maxIterations, 0
  br i1 %cmp438, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %iterations.041 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %y.040 = phi double [ %2, %while.body ], [ 0.000000e+00, %entry ]
  %x.039 = phi double [ %add9, %while.body ], [ 0.000000e+00, %entry ]
  %mul = fmul double %x.039, %x.039
  %mul6 = fmul double %y.040, %y.040
  %mul7 = fmul double %x.039, 2.000000e+00
  %2 = tail call double @llvm.fmuladd.f64(double %mul7, double %y.040, double %1)
  %sub = fsub double %mul, %mul6
  %add9 = fadd double %0, %sub
  %inc = add nuw i32 %iterations.041, 1
  %add = fadd double %mul, %mul6
  %cmp = fcmp olt double %add, 4.000000e+00
  %cmp4 = icmp ult i32 %inc, %maxIterations
  %or.cond = and i1 %cmp, %cmp4
  br i1 %or.cond, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %iterations.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %cmp10 = icmp eq i32 %iterations.0.lcssa, %maxIterations
  br i1 %cmp10, label %cond.end, label %cond.false

cond.false:                                       ; preds = %while.end
  %idxprom = zext i32 %iterations.0.lcssa to i64
  %arrayidx = getelementptr inbounds i32, i32* %colorLUT, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %while.end, %cond.false
  %cond = phi i32 [ %3, %cond.false ], [ 0, %while.end ]
  %conv12 = zext i32 %windowWidth to i64
  %mul13 = mul i64 %call1, %conv12
  %add14 = add i64 %mul13, %call
  %arrayidx15 = getelementptr inbounds i32, i32* %framebuffer, i64 %add14
  store i32 %cond, i32* %arrayidx15, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent
declare dso_local i64 @get_global_id(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

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
!3 = !{i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double", !"double", !"double", !"uint", !"uint*", !"uint*", !"uint"}
!6 = !{!"", !"", !"", !"", !"restrict", !"restrict const", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
