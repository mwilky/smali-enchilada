.class public Lcom/oneplus/screenshot/anim/FlashInterpolator;
.super Lcom/oneplus/screenshot/anim/BaseInterpolator;
.source "FlashInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    iget v0, p0, Lcom/oneplus/screenshot/anim/FlashInterpolator;->mDurationFactor:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget v2, p0, Lcom/oneplus/screenshot/anim/FlashInterpolator;->mDurationFactor:F

    div-float v2, p1, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
