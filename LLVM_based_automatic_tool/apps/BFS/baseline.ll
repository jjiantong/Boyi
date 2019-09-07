; ModuleID = 'apps/BFS/baseline.cl'
source_filename = "apps/BFS/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, i32 }
%struct.Edge = type { i32, i32 }

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @BFS_fpga(%struct.Node* noalias nocapture readonly %graph_nodes_av, %struct.Edge* noalias nocapture readonly %graph_edges_av, i32* noalias %cost, i32* noalias %color, i32* noalias nocapture readonly %q1, i32* noalias nocapture %q2, i32* %n_t, i32* %head, i32* %tail, i32* nocapture %overflow, i32* %iter, i32* %tail_bin, i32* nocapture %l_q2, i32* nocapture %shift, i32* nocapture %base) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @get_local_id(i32 0) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_global_id(i32 0) #2
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @get_num_groups(i32 0) #2
  %call5 = tail call i64 @get_local_size(i32 0) #2
  %conv6 = trunc i64 %call5 to i32
  %call7 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %iter, i32 0) #2
  %call8 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %n_t, i32 0) #2
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  store i32 0, i32* %tail_bin, align 4, !tbaa !7
  %call14 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %head, i32 %conv6) #2
  store i32 %call14, i32* %base, align 4, !tbaa !7
  br label %if.end15

if.end15:                                         ; preds = %entry, %if.then
  tail call void @barrier(i32 1) #2
  %my_base.0139 = load i32, i32* %base, align 4, !tbaa !7
  %cmp16140 = icmp slt i32 %my_base.0139, %call8
  br i1 %cmp16140, label %while.body, label %while.end

while.body:                                       ; preds = %if.end15, %if.end63
  %my_base.0141 = phi i32 [ %my_base.0, %if.end63 ], [ %my_base.0139, %if.end15 ]
  %add = add nsw i32 %my_base.0141, %conv
  %cmp18 = icmp slt i32 %add, %call8
  br i1 %cmp18, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %while.body
  %0 = load i32, i32* %overflow, align 4, !tbaa !7
  %cmp20 = icmp eq i32 %0, 0
  br i1 %cmp20, label %if.then22, label %if.end57

if.then22:                                        ; preds = %land.lhs.true
  %idxprom = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %q1, i64 %idxprom
  %1 = load i32, i32* %arrayidx24, align 4, !tbaa !7
  %idxprom25 = sext i32 %1 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %cost, i64 %idxprom25
  %call27 = tail call i32 @_Z11atomic_xchgPU8CLglobalVii(i32* %arrayidx26, i32 %call7) #2
  %x = getelementptr inbounds %struct.Node, %struct.Node* %graph_nodes_av, i64 %idxprom25, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !11
  %y = getelementptr inbounds %struct.Node, %struct.Node* %graph_nodes_av, i64 %idxprom25, i32 1
  %3 = load i32, i32* %y, align 4, !tbaa !13
  %cmp38137 = icmp sgt i32 %3, 0
  br i1 %cmp38137, label %for.body.preheader, label %if.end57

for.body.preheader:                               ; preds = %if.then22
  %add37 = add nsw i32 %3, %2
  %4 = sext i32 %2 to i64
  %5 = sext i32 %add37 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end56
  %indvars.iv143 = phi i64 [ %4, %for.body.preheader ], [ %indvars.iv.next144, %if.end56 ]
  %x42 = getelementptr inbounds %struct.Edge, %struct.Edge* %graph_edges_av, i64 %indvars.iv143, i32 0
  %6 = load i32, i32* %x42, align 4, !tbaa !11
  %idxprom43 = sext i32 %6 to i64
  %arrayidx44 = getelementptr inbounds i32, i32* %color, i64 %idxprom43
  %call45 = tail call i32 @_Z10atomic_maxPU8CLglobalVii(i32* %arrayidx44, i32 16677221) #2
  %cmp46 = icmp slt i32 %call45, 16677221
  br i1 %cmp46, label %if.then48, label %if.end56

