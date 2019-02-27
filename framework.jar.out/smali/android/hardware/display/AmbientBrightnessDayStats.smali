.class public final Landroid/hardware/display/AmbientBrightnessDayStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessDayStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBucketBoundaries:[F

.field private final mLocalDate:Ljava/time/LocalDate;

.field private final mStats:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/AmbientBrightnessDayStats$1;

    invoke-direct {v0}, Landroid/hardware/display/AmbientBrightnessDayStats$1;-><init>()V

    sput-object v0, Landroid/hardware/display/AmbientBrightnessDayStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/display/AmbientBrightnessDayStats$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;[F[F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bucketBoundaries"

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    array-length v0, p2

    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    invoke-static {p2}, Landroid/hardware/display/AmbientBrightnessDayStats;->checkSorted([F)V

    if-nez p3, :cond_0

    array-length v0, p2

    new-array p3, v0, [F

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "stats"

    invoke-static {p3, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_1

    :goto_0
    iput-object p1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    iput-object p2, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    iput-object p3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries and stats must be of same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries must contain at least 1 value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSorted([F)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget v2, p0, v0

    move v3, v2

    move v2, v1

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    aget v4, p0, v2

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    aget v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getBucketIndex(F)I
    .locals 5

    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v0, v1, :cond_4

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    cmpg-float v3, v3, p1

    if-gez v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    cmpl-float v3, v3, p1

    if-lez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
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

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/display/AmbientBrightnessDayStats;

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getBucketBoundaries()[F
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    return-object v0
.end method

.method public getLocalDate()Ljava/time/LocalDate;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    return-object v0
.end method

.method public getStats()[F
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public log(FF)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketIndex(F)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
