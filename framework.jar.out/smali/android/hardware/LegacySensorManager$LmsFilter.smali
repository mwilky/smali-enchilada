.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 24

    move-object/from16 v0, p0

    move/from16 v3, p3

    const v4, 0x3089705f    # 1.0E-9f

    iget-object v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v5, v5, v6

    sub-float v6, v3, v5

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v6, v6, v7

    const/high16 v8, 0x43b40000    # 360.0f

    if-lez v6, :cond_0

    sub-float/2addr v3, v8

    goto :goto_0

    :cond_0
    sub-float v6, v5, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    add-float/2addr v3, v8

    :cond_1
    :goto_0
    iget v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    iget v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v7, 0x18

    const/16 v9, 0xc

    if-lt v6, v7, :cond_2

    iput v9, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    :cond_2
    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v3, v6, v7

    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput-wide p1, v6, v7

    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v7, v9

    aput v3, v6, v7

    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v7, v9

    aput-wide p1, v6, v7

    const/4 v6, 0x0

    move v7, v6

    move v9, v6

    move v10, v6

    move v11, v6

    move v12, v6

    const/4 v13, 0x0

    :goto_1
    const/16 v14, 0xb

    if-ge v13, v14, :cond_3

    iget v14, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v14, v13

    iget-object v15, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v15, v15, v14

    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v16, v8, v14

    const-wide/16 v18, 0x2

    div-long v16, v16, v18

    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v20, v14, 0x1

    aget-wide v20, v8, v20

    div-long v20, v20, v18

    add-long v16, v16, v20

    move/from16 v22, v7

    sub-long v6, v16, p1

    long-to-float v6, v6

    const v7, 0x3089705f    # 1.0E-9f

    mul-float/2addr v6, v7

    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v16, v8, v14

    iget-object v8, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v18, v14, 0x1

    aget-wide v18, v8, v18

    sub-long v0, v16, v18

    long-to-float v0, v0

    mul-float/2addr v0, v7

    mul-float/2addr v0, v0

    mul-float v1, v15, v0

    add-float/2addr v12, v1

    mul-float v1, v6, v0

    mul-float/2addr v1, v6

    add-float/2addr v11, v1

    mul-float v1, v6, v0

    add-float/2addr v10, v1

    mul-float v1, v6, v0

    mul-float/2addr v1, v15

    add-float/2addr v9, v1

    add-float v7, v22, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    goto :goto_1

    :cond_3
    move/from16 v22, v7

    mul-float v0, v12, v11

    mul-float v1, v10, v9

    add-float/2addr v0, v1

    mul-float v7, v22, v11

    mul-float v1, v10, v10

    add-float/2addr v7, v1

    div-float/2addr v0, v7

    mul-float v7, v22, v0

    sub-float/2addr v7, v12

    div-float/2addr v7, v10

    const v1, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v7

    add-float/2addr v1, v0

    const v2, 0x3b360b61

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v6, v1, v2

    if-ltz v6, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    neg-float v2, v1

    :goto_2
    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-ltz v2, :cond_5

    add-float/2addr v6, v1

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v2, v14

    sub-float v2, v1, v2

    add-float v1, v2, v8

    :cond_5
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    add-float/2addr v1, v8

    :cond_6
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    return v1
.end method
