.class public Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;

.field private mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->dismissPopupMenus()V

    :cond_0
    return-void
.end method

.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public getDecorToolbar()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    return-object v0
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initFeature(I)V
    .locals 0

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/high16 v7, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v7, :cond_4

    if-eqz v1, :cond_1

    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v9, :cond_4

    iget v10, v9, Landroid/util/TypedValue;->type:I

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_2

    invoke-virtual {v9, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    goto :goto_2

    :cond_2
    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v5, :cond_3

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    :cond_3
    :goto_2
    if-lez v10, :cond_4

    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    nop

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v4, 0x1

    :cond_4
    if-ne v3, v7, :cond_8

    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_3
    if-eqz v9, :cond_8

    iget v10, v9, Landroid/util/TypedValue;->type:I

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_6

    invoke-virtual {v9, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    goto :goto_4

    :cond_6
    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v5, :cond_7

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    :cond_7
    :goto_4
    if-lez v10, :cond_8

    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    nop

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMeasuredWidth()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-nez v4, :cond_d

    if-ne v2, v7, :cond_d

    if-eqz v1, :cond_9

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_5

    :cond_9
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_5
    if-eqz v7, :cond_d

    iget v11, v7, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_d

    const/4 v11, 0x0

    iget v12, v7, Landroid/util/TypedValue;->type:I

    if-ne v12, v6, :cond_a

    invoke-virtual {v7, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v11, v5

    goto :goto_6

    :cond_a
    iget v6, v7, Landroid/util/TypedValue;->type:I

    if-ne v6, v5, :cond_b

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-virtual {v7, v5, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v11, v5

    :cond_b
    :goto_6
    if-lez v11, :cond_c

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v11, v5

    :cond_c
    if-ge v9, v11, :cond_d

    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v10, 0x1

    :cond_d
    if-eqz v10, :cond_e

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method

.method pullChildren()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getDecorToolbar()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setAttachListener(Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(I)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    :cond_0
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenuPrepared()V

    :cond_0
    return-void
.end method

.method public setSupportToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    :cond_0
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
