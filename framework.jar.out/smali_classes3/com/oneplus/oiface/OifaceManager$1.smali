.class Lcom/oneplus/oiface/OifaceManager$1;
.super Lcom/oneplus/oiface/IOIfaceNotifier$Stub;
.source "OifaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/oiface/OifaceManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/oiface/OifaceManager;


# direct methods
.method constructor <init>(Lcom/oneplus/oiface/OifaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/oiface/OifaceManager$1;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-direct {p0}, Lcom/oneplus/oiface/IOIfaceNotifier$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOIfaceService result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/oiface/OifaceManager;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager$1;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-static {v0}, Lcom/oneplus/oiface/OifaceManager;->access$000(Lcom/oneplus/oiface/OifaceManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager$1;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-static {v0}, Lcom/oneplus/oiface/OifaceManager;->access$000(Lcom/oneplus/oiface/OifaceManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/oiface/CallBack;

    invoke-interface {v0, p1}, Lcom/oneplus/oiface/CallBack;->systemCallBack(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
