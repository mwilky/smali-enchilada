.class final Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TranslucentLayerDrawable"
.end annotation


# instance fields
.field mAlpha:I

.field mManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v17/leanback/app/BackgroundManager;",
            ">;"
        }
    .end annotation
.end field

.field mSuspendInvalidation:Z

.field mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager;[Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "manager"    # Landroid/support/v17/leanback/app/BackgroundManager;
    .param p2, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 248
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    .line 254
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mManagerWeakReference:Ljava/lang/ref/WeakReference;

    .line 255
    array-length v0, p2

    .line 256
    .local v0, "count":I
    new-array v1, v0, [Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 258
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    new-instance v3, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v4, p2, v1

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v2, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public clearDrawable(ILandroid/content/Context;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 324
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 325
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 326
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;

    if-nez v1, :cond_1

    .line 327
    invoke-static {p2}, Landroid/support/v17/leanback/app/BackgroundManager;->createEmptyDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 357
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 358
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/16 v5, 0xff

    if-lt v2, v4, :cond_0

    .line 359
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v5

    .line 360
    .local v2, "alpha":I
    :goto_1
    move v4, v2

    .line 361
    .local v4, "savedAlpha":I
    const/4 v6, 0x0

    .line 362
    .local v6, "multiple":I
    iget v7, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    if-ge v7, v5, :cond_1

    .line 363
    iget v7, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    mul-int/2addr v2, v7

    .line 364
    add-int/lit8 v6, v6, 0x1

    .line 366
    :cond_1
    iget-object v7, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v7, v7, v1

    iget v7, v7, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    if-ge v7, v5, :cond_2

    .line 367
    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    mul-int/2addr v2, v5

    .line 368
    add-int/lit8 v6, v6, 0x1

    .line 370
    :cond_2
    if-nez v6, :cond_3

    .line 371
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 373
    :cond_3
    const/4 v5, 0x1

    if-ne v6, v5, :cond_4

    .line 374
    div-int/lit16 v2, v2, 0xff

    goto :goto_2

    .line 375
    :cond_4
    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 376
    const v7, 0xfe01

    div-int/2addr v2, v7

    .line 379
    :cond_5
    :goto_2
    :try_start_0
    iput-boolean v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    .line 380
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 381
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 382
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    .line 385
    goto :goto_3

    .line 384
    :catchall_0
    move-exception v5

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    throw v5

    .line 353
    .end local v2    # "alpha":I
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "savedAlpha":I
    .end local v6    # "multiple":I
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public findWrapperIndexById(I)I
    .locals 2
    .param p1, "id"    # I

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 336
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 337
    return v0

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 284
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 301
    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 346
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    if-nez v0, :cond_0

    .line 347
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 289
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 291
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 292
    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    new-instance v4, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v5, v5, v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;-><init>(Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v3, v2

    .line 291
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 264
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 265
    iput p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    .line 266
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->invalidateSelf()V

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/BackgroundManager;

    .line 268
    .local v0, "manager":Landroid/support/v17/leanback/app/BackgroundManager;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->postChangeRunnable()V

    .line 272
    .end local v0    # "manager":Landroid/support/v17/leanback/app/BackgroundManager;
    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 306
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setWrapperAlpha(II)V
    .locals 1
    .param p1, "wrapperIndex"    # I
    .param p2, "alpha"    # I

    .line 275
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    .line 277
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->invalidateSelf()V

    .line 279
    :cond_0
    return-void
.end method

.method public updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    .locals 3
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 310
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 312
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 313
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    new-instance v2, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    invoke-direct {v2, p2}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v0

    .line 315
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->invalidateSelf()V

    .line 316
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v1, v1, v0

    return-object v1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
