.class public final Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
.super Ljava/lang/Object;
.source "ShadowOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ShadowOverlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private keepForegroundDrawable:Z

.field private needsOverlay:Z

.field private needsRoundedCorner:Z

.field private needsShadow:Z

.field private options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

.field private preferZOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;
    .locals 4

    new-instance v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;-><init>()V

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay:Z

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsRoundedCorner()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setupRoundedCornerRadius(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V

    :cond_2
    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsDynamicShadow()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setupDynamicShadowZ(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsForeground()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    if-eqz v1, :cond_5

    move v2, v3

    nop

    :cond_5
    iput-boolean v2, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    iput-boolean v3, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    goto :goto_3

    :cond_7
    iput v3, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsForeground()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    if-eqz v1, :cond_9

    :cond_8
    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    if-eqz v1, :cond_9

    move v2, v3

    nop

    :cond_9
    iput-boolean v2, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    :goto_3
    return-object v0
.end method

.method public keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    return-object p0
.end method

.method public needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay:Z

    return-object p0
.end method

.method public needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner:Z

    return-object p0
.end method

.method public needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow:Z

    return-object p0
.end method

.method public options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object p0
.end method

.method public preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    return-object p0
.end method
