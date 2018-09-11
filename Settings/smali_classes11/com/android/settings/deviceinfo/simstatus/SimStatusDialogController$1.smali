.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;
.super Landroid/content/BroadcastReceiver;
.source "SimStatusDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 112
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 118
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellBroadcastMessage;

    .line 122
    .local v2, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 123
    invoke-static {v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 124
    invoke-virtual {v2}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "latestAreaInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object v4

    const v5, 0x7f0a02b0

    invoke-virtual {v4, v5, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 128
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    .end local v3    # "latestAreaInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method
