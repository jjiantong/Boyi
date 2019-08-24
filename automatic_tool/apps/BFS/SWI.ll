; ModuleID = 'SWI.cl'
source_filename = "SWI.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, i32 }
%struct.Edge = type { i32, i32 }

; Function Attrs: norecurse nounwind uwtable
define dso_local spir_kernel void @BFS_fpga(%struct.Node* noalias nocapture readonly %graph_nodes_av, %struct.Edge* noalias nocapture readonly %graph_edges_av, i32* noalias nocapture %cost, i32* noalias nocapture %color, i32* noalias nocapture readonly %q1, i32* noalias nocapture %q2, i32* nocapture readonly %n_t, i32* nocapture %tail, i32* nocapture %iter) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %0 = load i32, i32* %iter, align 4, !tbaa !7
  %1 = load i32, i32* %n_t, align 4, !tbaa !7
  %cmp56 = icmp sgt i32 %1, 0
  br i1 %cmp56, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %wide.trip.count = zext i32 %1 to i64
  br label %while.body

while.body:                                       ; preds = %for.cond.cleanup, %while.body.preheader
  %indvars.iv60 = phi i64 [ 0, %while.body.preheader ], [ %indvars.iv.next61, %for.cond.cleanup ]
  %tail_bin.058 = phi i32 [ 0, %while.body.preheader ], [ %tail_bin.1.lcssa, %for.cond.cleanup ]
  %arrayidx2 = getelementptr inbounds i32, i32* %q1, i64 %indvars.iv60
  %2 = load i32, i32* %arrayidx2, align 4, !tbaa !7
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %cost, i64 %idxprom3
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !7
  %x = getelementptr inbounds %struct.Node, %struct.Node* %graph_nodes_av, i64 %idxprom3, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !11
  %y = getelementptr inbounds %struct.Node, %struct.Node* %graph_nodes_av, i64 %idxprom3, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !13
  %cmp1453 = icmp sgt i32 %4, 0
  br i1 %cmp1453, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %while.body
  %add = add nsw i32 %4, %3
  %5 = sext i32 %3 to i64
  %6 = sext i32 %add to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %while.body
  %tail_bin.1.lcssa = phi i32 [ %tail_bin.058, %while.body ], [ %tail_bin.2, %if.end ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond = icmp eq i64 %indvars.iv.next61, %wide.trip.count
  br i1 %exitcond, label %while.end, label %while.body

for.body:                                         ; preds = %for.body.preheader, %if.end
  %indvars.iv = phi i64 [ %5, %for.body.preheader ], [ %indvars.iv.next, %if.end ]
  %tail_bin.155 = phi i32 [ %tail_bin.058, %for.body.preheader ], [ %tail_bin.2, %if.end ]
  %x17 = getelementptr inbounds %struct.Edge, %struct.Edge* %graph_edges_av, i64 %indvars.iv, i32 0
  %7 = load i32, i32* %x17, align 4, !tbaa !11
  %idxprom18 = sext i32 %7 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %color, i64 %idxprom18
  %8 = load i32, i32* %arrayidx19, align 4, !tbaa !7
  %cmp20 = icmp slt i32 %8, 16677221
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 16677221, i32* %arrayidx19, align 4, !tbaa !7
  %idxprom23 = sext i32 %tail_bin.155 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %q2, i64 %idxprom23
  store i32 %7, i32* %arrayidx24, align 4, !tbaa !7
  %inc = add nsw i32 %tail_bin.155, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %tail_bin.2 = phi i32 [ %inc, %if.then ], [ %tail_bin.155, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp14 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp14, label %for.body, label %for.cond.cleanup

while.end:                                        ; preds = %for.cond.cleanup, %entry
  %tail_bin.0.lcssa = phi i32 [ 0, %entry ], [ %tail_bin.1.lcssa, %for.cond.cleanup ]
  store i32 %tail_bin.0.lcssa, i32* %tail, align 4, !tbaa !7
  %9 = load i32, i32* %iter, align 4, !tbaa !7
  %inc29 = add nsw i32 %9, 1
  store i32 %inc29, i32* %iter, align 4, !tbaa !7
  ret void
}

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 0}
!2 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"Node*", !"Edge*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int*"}
!6 = !{!"restrict", !"restrict", !"restrict", !"restrict", !"restrict", !"restrict", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"", !8, i64 0, !8, i64 4}
!13 = !{!12, !8, i64 4}
