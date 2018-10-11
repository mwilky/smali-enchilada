.class public Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;
.super Ljava/lang/Object;
.source "DrawPadding.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawPadding"


# instance fields
.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    return v0
.end method

.method public setPadding(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    iget v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mDrawMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    :goto_0
    return-void
.end method
