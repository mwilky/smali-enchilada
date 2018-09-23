.class Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;
.super Ljava/lang/Object;
.source "DebugResolvedFunctionCallBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedFunctionCallBuilder;


# instance fields
.field private resolvedFunctionCall:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;->resolvedFunctionCall:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-void
.end method


# virtual methods
.method public createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;
    .locals 3

    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    iput-object p1, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;->resolvedFunctionCall:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v2, p0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;->resolvedFunctionCall:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-static {v2, v0}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    new-instance v1, Lcom/google/tagmanager/DebugResolvedPropertyBuilder;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/DebugResolvedPropertyBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;)V

    return-object v1
.end method

.method public setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;->resolvedFunctionCall:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {p1}, Lcom/google/tagmanager/DebugValueBuilder;->copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method
