.class public Lcom/android/internal/util/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static round(F)I
    .locals 5

    const/high16 v0, 0x4b800000    # 1.6777216E7f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    const-wide/32 v2, 0x800000

    add-long/2addr v2, v0

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method
