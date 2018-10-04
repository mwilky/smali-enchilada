.class final Lcom/oneplus/oimc/OIMCRemoteActionStub;
.super Lcom/oneplus/os/IOIMCRemoteAction$Stub;
.source "OIMCRemoteActionStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;
    }
.end annotation


# instance fields
.field func:Lcom/oneplus/oimc/IOPFunction;

.field handler:Landroid/os/Handler;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/os/IOIMCRemoteAction$Stub;-><init>()V

    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->func:Lcom/oneplus/oimc/IOPFunction;

    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, p1}, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;-><init>(Lcom/oneplus/oimc/OIMCRemoteActionStub;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onStart(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;-><init>(Lcom/oneplus/oimc/OIMCRemoteActionStub;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onStop(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteActionStub;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1}, Lcom/oneplus/oimc/OIMCRemoteActionStub$funcRunnable;-><init>(Lcom/oneplus/oimc/OIMCRemoteActionStub;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method
