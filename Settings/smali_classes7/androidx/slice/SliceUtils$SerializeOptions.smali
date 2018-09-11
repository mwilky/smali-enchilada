.class public Landroidx/slice/SliceUtils$SerializeOptions;
.super Ljava/lang/Object;
.source "SliceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/SliceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializeOptions"
.end annotation


# static fields
.field public static final MODE_CONVERT:I = 0x2

.field public static final MODE_REMOVE:I = 0x1

.field public static final MODE_THROW:I


# instance fields
.field private mActionMode:I

.field private mFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mImageMode:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mQuality:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mActionMode:I

    .line 290
    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mImageMode:I

    .line 291
    const/16 v0, 0x3e8

    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxWidth:I

    .line 292
    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxHeight:I

    .line 294
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 295
    const/16 v0, 0x64

    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mQuality:I

    return-void
.end method


# virtual methods
.method public checkThrow(Ljava/lang/String;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x54d081ca

    if-eq v0, v1, :cond_2

    const v1, 0x5faa95b

    if-eq v0, v1, :cond_1

    const v1, 0x5fb57ca

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 311
    return-void

    .line 308
    :pswitch_0
    iget v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mImageMode:I

    if-eqz v0, :cond_4

    return-void

    .line 305
    :pswitch_1
    iget v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mActionMode:I

    if-eqz v0, :cond_4

    return-void

    .line 313
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be serialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActionMode()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 321
    iget v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mActionMode:I

    return v0
.end method

.method public getFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 329
    iget v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mImageMode:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 345
    iget v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 337
    iget v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxWidth:I

    return v0
.end method

.method public getQuality()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 361
    iget v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mQuality:I

    return v0
.end method

.method public setActionMode(I)Landroidx/slice/SliceUtils$SerializeOptions;
    .locals 0
    .param p1, "mode"    # I

    .line 371
    iput p1, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mActionMode:I

    .line 372
    return-object p0
.end method

.method public setImageConversionFormat(Landroid/graphics/Bitmap$CompressFormat;I)Landroidx/slice/SliceUtils$SerializeOptions;
    .locals 0
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .line 420
    iput-object p1, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 421
    iput p2, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mQuality:I

    .line 422
    return-object p0
.end method

.method public setImageMode(I)Landroidx/slice/SliceUtils$SerializeOptions;
    .locals 0
    .param p1, "mode"    # I

    .line 382
    iput p1, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mImageMode:I

    .line 383
    return-object p0
.end method

.method public setMaxImageHeight(I)Landroidx/slice/SliceUtils$SerializeOptions;
    .locals 0
    .param p1, "height"    # I

    .line 406
    iput p1, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxHeight:I

    .line 407
    return-object p0
.end method

.method public setMaxImageWidth(I)Landroidx/slice/SliceUtils$SerializeOptions;
    .locals 0
    .param p1, "width"    # I

    .line 394
    iput p1, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxWidth:I

    .line 395
    return-object p0
.end method
