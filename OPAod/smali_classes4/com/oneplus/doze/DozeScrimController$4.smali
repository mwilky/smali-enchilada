.class Lcom/oneplus/doze/DozeScrimController$4;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController$4;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "DozeScrimController"

    const-string v1, "Pulse out finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/doze/DozeLog;->tracePulseFinish()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$4;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->access$900(Lcom/oneplus/doze/DozeScrimController;)V

    return-void
.end method
