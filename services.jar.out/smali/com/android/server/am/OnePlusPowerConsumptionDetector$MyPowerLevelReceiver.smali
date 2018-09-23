.class public Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPowerLevelReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyPowerLevelReceiver currentlevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |sDisconnectedBatLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |LOW_POWER_THRESHOLD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LOW_POWER_THRESHOLD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mLowBatteryWarningLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$200(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mLowBatteryCloseWarningLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$300(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$300(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$400()Landroid/content/Context;

    move-result-object v1

    const-string v2, "B"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez v0, :cond_1

    sget v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LOW_POWER_THRESHOLD:I

    if-gt v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$100()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$200(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$400()Landroid/content/Context;

    move-result-object v1

    const-string v2, "C"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$800()Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    :cond_1
    return-void
.end method
