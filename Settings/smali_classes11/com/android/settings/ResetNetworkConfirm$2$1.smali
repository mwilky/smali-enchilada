.class Lcom/android/settings/ResetNetworkConfirm$2$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetworkConfirm$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ResetNetworkConfirm$2;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ResetNetworkConfirm$2;

    .line 164
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 167
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, "context":Landroid/content/Context;
    const-string v1, "connectivity"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 171
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 175
    :cond_0
    const-string v2, "wifi"

    .line 176
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 177
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 181
    :cond_1
    const-string v3, "phone"

    .line 182
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 183
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    .line 184
    iget-object v4, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    iget-object v4, v4, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v4}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 187
    :cond_2
    const-string v4, "netpolicy"

    .line 188
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicyManager;

    .line 189
    .local v4, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v4, :cond_3

    .line 190
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    iget-object v5, v5, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v5}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "subscriberId":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 194
    .end local v5    # "subscriberId":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    iget-object v5, v5, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 195
    invoke-static {v5}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 194
    invoke-static {v0, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    .line 195
    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->factoryReset()V

    .line 196
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    iget-object v5, v5, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v5, v0}, Lcom/android/settings/ResetNetworkConfirm;->access$300(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 202
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    iget-object v5, v5, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v5, v0}, Lcom/android/settings/ResetNetworkConfirm;->access$400(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 203
    const-string v5, "bluetooth"

    .line 204
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothManager;

    .line 205
    .local v5, "btManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v5, :cond_5

    .line 206
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 207
    .local v6, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v6, :cond_5

    .line 208
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 209
    const/4 v7, 0x0

    .line 210
    invoke-static {v0, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v7

    .line 211
    .local v7, "mLocalBtManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-eqz v7, :cond_4

    .line 212
    nop

    .line 213
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    .line 214
    .local v8, "cachedDeviceManager":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearAllDevices()V

    .line 216
    .end local v8    # "cachedDeviceManager":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    :cond_4
    iget-object v8, p0, Lcom/android/settings/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$2;

    iget-object v8, v8, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v8, v8, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    .end local v6    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v7    # "mLocalBtManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :cond_5
    return-void
.end method
