.class Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;
.super Ljava/lang/Object;
.source "OIMCRemoteActionStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/oimc/OIMCRemoteActionStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "funcRunnable"
.end annotation


# instance fields
.field action:I

.field arg:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;


# direct methods
.method public constructor <init>(Lcom/oneplus/oimc/OIMCRemoteActionStub;ILjava/lang/String;)V
    .locals 0
    .param p2, "action"    # I
    .param p3, "arg"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p2, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    .line 22
    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    iget v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/oimc/IOPFunction;->start(Ljava/lang/Object;)I

    goto :goto_0

    .line 29
    :cond_0
    iget v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/oimc/IOPFunction;->stop(Ljava/lang/Object;)I

    goto :goto_0

    .line 31
    :cond_1
    iget v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 32
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/oimc/IOPFunction;->config(Ljava/lang/Object;)I

    .line 33
    :cond_2
    :goto_0
    return-void
.end method
