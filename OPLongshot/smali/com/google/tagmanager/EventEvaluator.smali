.class Lcom/google/tagmanager/EventEvaluator;
.super Ljava/lang/Object;
.source "EventEvaluator.java"


# instance fields
.field private final mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

.field private final mRuntime:Lcom/google/tagmanager/Runtime;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/Runtime;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/tagmanager/EventEvaluator;->mRuntime:Lcom/google/tagmanager/Runtime;

    invoke-virtual {p1}, Lcom/google/tagmanager/Runtime;->getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/tagmanager/Runtime;->getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/EventEvaluator;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resource must be the same as the resource in runtime"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "runtime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method evaluateEvent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this code not yet written"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
