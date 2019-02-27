.class Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/android/framework/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/framework/protobuf/nano/Extension<",
        "TM;TT;>;"
    }
.end annotation


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZII)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/android/framework/protobuf/nano/Extension$1;)V

    iput p5, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iput p6, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected non-packable type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    nop

    :goto_0
    move v2, v3

    if-ge v2, v1, :cond_0

    nop

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_0
    goto/16 :goto_7

    :pswitch_1
    nop

    :goto_1
    move v2, v3

    if-ge v2, v1, :cond_1

    nop

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_1
    goto/16 :goto_7

    :pswitch_2
    nop

    :goto_2
    move v2, v3

    if-ge v2, v1, :cond_2

    nop

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_2
    goto :goto_7

    :pswitch_3
    nop

    :goto_3
    move v2, v3

    if-ge v2, v1, :cond_3

    nop

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    goto :goto_3

    :cond_3
    goto :goto_7

    :pswitch_4
    move v0, v1

    goto :goto_7

    :pswitch_5
    nop

    :goto_4
    move v2, v3

    if-ge v2, v1, :cond_4

    nop

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    goto :goto_4

    :cond_4
    goto :goto_7

    :pswitch_6
    nop

    :goto_5
    move v2, v3

    if-ge v2, v1, :cond_5

    nop

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    goto :goto_5

    :cond_5
    goto :goto_7

    :pswitch_7
    nop

    :goto_6
    move v2, v3

    if-ge v2, v1, :cond_6

    nop

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    goto :goto_6

    :cond_6
    goto :goto_7

    :pswitch_8
    mul-int/lit8 v0, v1, 0x4

    goto :goto_7

    :pswitch_9
    mul-int/lit8 v0, v1, 0x8

    nop

    :goto_7
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    nop

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected repeated extension tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unequal to both non-packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v2

    return v2

    :pswitch_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v2

    return v2

    :pswitch_3
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v2

    return v2

    :pswitch_4
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v2

    return v2

    :pswitch_5
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v2

    return v2

    :pswitch_6
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v2

    return v2

    :pswitch_7
    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v2

    return v2

    :pswitch_8
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    return v2

    :pswitch_9
    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    return v2

    :pswitch_a
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v2

    return v2

    :pswitch_b
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v2

    return v2

    :pswitch_c
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    return v2

    :pswitch_d
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    return v2

    :pswitch_e
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    return v2

    :pswitch_f
    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    return v2

    :pswitch_10
    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget v0, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_0
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto/16 :goto_f

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_f

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    :try_start_0
    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unpackable type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    nop

    :goto_0
    move v2, v3

    if-ge v2, v0, :cond_1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_1
    goto/16 :goto_e

    :pswitch_1
    nop

    :goto_1
    move v2, v3

    if-ge v2, v0, :cond_2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_2
    goto/16 :goto_e

    :pswitch_2
    nop

    :goto_2
    move v2, v3

    if-ge v2, v0, :cond_3

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_3
    goto/16 :goto_e

    :pswitch_3
    nop

    :goto_3
    move v2, v3

    if-ge v2, v0, :cond_4

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_3

    :cond_4
    goto/16 :goto_e

    :pswitch_4
    nop

    :goto_4
    move v2, v3

    if-ge v2, v0, :cond_5

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_4

    :cond_5
    goto/16 :goto_e

    :pswitch_5
    nop

    :goto_5
    move v2, v3

    if-ge v2, v0, :cond_6

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_5

    :cond_6
    goto/16 :goto_e

    :pswitch_6
    nop

    :goto_6
    move v2, v3

    if-ge v2, v0, :cond_7

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_6

    :cond_7
    goto/16 :goto_e

    :pswitch_7
    nop

    :goto_7
    move v2, v3

    if-ge v2, v0, :cond_8

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_7

    :cond_8
    goto/16 :goto_e

    :pswitch_8
    nop

    :goto_8
    move v2, v3

    if-ge v2, v0, :cond_9

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_8

    :cond_9
    goto :goto_e

    :pswitch_9
    nop

    :goto_9
    move v2, v3

    if-ge v2, v0, :cond_a

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_9

    :cond_a
    goto :goto_e

    :pswitch_a
    nop

    :goto_a
    move v2, v3

    if-ge v2, v0, :cond_b

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_a

    :cond_b
    goto :goto_e

    :pswitch_b
    nop

    :goto_b
    move v2, v3

    if-ge v2, v0, :cond_c

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_b

    :cond_c
    goto :goto_e

    :pswitch_c
    nop

    :goto_c
    move v2, v3

    if-ge v2, v0, :cond_d

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_c

    :cond_d
    goto :goto_e

    :pswitch_d
    nop

    :goto_d
    move v2, v3

    if-ge v2, v0, :cond_e

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v2, 0x1

    goto :goto_d

    :cond_e
    nop

    :goto_e
    nop

    nop

    :goto_f
    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected repeated extension tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unequal to both non-packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1

    :pswitch_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    goto/16 :goto_0

    :pswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    :pswitch_4
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    goto/16 :goto_0

    :pswitch_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    goto :goto_0

    :pswitch_7
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    goto :goto_0

    :pswitch_8
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    goto :goto_0

    :pswitch_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    goto :goto_0

    :pswitch_b
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    goto :goto_0

    :pswitch_c
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    goto :goto_0

    :pswitch_d
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    goto :goto_0

    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    goto :goto_0

    :pswitch_f
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    goto :goto_0

    :pswitch_10
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    nop

    :goto_0
    nop

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
