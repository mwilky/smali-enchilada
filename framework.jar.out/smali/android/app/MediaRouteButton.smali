.class public Landroid/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final ACTIVATED_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103ad

    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    new-instance v0, Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$1;)V

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    sget-object v0, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Landroid/app/MediaRouteButton;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/MediaRouteButton;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private refreshRoute()V
    .locals 7

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    nop

    :cond_1
    const/4 v4, 0x0

    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v5, v1, :cond_2

    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    const/4 v4, 0x1

    :cond_2
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v5, v2, :cond_3

    iput-boolean v2, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    :cond_4
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v6, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v5, v6, v3}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/MediaRouteButton;->setEnabled(Z)V

    :cond_5
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iget-boolean v6, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v6, :cond_7

    if-nez v4, :cond_6

    if-eqz v2, :cond_9

    :cond_6
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_8
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_9
    :goto_1
    return-void
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getRouteTypes()I
    .locals 1

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v6, v1, v0

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    sub-int v7, v3, v2

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v6, v4

    add-int v10, v7, v5

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget v4, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    iget-object v7, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v6, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    nop

    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v0

    goto :goto_1

    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    nop

    :goto_1
    nop

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v1

    goto :goto_2

    :cond_5
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    nop

    :goto_2
    nop

    invoke-virtual {p0, v8, v6}, Landroid/app/MediaRouteButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public performClick()Z
    .locals 3

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->playSoundEffect(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/app/MediaRouteButton;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public showDialog()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    return-void
.end method

.method showDialogInternal()Z
    .locals 4

    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v3, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
