.class Lcom/google/common/reflect/TypeResolver$1;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mappings:Ljava/util/Map;

.field final synthetic val$to:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No type mapping from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 6

    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "%s is not an array type."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 8

    const-class v0, Ljava/lang/reflect/ParameterizedType;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Inconsistent raw type: %s vs. %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v1, v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v4, v1

    array-length v6, v2

    if-ne v4, v6, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v6, "%s not compatible with %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v0, v3, v7

    invoke-static {v4, v6, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    nop

    :goto_1
    move v3, v5

    array-length v4, v1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    invoke-static {v4, v5, v6}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 11

    const-class v0, Ljava/lang/reflect/WildcardType;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v1

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    array-length v5, v3

    array-length v6, v4

    if-ne v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const-string v6, "Incompatible type: %s vs. %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v7

    iget-object v10, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v10, v9, v8

    invoke-static {v5, v6, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move v5, v7

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v8, v1, v5

    aget-object v9, v2, v5

    invoke-static {v6, v8, v9}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    move v5, v7

    array-length v6, v3

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v7, v3, v5

    aget-object v8, v4, v5

    invoke-static {v6, v7, v8}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 v7, v5, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
