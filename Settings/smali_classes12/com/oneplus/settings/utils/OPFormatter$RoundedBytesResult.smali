.class Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "OPFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/utils/OPFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final fractionDigits:I

.field public final roundedBytes:J

.field public final units:Landroid/icu/util/MeasureUnit;

.field public final value:F


# direct methods
.method private constructor <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->value:F

    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    iput p3, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->fractionDigits:I

    iput-wide p4, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->roundedBytes:J

    return-void
.end method

.method static roundBytes(JI)Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;
    .locals 15

    move-wide v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    neg-long v5, v0

    long-to-float v5, v5

    goto :goto_1

    :cond_1
    long-to-float v5, v0

    :goto_1
    sget-object v6, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v7, 0x1

    const/high16 v9, 0x44610000    # 900.0f

    cmpl-float v10, v5, v9

    const/high16 v11, 0x447a0000    # 1000.0f

    if-lez v10, :cond_2

    sget-object v6, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v7, 0x3e8

    div-float/2addr v5, v11

    :cond_2
    cmpl-float v10, v5, v9

    const-wide/16 v12, 0x3e8

    if-lez v10, :cond_3

    sget-object v6, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v7, v12

    div-float/2addr v5, v11

    :cond_3
    cmpl-float v10, v5, v9

    if-lez v10, :cond_4

    sget-object v6, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v7, v12

    div-float/2addr v5, v11

    :cond_4
    cmpl-float v10, v5, v9

    if-lez v10, :cond_5

    sget-object v6, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v7, v12

    div-float/2addr v5, v11

    :cond_5
    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPFormatter;->access$000()Landroid/icu/util/MeasureUnit;

    move-result-object v6

    mul-long/2addr v7, v12

    div-float/2addr v5, v11

    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x42c80000    # 100.0f

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_8

    const/16 v9, 0x64

    const/4 v10, 0x2

    goto :goto_3

    :cond_8
    const/high16 v9, 0x41200000    # 10.0f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_a

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_9

    const/16 v9, 0xa

    const/4 v10, 0x1

    goto :goto_3

    :cond_9
    const/16 v9, 0x64

    const/4 v10, 0x2

    goto :goto_3

    :cond_a
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_3

    :cond_b
    const/16 v9, 0x64

    const/4 v10, 0x2

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_3
    move v11, v9

    move v12, v10

    if-eqz v4, :cond_d

    neg-float v5, v5

    :cond_d
    and-int/lit8 v9, p2, 0x2

    if-nez v9, :cond_e

    :goto_4
    move-wide v13, v2

    goto :goto_5

    :cond_e
    int-to-float v2, v11

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    int-to-long v9, v11

    div-long/2addr v2, v9

    goto :goto_4

    :goto_5
    new-instance v2, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;

    move-object v9, v2

    move v10, v5

    move v3, v11

    move-object v11, v6

    invoke-direct/range {v9 .. v14}, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v2
.end method
