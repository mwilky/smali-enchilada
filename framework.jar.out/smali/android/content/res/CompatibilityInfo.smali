.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field static final TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field private DEBUG:Z

.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_e

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v1, :cond_e

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_2

    or-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-nez p4, :cond_2

    or-int/lit8 v5, v5, 0x22

    :cond_2
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    if-nez p4, :cond_3

    or-int/lit8 v5, v5, 0x22

    :cond_3
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x2

    :cond_4
    if-eqz p4, :cond_5

    and-int/lit8 v5, v5, -0x3

    :cond_5
    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_6

    and-int/lit8 v0, v0, -0x9

    :cond_6
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_1
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_7

    and-int/lit8 v0, v0, -0x9

    :cond_7
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_8

    or-int/lit8 v0, v0, 0x4

    :cond_8
    :goto_0
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_a

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_9

    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    :cond_9
    if-nez v6, :cond_b

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_a
    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x4

    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    iget v8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-nez v8, :cond_c

    const/16 v8, 0xa0

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_c
    if-eqz v7, :cond_d

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v8, v8

    iget v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_7

    :cond_e
    :goto_2
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v1, :cond_f

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_3

    :cond_f
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_3
    if-nez v1, :cond_10

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    :cond_10
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_11

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_4

    :cond_11
    move v3, v1

    :goto_4
    if-ge v3, v1, :cond_12

    move v3, v1

    :cond_12
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/16 v5, 0x140

    if-le v1, v5, :cond_13

    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    :cond_13
    if-eqz v4, :cond_14

    if-le p3, v4, :cond_14

    or-int/lit8 v0, v0, 0xa

    goto :goto_5

    :cond_14
    if-lt v3, p3, :cond_15

    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    :cond_15
    if-eqz p4, :cond_16

    or-int/lit8 v0, v0, 0x8

    :cond_16
    :goto_5
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v5

    if-eqz v5, :cond_17

    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v6, v6

    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v6, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v6

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    :goto_6
    nop

    :goto_7
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget-boolean v1, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    if-eqz v1, :cond_18

    const-string v1, "CompatibilityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCompatibilityFlags - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CompatibilityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationDensity - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CompatibilityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationScale - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 13

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v0, v1, :cond_0

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v0

    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    const v6, 0x3fe3bbbc

    :cond_1
    int-to-float v7, v4

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    float-to-int v5, v7

    if-ge v0, v1, :cond_2

    move v7, v4

    move v8, v5

    goto :goto_1

    :cond_2
    move v7, v5

    move v8, v4

    :goto_1
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    cmpg-float v11, v9, v10

    if-gez v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v10

    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_4
    if-eqz p1, :cond_5

    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_5
    return v11
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    :cond_4
    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isScalingRequired()Z
    .locals 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needsCompatResources()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
