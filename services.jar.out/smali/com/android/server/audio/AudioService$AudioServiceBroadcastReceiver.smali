.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 7560
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 7560
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 7563
    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 7568
    .local v4, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v0, :cond_2

    .line 7569
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7572
    .local v0, "dockState":I
    packed-switch v0, :pswitch_data_0

    .line 7587
    goto :goto_0

    .line 7583
    :pswitch_0
    const/16 v5, 0x9

    .line 7584
    .local v5, "config":I
    goto :goto_0

    .line 7580
    .end local v5    # "config":I
    :pswitch_1
    const/16 v5, 0x8

    .line 7581
    .restart local v5    # "config":I
    goto :goto_0

    .line 7577
    .end local v5    # "config":I
    :pswitch_2
    const/4 v5, 0x6

    .line 7578
    .restart local v5    # "config":I
    goto :goto_0

    .line 7574
    .end local v5    # "config":I
    :pswitch_3
    const/4 v5, 0x7

    .line 7575
    .restart local v5    # "config":I
    nop

    .line 7587
    :goto_0
    nop

    .line 7591
    if-eq v0, v6, :cond_1

    if-nez v0, :cond_0

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7593
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$10600(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 7594
    :cond_0
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v7

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string v9, "ACTION_DOCK_EVENT intent"

    invoke-direct {v8, v6, v5, v9}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7596
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7598
    :cond_1
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v0}, Lcom/android/server/audio/AudioService;->access$10602(Lcom/android/server/audio/AudioService;I)I

    .line 7599
    .end local v0    # "dockState":I
    .end local v5    # "config":I
    goto/16 :goto_5

    :cond_2
    const-string v0, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7600
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 7601
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In onReceive(), calling setBtScoActiveDevice() with btDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7603
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 7604
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_5

    :cond_3
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v7, 0xa

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v0, :cond_d

    .line 7605
    const/4 v10, 0x0

    .line 7606
    .local v10, "broadcast":Z
    const/4 v11, -0x1

    .line 7607
    .local v11, "scoAudioState":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v12

    monitor-enter v12

    .line 7608
    :try_start_0
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7610
    .local v0, "btState":I
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-nez v8, :cond_5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7611
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v6, :cond_4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7612
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v9, :cond_4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7613
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v14, :cond_4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7614
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 7615
    :cond_4
    const/4 v10, 0x1

    .line 7617
    :cond_5
    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 7622
    :pswitch_4
    iget-object v15, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v15}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Z

    move-result v15

    if-ne v15, v9, :cond_6

    .line 7623
    iget-object v15, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v15, v5}, Lcom/android/server/audio/AudioService;->access$10802(Lcom/android/server/audio/AudioService;Z)Z

    .line 7624
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v5

    const/4 v15, 0x6

    aget-object v5, v5, v15

    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9, v15}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/2addr v5, v13

    div-int/2addr v5, v7

    .line 7625
    .local v5, "currentBtScoVol":I
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v7, v7, v15

    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v7

    const-string v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7626
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v9

    aget-object v9, v9, v15

    invoke-static {v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 7627
    const-string v7, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setMode() revert sco volume to  "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7631
    .end local v5    # "currentBtScoVol":I
    :cond_6
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v7, 0xc

    .line 7632
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7631
    invoke-static {v5, v3, v7}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 7633
    const/4 v11, 0x1

    .line 7634
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_7

    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7635
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v14, :cond_7

    .line 7636
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 7638
    :cond_7
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 7639
    const-string v5, "AudioService"

    const-string v6, "Audio-path brought-up"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 7664
    :pswitch_5
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_a

    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7665
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v14, :cond_a

    .line 7666
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2

    .line 7643
    :pswitch_6
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7644
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7643
    invoke-static {v8, v3, v7}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7645
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 7646
    const/4 v11, 0x0

    .line 7648
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 7649
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7650
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7651
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v9

    .line 7650
    invoke-static {v7, v8, v9}, Lcom/android/server/audio/AudioService;->access$3700(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7652
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 7653
    const/4 v5, 0x0

    .line 7654
    .end local v10    # "broadcast":Z
    .local v5, "broadcast":Z
    nop

    .line 7674
    move v10, v5

    goto :goto_3

    .line 7658
    .end local v5    # "broadcast":Z
    .restart local v10    # "broadcast":Z
    :cond_8
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-ne v8, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_1

    :cond_9
    move v6, v5

    :goto_1
    invoke-virtual {v7, v5, v6}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 7659
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 7660
    const-string v5, "AudioService"

    const-string v6, "Audio-path brought-down"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 7670
    :cond_a
    :goto_2
    const/4 v0, 0x0

    .line 7674
    .end local v10    # "broadcast":Z
    .local v0, "broadcast":Z
    move v10, v0

    .line 7674
    .end local v0    # "broadcast":Z
    .restart local v10    # "broadcast":Z
    :cond_b
    :goto_3
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7675
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In onReceive(), mScoAudioState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", broadcast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7677
    if-eqz v10, :cond_c

    .line 7678
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v11}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 7681
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7682
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v5, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7683
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 7685
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v10    # "broadcast":Z
    .end local v11    # "scoAudioState":I
    :cond_c
    goto/16 :goto_5

    .line 7674
    .restart local v10    # "broadcast":Z
    .restart local v11    # "scoAudioState":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 7685
    .end local v10    # "broadcast":Z
    .end local v11    # "scoAudioState":I
    :cond_d
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7686
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7687
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 7689
    :cond_e
    const-string/jumbo v0, "screen_state=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 7690
    :cond_f
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7691
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7693
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 7695
    :cond_10
    const-string/jumbo v0, "screen_state=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 7696
    :cond_11
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7697
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 7698
    :cond_12
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7699
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7702
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7710
    :cond_13
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$11302(Lcom/android/server/audio/AudioService;Z)Z

    .line 7712
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 7715
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;Z)V

    .line 7717
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7722
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v12, v0, v6

    const/4 v13, 0x0

    .line 7717
    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_5

    .line 7723
    :cond_14
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7725
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7726
    .local v0, "userId":I
    if-ltz v0, :cond_15

    .line 7728
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 7729
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 7731
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_15
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const-string/jumbo v6, "no_record_audio"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 7733
    .end local v0    # "userId":I
    goto/16 :goto_5

    :cond_16
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7735
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7736
    .restart local v0    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    const-string/jumbo v7, "no_record_audio"

    invoke-virtual {v6, v7, v5, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 7738
    .end local v0    # "userId":I
    goto/16 :goto_5

    :cond_17
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7739
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7740
    .local v0, "state":I
    if-eq v0, v7, :cond_18

    const/16 v5, 0xd

    if-ne v0, v5, :cond_1f

    .line 7742
    :cond_18
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->disconnectAllBluetoothProfiles()V

    goto/16 :goto_5

    .line 7744
    .end local v0    # "state":I
    :cond_19
    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 7745
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_4

    .line 7747
    :cond_1a
    const-string v0, "com.oem.intent.action.ACTION_SHUTDOWN_MUTE_MUSIC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7751
    const-string v0, "AudioService"

    const-string v5, "ACTION_SHUTDOWN_MUTE_MUSIC Intent received"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7753
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x24

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7755
    const-string v0, "AudioService"

    const-string v5, "ACTION_SHUTDOWN_MUTE_MUSIC Intent received returned"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 7757
    :cond_1b
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7758
    const-string v0, "dev_shutdown=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7761
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_5

    .line 7763
    :cond_1c
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7766
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$11802(Lcom/android/server/audio/AudioService;Z)Z

    .line 7767
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_5

    .line 7769
    :cond_1d
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7772
    const-string v0, "AudioService"

    const-string v5, "ACTION_LOCALE_CHANGED Intent received"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7773
    invoke-static {}, Lcom/android/server/audio/AudioService;->isEnableEU()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7774
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x21

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_5

    .line 7746
    :cond_1e
    :goto_4
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->access$11700(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 7778
    :cond_1f
    :goto_5
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
