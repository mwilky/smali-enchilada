.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v4

    nop

    :cond_0
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$002(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_2

    :cond_1
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v2, "wifiP2pDeviceList"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const-string v2, "wifiP2pInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-boolean v4, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-static {v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto :goto_2

    :cond_6
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v2, "wifiP2pDevice"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$702(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_2

    :cond_7
    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "discoveryState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    :goto_1
    goto :goto_2

    :cond_9
    const-string v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    :cond_a
    :goto_2
    return-void
.end method
