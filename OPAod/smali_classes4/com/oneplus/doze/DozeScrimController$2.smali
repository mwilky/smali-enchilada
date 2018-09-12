.class Lcom/oneplus/doze/DozeScrimController$2;
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

    .line 173
    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController$2;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 177
    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse in finished, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/doze/DozeScrimController$2;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v2}, Lcom/oneplus/doze/DozeScrimController;->access$000(Lcom/oneplus/doze/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$2;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->access$000(Lcom/oneplus/doze/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$2;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->access$500(Lcom/oneplus/doze/DozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController$2;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v1}, Lcom/oneplus/doze/DozeScrimController;->access$300(Lcom/oneplus/doze/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeScrimController$2;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v2}, Lcom/oneplus/doze/DozeScrimController;->access$400(Lcom/oneplus/doze/DozeScrimController;)Lcom/oneplus/doze/DozeParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/doze/DozeScrimController$2;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v3}, Lcom/oneplus/doze/DozeScrimController;->access$100(Lcom/oneplus/doze/DozeScrimController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void
.end method
