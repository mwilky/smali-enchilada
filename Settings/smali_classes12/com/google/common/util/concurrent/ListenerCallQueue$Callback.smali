.class abstract Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ListenerCallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodCall:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodCall"    # Ljava/lang/String;

    .line 45
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    .line 42
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method abstract call(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method enqueueOn(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue<",
            "T",
            "L;",
            ">;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    .local p1, "queues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 54
    .local v1, "queue":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    invoke-virtual {v1, p0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->add(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)V

    .line 55
    .end local v1    # "queue":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
