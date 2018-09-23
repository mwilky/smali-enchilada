.class Lcom/android/server/LocationManagerService$EmergencyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Call...state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Call...Check WiFi status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "...mEmWifiStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LocationManagerService"

    const-string v1, "Emergency Call...WiFi default Enabled, ignore...."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "LocationManagerService"

    const-string v2, "Emergency Call Start...Modify state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1302(Z)Z

    goto :goto_0

    :cond_6
    const-string v0, "LocationManagerService"

    const-string v1, "Emergency Call End...Restore state..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1302(Z)Z

    :cond_7
    :goto_0
    return-void
.end method
