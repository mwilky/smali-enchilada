.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;

    .line 498
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    .line 584
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(I)Z

    move-result v0

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 586
    .local v0, "streamMatch":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 587
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    .line 589
    .local v1, "muted":Z
    :goto_2
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 591
    .end local v1    # "muted":Z
    :cond_4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 523
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 524
    .local v1, "streamType":I
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 526
    .local v3, "streamValue":I
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    return-void

    .line 530
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 531
    .end local v1    # "streamType":I
    .end local v3    # "streamValue":I
    goto/16 :goto_1

    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1202(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 537
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_c

    .line 539
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_1

    .line 541
    :cond_3
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 542
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 543
    .restart local v1    # "streamType":I
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 545
    .local v3, "streamVolume":I
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    if-ne v4, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 546
    return-void

    .line 550
    :cond_5
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 551
    return-void

    .line 555
    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 556
    .end local v1    # "streamType":I
    .end local v3    # "streamVolume":I
    goto/16 :goto_1

    :cond_7
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 557
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1502(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 558
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_1

    .line 562
    :cond_8
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 563
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 564
    const-string v1, "OPSeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOLUME_CHANGED_ACTION mStreamType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 566
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 567
    .local v1, "volume":I
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 568
    .local v2, "mute":Z
    const/4 v2, 0x0

    .line 569
    const-string v3, "OPSeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v1, v4, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 571
    .end local v1    # "volume":I
    .end local v2    # "mute":Z
    goto :goto_1

    .line 573
    :cond_9
    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    .line 574
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 575
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v2

    .line 576
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 575
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;

    .line 577
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_0

    :cond_a
    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1902(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 578
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    move v3, v4

    nop

    :cond_b
    invoke-static {v1, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2002(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 579
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 581
    :cond_c
    :goto_1
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 502
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 503
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    .line 504
    if-eqz p1, :cond_1

    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 517
    :goto_0
    return-void
.end method