if.then48:                                        ; preds = %for.body
  %call49 = tail call i32 @_Z10atomic_addPU7CLlocalVii(i32* %tail_bin, i32 1) #2
  %cmp50 = icmp sgt i32 %call49, 1599
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then48
  store i32 1, i32* %overflow, align 4, !tbaa !7
  br label %if.end56

if.else:                                          ; preds = %if.then48
  %idxprom53 = sext i32 %call49 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %l_q2, i64 %idxprom53
  store i32 %6, i32* %arrayidx54, align 4, !tbaa !7
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.else, %for.body
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, 1
  %cmp38 = icmp slt i64 %indvars.iv.next144, %5
  br i1 %cmp38, label %for.body, label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then22, %land.lhs.true, %while.body
  br i1 %cmp, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end57
  %call62 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %head, i32 %conv6) #2
  store i32 %call62, i32* %base, align 4, !tbaa !7
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end57
  tail call void @barrier(i32 1) #2
  %my_base.0 = load i32, i32* %base, align 4, !tbaa !7
  %cmp16 = icmp slt i32 %my_base.0, %call8
  br i1 %cmp16, label %while.body, label %while.end

while.end:                                        ; preds = %if.end63, %if.end15
  br i1 %cmp, label %if.then66, label %if.end69

if.then66:                                        ; preds = %while.end
  %7 = load i32, i32* %tail_bin, align 4, !tbaa !7
  %call68 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %tail, i32 %7) #2
  store i32 %call68, i32* %shift, align 4, !tbaa !7
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %while.end
  tail call void @barrier(i32 1) #2
  %8 = load i32, i32* %tail_bin, align 4, !tbaa !7
  %cmp71135 = icmp sgt i32 %8, %conv
  br i1 %cmp71135, label %while.body73.lr.ph, label %while.end80

while.body73.lr.ph:                               ; preds = %if.end69
  %9 = load i32, i32* %shift, align 4, !tbaa !7
  %sext = shl i64 %call, 32
  %10 = ashr exact i64 %sext, 32
  %sext145 = shl i64 %call5, 32
  %11 = ashr exact i64 %sext145, 32
  %12 = sext i32 %8 to i64
  %13 = sext i32 %9 to i64
  br label %while.body73

while.body73:                                     ; preds = %while.body73.lr.ph, %while.body73
  %indvars.iv = phi i64 [ %10, %while.body73.lr.ph ], [ %indvars.iv.next, %while.body73 ]
  %arrayidx75 = getelementptr inbounds i32, i32* %l_q2, i64 %indvars.iv
  %14 = load i32, i32* %arrayidx75, align 4, !tbaa !7
  %15 = add nsw i64 %indvars.iv, %13
  %arrayidx78 = getelementptr inbounds i32, i32* %q2, i64 %15
  store i32 %14, i32* %arrayidx78, align 4, !tbaa !7
  %indvars.iv.next = add i64 %indvars.iv, %11
  %cmp71 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp71, label %while.body73, label %while.end80

while.end80:                                      ; preds = %while.body73, %if.end69
  %cmp81 = icmp eq i32 %conv2, 0
  br i1 %cmp81, label %if.then83, label %if.end86

if.then83:                                        ; preds = %while.end80
  %call85 = tail call i32 @_Z10atomic_addPU8CLglobalVii(i32* %iter, i32 1) #2
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %while.end80
  ret void
}

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_global_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_num_groups(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_local_size(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU8CLglobalVii(i32*, i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z11atomic_xchgPU8CLglobalVii(i32*, i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_maxPU8CLglobalVii(i32*, i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z10atomic_addPU7CLlocalVii(i32*, i32) local_unnamed_addr #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"Node*", !"Edge*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*"}
!6 = !{!"restrict", !"restrict", !"restrict", !"restrict", !"restrict", !"restrict", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"", !8, i64 0, !8, i64 4}
!13 = !{!12, !8, i64 4}
