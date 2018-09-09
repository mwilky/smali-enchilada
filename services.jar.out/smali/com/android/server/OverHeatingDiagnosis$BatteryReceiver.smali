.class Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "x1"    # Lcom/android/server/OverHeatingDiagnosis$1;

    .line 906
    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 910
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 912
    return-void

    .line 915
    :cond_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->access$1400(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 916
    return-void

    .line 919
    :cond_1
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 920
    const/4 v1, 0x0

    .line 921
    .local v1, "chargePlug":I
    const-string/jumbo v2, "level"

    .line 922
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x64

    mul-int/2addr v2, v4

    const-string/jumbo v5, "scale"

    .line 923
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    div-int/2addr v2, v4

    .line 925
    .local v2, "level":I
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 926
    .local v4, "status":I
    const-string v6, "fastcharge_status"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 927
    .local v6, "fastCharge":Z
    if-eqz v6, :cond_2

    .line 928
    const/16 v1, 0x8

    goto :goto_0

    .line 930
    :cond_2
    const-string/jumbo v7, "plugged"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 932
    :goto_0
    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v3, v7

    .line 936
    .local v3, "isCharging":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 937
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$800(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    if-eqz v5, :cond_5

    .line 938
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->start()V

    goto :goto_3

    .line 940
    :cond_5
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->stop()V

    .line 944
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1600(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    if-eq v2, v5, :cond_7

    .line 945
    const-string v5, "OverHeatingDiagnosis"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " level="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1602(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 948
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    .line 949
    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1200(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v2, v1, v8}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 950
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 953
    .end local v1    # "chargePlug":I
    .end local v2    # "level":I
    .end local v3    # "isCharging":Z
    .end local v4    # "status":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "fastCharge":Z
    :cond_7
    return-void
.end method
