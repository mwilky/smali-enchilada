.class Lcom/google/common/util/concurrent/Futures$1$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$1;

.field final synthetic val$thrownFromDelegate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$1;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/Futures$1;

    .line 632
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$1$1;->this$0:Lcom/google/common/util/concurrent/Futures$1;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$1$1;->val$thrownFromDelegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1$1;->val$thrownFromDelegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 635
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1$1;->this$0:Lcom/google/common/util/concurrent/Futures$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$1;->val$delegateTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 636
    return-void
.end method
