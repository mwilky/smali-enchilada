.class public Landroid/view/TouchDelegate;
.super Ljava/lang/Object;
.source "TouchDelegate.java"


# static fields
.field public static final ABOVE:I = 0x1

.field public static final BELOW:I = 0x2

.field public static final TO_LEFT:I = 0x4

.field public static final TO_RIGHT:I = 0x8


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iput-object p2, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    if-eqz v2, :cond_1

    iget-object v5, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    nop

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    :cond_2
    iget v6, p0, Landroid/view/TouchDelegate;->mSlop:I

    mul-int/lit8 v7, v6, 0x2

    neg-int v7, v7

    int-to-float v7, v7

    mul-int/lit8 v8, v6, 0x2

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_1
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_3
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
