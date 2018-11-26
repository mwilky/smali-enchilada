.class Lcom/android/settings/wifi/tether/WifiTetherSettings$2;
.super Ljava/lang/Object;
.source "WifiTetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;->onTetherConfigUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const-string v0, "TetheringSettings"

    const-string v1, "Wifi AP config changed while enabled, stop and restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$202(Lcom/android/settings/wifi/tether/WifiTetherSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$300(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    return-void
.end method
