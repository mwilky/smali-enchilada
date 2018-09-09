.class Lcom/android/server/OnePlusPowerController$MyHandler;
.super Landroid/os/Handler;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1490
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1491
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1492
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 1496
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15be

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    const/16 v1, 0x1e6c

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 1659
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4100(Lcom/android/server/OnePlusPowerController;)Landroid/app/Notification;

    move-result-object v0

    .line 1660
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_17

    .line 1661
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$4200(Lcom/android/server/OnePlusPowerController;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string/jumbo v2, "powercontrol"

    const v3, 0x528877

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_5

    .line 1645
    .end local v0    # "notification":Landroid/app/Notification;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3800(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1646
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1647
    .local v0, "sleepStart":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_1

    .line 1648
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1649
    .local v1, "restrictionStart":Ljava/time/LocalDateTime;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1650
    invoke-static {v2, v1}, Lcom/android/server/OnePlusPowerController;->access$4000(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;)J

    move-result-wide v5

    const-string v7, "PowerController.EarlyRestriction"

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1652
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$3800(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v9

    .line 1649
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1653
    .end local v1    # "restrictionStart":Ljava/time/LocalDateTime;
    goto/16 :goto_5

    .line 1654
    :cond_1
    const-string v1, "OnePlusPowerController"

    const-string v2, "No sleep start time, so pass the early restriction!"

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    goto/16 :goto_5

    .line 1558
    .end local v0    # "sleepStart":Ljava/time/LocalDateTime;
    :pswitch_2
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3100(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "PowerControl"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1559
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OnePlusPowerController;->access$3000(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V

    .line 1560
    goto/16 :goto_5

    .line 1624
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1500(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 1625
    :cond_2
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1626
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 1627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->restoreIdleItemsLocked()V

    .line 1628
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1629
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1630
    :try_start_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1302(I)I

    .line 1631
    new-array v0, v3, [I

    const/16 v3, 0x50

    aput v3, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1632
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 1634
    :cond_3
    monitor-exit v1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1628
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1562
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1500(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_5

    .line 1563
    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v0

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2500()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 1564
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1565
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDataSet()[[D

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v6

    const/4 v7, 0x2

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2300()I

    move-result v8

    const/16 v9, 0x64

    invoke-static/range {v4 .. v9}, Lcom/android/server/OnePlusPowerController$KMeans;->access$3400(Lcom/android/server/OnePlusPowerController$KMeans;[[DIIII)V

    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "size":I
    move v1, v0

    move v0, v2

    .line 1569
    .local v0, "i":I
    .local v1, "size":I
    :goto_0
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2300()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1570
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v4

    if-le v4, v1, :cond_5

    .line 1571
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v1

    .line 1569
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1577
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .line 1578
    .local v0, "label":I
    const-wide/16 v4, 0x0

    .line 1579
    .local v4, "length":J
    move-wide v5, v4

    move v4, v0

    move v0, v2

    .line 1579
    .local v0, "j":I
    .local v4, "label":I
    .local v5, "length":J
    :goto_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2300()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 1580
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v7

    if-ne v7, v1, :cond_7

    .line 1581
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_7

    .line 1582
    move v4, v0

    .line 1583
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v5

    .line 1579
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1589
    .end local v0    # "j":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCoefVar(II)D

    move-result-wide v7

    .line 1590
    .local v7, "coefVarStart":D
    const-string v0, "OnePlusPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coefVarStart="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%.3f"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%.3f"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1591
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3500()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v3, v2

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1590
    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3500()D

    move-result-wide v9

    cmpl-double v0, v7, v9

    if-lez v0, :cond_9

    .line 1593
    const-string v0, "OnePlusPowerController"

    const-string v2, "The variation of start time is too large, so discard that result of computation."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    goto/16 :goto_5

    .line 1598
    :cond_9
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1599
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterX(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    .line 1600
    .local v0, "start":Ljava/time/LocalTime;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 1601
    .local v3, "duration":Ljava/time/Duration;
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepStart(Ljava/time/LocalTime;)V

    .line 1602
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V

    .line 1605
    .end local v0    # "start":Ljava/time/LocalTime;
    .end local v3    # "duration":Ljava/time/Duration;
    :cond_a
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1606
    nop

    .line 1606
    .local v2, "i":I
    :goto_2
    move v0, v2

    .line 1606
    .end local v2    # "i":I
    .local v0, "i":I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2300()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 1607
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size of Cluster "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Center of Cluster "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterX(I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1609
    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1608
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    add-int/lit8 v2, v0, 0x1

    .line 1606
    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 1611
    .end local v2    # "i":I
    :cond_b
    const-string v0, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Choose Cluster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    .end local v1    # "size":I
    .end local v4    # "label":I
    .end local v5    # "length":J
    .end local v7    # "coefVarStart":D
    :cond_c
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1500(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_5

    .line 1617
    :cond_d
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1618
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 1619
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->recordIdleItemLocked()V

    .line 1620
    monitor-exit v0

    goto/16 :goto_5

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 1543
    :pswitch_6
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 1544
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1546
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1547
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ADD_EXCLUSIVE_WAKELOCK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ADD_EXCLUSIVE_WAKELOCK: packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_e
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/os/PowerManagerInternal;->addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1555
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    goto/16 :goto_5

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ADD_EXCLUSIVE_WAKELOCK error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_5

    .line 1528
    :pswitch_7
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isChinaRegionInternal() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isIndiaRegionInternal() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1529
    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1528
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_f
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1532
    :cond_10
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "doze_mode_policy"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1534
    const-string v0, "OnePlusPowerController"

    const-string/jumbo v2, "put 1 to Settings.System.DOZE_MODE_POLICY"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "optimal_power_save_mode_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1537
    const-string v0, "OnePlusPowerController"

    const-string/jumbo v1, "put 2 to Settings.System.OPTIMAL_POWER_SAVE_MODE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1499
    :pswitch_8
    const-string/jumbo v0, "persist.sys.device_first_boot"

    .line 1500
    .local v0, "key":Ljava/lang/String;
    const-string v4, "1"

    const-string/jumbo v5, "persist.sys.device_first_boot"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1502
    .local v4, "isFirstBoot":Z
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$3100(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doze_mode_policy"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_11

    move v5, v3

    goto :goto_3

    :cond_11
    move v5, v2

    :goto_3
    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$702(Z)Z

    .line 1503
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->access$3100(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "optimal_power_save_mode_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/OnePlusPowerController;->access$902(Lcom/android/server/OnePlusPowerController;I)I

    .line 1505
    if-eqz v4, :cond_13

    .line 1506
    new-array v5, v3, [I

    aput v2, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1507
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_mode_policy"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1509
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$3100(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "optimal_power_save_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 1512
    :cond_12
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "doze_mode_policy"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1514
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3100(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "optimal_power_save_mode_enabled"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1519
    :cond_13
    :goto_4
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INITIALIZE_STATE: mAggressive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOPSMEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1520
    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$900(Lcom/android/server/OnePlusPowerController;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mUserSleep = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1521
    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$1500(Lcom/android/server/OnePlusPowerController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1519
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_14
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 1524
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfoList: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1641
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v4    # "isFirstBoot":Z
    :cond_15
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3800(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1642
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->leaveOPSM()V

    .line 1643
    goto :goto_5

    .line 1638
    :cond_16
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, v2}, Lcom/android/server/OnePlusPowerController;->enterOPSMIfAppropriated(Z)V

    .line 1639
    nop

    .line 1668
    :cond_17
    :goto_5
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
