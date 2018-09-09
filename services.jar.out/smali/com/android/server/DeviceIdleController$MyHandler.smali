.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1374
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1375
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1376
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1379
    move-object/from16 v2, p1

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_0
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_10

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 1571
    :pswitch_0
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1572
    .local v0, "appId":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    move v3, v5

    .line 1573
    .local v3, "added":Z
    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$2500(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 1574
    .end local v0    # "appId":I
    .end local v3    # "added":Z
    goto/16 :goto_a

    .line 1568
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1569
    goto/16 :goto_a

    .line 1552
    :pswitch_2
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    move v3, v5

    .line 1553
    .local v3, "active":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2400(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v4, v0

    .line 1555
    .local v4, "size":I
    nop

    .line 1555
    .local v6, "i":I
    :goto_2
    move v5, v6

    .line 1555
    .end local v6    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_3

    .line 1557
    :try_start_0
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2400(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IMaintenanceActivityListener;

    .line 1558
    invoke-interface {v0, v3}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    goto :goto_3

    .line 1563
    .end local v5    # "i":I
    :catchall_0
    move-exception v0

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$2400(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 1559
    .restart local v5    # "i":I
    :catch_0
    move-exception v0

    .line 1555
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .line 1555
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 1563
    .end local v6    # "i":I
    :cond_3
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2400(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1564
    nop

    .line 1565
    .end local v3    # "active":Z
    .end local v4    # "size":I
    goto/16 :goto_a

    .line 1547
    :pswitch_3
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1548
    .local v0, "uid":I
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    .line 1549
    .end local v0    # "uid":I
    goto/16 :goto_a

    .line 1509
    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1510
    .local v3, "activeReason":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 1512
    .local v4, "activeUid":I
    if-eqz v3, :cond_4

    .line 1511
    move-object v0, v3

    goto :goto_4

    .line 1512
    :cond_4
    const-string/jumbo v0, "unknown"

    .line 1511
    :goto_4
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1516
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1519
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v5

    .line 1520
    .local v5, "deepChanged":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v0

    move v7, v0

    .line 1522
    .local v7, "lightChanged":Z
    :try_start_1
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1523
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0, v6, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1526
    goto :goto_5

    .line 1525
    :catch_1
    move-exception v0

    .line 1527
    :goto_5
    if-eqz v5, :cond_6

    .line 1530
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1531
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/Light;->setIdleMode(Z)V

    .line 1534
    :cond_5
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v8}, Lcom/android/server/DeviceIdleController;->access$1700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1536
    :cond_6
    if-eqz v7, :cond_7

    .line 1539
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string v8, "LightIdle_Status"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1541
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1543
    :cond_7
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1544
    .end local v3    # "activeReason":Ljava/lang/String;
    .end local v4    # "activeUid":I
    .end local v5    # "deepChanged":Z
    .end local v7    # "lightChanged":Z
    goto/16 :goto_a

    .line 1465
    :pswitch_5
    const-string/jumbo v0, "unknown"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1469
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1472
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v7

    .line 1473
    .local v7, "deepChanged":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v0

    move v8, v0

    .line 1475
    .local v8, "lightChanged":Z
    :try_start_2
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1476
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 1477
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 1476
    invoke-interface {v0, v6, v4, v9}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1479
    goto :goto_6

    .line 1478
    :catch_2
    move-exception v0

    .line 1480
    :goto_6
    if-eqz v7, :cond_9

    .line 1483
    new-array v0, v5, [I

    aput v3, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1484
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1485
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/Light;->setIdleMode(Z)V

    .line 1489
    :cond_8
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1490
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1491
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2300(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1490
    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1493
    :cond_9
    if-eqz v8, :cond_a

    .line 1494
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1497
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "LightIdle_Status"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1499
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1500
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2300(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1499
    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1504
    :cond_a
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1505
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1506
    .end local v7    # "deepChanged":Z
    .end local v8    # "lightChanged":Z
    goto/16 :goto_a

    .line 1388
    :pswitch_6
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1394
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1397
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_c

    .line 1398
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1399
    .local v0, "deepChanged":Z
    iget-object v8, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v8}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v8

    .line 1402
    .restart local v8    # "lightChanged":Z
    new-array v9, v5, [I

    aput v3, v9, v6

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1403
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1404
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/lights/Light;->setIdleMode(Z)V

    .line 1411
    :cond_b
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->notifyEnterDeepIdle()V

    goto :goto_7

    .line 1414
    .end local v0    # "deepChanged":Z
    .end local v8    # "lightChanged":Z
    :cond_c
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1415
    .restart local v0    # "deepChanged":Z
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v8

    .line 1415
    .end local v0    # "deepChanged":Z
    .local v3, "deepChanged":Z
    .restart local v8    # "lightChanged":Z
    :goto_7
    move v3, v0

    move v6, v8

    .line 1418
    .end local v8    # "lightChanged":Z
    .local v6, "lightChanged":Z
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1419
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget v8, v2, Landroid/os/Message;->what:I

    if-ne v8, v7, :cond_d

    .line 1420
    goto :goto_8

    .line 1421
    :cond_d
    move v7, v5

    :goto_8
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 1419
    invoke-interface {v0, v7, v4, v8}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1423
    goto :goto_9

    .line 1422
    :catch_3
    move-exception v0

    .line 1424
    :goto_9
    if-eqz v3, :cond_e

    .line 1427
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "stopGps"

    sget-boolean v7, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1429
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$1700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1431
    :cond_e
    if-eqz v6, :cond_f

    .line 1434
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "LightIdle_Status"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1436
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1440
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1900(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1441
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, v5}, Lcom/android/server/DeviceIdleController;->access$1902(Lcom/android/server/DeviceIdleController;Z)Z

    .line 1442
    const-string v0, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter First LightIdle, schedule to SNAPSHOT in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$2000(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler$1;

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler$1;-><init>(Lcom/android/server/DeviceIdleController$MyHandler;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1457
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$2000(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v4

    .line 1444
    invoke-static {v0, v4, v5}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1460
    :cond_f
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1461
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1462
    .end local v3    # "deepChanged":Z
    .end local v6    # "lightChanged":Z
    goto :goto_a

    .line 1383
    :pswitch_7
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 1384
    goto :goto_a

    .line 1578
    :cond_10
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1579
    const-string v0, "DeviceIdleController"

    const-string v3, "[OnlineConfig] Try to get OnLineConfig..."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_11
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$2600()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1581
    .local v0, "grabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/DeviceIdleController;->access$2700(Lcom/android/server/DeviceIdleController;Lorg/json/JSONArray;)V

    .line 1585
    .end local v0    # "grabber":Lcom/oneplus/config/ConfigGrabber;
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
