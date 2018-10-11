.class public Lcom/oneplus/screenshot/anim/ScaleInInterpolator;
.super Lcom/oneplus/screenshot/anim/DropInterpolator;
.source "ScaleInInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleInInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/DropInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/screenshot/anim/DropInterpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3f872b02    # 1.056f

    sub-float/2addr v1, v0

    return v1
.end method
