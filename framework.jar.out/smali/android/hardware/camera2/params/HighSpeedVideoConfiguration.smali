.class public final Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
.super Ljava/lang/Object;
.source "HighSpeedVideoConfiguration.java"


# static fields
.field private static final HIGH_SPEED_MAX_MINIMAL_FPS:I = 0x78


# instance fields
.field private final mBatchSizeMax:I

.field private final mFpsMax:I

.field private final mFpsMin:I

.field private final mFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mSize:Landroid/util/Size;

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fpsMin"    # I
    .param p4, "fpsMax"    # I
    .param p5, "batchSizeMax"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x78

    if-lt p4, v0, :cond_0

    .line 58
    iput p4, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    .line 59
    const-string/jumbo v0, "width must be positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    .line 60
    const-string v0, "height must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    .line 61
    const-string v0, "fpsMin must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    .line 62
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mSize:Landroid/util/Size;

    .line 63
    const-string v0, "batchSizeMax must be positive"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    .line 64
    new-instance v0, Landroid/util/Range;

    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsRange:Landroid/util/Range;

    .line 65
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fpsMax must be at least 120"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 144
    return v1

    .line 146
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    if-eqz v2, :cond_3

    .line 147
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 148
    .local v2, "other":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    iget v4, v2, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    iget v4, v2, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    iget v4, v2, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    if-ne v3, v4, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 154
    .end local v2    # "other":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_3
    return v0
.end method

.method public getBatchSizeMax()I
    .locals 1

    .line 118
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    return v0
.end method

.method public getFpsMax()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    return v0
.end method

.method public getFpsMin()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    return v0
.end method

.method public getFpsRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 82
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
