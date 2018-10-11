.class public abstract Lcom/oneplus/screenshot/anim/DropInterpolator;
.super Lcom/oneplus/screenshot/anim/BaseInterpolator;
.source "DropInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DropInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    iget v0, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    sub-float v0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mFactor:F

    mul-float/2addr v0, v2

    cmpg-float p1, v0, v1

    if-gez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method
