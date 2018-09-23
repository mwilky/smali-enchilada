.class public final Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaExperimentRandom"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;


# instance fields
.field public key:Ljava/lang/String;

.field public lifetimeInMilliseconds:J

.field public maxRandom:J

.field public minRandom:J

.field public retainOriginalValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .locals 4

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->cachedSize:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    invoke-static {v1, v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    invoke-static {v1, v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->cachedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v0, v5

    mul-int v2, v1, v0

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-wide v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    ushr-long/2addr v7, v3

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v2, v5

    mul-int v0, v1, v2

    iget-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    add-int/2addr v0, v5

    mul-int v2, v1, v0

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    iget-wide v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    ushr-long/2addr v7, v3

    xor-long/2addr v5, v7

    long-to-int v3, v5

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v1, v4

    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    nop

    :cond_6
    :goto_1
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

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
