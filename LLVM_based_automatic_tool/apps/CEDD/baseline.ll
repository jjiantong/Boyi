; ModuleID = 'apps/CEDD/baseline.cl'
source_filename = "apps/CEDD/baseline.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gaus = dso_local local_unnamed_addr constant [3 x [3 x float]] [[3 x float] [float 6.250000e-02, float 1.250000e-01, float 6.250000e-02], [3 x float] [float 1.250000e-01, float 2.500000e-01, float 1.250000e-01], [3 x float] [float 6.250000e-02, float 1.250000e-01, float 6.250000e-02]], align 16
@sobx = dso_local local_unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 -1, i32 0, i32 1], [3 x i32] [i32 -2, i32 0, i32 2], [3 x i32] [i32 -1, i32 0, i32 1]], align 16
@soby = dso_local local_unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 -1, i32 -2, i32 -1], [3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 2, i32 1]], align 16
@gaussian_kernel.l_data = internal unnamed_addr global [324 x i32] undef, align 16
@sobel_kernel.l_data = internal unnamed_addr global [324 x i32] undef, align 16
@non_max_supp_kernel.l_data = internal unnamed_addr global [324 x i32] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @gaussian_kernel(i8* nocapture readonly %data, i8* nocapture %out, i32 %cols) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @get_local_size(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_global_id(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @get_global_id(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @get_local_id(i32 1) #3
  %0 = trunc i64 %call5 to i32
  %conv6 = add i32 %0, 1
  %call7 = tail call i64 @get_local_id(i32 0) #3
  %1 = trunc i64 %call7 to i32
  %conv9 = add i32 %1, 1
  %mul = mul nsw i32 %conv2, %cols
  %add10 = add nsw i32 %mul, %conv4
  %idxprom = sext i32 %add10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %data, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv11 = zext i8 %2 to i32
  %add12 = add nsw i32 %conv, 2
  %mul13 = mul nsw i32 %conv6, %add12
  %add14 = add nsw i32 %mul13, %conv9
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom15
  store i32 %conv11, i32* %arrayidx16, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else54

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %add10, %cols
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %data, i64 %idxprom18
  %3 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %3 to i32
  %idxprom24 = sext i32 %conv9 to i64
  %arrayidx25 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom24
  store i32 %conv20, i32* %arrayidx25, align 4, !tbaa !10
  %cmp26 = icmp eq i32 %1, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then
  %sub30 = add nsw i32 %sub, -1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %data, i64 %idxprom31
  %4 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %4 to i32
  store i32 %conv33, i32* getelementptr inbounds ([324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 0), align 16, !tbaa !10
  br label %if.then104

if.else:                                          ; preds = %if.then
  %cmp39 = icmp eq i32 %conv9, %conv
  br i1 %cmp39, label %if.then41, label %if.else114

if.then41:                                        ; preds = %if.else
  %add43 = add nsw i32 %sub, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %data, i64 %idxprom44
  %5 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %5 to i32
  %add50 = shl i64 %call, 32
  %sext = add i64 %add50, 4294967296
  %idxprom51 = ashr exact i64 %sext, 32
  %arrayidx52 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom51
  store i32 %conv46, i32* %arrayidx52, align 4, !tbaa !10
  br label %if.else114

if.else54:                                        ; preds = %entry
  %cmp55 = icmp eq i32 %conv6, %conv
  br i1 %cmp55, label %if.then57, label %if.end101

if.then57:                                        ; preds = %if.else54
  %add58 = add nsw i32 %add10, %cols
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %data, i64 %idxprom59
  %6 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %6 to i32
  %add62 = add i32 %conv, 1
  %mul64 = mul nsw i32 %add62, %add12
  %add65 = add nsw i32 %conv9, %mul64
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom66
  store i32 %conv61, i32* %arrayidx67, align 4, !tbaa !10
  %cmp68 = icmp eq i32 %1, 0
  br i1 %cmp68, label %if.then70, label %if.else82

if.then70:                                        ; preds = %if.then57
  %sub72 = add nsw i32 %add58, -1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %data, i64 %idxprom73
  %7 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %conv75 = zext i8 %7 to i32
  %idxprom80 = sext i32 %mul64 to i64
  %arrayidx81 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom80
  store i32 %conv75, i32* %arrayidx81, align 4, !tbaa !10
  br label %if.then104

if.else82:                                        ; preds = %if.then57
  %cmp83 = icmp eq i32 %conv9, %conv
  br i1 %cmp83, label %if.then85, label %if.else114

if.then85:                                        ; preds = %if.else82
  %add87 = add nsw i32 %add58, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i8, i8* %data, i64 %idxprom88
  %8 = load i8, i8* %arrayidx89, align 1, !tbaa !7
  %conv90 = zext i8 %8 to i32
  %add95 = add i32 %add62, %mul64
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom96
  store i32 %conv90, i32* %arrayidx97, align 4, !tbaa !10
  br label %if.else114

if.end101:                                        ; preds = %if.else54
  %cmp102 = icmp eq i32 %1, 0
  br i1 %cmp102, label %if.then104, label %if.else114

if.then104:                                       ; preds = %if.then28, %if.then70, %if.end101
  %sub105 = add nsw i32 %add10, -1
  br label %if.end129.sink.split

if.else114:                                       ; preds = %if.else, %if.then41, %if.then85, %if.else82, %if.end101
  %cmp115 = icmp eq i32 %conv9, %conv
  br i1 %cmp115, label %if.then117, label %if.end129

if.then117:                                       ; preds = %if.else114
  %add118 = add nsw i32 %add10, 1
  %add124 = add i32 %conv, 1
  %add125 = add i32 %add124, %mul13
  br label %if.end129.sink.split

if.end129.sink.split:                             ; preds = %if.then104, %if.then117
  %add125.sink = phi i32 [ %add125, %if.then117 ], [ %mul13, %if.then104 ]
  %idxprom119.pn.in = phi i32 [ %add118, %if.then117 ], [ %sub105, %if.then104 ]
  %idxprom119.pn = sext i32 %idxprom119.pn.in to i64
  %conv121.sink.in.in = getelementptr inbounds i8, i8* %data, i64 %idxprom119.pn
  %conv121.sink.in = load i8, i8* %conv121.sink.in.in, align 1, !tbaa !7
  %conv121.sink = zext i8 %conv121.sink.in to i32
  %idxprom126 = sext i32 %add125.sink to i64
  %arrayidx127 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom126
  store i32 %conv121.sink, i32* %arrayidx127, align 4, !tbaa !10
  br label %if.end129

if.end129:                                        ; preds = %if.end129.sink.split, %if.else114
  tail call void @barrier(i32 1) #3
  %mul144 = mul nsw i32 %add12, %0
  %add145 = add i32 %mul144, %1
  %idxprom148 = sext i32 %add145 to i64
  %arrayidx149 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148
  %9 = load i32, i32* %arrayidx149, align 4, !tbaa !10
  %conv150 = sitofp i32 %9 to float
  %10 = tail call float @llvm.fmuladd.f32(float %conv150, float 6.250000e-02, float 0.000000e+00)
  %conv153 = fptosi float %10 to i32
  %sub147.1 = add i32 %add145, 1
  %idxprom148.1 = sext i32 %sub147.1 to i64
  %arrayidx149.1 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.1
  %11 = load i32, i32* %arrayidx149.1, align 4, !tbaa !10
  %conv150.1 = sitofp i32 %11 to float
  %conv152.1 = sitofp i32 %conv153 to float
  %12 = tail call float @llvm.fmuladd.f32(float %conv150.1, float 1.250000e-01, float %conv152.1)
  %conv153.1 = fptosi float %12 to i32
  %sub147.2 = add i32 %add145, 2
  %idxprom148.2 = sext i32 %sub147.2 to i64
  %arrayidx149.2 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.2
  %13 = load i32, i32* %arrayidx149.2, align 4, !tbaa !10
  %conv150.2 = sitofp i32 %13 to float
  %conv152.2 = sitofp i32 %conv153.1 to float
  %14 = tail call float @llvm.fmuladd.f32(float %conv150.2, float 6.250000e-02, float %conv152.2)
  %conv153.2 = fptosi float %14 to i32
  %add145.1 = add i32 %mul13, %1
  %idxprom148.1243 = sext i32 %add145.1 to i64
  %arrayidx149.1244 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.1243
  %15 = load i32, i32* %arrayidx149.1244, align 4, !tbaa !10
  %conv150.1245 = sitofp i32 %15 to float
  %conv152.1246 = sitofp i32 %conv153.2 to float
  %16 = tail call float @llvm.fmuladd.f32(float %conv150.1245, float 1.250000e-01, float %conv152.1246)
  %conv153.1247 = fptosi float %16 to i32
  %sub147.1.1 = add i32 %add145.1, 1
  %idxprom148.1.1 = sext i32 %sub147.1.1 to i64
  %arrayidx149.1.1 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.1.1
  %17 = load i32, i32* %arrayidx149.1.1, align 4, !tbaa !10
  %conv150.1.1 = sitofp i32 %17 to float
  %conv152.1.1 = sitofp i32 %conv153.1247 to float
  %18 = tail call float @llvm.fmuladd.f32(float %conv150.1.1, float 2.500000e-01, float %conv152.1.1)
  %conv153.1.1 = fptosi float %18 to i32
  %sub147.2.1 = add i32 %add145.1, 2
  %idxprom148.2.1 = sext i32 %sub147.2.1 to i64
  %arrayidx149.2.1 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.2.1
  %19 = load i32, i32* %arrayidx149.2.1, align 4, !tbaa !10
  %conv150.2.1 = sitofp i32 %19 to float
  %conv152.2.1 = sitofp i32 %conv153.1.1 to float
  %20 = tail call float @llvm.fmuladd.f32(float %conv150.2.1, float 1.250000e-01, float %conv152.2.1)
  %conv153.2.1 = fptosi float %20 to i32
  %sub142.2 = add i32 %0, 2
  %mul144.2 = mul nsw i32 %sub142.2, %add12
  %add145.2 = add i32 %mul144.2, %1
  %idxprom148.2249 = sext i32 %add145.2 to i64
  %arrayidx149.2250 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.2249
  %21 = load i32, i32* %arrayidx149.2250, align 4, !tbaa !10
  %conv150.2251 = sitofp i32 %21 to float
  %conv152.2252 = sitofp i32 %conv153.2.1 to float
  %22 = tail call float @llvm.fmuladd.f32(float %conv150.2251, float 6.250000e-02, float %conv152.2252)
  %conv153.2253 = fptosi float %22 to i32
  %sub147.1.2 = add i32 %add145.2, 1
  %idxprom148.1.2 = sext i32 %sub147.1.2 to i64
  %arrayidx149.1.2 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.1.2
  %23 = load i32, i32* %arrayidx149.1.2, align 4, !tbaa !10
  %conv150.1.2 = sitofp i32 %23 to float
  %conv152.1.2 = sitofp i32 %conv153.2253 to float
  %24 = tail call float @llvm.fmuladd.f32(float %conv150.1.2, float 1.250000e-01, float %conv152.1.2)
  %conv153.1.2 = fptosi float %24 to i32
  %sub147.2.2 = add i32 %add145.2, 2
  %idxprom148.2.2 = sext i32 %sub147.2.2 to i64
  %arrayidx149.2.2 = getelementptr inbounds [324 x i32], [324 x i32]* @gaussian_kernel.l_data, i64 0, i64 %idxprom148.2.2
  %25 = load i32, i32* %arrayidx149.2.2, align 4, !tbaa !10
  %conv150.2.2 = sitofp i32 %25 to float
  %conv152.2.2 = sitofp i32 %conv153.1.2 to float
  %26 = tail call float @llvm.fmuladd.f32(float %conv150.2.2, float 6.250000e-02, float %conv152.2.2)
  %conv153.2.2 = fptosi float %26 to i32
  %call157 = tail call i32 @_Z3maxii(i32 0, i32 %conv153.2.2) #3
  %call158 = tail call i32 @_Z3minii(i32 255, i32 %call157) #3
  %conv159 = trunc i32 %call158 to i8
  %arrayidx161 = getelementptr inbounds i8, i8* %out, i64 %idxprom
  store i8 %conv159, i8* %arrayidx161, align 1, !tbaa !7
  ret void
}

; Function Attrs: convergent
declare dso_local i64 @get_local_size(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_global_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i64 @get_local_id(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @barrier(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent
declare dso_local i32 @_Z3minii(i32, i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z3maxii(i32, i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @sobel_kernel(i8* nocapture readonly %data, i8* nocapture %out, i8* nocapture %theta, i32 %cols) local_unnamed_addr #0 !kernel_arg_addr_space !12 !kernel_arg_access_qual !13 !kernel_arg_type !14 !kernel_arg_base_type !14 !kernel_arg_type_qual !15 {
entry:
  %call = tail call i64 @get_local_size(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_global_id(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @get_global_id(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @get_local_id(i32 1) #3
  %0 = trunc i64 %call5 to i32
  %conv6 = add i32 %0, 1
  %call7 = tail call i64 @get_local_id(i32 0) #3
  %1 = trunc i64 %call7 to i32
  %conv9 = add i32 %1, 1
  %mul = mul nsw i32 %conv2, %cols
  %add10 = add nsw i32 %mul, %conv4
  %idxprom = sext i32 %add10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %data, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv11 = zext i8 %2 to i32
  %add12 = add nsw i32 %conv, 2
  %mul13 = mul nsw i32 %conv6, %add12
  %add14 = add nsw i32 %mul13, %conv9
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom15
  store i32 %conv11, i32* %arrayidx16, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else54

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %add10, %cols
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %data, i64 %idxprom18
  %3 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %3 to i32
  %idxprom24 = sext i32 %conv9 to i64
  %arrayidx25 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom24
  store i32 %conv20, i32* %arrayidx25, align 4, !tbaa !10
  %cmp26 = icmp eq i32 %1, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then
  %sub30 = add nsw i32 %sub, -1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %data, i64 %idxprom31
  %4 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %4 to i32
  store i32 %conv33, i32* getelementptr inbounds ([324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 0), align 16, !tbaa !10
  br label %if.then104

if.else:                                          ; preds = %if.then
  %cmp39 = icmp eq i32 %conv9, %conv
  br i1 %cmp39, label %if.then41, label %if.else114

if.then41:                                        ; preds = %if.else
  %add43 = add nsw i32 %sub, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %data, i64 %idxprom44
  %5 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %5 to i32
  %add49 = shl i64 %call, 32
  %sext = add i64 %add49, 4294967296
  %idxprom51 = ashr exact i64 %sext, 32
  %arrayidx52 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom51
  store i32 %conv46, i32* %arrayidx52, align 4, !tbaa !10
  br label %if.else114

if.else54:                                        ; preds = %entry
  %cmp55 = icmp eq i32 %conv6, %conv
  br i1 %cmp55, label %if.then57, label %if.end101

if.then57:                                        ; preds = %if.else54
  %add58 = add nsw i32 %add10, %cols
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %data, i64 %idxprom59
  %6 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %6 to i32
  %add62 = add nsw i32 %conv, 1
  %mul64 = mul nsw i32 %add62, %add12
  %add65 = add nsw i32 %conv9, %mul64
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom66
  store i32 %conv61, i32* %arrayidx67, align 4, !tbaa !10
  %cmp68 = icmp eq i32 %1, 0
  br i1 %cmp68, label %if.then70, label %if.else82

if.then70:                                        ; preds = %if.then57
  %sub72 = add nsw i32 %add58, -1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %data, i64 %idxprom73
  %7 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %conv75 = zext i8 %7 to i32
  %idxprom80 = sext i32 %mul64 to i64
  %arrayidx81 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom80
  store i32 %conv75, i32* %arrayidx81, align 4, !tbaa !10
  br label %if.then104

if.else82:                                        ; preds = %if.then57
  %cmp83 = icmp eq i32 %conv9, %conv
  br i1 %cmp83, label %if.then85, label %if.else114

if.then85:                                        ; preds = %if.else82
  %add87 = add nsw i32 %add58, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i8, i8* %data, i64 %idxprom88
  %8 = load i8, i8* %arrayidx89, align 1, !tbaa !7
  %conv90 = zext i8 %8 to i32
  %add95 = add nsw i32 %mul64, %add62
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom96
  store i32 %conv90, i32* %arrayidx97, align 4, !tbaa !10
  br label %if.else114

if.end101:                                        ; preds = %if.else54
  %cmp102 = icmp eq i32 %1, 0
  br i1 %cmp102, label %if.then104, label %if.else114

if.then104:                                       ; preds = %if.then28, %if.then70, %if.end101
  %sub105 = add nsw i32 %add10, -1
  br label %if.end129.sink.split

if.else114:                                       ; preds = %if.else, %if.then41, %if.then85, %if.else82, %if.end101
  %cmp115 = icmp eq i32 %conv9, %conv
  br i1 %cmp115, label %if.then117, label %if.end129

if.then117:                                       ; preds = %if.else114
  %add118 = add nsw i32 %add10, 1
  %add124 = add nsw i32 %conv, 1
  %add125 = add nsw i32 %add124, %mul13
  br label %if.end129.sink.split

if.end129.sink.split:                             ; preds = %if.then104, %if.then117
  %add125.sink = phi i32 [ %add125, %if.then117 ], [ %mul13, %if.then104 ]
  %idxprom119.pn.in = phi i32 [ %add118, %if.then117 ], [ %sub105, %if.then104 ]
  %idxprom119.pn = sext i32 %idxprom119.pn.in to i64
  %conv121.sink.in.in = getelementptr inbounds i8, i8* %data, i64 %idxprom119.pn
  %conv121.sink.in = load i8, i8* %conv121.sink.in.in, align 1, !tbaa !7
  %conv121.sink = zext i8 %conv121.sink.in to i32
  %idxprom126 = sext i32 %add125.sink to i64
  %arrayidx127 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom126
  store i32 %conv121.sink, i32* %arrayidx127, align 4, !tbaa !10
  br label %if.end129

if.end129:                                        ; preds = %if.end129.sink.split, %if.else114
  tail call void @barrier(i32 1) #3
  %mul144 = mul nsw i32 %add12, %0
  %add145 = add i32 %mul144, %1
  %idxprom148 = sext i32 %add145 to i64
  %arrayidx149 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148
  %9 = load i32, i32* %arrayidx149, align 4, !tbaa !10
  %mul150 = sub nsw i32 0, %9
  %conv151 = sitofp i32 %mul150 to float
  %sub147.1 = add i32 %add145, 1
  %idxprom148.1 = sext i32 %sub147.1 to i64
  %arrayidx149.1 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148.1
  %10 = load i32, i32* %arrayidx149.1, align 4, !tbaa !10
  %mul166.1 = mul nsw i32 %10, -2
  %conv167.1 = sitofp i32 %mul166.1 to float
  %add168.1 = fadd float %conv151, %conv167.1
  %sub147.2 = add i32 %add145, 2
  %idxprom148.2 = sext i32 %sub147.2 to i64
  %arrayidx149.2 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148.2
  %11 = load i32, i32* %arrayidx149.2, align 4, !tbaa !10
  %conv151.2 = sitofp i32 %11 to float
  %add152.2 = fadd float %conv151, %conv151.2
  %mul166.2 = sub nsw i32 0, %11
  %conv167.2 = sitofp i32 %mul166.2 to float
  %add168.2 = fadd float %add168.1, %conv167.2
  %add145.1 = add i32 %mul13, %1
  %idxprom148.1334 = sext i32 %add145.1 to i64
  %arrayidx149.1335 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148.1334
  %12 = load i32, i32* %arrayidx149.1335, align 4, !tbaa !10
  %mul150.1336 = mul nsw i32 %12, -2
  %conv151.1337 = sitofp i32 %mul150.1336 to float
  %add152.1338 = fadd float %add152.2, %conv151.1337
  %add168.1342 = fadd float %add168.2, 0.000000e+00
  %add152.1.1 = fadd float %add152.1338, 0.000000e+00
  %sub147.2.1 = add i32 %add145.1, 2
  %idxprom148.2.1 = sext i32 %sub147.2.1 to i64
  %arrayidx149.2.1 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148.2.1
  %13 = load i32, i32* %arrayidx149.2.1, align 4, !tbaa !10
  %mul150.2.1 = shl nsw i32 %13, 1
  %conv151.2.1 = sitofp i32 %mul150.2.1 to float
  %add152.2.1 = fadd float %add152.1.1, %conv151.2.1
  %sub142.2 = add i32 %0, 2
  %mul144.2 = mul nsw i32 %sub142.2, %add12
  %add145.2 = add i32 %mul144.2, %1
  %idxprom148.2344 = sext i32 %add145.2 to i64
  %arrayidx149.2345 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148.2344
  %14 = load i32, i32* %arrayidx149.2345, align 4, !tbaa !10
  %mul150.2346 = sub nsw i32 0, %14
  %conv151.2347 = sitofp i32 %mul150.2346 to float
  %add152.2348 = fadd float %add152.2.1, %conv151.2347
  %conv167.2351 = sitofp i32 %14 to float
  %add168.2352 = fadd float %add168.1342, %conv167.2351
  %sub147.1.2 = add i32 %add145.2, 1
  %idxprom148.1.2 = sext i32 %sub147.1.2 to i64
  %arrayidx149.1.2 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148.1.2
  %15 = load i32, i32* %arrayidx149.1.2, align 4, !tbaa !10
  %add152.1.2 = fadd float %add152.2348, 0.000000e+00
  %mul166.1.2 = shl nsw i32 %15, 1
  %conv167.1.2 = sitofp i32 %mul166.1.2 to float
  %add168.1.2 = fadd float %add168.2352, %conv167.1.2
  %sub147.2.2 = add i32 %add145.2, 2
  %idxprom148.2.2 = sext i32 %sub147.2.2 to i64
  %arrayidx149.2.2 = getelementptr inbounds [324 x i32], [324 x i32]* @sobel_kernel.l_data, i64 0, i64 %idxprom148.2.2
  %16 = load i32, i32* %arrayidx149.2.2, align 4, !tbaa !10
  %conv151.2.2 = sitofp i32 %16 to float
  %add152.2.2 = fadd float %add152.1.2, %conv151.2.2
  %add168.2.2 = fadd float %add168.1.2, %conv151.2.2
  %call172 = tail call float @_Z5hypotff(float %add152.2.2, float %add168.2.2) #3
  %conv173 = fptosi float %call172 to i32
  %call174 = tail call i32 @_Z3maxii(i32 0, i32 %conv173) #3
  %call175 = tail call i32 @_Z3minii(i32 255, i32 %call174) #3
  %conv176 = trunc i32 %call175 to i8
  %arrayidx178 = getelementptr inbounds i8, i8* %out, i64 %idxprom
  store i8 %conv176, i8* %arrayidx178, align 1, !tbaa !7
  %call179 = tail call float @_Z5atan2ff(float %add168.2.2, float %add152.2.2) #3
  %cmp180 = fcmp olt float %call179, 0.000000e+00
  br i1 %cmp180, label %if.then182, label %if.end185

if.then182:                                       ; preds = %if.end129
  %add183 = fadd float %call179, 0x401921FB60000000
  %call184 = tail call float @_Z4fmodff(float %add183, float 0x401921FB60000000) #3
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.end129
  %angle.0 = phi float [ %call184, %if.then182 ], [ %call179, %if.end129 ]
  %cmp186 = fcmp ugt float %angle.0, 0x3FD921FB60000000
  br i1 %cmp186, label %if.else189, label %if.end225

if.else189:                                       ; preds = %if.end185
  %cmp190 = fcmp ugt float %angle.0, 0x3FF2D97C80000000
  br i1 %cmp190, label %if.else193, label %if.end225

if.else193:                                       ; preds = %if.else189
  %cmp194 = fcmp ugt float %angle.0, 0x3FFF6A7A40000000
  br i1 %cmp194, label %if.else197, label %if.end225

if.else197:                                       ; preds = %if.else193
  %cmp198 = fcmp ugt float %angle.0, 0x4005FDBC00000000
  br i1 %cmp198, label %if.else201, label %if.end225

if.else201:                                       ; preds = %if.else197
  %cmp202 = fcmp ugt float %angle.0, 0x400C463AC0000000
  br i1 %cmp202, label %if.else205, label %if.end225

if.else205:                                       ; preds = %if.else201
  %cmp206 = fcmp ugt float %angle.0, 0x4011475CE0000000
  br i1 %cmp206, label %if.else209, label %if.end225

if.else209:                                       ; preds = %if.else205
  %cmp210 = fcmp ugt float %angle.0, 0x40146B9C40000000
  br i1 %cmp210, label %if.else213, label %if.end225

if.else213:                                       ; preds = %if.else209
  %cmp214 = fcmp ugt float %angle.0, 0x40178FDBA0000000
  %. = select i1 %cmp214, i8 0, i8 -121
  br label %if.end225

if.end225:                                        ; preds = %if.else213, %if.else209, %if.else205, %if.else201, %if.else197, %if.else193, %if.else189, %if.end185
  %thetaout.0 = phi i8 [ 0, %if.end185 ], [ 45, %if.else189 ], [ 90, %if.else193 ], [ -121, %if.else197 ], [ 0, %if.else201 ], [ 45, %if.else205 ], [ 90, %if.else209 ], [ %., %if.else213 ]
  %arrayidx227 = getelementptr inbounds i8, i8* %theta, i64 %idxprom
  store i8 %thetaout.0, i8* %arrayidx227, align 1, !tbaa !7
  ret void
}

; Function Attrs: convergent
declare dso_local float @_Z5hypotff(float, float) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local float @_Z5atan2ff(float, float) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local float @_Z4fmodff(float, float) local_unnamed_addr #1

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @non_max_supp_kernel(i8* nocapture readonly %data, i8* nocapture %out, i8* nocapture readonly %theta, i32 %cols) local_unnamed_addr #0 !kernel_arg_addr_space !12 !kernel_arg_access_qual !13 !kernel_arg_type !14 !kernel_arg_base_type !14 !kernel_arg_type_qual !15 {
entry:
  %call = tail call i64 @get_local_size(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_global_id(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @get_global_id(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @get_local_id(i32 1) #3
  %0 = trunc i64 %call5 to i32
  %conv6 = add i32 %0, 1
  %call7 = tail call i64 @get_local_id(i32 0) #3
  %1 = trunc i64 %call7 to i32
  %conv9 = add i32 %1, 1
  %mul = mul nsw i32 %conv2, %cols
  %add10 = add nsw i32 %mul, %conv4
  %idxprom = sext i32 %add10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %data, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv11 = zext i8 %2 to i32
  %add12 = add nsw i32 %conv, 2
  %mul13 = mul nsw i32 %conv6, %add12
  %add14 = add nsw i32 %mul13, %conv9
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom15
  store i32 %conv11, i32* %arrayidx16, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else54

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %add10, %cols
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %data, i64 %idxprom18
  %3 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %3 to i32
  %idxprom24 = sext i32 %conv9 to i64
  %arrayidx25 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom24
  store i32 %conv20, i32* %arrayidx25, align 4, !tbaa !10
  %cmp26 = icmp eq i32 %1, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then
  %sub30 = add nsw i32 %sub, -1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %data, i64 %idxprom31
  %4 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %4 to i32
  store i32 %conv33, i32* getelementptr inbounds ([324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 0), align 16, !tbaa !10
  br label %if.then104

if.else:                                          ; preds = %if.then
  %cmp39 = icmp eq i32 %conv9, %conv
  br i1 %cmp39, label %if.then41, label %if.else114

if.then41:                                        ; preds = %if.else
  %add43 = add nsw i32 %sub, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %data, i64 %idxprom44
  %5 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %5 to i32
  %add49 = shl i64 %call, 32
  %sext = add i64 %add49, 4294967296
  %idxprom51 = ashr exact i64 %sext, 32
  %arrayidx52 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom51
  store i32 %conv46, i32* %arrayidx52, align 4, !tbaa !10
  br label %if.else114

if.else54:                                        ; preds = %entry
  %cmp55 = icmp eq i32 %conv6, %conv
  br i1 %cmp55, label %if.then57, label %if.end101

if.then57:                                        ; preds = %if.else54
  %add58 = add nsw i32 %add10, %cols
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %data, i64 %idxprom59
  %6 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %6 to i32
  %add62 = add nsw i32 %conv, 1
  %mul64 = mul nsw i32 %add62, %add12
  %add65 = add nsw i32 %conv9, %mul64
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom66
  store i32 %conv61, i32* %arrayidx67, align 4, !tbaa !10
  %cmp68 = icmp eq i32 %1, 0
  br i1 %cmp68, label %if.then70, label %if.else82

if.then70:                                        ; preds = %if.then57
  %sub72 = add nsw i32 %add58, -1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %data, i64 %idxprom73
  %7 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %conv75 = zext i8 %7 to i32
  %idxprom80 = sext i32 %mul64 to i64
  %arrayidx81 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom80
  store i32 %conv75, i32* %arrayidx81, align 4, !tbaa !10
  br label %if.then104

if.else82:                                        ; preds = %if.then57
  %cmp83 = icmp eq i32 %conv9, %conv
  br i1 %cmp83, label %if.then85, label %if.else114

if.then85:                                        ; preds = %if.else82
  %add87 = add nsw i32 %add58, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i8, i8* %data, i64 %idxprom88
  %8 = load i8, i8* %arrayidx89, align 1, !tbaa !7
  %conv90 = zext i8 %8 to i32
  %add95 = add nsw i32 %mul64, %add62
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom96
  store i32 %conv90, i32* %arrayidx97, align 4, !tbaa !10
  br label %if.else114

if.end101:                                        ; preds = %if.else54
  %cmp102 = icmp eq i32 %1, 0
  br i1 %cmp102, label %if.then104, label %if.else114

if.then104:                                       ; preds = %if.then28, %if.then70, %if.end101
  %sub105 = add nsw i32 %add10, -1
  br label %if.end129.sink.split

if.else114:                                       ; preds = %if.else, %if.then41, %if.then85, %if.else82, %if.end101
  %cmp115 = icmp eq i32 %conv9, %conv
  br i1 %cmp115, label %if.then117, label %if.end129

if.then117:                                       ; preds = %if.else114
  %add118 = add nsw i32 %add10, 1
  %add124 = add nsw i32 %conv, 1
  %add125 = add nsw i32 %add124, %mul13
  br label %if.end129.sink.split

if.end129.sink.split:                             ; preds = %if.then104, %if.then117
  %add125.sink = phi i32 [ %add125, %if.then117 ], [ %mul13, %if.then104 ]
  %idxprom119.pn.in = phi i32 [ %add118, %if.then117 ], [ %sub105, %if.then104 ]
  %idxprom119.pn = sext i32 %idxprom119.pn.in to i64
  %conv121.sink.in.in = getelementptr inbounds i8, i8* %data, i64 %idxprom119.pn
  %conv121.sink.in = load i8, i8* %conv121.sink.in.in, align 1, !tbaa !7
  %conv121.sink = zext i8 %conv121.sink.in to i32
  %idxprom126 = sext i32 %add125.sink to i64
  %arrayidx127 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom126
  store i32 %conv121.sink, i32* %arrayidx127, align 4, !tbaa !10
  br label %if.end129

if.end129:                                        ; preds = %if.end129.sink.split, %if.else114
  tail call void @barrier(i32 1) #3
  %9 = load i32, i32* %arrayidx16, align 4, !tbaa !10
  %conv135 = trunc i32 %9 to i8
  %arrayidx137 = getelementptr inbounds i8, i8* %theta, i64 %idxprom
  %10 = load i8, i8* %arrayidx137, align 1, !tbaa !7
  switch i8 %10, label %sw.epilog [
    i8 0, label %sw.bb
    i8 45, label %sw.bb160
    i8 90, label %sw.bb185
    i8 -121, label %sw.bb208
  ]

sw.bb:                                            ; preds = %if.end129
  %conv139 = and i32 %9, 255
  %add143 = add nsw i32 %add14, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom144
  %11 = load i32, i32* %arrayidx145, align 4, !tbaa !10
  %cmp146 = icmp sgt i32 %conv139, %11
  br i1 %cmp146, label %lor.lhs.false, label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  %sub152 = add i32 %mul13, %1
  %idxprom153 = sext i32 %sub152 to i64
  %arrayidx154 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom153
  %12 = load i32, i32* %arrayidx154, align 4, !tbaa !10
  %cmp155 = icmp sgt i32 %conv139, %12
  %spec.select = select i1 %cmp155, i8 %conv135, i8 0
  br label %sw.epilog

sw.bb160:                                         ; preds = %if.end129
  %conv161 = and i32 %9, 255
  %mul164 = mul nsw i32 %add12, %0
  %add165 = add i32 %1, 2
  %add166 = add i32 %add165, %mul164
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom167
  %13 = load i32, i32* %arrayidx168, align 4, !tbaa !10
  %cmp169 = icmp sgt i32 %conv161, %13
  br i1 %cmp169, label %lor.lhs.false171, label %sw.epilog

lor.lhs.false171:                                 ; preds = %sw.bb160
  %add173 = add i32 %0, 2
  %mul175 = mul nsw i32 %add173, %add12
  %sub177 = add i32 %mul175, %1
  %idxprom178 = sext i32 %sub177 to i64
  %arrayidx179 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom178
  %14 = load i32, i32* %arrayidx179, align 4, !tbaa !10
  %cmp180 = icmp sgt i32 %conv161, %14
  %spec.select333 = select i1 %cmp180, i8 %conv135, i8 0
  br label %sw.epilog

sw.bb185:                                         ; preds = %if.end129
  %conv186 = and i32 %9, 255
  %mul189 = mul nsw i32 %add12, %0
  %add190 = add nsw i32 %conv9, %mul189
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom191
  %15 = load i32, i32* %arrayidx192, align 4, !tbaa !10
  %cmp193 = icmp sgt i32 %conv186, %15
  br i1 %cmp193, label %lor.lhs.false195, label %sw.epilog

lor.lhs.false195:                                 ; preds = %sw.bb185
  %add197 = add i32 %0, 2
  %mul199 = mul nsw i32 %add197, %add12
  %add200 = add nsw i32 %mul199, %conv9
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom201
  %16 = load i32, i32* %arrayidx202, align 4, !tbaa !10
  %cmp203 = icmp sgt i32 %conv186, %16
  %spec.select334 = select i1 %cmp203, i8 %conv135, i8 0
  br label %sw.epilog

sw.bb208:                                         ; preds = %if.end129
  %conv209 = and i32 %9, 255
  %mul212 = mul nsw i32 %add12, %0
  %sub214 = add i32 %mul212, %1
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom215
  %17 = load i32, i32* %arrayidx216, align 4, !tbaa !10
  %cmp217 = icmp sgt i32 %conv209, %17
  br i1 %cmp217, label %lor.lhs.false219, label %sw.epilog

lor.lhs.false219:                                 ; preds = %sw.bb208
  %add221 = add i32 %0, 2
  %mul223 = mul nsw i32 %add221, %add12
  %add224 = add i32 %1, 2
  %add225 = add i32 %add224, %mul223
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds [324 x i32], [324 x i32]* @non_max_supp_kernel.l_data, i64 0, i64 %idxprom226
  %18 = load i32, i32* %arrayidx227, align 4, !tbaa !10
  %cmp228 = icmp sgt i32 %conv209, %18
  %spec.select335 = select i1 %cmp228, i8 %conv135, i8 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false219, %lor.lhs.false195, %lor.lhs.false171, %lor.lhs.false, %sw.bb208, %sw.bb185, %sw.bb160, %sw.bb, %if.end129
  %output.0 = phi i8 [ 0, %if.end129 ], [ 0, %sw.bb ], [ 0, %sw.bb160 ], [ 0, %sw.bb185 ], [ 0, %sw.bb208 ], [ %spec.select, %lor.lhs.false ], [ %spec.select333, %lor.lhs.false171 ], [ %spec.select334, %lor.lhs.false195 ], [ %spec.select335, %lor.lhs.false219 ]
  %arrayidx234 = getelementptr inbounds i8, i8* %out, i64 %idxprom
  store i8 %output.0, i8* %arrayidx234, align 1, !tbaa !7
  ret void
}

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @hyst_kernel(i8* nocapture readonly %data, i8* nocapture %out, i32 %cols) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @get_global_id(i32 1) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @get_global_id(i32 0) #3
  %conv2 = trunc i64 %call1 to i32
  %mul = mul nsw i32 %conv, %cols
  %add = add nsw i32 %mul, %conv2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %data, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %cmp = icmp ugt i8 %0, 69
  br i1 %cmp, label %if.end20, label %if.else

if.else:                                          ; preds = %entry
  %cmp8 = icmp ult i8 %0, 11
  br i1 %cmp8, label %if.end20, label %if.else11

if.else11:                                        ; preds = %if.else
  %cmp15 = icmp ugt i8 %0, 39
  %. = sext i1 %cmp15 to i8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %entry, %if.else11
  %output.1 = phi i8 [ %., %if.else11 ], [ -1, %entry ], [ 0, %if.else ]
  %arrayidx22 = getelementptr inbounds i8, i8* %out, i64 %idxprom
  store i8 %output.1, i8* %arrayidx22, align 1, !tbaa !7
  ret void
}

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
!3 = !{i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"uchar*", !"uchar*", !"int"}
!6 = !{!"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{i32 1, i32 1, i32 1, i32 0}
!13 = !{!"none", !"none", !"none", !"none"}
!14 = !{!"uchar*", !"uchar*", !"uchar*", !"int"}
!15 = !{!"", !"", !"", !""}
