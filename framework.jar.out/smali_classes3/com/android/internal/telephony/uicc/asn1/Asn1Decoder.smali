.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
.super Ljava/lang/Object;
.source "Asn1Decoder.java"


# instance fields
.field private final mEnd:I

.field private mPosition:I

.field private final mSrc:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    iput p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: bytes=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    return v0
.end method

.method public hasNextNode()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    move v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit8 v2, v0, 0x1f

    const/16 v4, 0x1f

    if-ne v2, v4, :cond_1

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v3, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    const/4 v4, 0x0

    if-ge v3, v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    sub-int v5, v3, v1

    invoke-static {v2, v1, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v0, v4, v3

    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    and-int/lit8 v3, v0, 0x7f

    add-int v4, v5, v3

    iget v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-gt v4, v6, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    nop

    add-int/2addr v5, v3

    move v3, v4

    :goto_1
    add-int v4, v5, v3

    iget v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-gt v4, v6, :cond_3

    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    invoke-direct {v4, v2, v6, v5, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    add-int v6, v5, v3

    iput v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    return-object v4

    :cond_3
    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incomplete data at position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", expected bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", actual bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v4

    :catch_0
    move-exception v4

    new-instance v6, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse length at position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7, v4}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse length at position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v5, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse tag at position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_5
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid length at position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No bytes to parse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
