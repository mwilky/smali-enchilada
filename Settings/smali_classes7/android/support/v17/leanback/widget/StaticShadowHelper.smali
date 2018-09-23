.class final Landroid/support/v17/leanback/widget/StaticShadowHelper;
.super Ljava/lang/Object;
.source "StaticShadowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addStaticShadow(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_shadow:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;-><init>()V

    sget v2, Landroid/support/v17/leanback/R$id;->lb_shadow_normal:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;->mNormalShadow:Landroid/view/View;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_shadow_focused:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;->mFocusShadow:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static prepareParent(Landroid/view/ViewGroup;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    :cond_0
    return-void
.end method

.method static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;->mNormalShadow:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Landroid/support/v17/leanback/widget/StaticShadowHelper$ShadowImpl;->mFocusShadow:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static supportsShadow()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
