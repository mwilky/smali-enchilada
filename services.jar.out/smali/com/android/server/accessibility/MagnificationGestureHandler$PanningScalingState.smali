.class final Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanningScalingState"
.end annotation


# instance fields
.field mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaling:Z

.field final mScalingThreshold:F

.field private final mScrollGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x105004e

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, p2, p0, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p2, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    const/high16 v3, 0x40a00000    # 5.0f

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    cmpg-float v3, v2, v0

    if-gez v3, :cond_4

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v10

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v4, v4, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/MagnificationController;->setScale(FFFZI)Z

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(FFI)V

    return v2
.end method

.method public persistScaleAndTransitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->persistScale()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingState{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
