.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    if-ne v3, v1, :cond_2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    :goto_1
    return v4
.end method

.method private isStartHandle()Z
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(IZ)V
    .locals 11

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ge p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_8

    if-gt p1, v0, :cond_8

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eq p1, v0, :cond_7

    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v3

    nop

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v1, v0, v4}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v4

    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v1, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v5

    cmpg-float v6, v5, v4

    if-gez v6, :cond_3

    cmpg-float v6, v3, v4

    if-ltz v6, :cond_4

    :cond_3
    cmpl-float v6, v5, v4

    if-lez v6, :cond_7

    cmpl-float v6, v3, v4

    if-lez v6, :cond_7

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_1
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v8

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    goto :goto_2

    :cond_6
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    :goto_2
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    return-void

    :cond_7
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v0, v4}, Landroid/widget/Editor;->access$7400(Landroid/widget/Editor;IZ)I

    move-result p1

    :cond_8
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    :goto_2
    return v0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getMagnifierHandleTrigger()I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v5

    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v6, v7, :cond_1

    return v2

    :cond_1
    if-le v6, v7, :cond_2

    return v4

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_0
    invoke-virtual {p1, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    if-ne v9, v1, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    return v3
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$7300(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    return-void
.end method

.method protected updatePosition(FFZ)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    return-void

    :cond_0
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    :cond_1
    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    goto :goto_0

    :cond_2
    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    :goto_0
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-static {v8, v4, v9, v2}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v8

    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ge v9, v7, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_5

    if-gt v9, v7, :cond_5

    :cond_4
    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    :cond_5
    move v10, v9

    iget-object v11, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v10}, Landroid/widget/Editor;->access$7100(Landroid/widget/Editor;I)I

    move-result v11

    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12, v10}, Landroid/widget/Editor;->access$7200(Landroid/widget/Editor;I)I

    move-result v12

    iget v13, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_6

    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v13

    invoke-virtual {v0, v4, v13}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v14

    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v15

    invoke-virtual {v4, v10}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v16

    if-nez v16, :cond_3a

    if-eqz v14, :cond_8

    if-eqz v15, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move/from16 v21, v5

    goto/16 :goto_1e

    :cond_8
    :goto_2
    if-nez v14, :cond_9

    if-eqz v15, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v2, 0x0

    if-eqz v6, :cond_a

    if-nez v16, :cond_a

    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    return-void

    :cond_a
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v6, v1, v6

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v20

    if-eqz v20, :cond_c

    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v8, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    goto :goto_4

    :cond_c
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v8, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :goto_4
    move/from16 v21, v5

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ne v15, v5, :cond_f

    const/4 v5, 0x0

    cmpl-float v18, v6, v5

    if-lez v18, :cond_e

    const/16 v18, 0x1

    goto :goto_5

    :cond_e
    const/16 v18, 0x0

    :goto_5
    or-int v2, v2, v18

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    cmpg-float v20, v6, v5

    if-gez v20, :cond_10

    const/4 v5, 0x1

    goto :goto_6

    :cond_10
    const/4 v5, 0x0

    :goto_6
    or-int/2addr v2, v5

    :goto_7
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-direct {v0, v1, v15}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    if-nez v5, :cond_11

    goto :goto_8

    :cond_11
    move/from16 v22, v6

    goto :goto_a

    :cond_12
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v15, :cond_13

    move/from16 v22, v6

    const/4 v6, -0x1

    goto :goto_9

    :cond_13
    move/from16 v22, v6

    const/4 v6, 0x1

    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_19

    :goto_a
    if-eqz v2, :cond_15

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_14

    if-lt v10, v13, :cond_16

    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_15

    if-gt v10, v13, :cond_16

    :cond_15
    if-nez v2, :cond_19

    :cond_16
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ne v15, v5, :cond_17

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v5

    goto :goto_b

    :cond_17
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v5

    :goto_b
    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    return-void

    :cond_18
    move/from16 v22, v6

    :cond_19
    if-eqz v2, :cond_2a

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v12

    goto :goto_c

    :cond_1a
    move v5, v11

    :goto_c
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v6, :cond_1c

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v6, :cond_1d

    goto :goto_d

    :cond_1b
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v6, :cond_1d

    :cond_1c
    :goto_d
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    if-ne v15, v6, :cond_1d

    const/16 v19, 0x1

    goto :goto_e

    :cond_1d
    const/16 v19, 0x0

    :goto_e
    move/from16 v6, v19

    if-eqz v6, :cond_26

    move/from16 v23, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    if-eq v2, v8, :cond_1f

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    goto :goto_f

    :cond_1e
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    :goto_f
    move v5, v2

    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_20

    sub-int v2, v11, v5

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    goto :goto_10

    :cond_20
    sub-int v2, v5, v12

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v17

    if-eqz v17, :cond_22

    if-le v10, v2, :cond_21

    move/from16 v24, v5

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_23

    goto :goto_11

    :cond_21
    move/from16 v24, v5

    :goto_11
    move v5, v12

    :goto_12
    move v10, v5

    goto :goto_13

    :cond_22
    move/from16 v24, v5

    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_25

    if-ge v10, v2, :cond_24

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_25

    :cond_24
    move v5, v11

    goto :goto_12

    :cond_25
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move v10, v2

    goto :goto_13

    :cond_26
    move/from16 v23, v2

    move/from16 v24, v5

    :goto_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_27

    if-lt v10, v9, :cond_28

    :cond_27
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_29

    if-le v10, v9, :cond_29

    :cond_28
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v2

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_14

    :cond_29
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    :goto_14
    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_2a
    move/from16 v23, v2

    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v2, v1, v2

    invoke-virtual {v0, v4, v8, v2}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_2d

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v2, v5, :cond_2c

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_2b

    goto :goto_16

    :cond_2b
    :goto_15
    const/16 v19, 0x0

    goto :goto_19

    :cond_2c
    :goto_16
    nop

    :goto_17
    const/16 v19, 0x1

    goto :goto_19

    :cond_2d
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_2f

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_2e

    goto :goto_18

    :cond_2e
    goto :goto_15

    :cond_2f
    :goto_18
    goto :goto_17

    :goto_19
    move/from16 v5, v19

    if-eqz v5, :cond_35

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v8, v6, :cond_34

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_30

    move v6, v12

    goto :goto_1a

    :cond_30
    move v6, v11

    :goto_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_31

    if-lt v6, v9, :cond_32

    :cond_31
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_33

    if-le v6, v9, :cond_33

    :cond_32
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    move/from16 v25, v5

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v10

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_1b

    :cond_33
    move/from16 v25, v5

    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    :goto_1b
    move v10, v6

    goto :goto_1c

    :cond_34
    move/from16 v25, v5

    move v5, v2

    move v10, v5

    :goto_1c
    const/4 v5, 0x1

    goto :goto_1d

    :cond_35
    move/from16 v25, v5

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_36

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_37

    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_38

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v2, v5, :cond_38

    :cond_37
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    :cond_38
    move/from16 v5, v21

    :goto_1d
    if-eqz v5, :cond_39

    iput v8, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    :cond_39
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    return-void

    :cond_3a
    move/from16 v21, v5

    :goto_1e
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    return-void
.end method

.method protected updateSelection(I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$7000(Landroid/widget/Editor;)V

    :cond_1
    return-void
.end method
