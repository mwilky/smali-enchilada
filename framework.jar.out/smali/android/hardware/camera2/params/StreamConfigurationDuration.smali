.class public final Landroid/hardware/camera2/params/StreamConfigurationDuration;
.super Ljava/lang/Object;
.source "StreamConfigurationDuration.java"


# instance fields
.field private final mDurationNs:J

.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    const-string/jumbo v0, "width must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    const-string v0, "height must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    const-string v0, "durationNs must be non-negative"

    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    return-wide v0
.end method

.method public final getFormat()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    long-to-int v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
