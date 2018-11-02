.class Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSettings.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating display config due to receiving broadcast action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xb

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$300(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wifi_state"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->updateDisplay()V

    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$300(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    :cond_2
    :goto_0
    return-void
.end method
