.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/util/Range<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-",
            "Landroid/util/Range<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/util/Range<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/util/Range<",
            "TT;>;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mClass:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    nop

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNativeType:I

    invoke-static {v2, v3}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mClass:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Comparable;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-class v5, Ljava/lang/Comparable;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Raw use of Range is not supported"

    invoke-direct {v0, v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/util/Range;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->getNativeSize()I

    move-result v0

    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v2

    add-int v3, v1, v2

    return v3
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->calculateMarshalSize(Landroid/util/Range;)I

    move-result p1

    return p1
.end method

.method public getNativeSize()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    return v1

    :cond_0
    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    return v1
.end method

.method public marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method
