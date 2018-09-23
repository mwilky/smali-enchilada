.class public final Lcom/google/analytics/containertag/proto/Serving$CacheOption;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$CacheOption;


# instance fields
.field public expirationSeconds:I

.field public gcacheExpirationSeconds:I

.field public level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->cachedSize:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->cachedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    goto :goto_2

    :cond_5
    :goto_1
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    :cond_6
    :goto_2
    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
