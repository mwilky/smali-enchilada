.class Lcom/android/settings/network/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/network/ApnSettings;

    .line 143
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 149
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v1, Lcom/android/settings/network/ApnSettings$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .end local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    goto :goto_0

    .line 151
    .restart local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    .line 160
    .end local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_1
    :goto_0
    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "slotId":I
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-ne v0, v1, :cond_3

    .line 165
    return-void

    .line 168
    :cond_3
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "simStatus":Ljava/lang/String;
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 172
    invoke-static {v2}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 173
    invoke-static {v2}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 174
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/network/ApnSettings;->finish()V

    .line 178
    .end local v0    # "slotId":I
    .end local v1    # "simStatus":Ljava/lang/String;
    :cond_4
    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const-string v0, "reason"

    .line 180
    .local v0, "SYSTEM_DIALOG_REASON_KEY":Ljava/lang/String;
    const-string v1, "homekey"

    .line 181
    .local v1, "SYSTEM_DIALOG_REASON_HOME_KEY":Ljava/lang/String;
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "reason":Ljava/lang/String;
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_CLOSE_SYSTEM_DIALOGS reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v2, :cond_6

    .line 184
    const-string v3, "homekey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v3}, Lcom/android/settings/network/ApnSettings;->finish()V

    .line 190
    .end local v0    # "SYSTEM_DIALOG_REASON_KEY":Ljava/lang/String;
    .end local v1    # "SYSTEM_DIALOG_REASON_HOME_KEY":Ljava/lang/String;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void
.end method
