.class Landroid/secrecy/SecrecyManager$1;
.super Landroid/secrecy/ISecrecyServiceReceiver$Stub;
.source "SecrecyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/SecrecyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/secrecy/SecrecyManager;


# direct methods
.method constructor <init>(Landroid/secrecy/SecrecyManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/secrecy/SecrecyManager;

    .line 382
    iput-object p1, p0, Landroid/secrecy/SecrecyManager$1;->this$0:Landroid/secrecy/SecrecyManager;

    invoke-direct {p0}, Landroid/secrecy/ISecrecyServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecrecyStateChanged(Ljava/util/Map;)V
    .locals 3
    .param p1, "map"    # Ljava/util/Map;

    .line 387
    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p0, Landroid/secrecy/SecrecyManager$1;->this$0:Landroid/secrecy/SecrecyManager;

    invoke-static {v0}, Landroid/secrecy/SecrecyManager;->access$200(Landroid/secrecy/SecrecyManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    :cond_0
    return-void
.end method
