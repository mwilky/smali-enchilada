.class public Landroid/os/VibrationEffect$Waveform;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Waveform"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$Waveform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAmplitudes:[I

.field public final mRepeat:I

.field public final mTimings:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$Waveform$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Waveform$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Waveform;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    return-void
.end method

.method public constructor <init>([J[II)V
    .locals 3

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    return-void
.end method

.method private static hasNonZeroEntry([J)Z
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/os/VibrationEffect$Waveform;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget-object v3, v0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    iget-object v3, v0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    iget v3, v0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getAmplitudes()[I
    .locals 1

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    return-object v0
.end method

.method public getDuration()J
    .locals 7

    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    if-ltz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    add-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getRepeatIndex()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    return v0
.end method

.method public getTimings()[J
    .locals 1

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    const/16 v2, 0x25

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public resolve(I)Landroid/os/VibrationEffect$Waveform;
    .locals 4

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    aput p1, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/VibrationEffect$Waveform;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget v3, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-direct {v1, v2, v0, v3}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Amplitude is negative or greater than MAX_AMPLITUDE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scale(FI)Landroid/os/VibrationEffect;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/os/VibrationEffect$Waveform;

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    iget v3, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-direct {v0, v1, v2, v3}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    invoke-static {v2, p1, p2}, Landroid/os/VibrationEffect$Waveform;->scale(IFI)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/VibrationEffect$Waveform;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget v3, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-direct {v1, v2, v0, v3}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waveform{mTimings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmplitudes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 6

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v0, v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v1, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v0}, Landroid/os/VibrationEffect$Waveform;->hasNonZeroEntry([J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, -0x3

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timings must all be >= 0 (timings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v2, v0

    :goto_1
    const/4 v3, -0x1

    if-ge v1, v2, :cond_3

    aget v4, v0, v1

    if-lt v4, v3, :cond_2

    const/16 v3, 0xff

    if-gt v4, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitudes must all be DEFAULT_AMPLITUDE or between 0 and 255 (amplitudes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    if-lt v0, v3, :cond_4

    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v1, v1

    if-ge v0, v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repeat index must be within the bounds of the timings array (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimings[0] must all be >= -3 (timings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at least one timing must be non-zero (timings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", amplitudes.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
