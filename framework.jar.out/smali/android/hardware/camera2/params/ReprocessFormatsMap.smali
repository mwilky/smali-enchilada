.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final mEntry:[I

.field private final mInputCount:I


# direct methods
.method public constructor <init>([I)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "entry must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    aget v4, p1, v0

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v4

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    if-lt v1, v5, :cond_3

    aget v6, p1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    add-int v8, v0, v7

    aget v8, p1, v8

    invoke-static {v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    if-lez v6, :cond_2

    if-lt v1, v6, :cond_1

    add-int/2addr v0, v6

    sub-int/2addr v1, v6

    goto :goto_2

    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v2, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v2, "Input %x had no output format length listed"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iput v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iget-object v2, v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    :cond_2
    return v0
.end method

.method public getInputs()[I
    .locals 11

    iget v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v2

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    if-lt v4, v6, :cond_2

    iget-object v7, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v7, v7, v2

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, 0x1

    if-lez v7, :cond_1

    if-lt v4, v7, :cond_0

    add-int/2addr v2, v7

    sub-int/2addr v4, v7

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/AssertionError;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v6

    const/4 v3, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    const-string v3, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_1
    :goto_1
    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/AssertionError;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    const-string v3, "Input %x had no output format length listed"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    :cond_3
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v1

    return-object v1
.end method

.method public getOutputs(I)[I
    .locals 9

    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v3, v3, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    if-lt v2, v4, :cond_4

    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    if-lez v5, :cond_1

    if-lt v2, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    const-string v1, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_1
    :goto_1
    if-ne v3, p1, :cond_3

    new-array v4, v5, [I

    nop

    :goto_2
    if-ge v1, v5, :cond_2

    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    add-int v7, v0, v1

    aget v6, v6, v7

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v1

    return-object v1

    :cond_3
    add-int/2addr v0, v5

    sub-int/2addr v2, v5

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/AssertionError;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v1, "Input %x had no output format length listed"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Input format %x was not one in #getInputs"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
