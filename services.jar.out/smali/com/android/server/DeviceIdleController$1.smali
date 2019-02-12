.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5bb23923

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    const v2, -0x45e5283a

    if-eq v1, v2, :cond_2

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_1

    const v2, 0x3267c73d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.test.retrieve.battstats"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "start_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    goto/16 :goto_4

    :cond_5
    const-string v1, "dump_start_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V

    goto/16 :goto_4

    :cond_6
    const-string v1, "dump_end_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V

    goto/16 :goto_4

    :cond_7
    const-string v1, "end_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v2

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)I

    move-result v5

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)F

    move-result v7

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v8

    :goto_2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Z

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V

    goto/16 :goto_4

    :cond_9
    const-string v1, "cal_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v1, "trigger_start_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x2710

    if-eqz v1, :cond_b

    const/16 v1, 0x3ea

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->sendEmptyMessageDelayed(IJ)V

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v1, "trigger_end_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x3eb

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->sendEmptyMessageDelayed(IJ)V

    goto/16 :goto_4

    :cond_c
    const-string v1, "DeviceIdleController"

    const-string/jumbo v2, "mOnePlusStandbyAnalyzer == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_1
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    :cond_d
    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/DeviceIdleController;->access$002(Lcom/android/server/DeviceIdleController;I)I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/DeviceIdleController;->access$102(Lcom/android/server/DeviceIdleController;I)I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->checkIfHitBatteryLowLocked(II)V

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    nop

    :cond_f
    :goto_4
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
