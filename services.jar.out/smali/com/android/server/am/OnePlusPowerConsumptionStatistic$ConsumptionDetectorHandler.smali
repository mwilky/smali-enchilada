.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;
.super Landroid/os/Handler;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumptionDetectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_RESET_LISTENER mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_TRACKDATA mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_SHUTDOWN mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_TIME_SET mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_REPORT mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    new-instance v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    new-instance v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;JJ)V

    invoke-static {v5, v12}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$102(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    new-instance v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v6

    iget-wide v10, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;JJ)V

    invoke-static {v5, v12}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$102(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1702(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;J)J

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v3, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-static {v5, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1902(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2002(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/BatteryManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2202(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V

    if-eqz v0, :cond_4

    if-ne v3, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_PLUG_INIT_EVENT mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPlugState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mIdleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType_init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_PERSIST mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v0, v2, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3002(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    const-string v1, ""

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------MSG_DOZE_EVENT mScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mPlugState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mIdleState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2202(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_POWERLEVEL_EVENT mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPlugState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mIdleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v0, v2, :cond_8

    move v1, v2

    nop

    :cond_8
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2002(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_SCREEN_EVENT mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPlugState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mIdleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_PLUGGED_FASTCHARGE_EVENT mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v0, v2, :cond_9

    move v1, v2

    nop

    :cond_9
    invoke-static {v4, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1902(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_PLUG_EVENT mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPlugState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mIdleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_c
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    const-string v1, "------MSG_GET_ONLINECONFIG"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Ljava/lang/String;)V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
