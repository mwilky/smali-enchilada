.class public final Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FunctionCall"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;


# instance fields
.field public function:I

.field public liveOnly:Z

.field public name:I

.field public property:[I

.field public serverSide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

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
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-nez v1, :cond_0

    mul-int/2addr v0, v3

    goto :goto_1

    :cond_0
    move v1, v0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    mul-int v1, v3, v0

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    add-int/2addr v1, v4

    mul-int v0, v3, v1

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    add-int/2addr v0, v4

    mul-int v1, v3, v0

    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    add-int/2addr v1, v4

    mul-int v0, v3, v1

    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v4, :cond_3

    move v5, v6

    nop

    :cond_3
    add-int/2addr v0, v5

    mul-int/2addr v3, v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v3, v2

    return v3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_7

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    goto :goto_2

    :cond_3
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v2, v2

    add-int v3, v2, v1

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    :goto_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v2

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    nop

    :cond_7
    :goto_2
    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
