.class public Lcom/android/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# static fields
.field private static final A:F = 0.17883277f

.field private static final B:F = 0.28466892f

.field private static final C:F = 0.5599107f

.field public static final GAMMA_SPACE_MAX:I = 0x3ff

.field private static final R:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertGammaToLinear(III)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x200

    if-gt p0, v2, :cond_0

    const v2, 0x44138000    # 590.0f

    int-to-float v3, p0

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x37a

    add-int/lit16 v3, p0, -0x200

    mul-int/lit16 v3, v3, 0x85

    div-int/lit16 v3, v3, 0x1ff

    add-int p0, v2, v3

    const v2, 0x447fc000    # 1023.0f

    int-to-float v3, p0

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    div-float v1, v0, v1

    invoke-static {v1}, Landroid/util/MathUtils;->sq(F)F

    move-result v1

    goto :goto_1

    :cond_1
    const v1, 0x3f0f564f

    sub-float v1, v0, v1

    const v2, 0x3e371ff0

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->exp(F)F

    move-result v1

    const v2, 0x3e91c020

    add-float/2addr v1, v2

    :goto_1
    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v4, 0x41400000    # 12.0f

    div-float v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static final convertLinearToGamma(III)I
    .locals 6

    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-static {v0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const v1, 0x3e371ff0

    const v2, 0x3e91c020

    sub-float v2, v0, v2

    invoke-static {v2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    mul-float/2addr v1, v2

    const v2, 0x3f0f564f

    add-float/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    const v3, 0x447fc000    # 1023.0f

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v3, 0x3f5eb7ae    # 0.8699902f

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_1

    mul-int/lit16 v4, v2, 0x200

    div-int/lit16 v4, v4, 0x37a

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_1

    :cond_1
    add-int/lit16 v4, v2, -0x37a

    mul-int/lit16 v4, v4, 0x1ff

    div-int/lit16 v4, v4, 0x85

    const/16 v5, 0x200

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_1
    return v4
.end method
