.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mComponentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getComponentType()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p1

    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mNativeType:I

    invoke-static {p1, v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    return-void
.end method

.method private calculateElementMarshalSize(Landroid/hardware/camera2/marshal/Marshaler;Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TElem:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TTElem;>;",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private copyListToArray(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private marshalArrayElement(Landroid/hardware/camera2/marshal/Marshaler;Ljava/nio/ByteBuffer;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TElem:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TTElem;>;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    invoke-static {p3, p4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public calculateMarshalSize(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    sget v2, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v2, :cond_0

    mul-int v2, v0, v1

    return v2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-direct {p0, v4, p1, v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->calculateElementMarshalSize(Landroid/hardware/camera2/marshal/Marshaler;Ljava/lang/Object;I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getNativeSize()I
    .locals 1

    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-direct {p0, v2, p2, p1, v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->marshalArrayElement(Landroid/hardware/camera2/marshal/Marshaler;Ljava/nio/ByteBuffer;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    sget v1, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    div-int v2, v1, v0

    rem-int v3, v1, v0

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v5, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Arrays for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " must be packed tighly into a multiple of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; but there are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " left over bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->copyListToArray(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    move-object v1, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trailing bytes ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") left over after unpacking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
