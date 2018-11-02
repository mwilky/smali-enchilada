.class public final Lcom/google/tagmanager/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field static final MESSAGE_SET_ITEM:I = 0x1

.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE:I = 0x3

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID:I = 0x2

.field static final MESSAGE_SET_TYPE_ID_TAG:I

.field static final TAG_TYPE_BITS:I = 0x3

.field static final TAG_TYPE_MASK:I = 0x7

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v2

    sput v2, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v1

    sput v1, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    sput v3, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    new-array v0, v2, [I

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    new-array v0, v2, [J

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    new-array v0, v2, [F

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    new-array v0, v2, [D

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    new-array v0, v2, [Z

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v2, [[B

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    new-array v0, v2, [B

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

    new-array v0, v2, [Ljava/lang/Long;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

    new-array v0, v2, [Ljava/lang/Float;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

    new-array v0, v2, [Ljava/lang/Double;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

    new-array v0, v2, [Ljava/lang/Boolean;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeWireSize(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    iget v3, v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    iget v4, v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v4

    iget v5, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    if-ne v4, v5, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->isRepeatedField:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    iget-object v4, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v5, v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v4, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    return v0
.end method

.method public static getTagFieldNumber(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static parseUnknownField(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method

.method private static readData(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[B)TT;"
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    :try_start_0
    const-class v1, Ljava/lang/String;

    if-ne p0, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-ne p0, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    const-class v1, Ljava/lang/Long;

    if-ne p0, v1, :cond_3

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne p0, v1, :cond_4

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_4
    const-class v1, Ljava/lang/Float;

    if-ne p0, v1, :cond_5

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne p0, v1, :cond_6

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_6
    const-class v1, [B

    if-ne p0, v1, :cond_7

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_7
    const-class v1, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_8

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled extension field type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setExtension(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/lang/Object;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
            "TT;>;TT;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    iget v3, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;",
            "Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    sub-int v3, v2, v0

    invoke-virtual {p1, v0, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v3

    new-instance v4, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v3}, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private static write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [B

    move-object v1, v4

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    move v2, v3

    goto/16 :goto_0

    :cond_0
    const-class v2, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    invoke-static {p0, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    move v2, v3

    goto/16 :goto_0

    :cond_1
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_2

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    invoke-static {p0, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    move v2, v3

    goto/16 :goto_0

    :cond_2
    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    invoke-static {p0, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    move v2, v3

    goto/16 :goto_0

    :cond_3
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    move v2, v3

    goto/16 :goto_0

    :cond_4
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_5
    const-class v2, [B

    if-ne v0, v2, :cond_6

    move-object v2, p1

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeByteArraySizeNoTag([B)I

    move-result v4

    new-array v4, v4, [B

    move-object v1, v4

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeByteArrayNoTag([B)V

    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_6
    const-class v2, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v5

    add-int v6, v4, v5

    new-array v6, v6, [B

    move-object v1, v6

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    nop

    :goto_0
    nop

    nop

    new-instance v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    invoke-direct {v3, v2, v1}, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    return-object v3

    :cond_7
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled extension field type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;",
            "Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    iget v2, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    iget v3, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    iget-object v2, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    goto :goto_0

    :cond_1
    return-void
.end method
