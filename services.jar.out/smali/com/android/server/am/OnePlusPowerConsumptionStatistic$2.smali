.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string v1, "# mDebugReceiver # onReceive # ENABLE false, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "OPCS"

    const-string v1, "# mDebugReceiver # onReceive # intent is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BaseTimer not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$200(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mDebugReceiver # onReceive # action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.OPCS.action.debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "persist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "cmd persist"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v3, "OPCS"

    const-string v4, "# mGeneralReceiver # onReceive # persist # data is null, return"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "calculate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "cmd calculate"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "report"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "immediately"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "calculatePower"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "cmd_calculatePower"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v2, "dumpAppForeground"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_0

    :cond_9
    const-string v2, "dumpPowerConsumptionList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_0

    :cond_a
    const-string v2, "generatePowerConsumptionData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_0

    :cond_b
    const-string v2, "generateSortListAndSystemList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v4, "cmd generateSortListAndSystemList"

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    goto :goto_0

    :cond_c
    const-string v2, "dumpBaseEventList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_0

    :cond_d
    const-string v2, "calculateKernelWakeLocks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "calculateKernelWakeLocks"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/util/HashMap;

    :cond_e
    :goto_0
    return-void
.end method
