.class public Lcom/android/systemui/fingerprint/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# instance fields
.field private final BRIGHTNESS_ALPHA_ARRAY:[[I

.field private final TAG:Ljava/lang/String;

.field private TYPE_DIM:I

.field private TYPE_DISABLE:I

.field private TYPE_HIGH_LIGHT:I

.field private TYPE_NORMAL:I

.field private mContext:Landroid/content/Context;

.field private mDefaultBacklight:I

.field public mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mType:I

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    const/16 v4, 0x15

    new-array v4, v4, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v4, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    aput-object v0, v4, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v1, 0xa

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v1, 0xb

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v4, v1

    iput-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xec
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xeb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xea
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe8
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe4
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xdc
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xd4
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x83
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x60
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x53
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x3c
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x7d0
        0x83
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    const/16 v4, 0x15

    new-array v4, v4, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v4, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    aput-object v0, v4, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v1, 0xa

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v1, 0xb

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v4, v1

    iput-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xec
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xeb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xea
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe8
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe4
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xdc
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xd4
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x83
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x60
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x53
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x3c
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x7d0
        0x83
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    const/16 v4, 0x15

    new-array v4, v4, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v4, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    aput-object v0, v4, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v1, 0xa

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v1, 0xb

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v4, v1

    iput-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xec
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xeb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xea
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe8
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe4
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xdc
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xd4
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x83
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x60
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x53
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x3c
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x7d0
        0x83
    .end array-data
.end method

.method private getDimAlpha()I
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mDefaultBacklight:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    array-length v1, v1

    const-string v2, "CircleImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    if-lt v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v3, v5, v3

    aget v3, v3, v4

    return v3

    :cond_2
    if-ne v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    add-int/lit8 v5, v1, -0x1

    aget-object v3, v3, v5

    aget v3, v3, v4

    return v3

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    aget v6, v5, v3

    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v5, v5, v2

    aget v7, v5, v3

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    add-int/lit8 v5, v2, -0x1

    aget-object v3, v3, v5

    aget v8, v3, v4

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v3, v3, v2

    aget v9, v3, v4

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/fingerprint/CircleImageView;->interpolate(IIIII)I

    move-result v3

    return v3
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    const-string v1, "#00FF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initPosition(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setY(F)V

    return-void
.end method

.method private interpolate(IIIII)I
    .locals 6

    const/4 v0, 0x0

    sub-int v1, p5, p4

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int v3, p1, p2

    mul-int/2addr v1, v3

    sub-int v3, p3, p2

    div-int/2addr v1, v3

    div-int/lit8 v3, v1, 0x2

    rem-int/lit8 v4, v1, 0x2

    sub-int v5, p2, p3

    if-eqz v5, :cond_0

    sub-int v5, p5, p4

    if-eqz v5, :cond_0

    sub-int v5, p1, p2

    mul-int/2addr v2, v5

    sub-int v5, p1, p3

    mul-int/2addr v2, v5

    sub-int v5, p5, p4

    div-int/2addr v2, v5

    sub-int v5, p2, p3

    div-int v0, v2, v5

    :cond_0
    add-int v2, p4, v3

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    return v2
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getId()I

    move-result v0

    const v1, 0x7f0a02d6

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    goto :goto_0

    :cond_0
    const v1, 0x7f0a02d5

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    goto :goto_0

    :cond_1
    const v1, 0x7f0a02d4

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    goto :goto_0

    :cond_2
    const v1, 0x7f0a02d3

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    :cond_3
    :goto_0
    const-string v1, "CircleImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->initPaint()V

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->initPosition(Landroid/content/Context;)V

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mDefaultBacklight:I

    return-void
.end method

.method public onBrightnessChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->updateIconDim()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    div-float v5, v2, v4

    div-float v6, v1, v4

    div-float v7, v2, v4

    float-to-double v7, v7

    float-to-double v9, v1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :cond_3
    iget v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v3, v5, :cond_4

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_4
    div-float v3, v2, v4

    div-float v4, v1, v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->updateIconDim()V

    :cond_0
    return-void
.end method

.method public updateIconDim()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getDimAlpha()I

    move-result v0

    const-string v1, "CircleImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIconDim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const-string v2, "sys.fod.icon.dim"

    const/16 v3, 0x46

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const-string v3, "CircleImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alpha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", ratio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    return-void
.end method
