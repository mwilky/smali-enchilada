.class final Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeVariableInvocationHandler"
.end annotation


# static fields
.field private static final typeVariableMethods:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final typeVariableImpl:Lcom/google/common/reflect/Types$TypeVariableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/Types$TypeVariableImpl<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/common/reflect/Types$TypeVariableImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/google/common/reflect/Types$TypeVariableImpl;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableMethods:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method constructor <init>(Lcom/google/common/reflect/Types$TypeVariableImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/Types$TypeVariableImpl<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableImpl:Lcom/google/common/reflect/Types$TypeVariableImpl;

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;)Lcom/google/common/reflect/Types$TypeVariableImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableImpl:Lcom/google/common/reflect/Types$TypeVariableImpl;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableMethods:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;->typeVariableImpl:Lcom/google/common/reflect/Types$TypeVariableImpl;

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
