.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
.super Ljava/lang/Object;
.source "Asn1Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_NODE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE_BYTES:[B

.field private static final INT_BYTES:I = 0x4

.field private static final TRUE_BYTES:[B


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstructed:Z

.field private mDataBytes:[B

.field private mDataLength:I

.field private mDataOffset:I

.field private mEncodedLength:I

.field private final mTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->TRUE_BYTES:[B

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->FALSE_BYTES:[B

    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    nop

    :goto_0
    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget v3, v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->calculateEncodedBytesNumForLength(I)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/List;Lcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(ILjava/util/List;)V

    return-void
.end method

.method constructor <init>(I[BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->isConstructedTag(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iput p3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iput p4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->calculateEncodedBytesNumForLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->isConstructedTag(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()[B
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->TRUE_BYTES:[B

    return-object v0
.end method

.method static synthetic access$200()[B
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->FALSE_BYTES:[B

    return-object v0
.end method

.method private static calculateEncodedBytesNumForLength(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private static isConstructedTag(I)Z
    .locals 3

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;-><init>(ILcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V

    return-object v0
.end method

.method private write([BI)I
    .locals 3

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/2addr v0, p2

    :goto_0
    iget-boolean p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {p2, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr v0, p2

    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public asBits()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverse(I)I

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse data bytes as boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse data bytes as boolean: length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    new-array v0, v0, [B

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v4, "Cannot parse data bytes."

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asInteger()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asRawLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToRawLong([BII)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v7

    if-ne v7, v0, :cond_0

    move-object v4, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move-object p1, v4

    array-length v5, p2

    if-lt v1, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v1, 0x1

    aget v0, p2, v1

    nop

    move v1, v5

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;-><init>(I)V

    throw v2

    :cond_5
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;-><init>(I)V

    throw v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getChildren(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    return-object v3
.end method

.method public getDataLength()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    return v0
.end method

.method public getEncodedLength()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    return v0
.end method

.method public getHeadAsHex()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    return v0
.end method

.method public varargs hasChild(I[I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public hasValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    return v0
.end method

.method public toBytes()[B
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    return-object v0
.end method

.method public toHex()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBytes([BI)V
    .locals 3

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to write. Required bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
