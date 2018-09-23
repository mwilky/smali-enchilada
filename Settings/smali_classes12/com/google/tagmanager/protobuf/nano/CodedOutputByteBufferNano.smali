.class public final Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->buffer:[B

    iput p2, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->limit:I

    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static computeByteArraySize(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeByteArraySizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeByteArraySizeNoTag([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSize(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeFixed32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static computeInt64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    return v0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xa

    return v0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    array-length v2, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static encodeZigZag32(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft()I
    .locals 2

    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->limit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeByteArrayNoTag([B)V

    return-void
.end method

.method public writeByteArrayNoTag([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method

.method public writeBytes(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    return-void
.end method

.method public writeBytesNoTag([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method

.method public writeDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeGroup(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    return-void
.end method

.method public writeGroupNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    :goto_0
    return-void
.end method

.method public writeInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method

.method public writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->limit:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    aput-byte p1, v0, v1

    return-void

    :cond_0
    new-instance v0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->limit:I

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public writeRawByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->limit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->position:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->limit:I

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method

.method public writeTag(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method
