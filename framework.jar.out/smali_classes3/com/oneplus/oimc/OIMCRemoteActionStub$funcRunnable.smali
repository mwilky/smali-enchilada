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

    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/oimc/IOPFunction;->start(Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/oimc/IOPFunction;->stop(Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->action:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->this$0:Lcom/oneplus/oimc/OIMCRemoteActionStub;

    iget-object v0, v0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;->arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/oimc/IOPFunction;->config(Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method
