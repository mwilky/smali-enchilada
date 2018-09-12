.class Lcom/oneplus/doze/DozeScrimController$1;
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
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 160
    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController$1;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse in, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/doze/DozeScrimController$1;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v2}, Lcom/oneplus/doze/DozeScrimController;->access$000(Lcom/oneplus/doze/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPulseReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/doze/DozeScrimController$1;->this$0:Lcom/oneplus/doze/DozeScrimController;

    .line 164
    invoke-static {v2}, Lcom/oneplus/doze/DozeScrimController;->access$100(Lcom/oneplus/doze/DozeScrimController;)I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$1;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->access$000(Lcom/oneplus/doze/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$1;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->access$100(Lcom/oneplus/doze/DozeScrimController;)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->tracePulseStart(I)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$1;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->access$200(Lcom/oneplus/doze/DozeScrimController;)V

    .line 170
    return-void
.end method
