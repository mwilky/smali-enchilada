.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "QSIconViewImpl.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field private mState:I

.field protected final mTilePaddingBelowIconPx:I

.field private mTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSIconViewImpl."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070590

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    const v1, 0x7f070597

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static setTint(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public disableAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    return-void
.end method

.method protected final exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getColor(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    move-result v3

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0603f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_0
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-eq v0, v1, :cond_3

    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(I)I

    move-result v0

    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    goto :goto_2

    :cond_1
    instance-of v1, p1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    :goto_2
    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    :goto_3
    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 11

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    const v1, 0x7f0a0338

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0a033a

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    iget v4, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v2, v4, :cond_1

    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v5

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    move-result v7

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    if-eqz v6, :cond_6

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getLayoutDirection()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_6
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateIcon: label="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", iconRes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    instance-of v8, p1, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    if-eqz v8, :cond_8

    move-object v8, p1

    check-cast v8, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-virtual {v8, v2}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setAnimationEnabled(Z)V

    move-object v8, p1

    check-cast v8, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-virtual {v8, v5, v6}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-virtual {p1, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, v4, v7, v4, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    instance-of v1, v6, Landroid/graphics/drawable/Animatable2;

    if-eqz v1, :cond_9

    move-object v1, v6

    check-cast v1, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable2;->start()V

    iget-boolean v3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v3, :cond_9

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V

    invoke-interface {v1, v3}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_9
    return-void
.end method
