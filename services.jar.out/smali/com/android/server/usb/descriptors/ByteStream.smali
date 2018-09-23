.class public final Lcom/android/server/usb/descriptors/ByteStream;
.super Ljava/lang/Object;
.source "ByteStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteStream"


# instance fields
.field private final mBytes:[B

.field private mIndex:I

.field private mReadCount:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public advance(I)V
    .locals 4

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public available()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte()B
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getReadCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    return v0
.end method

.method public getUnsignedByte()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public peekByte()B
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public resetReadCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    return-void
.end method

.method public reverse(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public unpackUsbInt()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v3

    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public unpackUsbShort()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public unpackUsbTriple()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
