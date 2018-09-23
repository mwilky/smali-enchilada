.class public final Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    iput-object p2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v2, v3

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int v3, v1, v2

    iget-object v4, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    aget-byte v4, v4, v0

    add-int v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
