.class public Lcom/android/internal/policy/BackdropFrameRenderer;
.super Ljava/lang/Thread;
.source "BackdropFrameRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mFrameAndBackdropNode:Landroid/view/RenderNode;

.field private mFullscreen:Z

.field private mLastCaptionHeight:I

.field private mLastContentHeight:I

.field private mLastContentWidth:I

.field private mLastXOffset:I

.field private mLastYOffset:I

.field private mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private final mNewTargetRect:Landroid/graphics/Rect;

.field private mOldFullscreen:Z

.field private final mOldStableInsets:Landroid/graphics/Rect;

.field private final mOldSystemInsets:Landroid/graphics/Rect;

.field private final mOldTargetRect:Landroid/graphics/Rect;

.field private mRenderer:Landroid/view/ThreadedRenderer;

.field private mReportNextDraw:Z

.field private final mResizeMode:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private mSystemBarBackgroundNode:Landroid/view/RenderNode;

.field private final mSystemInsets:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 12

    move-object v7, p0

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct {v7}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    const-string v0, "ResizeFrame"

    invoke-virtual {v7, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->setName(Ljava/lang/String;)V

    move-object v11, p2

    iput-object v11, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const-string v0, "FrameAndBackdropNode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    iget-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    iget-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    move-object v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v0, p12

    iput v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizeMode:I

    invoke-virtual {v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->start()V

    return-void
.end method

.method private addSystemBarNodeIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SystemBarBackgroundNode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    return-void
.end method

.method private doFrameUncheckedLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/BackdropFrameRenderer;->redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    add-int v3, p1, p3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    if-eqz p5, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, p4, p7, p6, v2}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    return-void
.end method

.method private pingRenderLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    :goto_0
    return-void
.end method

.method private redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v10

    if-eqz v10, :cond_0

    iput v10, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    :cond_0
    iget v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    iget v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    if-eqz v0, :cond_6

    iget v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int v11, v0, v1

    iget v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int v12, v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    add-int v1, v11, v13

    add-int v2, v12, v14

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v13, v14}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v15

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v7, v0

    const/4 v0, 0x0

    if-eqz v7, :cond_4

    add-int v1, v11, v13

    iget v2, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v2, v12

    invoke-virtual {v7, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v1, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int v3, v11, v13

    add-int v4, v12, v14

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v15}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    move-object v0, v8

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v16, v7

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v8, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private reportDrawIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    monitor-exit p0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChange()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onContentDrawn(IIII)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    sub-int v3, p4, v3

    iput v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    nop

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRequestDraw(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    nop

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    nop

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    nop

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    if-eqz p5, :cond_4

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_3

    :cond_4
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    :goto_3
    if-eqz p6, :cond_5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_4

    :cond_5
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    :goto_4
    return-void
.end method

.method public releaseRenderer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    nop

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    throw v0
.end method

.method public setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
