.class public Lcom/android/internal/util/BitwiseInputStream;
.super Ljava/lang/Object;
.source "BitwiseInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseInputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    and-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v1, v1, 0x10

    sub-int/2addr v1, p1

    if-ltz p1, :cond_1

    const/16 v2, 0x8

    if-gt p1, v2, :cond_1

    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v3, v2

    :cond_0
    ushr-int v2, v3, v1

    const/4 v3, -0x1

    rsub-int/lit8 v4, p1, 0x20

    ushr-int/2addr v3, v4

    and-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    return v2

    :cond_1
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal read (pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bits "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readByteArray(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    new-array v1, v0, [B

    nop

    :goto_1
    if-ge v2, v0, :cond_1

    shl-int/lit8 v3, v2, 0x3

    sub-int v3, p1, v3

    const/16 v4, 0x8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    sub-int/2addr v4, v3

    shl-int v4, v5, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public skip(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal skip (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bits "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
