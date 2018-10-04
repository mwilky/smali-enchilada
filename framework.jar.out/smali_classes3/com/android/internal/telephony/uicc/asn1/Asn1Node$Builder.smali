.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
.super Ljava/lang/Object;
.source "Asn1Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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

.field private final mTag:I


# direct methods
.method private constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mTag:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Builder should be created for a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(ILcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 5

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-static {p2}, Ljava/lang/Integer;->reverse(I)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    rsub-int/lit8 v4, v1, 0x4

    mul-int/lit8 v4, v4, 0x8

    shr-int v4, p2, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    aget-byte v4, v0, v1

    if-eqz v4, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v2

    add-int/lit8 v1, v3, -0x1

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->countTrailingZeros(B)B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 4

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$100()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$200()[B

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsBytesFromHex(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 1

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 4

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 4

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildren([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 4

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mTag:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(ILjava/util/List;Lcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V

    return-object v0
.end method
