.class Lcom/android/server/am/EmbryoManager$2;
.super Landroid/content/BroadcastReceiver;
.source "EmbryoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/EmbryoManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/EmbryoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/EmbryoManager;

    .line 108
    iput-object p1, p0, Lcom/android/server/am/EmbryoManager$2;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 112
    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$2;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v0}, Lcom/android/server/am/EmbryoManager;->access$300(Lcom/android/server/am/EmbryoManager;)Lcom/android/server/am/Uterus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->initLocalBlackList()V

    .line 114
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$2;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v0}, Lcom/android/server/am/EmbryoManager;->access$300(Lcom/android/server/am/EmbryoManager;)Lcom/android/server/am/Uterus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->initiate()V

    .line 115
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$2;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v0}, Lcom/android/server/am/EmbryoManager;->access$500(Lcom/android/server/am/EmbryoManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$2;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v1}, Lcom/android/server/am/EmbryoManager;->access$400(Lcom/android/server/am/EmbryoManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method
