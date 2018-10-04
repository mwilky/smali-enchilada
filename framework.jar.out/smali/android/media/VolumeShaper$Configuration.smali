.class public final Landroid/media/VolumeShaper$Configuration;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$Builder;,
        Landroid/media/VolumeShaper$Configuration$OptionFlag;,
        Landroid/media/VolumeShaper$Configuration$InterpolatorType;,
        Landroid/media/VolumeShaper$Configuration$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final TYPE_ID:I = 0x0

.field static final TYPE_SCALE:I = 0x1


# instance fields
.field private final mDurationMs:D

.field private final mId:I

.field private final mInterpolatorType:I

.field private final mOptionFlags:I

.field private final mTimes:[F

.field private final mType:I

.field private final mVolumes:[F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    const/16 v0, 0x10

    const/16 v4, 0x10

    new-array v5, v4, [F

    new-array v6, v4, [F

    new-array v7, v4, [F

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    int-to-float v9, v8

    const/high16 v10, 0x41700000    # 15.0f

    div-float/2addr v9, v10

    aput v9, v5, v8

    aget v9, v5, v8

    float-to-double v9, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v6, v8

    mul-float v10, v9, v9

    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v4}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v4, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v4

    sput-object v4, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v4, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v4}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v4, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    sput-object v1, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v0, Landroid/media/VolumeShaper$Configuration$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "negative id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(IIIDI[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void
.end method

.method synthetic constructor <init>(IIIDI[F[FLandroid/media/VolumeShaper$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method static synthetic access$100([F[FZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method static synthetic access$200(FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method static synthetic access$300([FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method private static checkCurveForErrors([F[FZ)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string/jumbo v0, "times array must be non-null"

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "volumes array must be non-null"

    return-object v0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_2

    const-string v0, "array length must match"

    return-object v0

    :cond_2
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    const-string v0, "array length must be at least 2"

    return-object v0

    :cond_3
    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_4

    const-string v0, "array length must be no larger than 16"

    return-object v0

    :cond_4
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    const-string/jumbo v0, "times must start at 0.f"

    return-object v0

    :cond_5
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, p0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    const-string/jumbo v0, "times must end at 1.f"

    return-object v0

    :cond_6
    nop

    :goto_0
    move v1, v3

    array-length v3, p0

    if-ge v1, v3, :cond_8

    aget v3, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget v5, p0, v5

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "times not monotonic increasing, check index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_a

    nop

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    aget v1, p1, v0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for log scale cannot be positive, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    nop

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_d

    aget v1, p1, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    aget v1, p1, v0

    cmpg-float v1, v1, v4

    if-lez v1, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for linear scale must be between 0.f and 1.f, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static checkCurveForErrorsAndThrowException([F[FZZ)V
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static checkValidVolumeAndThrowException(FZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dbfs volume must be 0.f or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volume must be >= 0.f and <= 1.f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static clampVolume([FZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    nop

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-lez v2, :cond_0

    aput v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-gez v2, :cond_2

    aput v1, p0, v0

    goto :goto_2

    :cond_2
    aget v2, p0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    aput v3, p0, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static getMaximumCurvePoints()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Landroid/media/VolumeShaper$Configuration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeShaper$Configuration;

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iget v4, v2, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iget v4, v2, Landroid/media/VolumeShaper$Configuration;->mId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iget v4, v2, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iget-wide v5, v2, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iget v4, v2, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iget-object v4, v2, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    iget-object v4, v2, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method getAllOptionFlags()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return v0
.end method

.method public getInterpolatorType()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return v0
.end method

.method public getOptionFlags()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTimes()[F
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return v0
.end method

.method public getVolumes()[F
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeShaper.Configuration{mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "}"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mOptionFlags = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDurationMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", mInterpolatorType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTimes[] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mVolumes[] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
