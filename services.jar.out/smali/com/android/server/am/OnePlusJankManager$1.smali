.class Lcom/android/server/am/OnePlusJankManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusJankManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusJankManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusJankManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->access$600(Lcom/android/server/am/OnePlusJankManager;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->access$700(Lcom/android/server/am/OnePlusJankManager;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusJankManager;->access$602(Lcom/android/server/am/OnePlusJankManager;Z)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->access$800(Lcom/android/server/am/OnePlusJankManager;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->access$900(Lcom/android/server/am/OnePlusJankManager;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusJankManager;->access$802(Lcom/android/server/am/OnePlusJankManager;Z)Z

    :cond_4
    :goto_0
    return-void
.end method
