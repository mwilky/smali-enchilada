.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v4

    if-ltz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v0, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v4, v4

    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_1

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const/4 v0, 0x0

    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    nop

    :cond_1
    :goto_1
    iget v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iget-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    iget-object v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/16 v6, 0xff

    if-eqz v0, :cond_5

    if-eqz v4, :cond_2

    if-nez v1, :cond_3

    :cond_2
    aget-object v2, v5, v2

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    if-ne v1, v6, :cond_4

    aget-object v2, v5, v3

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void

    :cond_5
    aget-object v2, v5, v2

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    rsub-int v7, v1, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v4, :cond_7

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-lez v1, :cond_8

    aget-object v3, v5, v3

    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method

.method public reverseTransition(I)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-lez v2, :cond_1

    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v2, :cond_0

    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_0

    :cond_0
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    :goto_0
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void

    :cond_1
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_2

    move v4, v5

    nop

    :cond_2
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v2, v2

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    sub-long/2addr v2, v6

    :goto_1
    long-to-int v2, v2

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    return-void
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return-void
.end method

.method public showSecondLayer()V
    .locals 1

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method

.method public startTransition(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    const/16 v1, 0xff

    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method
