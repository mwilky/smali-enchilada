.class public Landroid/net/nsd/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSeperator:B = 0x3dt


# instance fields
.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord$1;

    invoke-direct {v0}, Landroid/net/nsd/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Landroid/net/nsd/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method static synthetic access$000(Landroid/net/nsd/DnsSdTxtRecord;)[B
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-object v0
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v3

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getValue(I)[B
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v4, v4, v3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v0, v0, v3

    const/4 v4, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v3, v4

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    sub-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    new-array v1, v5, [B

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v3, v4

    add-int/lit8 v6, v6, 0x2

    sub-int v7, v0, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v1
.end method

.method private getValue(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v2

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private insert([B[BI)V
    .locals 10

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    const/4 v5, 0x1

    if-ge v3, p3, :cond_1

    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v6, v6

    if-ge v4, v6, :cond_1

    const/16 v6, 0xff

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v7, v7, v4

    add-int/2addr v7, v5

    and-int v5, v6, v7

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    array-length v3, p1

    add-int/2addr v3, v2

    if-eqz p2, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    add-int/2addr v3, v6

    array-length v6, v0

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    new-array v5, v6, [B

    iput-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, v0

    sub-int/2addr v5, v4

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    sub-int v8, v6, v5

    invoke-static {v0, v4, v7, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    int-to-byte v8, v3

    aput-byte v8, v7, v4

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v8, v4, 0x1

    array-length v9, p1

    invoke-static {p1, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    if-eqz p2, :cond_3

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v8, v4, 0x1

    array-length v9, p1

    add-int/2addr v8, v9

    const/16 v9, 0x3d

    aput-byte v9, v7, v8

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v8, p1

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x2

    invoke-static {p2, v1, v7, v8, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_3
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/net/nsd/DnsSdTxtRecord;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/nsd/DnsSdTxtRecord;

    iget-object v1, v0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRawData()[B
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public keyCount()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0xff

    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v3, v3, v1

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v6, v5

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [B

    iput-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v5, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v5

    sub-int/2addr v7, v2

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v1, v6, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    return v0

    :cond_1
    const/16 v4, 0xff

    add-int/lit8 v5, v3, 0x1

    and-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    const-string v3, "US-ASCII"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    nop

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-byte v4, v3, v0

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "= is not a valid character in key"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    array-length v0, v3

    add-int/2addr v0, v2

    const/16 v4, 0xff

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/net/nsd/DnsSdTxtRecord;->keyCount()I

    move-result v0

    :cond_3
    invoke-direct {p0, v3, v1, v0}, Landroid/net/nsd/DnsSdTxtRecord;->insert([B[BI)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "key should be US-ASCII"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
