.class public final Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataLayerEventEvaluationInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;


# instance fields
.field public results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    sget-object v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->cachedSize:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

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
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->cachedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v0, :cond_1

    mul-int/2addr v2, v1

    goto :goto_3

    :cond_1
    move v0, v4

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    mul-int v3, v1, v2

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v5

    :goto_2
    add-int v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v1, v4

    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .locals 6
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

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v3, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v3, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    nop

    :cond_6
    :goto_3
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

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

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

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
