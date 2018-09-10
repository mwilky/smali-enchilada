.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation

# instance fields
.field mContext:Landroid/content/Context;

# static fields
.field private static final DEBUG:Z = false

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)F
    .locals 1
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$200([F[FFFFF)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .line 43
    invoke-static/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([F[F)Z
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F

    .line 43
    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessTweak()Z
    
    move-result v11
    
    const v0, 0x1070011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 56
    .local v0, "luxLevels":[F
    const v1, 0x1070010

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 58
    .local v1, "brightnessLevelsBacklight":[I
    const v2, 0x107000e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 60
    .local v2, "brightnessLevelsNits":[F
    const/4 v3, 0x1

    const/high16 v4, 0x1130000

    invoke-virtual {p0, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 64
    .local v4, "autoBrightnessAdjustmentMaxGamma":F
    const v5, 0x1070040

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 66
    .local v5, "nitsRange":[F
    if-eqz v11, :cond_stock
    
    const v6, 0x107007a
    
    goto :goto_skip
    
    :cond_stock
    const v6, 0x107003f
    
	:goto_skip
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 69
    .local v6, "backlightRange":[I
    invoke-static {v5, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 70
    invoke-static {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 71
    const v7, 0x10e0093

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 75
    .local v7, "minimumBacklight":I
    const/16 v8, 0xff

    .line 76
    .local v8, "maximumBacklight":I
    sget v9, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v10, 0x3ff

    if-ne v9, v10, :cond_0

    .line 77
    const v9, 0x10e0091

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    goto :goto_0

    .line 80
    :cond_0
    const v9, 0x10e0090

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 84
    :goto_0
    const/4 v9, 0x0

    aget v9, v6, v9

    if-gt v9, v7, :cond_1

    array-length v9, v6

    sub-int/2addr v9, v3

    aget v3, v6, v9

    if-ge v3, v8, :cond_2

    .line 86
    :cond_1
    const-string v3, "BrightnessMappingStrategy"

    const-string v9, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    new-instance v3, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>()V

    .line 90
    .local v3, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {v3, v0, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 91
    new-instance v9, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v10

    invoke-direct {v9, v10, v5, v6, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v9

    .line 93
    .end local v3    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v7    # "minimumBacklight":I
    .end local v8    # "maximumBacklight":I
    :cond_3
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    new-instance v3, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object v3

    .line 97
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method private static findInsertionPoint([FF)I
    .locals 2
    .param p0, "arr"    # [F
    .param p1, "val"    # F

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 293
    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 294
    return v0

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method private static getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 6
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "userLux"    # F
    .param p3, "userBrightness"    # F
    .param p4, "adjustment"    # F
    .param p5, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 379
    move-object v0, p0

    .line 380
    .local v0, "newLux":[F
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 384
    .local v1, "newBrightness":[F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p4, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p4

    .line 385
    neg-float v4, p4

    invoke-static {p5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 390
    .local v4, "gamma":F
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    .line 391
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 392
    aget v5, v1, v2

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v2

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v2    # "i":I
    :cond_0
    cmpl-float v2, p2, v3

    if-eqz v2, :cond_1

    .line 399
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 401
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 402
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 410
    .end local v2    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_1
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 111
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 112
    .local v0, "N":I
    new-array v1, v0, [F

    .line 113
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 114
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 4
    .param p0, "lux"    # [I

    .line 103
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 104
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 105
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static inferAutoBrightnessAdjustment(FFF)F
    .locals 5
    .param p0, "maxGamma"    # F
    .param p1, "desiredBrightness"    # F
    .param p2, "currentBrightness"    # F

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # NaNf

    .line 353
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 357
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 359
    :cond_1
    cmpl-float v2, p1, v3

    if-nez v2, :cond_2

    .line 360
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 363
    :cond_2
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 365
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_1

    .line 354
    :cond_3
    :goto_0
    sub-float v0, p1, p2

    .line 367
    :goto_1
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 374
    return v0
.end method

.method private static insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 5
    .param p0, "luxLevels"    # [F
    .param p1, "brightnessLevels"    # [F
    .param p2, "lux"    # F
    .param p3, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 260
    invoke-static {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 263
    .local v0, "idx":I
    array-length v1, p0

    if-ne v0, v1, :cond_0

    .line 264
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 265
    .local v1, "newLuxLevels":[F
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 266
    .local v2, "newBrightnessLevels":[F
    aput p2, v1, v0

    .line 267
    aput p3, v2, v0

    goto :goto_0

    .line 268
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_0
    aget v1, p0, v0

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    .line 269
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 270
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 271
    .restart local v2    # "newBrightnessLevels":[F
    aput p3, v2, v0

    goto :goto_0

    .line 273
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 274
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    aput p2, v1, v0

    .line 276
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 277
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    aput p3, v2, v0

    .line 281
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 282
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .locals 7
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 121
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p0

    if-eqz v1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    .line 124
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 125
    return v0

    .line 127
    :cond_1
    array-length v1, p0

    .line 128
    .local v1, "N":I
    aget v2, p0, v0

    .line 129
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 130
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_8

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 133
    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":F
    :goto_0
    if-ge v2, v1, :cond_7

    .line 134
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_6

    aget v6, p1, v2

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3

    goto :goto_2

    .line 137
    :cond_3
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_5

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 140
    :cond_4
    aget v3, p0, v2

    .line 141
    aget v5, p1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_5
    :goto_1
    return v0

    .line 135
    :cond_6
    :goto_2
    return v0

    .line 143
    .end local v2    # "i":I
    :cond_7
    return v4

    .line 131
    .end local v5    # "prevY":F
    .local v2, "prevX":F
    .local v3, "prevY":F
    :cond_8
    :goto_3
    return v0

    .line 122
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":F
    :cond_9
    :goto_4
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .locals 7
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 147
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 150
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 151
    return v0

    .line 153
    :cond_1
    array-length v1, p0

    .line 154
    .local v1, "N":I
    aget v2, p0, v0

    .line 155
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 156
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    if-ltz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 159
    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 160
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_5

    aget v6, p1, v2

    if-lt v5, v6, :cond_3

    goto :goto_1

    .line 163
    :cond_3
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    return v0

    .line 166
    :cond_4
    aget v3, p0, v2

    .line 167
    aget v5, p1, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_5
    :goto_1
    return v0

    .line 169
    .end local v2    # "i":I
    :cond_6
    return v4

    .line 157
    .end local v5    # "prevY":I
    .local v2, "prevX":F
    .local v3, "prevY":I
    :cond_7
    :goto_2
    return v0

    .line 148
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :cond_8
    :goto_3
    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "brightness"    # I

    .line 253
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    .line 255
    int-to-float v0, p0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static permissibleRatio(FF)F
    .locals 2
    .param p0, "currLux"    # F
    .param p1, "prevLux"    # F

    .line 342
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p0, v0

    .line 343
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p1

    .line 344
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 342
    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private static smoothCurve([F[FI)V
    .locals 8
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "idx"    # I

    .line 304
    aget v0, p0, p2

    .line 305
    .local v0, "prevLux":F
    aget v1, p1, p2

    .line 307
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 308
    aget v3, p0, v2

    .line 309
    .local v3, "currLux":F
    aget v4, p1, v2

    .line 310
    .local v4, "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 311
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 313
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_0

    .line 314
    goto :goto_1

    .line 316
    :cond_0
    move v0, v3

    .line 317
    move v1, v6

    .line 318
    aput v6, p1, v2

    .line 307
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_1
    :goto_1
    aget v0, p0, p2

    .line 322
    aget v1, p1, p2

    .line 323
    add-int/lit8 v2, p2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 324
    aget v3, p0, v2

    .line 325
    .restart local v3    # "currLux":F
    aget v4, p1, v2

    .line 326
    .restart local v4    # "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 327
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 329
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_2

    .line 330
    goto :goto_3

    .line 332
    :cond_2
    move v0, v3

    .line 333
    move v1, v6

    .line 334
    aput v6, p1, v2

    .line 323
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 339
    .end local v2    # "i":I
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getBrightness(F)F
.end method

.method public abstract getCurrentConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method getBrightnessTweak()Z
	.locals 2

	const-string v0, "tweaks.alternative.brightness"

    const v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1
    
    return v1
.end method
