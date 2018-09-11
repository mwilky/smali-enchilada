.class public final Landroid/support/v17/leanback/widget/ShadowOverlayHelper;
.super Ljava/lang/Object;
.source "ShadowOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;,
        Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    }
.end annotation


# static fields
.field public static final SHADOW_DYNAMIC:I = 0x3

.field public static final SHADOW_NONE:I = 0x1

.field public static final SHADOW_STATIC:I = 0x2


# instance fields
.field mFocusedZ:F

.field mNeedsOverlay:Z

.field mNeedsRoundedCorner:Z

.field mNeedsShadow:Z

.field mNeedsWrapper:Z

.field mRoundedCornerRadius:I

.field mShadowType:I

.field mUnfocusedZ:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    .line 311
    return-void
.end method

.method static getNoneWrapperDynamicShadowImpl(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 446
    sget v0, Landroid/support/v17/leanback/R$id;->lb_shadow_impl:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setNoneWrapperOverlayColor(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "color"    # I

    .line 362
    invoke-static {p0}, Landroid/support/v17/leanback/widget/ForegroundHelper;->getForeground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 364
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_0

    .line 366
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v1}, Landroid/support/v17/leanback/widget/ForegroundHelper;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 368
    :goto_0
    return-void
.end method

.method public static setNoneWrapperShadowFocusLevel(Landroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "level"    # F

    .line 410
    invoke-static {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getNoneWrapperDynamicShadowImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setShadowFocusLevel(Ljava/lang/Object;IF)V

    .line 411
    return-void
.end method

.method static setShadowFocusLevel(Ljava/lang/Object;IF)V
    .locals 1
    .param p0, "impl"    # Ljava/lang/Object;
    .param p1, "shadowType"    # I
    .param p2, "level"    # F

    .line 450
    if-eqz p0, :cond_2

    .line 451
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 452
    const/4 p2, 0x0

    goto :goto_0

    .line 453
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 454
    const/high16 p2, 0x3f800000    # 1.0f

    .line 456
    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 458
    :pswitch_0
    invoke-static {p0, p2}, Landroid/support/v17/leanback/widget/ShadowHelper;->setShadowFocusLevel(Ljava/lang/Object;F)V

    .line 459
    goto :goto_1

    .line 461
    :pswitch_1
    invoke-static {p0, p2}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->setShadowFocusLevel(Ljava/lang/Object;F)V

    .line 465
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static supportsDynamicShadow()Z
    .locals 1

    .line 290
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->supportsDynamicShadow()Z

    move-result v0

    return v0
.end method

.method public static supportsForeground()Z
    .locals 1

    .line 304
    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->supportsForeground()Z

    move-result v0

    return v0
.end method

.method public static supportsRoundedCorner()Z
    .locals 1

    .line 297
    invoke-static {}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->supportsRoundedCorner()Z

    move-result v0

    return v0
.end method

.method public static supportsShadow()Z
    .locals 1

    .line 283
    invoke-static {}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createShadowOverlayContainer(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayContainer;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 350
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    iget v3, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    iget v5, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    iget v6, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    iget v7, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;IZFFI)V

    return-object v0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getShadowType()I
    .locals 1

    .line 324
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    return v0
.end method

.method public needsOverlay()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    return v0
.end method

.method public needsRoundedCorner()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    return v0
.end method

.method public needsWrapper()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    return v0
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 387
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 389
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    if-eqz v0, :cond_2

    .line 390
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    invoke-static {p1, v1, v0}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    goto :goto_0

    .line 393
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 394
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    iget v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    iget v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    invoke-static {p1, v0, v1, v2}, Landroid/support/v17/leanback/widget/ShadowHelper;->addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "tag":Ljava/lang/Object;
    sget v1, Landroid/support/v17/leanback/R$id;->lb_shadow_impl:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 397
    .end local v0    # "tag":Ljava/lang/Object;
    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    if-eqz v0, :cond_2

    .line 398
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    invoke-static {p1, v1, v0}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    .line 402
    :cond_2
    :goto_0
    return-void
.end method

.method public prepareParentForShadow(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 318
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 319
    invoke-static {p1}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->prepareParent(Landroid/view/ViewGroup;)V

    .line 321
    :cond_0
    return-void
.end method

.method public setOverlayColor(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 375
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setOverlayColor(I)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setNoneWrapperOverlayColor(Landroid/view/View;I)V

    .line 380
    :goto_0
    return-void
.end method

.method public setShadowFocusLevel(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "level"    # F

    .line 417
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setShadowFocusLevel(F)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getNoneWrapperDynamicShadowImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setShadowFocusLevel(Ljava/lang/Object;IF)V

    .line 422
    :goto_0
    return-void
.end method

.method setupDynamicShadowZ(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V
    .locals 2
    .param p1, "options"    # Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .param p2, "context"    # Landroid/content/Context;

    .line 425
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowUnfocusedZ()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 426
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 427
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_focused_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    .line 428
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_normal_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    .line 429
    .end local v0    # "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowFocusedZ()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    .line 431
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowUnfocusedZ()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    .line 433
    :goto_0
    return-void
.end method

.method setupRoundedCornerRadius(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V
    .locals 2
    .param p1, "options"    # Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .param p2, "context"    # Landroid/content/Context;

    .line 436
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getRoundedCornerRadius()I

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 438
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_rounded_rect_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    .line 440
    .end local v0    # "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getRoundedCornerRadius()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    .line 443
    :goto_0
    return-void
.end method
