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
    .param p1, "value"    # F
    .param p2, "units"    # Landroid/icu/util/MeasureUnit;
    .param p3, "fractionDigits"    # I
    .param p4, "roundedBytes"    # J

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->value:F

    .line 229
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 230
    iput p3, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->fractionDigits:I

    .line 231
    iput-wide p4, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->roundedBytes:J

    .line 232
    return-void
.end method

.method static roundBytes(JI)Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;
    .locals 15
    .param p0, "sizeBytes"    # J
    .param p2, "flags"    # I

    move-wide v0, p0

    .line 239
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 240
    .local v4, "isNegative":Z
    :goto_0
    if-eqz v4, :cond_1

    neg-long v5, v0

    long-to-float v5, v5

    goto :goto_1

    :cond_1
    long-to-float v5, v0

    .line 241
    .local v5, "result":F
    :goto_1
    sget-object v6, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 242
    .local v6, "units":Landroid/icu/util/MeasureUnit;
    const-wide/16 v7, 0x1

    .line 243
    .local v7, "mult":J
    const/high16 v9, 0x44610000    # 900.0f

    cmpl-float v10, v5, v9

    const/high16 v11, 0x447a0000    # 1000.0f

    if-lez v10, :cond_2

    .line 244
    sget-object v6, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 245
    const-wide/16 v7, 0x3e8

    .line 246
    div-float/2addr v5, v11

    .line 248
    :cond_2
    cmpl-float v10, v5, v9

    const-wide/16 v12, 0x3e8

    if-lez v10, :cond_3

    .line 249
    sget-object v6, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 250
    mul-long/2addr v7, v12

    .line 251
    div-float/2addr v5, v11

    .line 253
    :cond_3
    cmpl-float v10, v5, v9

    if-lez v10, :cond_4

    .line 254
    sget-object v6, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 255
    mul-long/2addr v7, v12

    .line 256
    div-float/2addr v5, v11

    .line 258
    :cond_4
    cmpl-float v10, v5, v9

    if-lez v10, :cond_5

    .line 259
    sget-object v6, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 260
    mul-long/2addr v7, v12

    .line 261
    div-float/2addr v5, v11

    .line 263
    :cond_5
    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    .line 264
    invoke-static {}, Lcom/oneplus/settings/utils/OPFormatter;->access$000()Landroid/icu/util/MeasureUnit;

    move-result-object v6

    .line 265
    mul-long/2addr v7, v12

    .line 266
    div-float/2addr v5, v11

    .line 273
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x42c80000    # 100.0f

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_7

    goto :goto_2

    .line 276
    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_8

    .line 277
    const/16 v9, 0x64

    .line 278
    .local v9, "roundFactor":I
    const/4 v10, 0x2

    goto :goto_3

    .line 279
    .end local v9    # "roundFactor":I
    :cond_8
    const/high16 v9, 0x41200000    # 10.0f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_a

    .line 280
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_9

    .line 281
    const/16 v9, 0xa

    .line 282
    .restart local v9    # "roundFactor":I
    const/4 v10, 0x1

    goto :goto_3

    .line 284
    .end local v9    # "roundFactor":I
    :cond_9
    const/16 v9, 0x64

    .line 285
    .restart local v9    # "roundFactor":I
    const/4 v10, 0x2

    goto :goto_3

    .line 288
    .end local v9    # "roundFactor":I
    :cond_a
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_b

    .line 289
    const/4 v9, 0x1

    .line 290
    .restart local v9    # "roundFactor":I
    const/4 v10, 0x0

    goto :goto_3

    .line 292
    .end local v9    # "roundFactor":I
    :cond_b
    const/16 v9, 0x64

    .line 293
    .restart local v9    # "roundFactor":I
    const/4 v10, 0x2

    goto :goto_3

    .line 274
    .end local v9    # "roundFactor":I
    :cond_c
    :goto_2
    const/4 v9, 0x1

    .line 275
    .restart local v9    # "roundFactor":I
    const/4 v10, 0x0

    .line 293
    .end local v9    # "roundFactor":I
    .local v11, "roundFactor":I
    .local v12, "roundDigits":I
    :goto_3
    move v11, v9

    move v12, v10

    .line 297
    if-eqz v4, :cond_d

    .line 298
    neg-float v5, v5

    .line 304
    :cond_d
    and-int/lit8 v9, p2, 0x2

    if-nez v9, :cond_e

    .line 305
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

    .line 307
    .local v13, "roundedBytes":J
    :goto_5
    new-instance v2, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;

    move-object v9, v2

    move v10, v5

    move v3, v11

    move-object v11, v6

    .end local v11    # "roundFactor":I
    .local v3, "roundFactor":I
    invoke-direct/range {v9 .. v14}, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v2
.end method
