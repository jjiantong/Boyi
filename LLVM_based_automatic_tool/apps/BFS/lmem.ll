; ModuleID = 'lmem.cl'
source_filename = "lmem.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, i32 }
%struct.Edge = type { i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local spir_kernel void @BFS_fpga(%struct.Node* noalias nocapture readonly %graph_nodes_av, %struct.Edge* noalias nocapture readonly %graph_edges_av, i32* noalias nocapture %cost, i32* noalias nocapture %color, i32* noalias nocapture readonly %q1, i32* noalias nocapture %q2, i32* nocapture readonly %n_t, i32* nocapture %tail, i32* nocapture %iter) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %l_color = alloca [8 x i32], align 16
  %0 = load i32, i32* %iter, align 4, !tbaa !7
  %1 = load i32, i32* %n_t, align 4, !tbaa !7
  %cmp92 = icmp sgt i32 %1, 0
  br i1 %cmp92, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = bitcast [8 x i32]* %l_color to i8*
  %wide.trip.count = zext i32 %1 to i64
  br label %while.body

while.body:                                       ; preds = %for.cond.cleanup30, %while.body.lr.ph
  %indvars.iv102 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next103, %for.cond.cleanup30 ]
  %tail_bin.094 = phi i32 [ 0, %while.body.lr.ph ], [ %tail_bin.1.lcssa, %for.cond.cleanup30 ]
  %arrayidx2 = getelementptr inbounds i32, i32* %q1, i64 %indvars.iv102
  %3 = load i32, i32* %arrayidx2, align 4, !tbaa !7
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %cost, i64 %idxprom3
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !7
  %x = getelementptr inbounds %struct.Node, %struct.Node* %graph_nodes_av, i64 %idxprom3, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !11
  %y = getelementptr inbounds %struct.Node, %struct.Node* %graph_nodes_av, i64 %idxprom3, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #2
  %add = add nsw i32 %5, %4
  %cmp1484 = icmp sgt i32 %5, 0
  br i1 %cmp1484, label %for.body.preheader, label %for.cond.cleanup30

for.body.preheader:                               ; preds = %while.body
  %6 = sext i32 %4 to i64
  %7 = sext i32 %add to i64
  br label %for.body

for.cond25.preheader:                             ; preds = %for.body
  br i1 %cmp1484, label %for.body31.preheader, label %for.cond.cleanup30

for.body31.preheader:                             ; preds = %for.cond25.preheader
  %8 = sext i32 %4 to i64
  %9 = sext i32 %add to i64
  br label %for.body31

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv96 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next97, %for.body ]
  %indvars.iv = phi i64 [ %6, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %x17 = getelementptr inbounds %struct.Edge, %struct.Edge* %graph_edges_av, i64 %indvars.iv, i32 0
  %10 = load i32, i32* %x17, align 4, !tbaa !11
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %color, i64 %idxprom18
  %11 = load i32, i32* %arrayidx19, align 4, !tbaa !7
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* %l_color, i64 0, i64 %indvars.iv96
  store i32 %11, i32* %arrayidx21, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp14 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp14, label %for.body, label %for.cond25.preheader

for.cond.cleanup30:                               ; preds = %if.end, %while.body, %for.cond25.preheader
  %tail_bin.1.lcssa = phi i32 [ %tail_bin.094, %for.cond25.preheader ], [ %tail_bin.094, %while.body ], [ %tail_bin.2, %if.end ]
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #2
  %exitcond = icmp eq i64 %indvars.iv.next103, %wide.trip.count
  br i1 %exitcond, label %while.end, label %while.body

for.body31:                                       ; preds = %for.body31.preheader, %if.end
  %indvars.iv100 = phi i64 [ 0, %for.body31.preheader ], [ %indvars.iv.next101, %if.end ]
  %indvars.iv98 = phi i64 [ %8, %for.body31.preheader ], [ %indvars.iv.next99, %if.end ]
  %tail_bin.190 = phi i32 [ %tail_bin.094, %for.body31.preheader ], [ %tail_bin.2, %if.end ]
  %x35 = getelementptr inbounds %struct.Edge, %struct.Edge* %graph_edges_av, i64 %indvars.iv98, i32 0
  %12 = load i32, i32* %x35, align 4, !tbaa !11
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %l_color, i64 0, i64 %indvars.iv100
  %13 = load i32, i32* %arrayidx38, align 4, !tbaa !7
  %cmp39 = icmp slt i32 %13, 16677221
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %for.body31
  %idxprom40 = sext i32 %12 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %color, i64 %idxprom40
  store i32 16677221, i32* %arrayidx41, align 4, !tbaa !7
  %idxprom42 = sext i32 %tail_bin.190 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %q2, i64 %idxprom42
  store i32 %12, i32* %arrayidx43, align 4, !tbaa !7
  %inc44 = add nsw i32 %tail_bin.190, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body31
  %tail_bin.2 = phi i32 [ %inc44, %if.then ], [ %tail_bin.190, %for.body31 ]
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1
  %cmp29 = icmp slt i64 %indvars.iv.next99, %9
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

while.end:                                        ; preds = %for.cond.cleanup30, %entry
  %tail_bin.0.lcssa = phi i32 [ 0, %entry ], [ %tail_bin.1.lcssa, %for.cond.cleanup30 ]
  store i32 %tail_bin.0.lcssa, i32* %tail, align 4, !tbaa !7
  %14 = load i32, i32* %iter, align 4, !tbaa !7
  %inc51 = add nsw i32 %14, 1
  store i32 %inc51, i32* %iter, align 4, !tbaa !7
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
