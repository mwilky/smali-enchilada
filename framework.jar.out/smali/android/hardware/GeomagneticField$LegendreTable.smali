.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/hardware/GeomagneticField;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    aput-object v4, v2, v5

    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v4, v3, [F

    const/4 v6, 0x0

    aput v6, v4, v5

    aput-object v4, v2, v5

    move v2, v3

    :goto_0
    if-gt v2, p1, :cond_4

    iget-object v4, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [F

    aput-object v6, v4, v2

    iget-object v4, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [F

    aput-object v6, v4, v2

    move v4, v5

    :goto_1
    if-gt v4, v2, :cond_3

    if-ne v2, v4, :cond_0

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v4, -0x1

    aget v7, v7, v8

    mul-float/2addr v7, v1

    aput v7, v6, v4

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v4, -0x1

    aget v7, v7, v8

    mul-float/2addr v7, v0

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v4

    goto/16 :goto_3

    :cond_0
    if-eq v2, v3, :cond_2

    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_1

    goto :goto_2

    :cond_1
    nop

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v2, -0x1

    mul-int/2addr v6, v7

    mul-int v7, v4, v4

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x2

    mul-int v8, v7, v2

    sub-int/2addr v8, v3

    mul-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x3

    mul-int/2addr v8, v7

    int-to-float v7, v8

    div-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v7, v7, v2

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v4

    mul-float/2addr v8, v0

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v10, v2, -0x2

    aget-object v9, v9, v10

    aget v9, v9, v4

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    aput v8, v7, v4

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v7, v7, v2

    neg-float v8, v1

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v10, v2, -0x1

    aget-object v9, v9, v10

    aget v9, v9, v4

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v10, v2, -0x1

    aget-object v9, v9, v10

    aget v9, v9, v4

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v10, v2, -0x2

    aget-object v9, v9, v10

    aget v9, v9, v4

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    aput v8, v7, v4

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v4

    mul-float/2addr v7, v0

    aput v7, v6, v4

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v2

    neg-float v7, v1

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v4

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v4

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
