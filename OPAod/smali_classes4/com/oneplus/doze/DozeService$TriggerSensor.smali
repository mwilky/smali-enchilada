.class Lcom/oneplus/doze/DozeService$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSensor"
.end annotation


# instance fields
.field final mConfigured:Z

.field final mDebugVibrate:Z

.field private mDisabled:Z

.field final mPulseReason:I

.field private mRegistered:Z

.field private mRequested:Z

.field final mSensor:Landroid/hardware/Sensor;

.field final mSetting:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method public constructor <init>(Lcom/oneplus/doze/DozeService;Landroid/hardware/Sensor;Ljava/lang/String;ZZI)V
    .locals 0
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "configured"    # Z
    .param p5, "debugVibrate"    # Z
    .param p6, "pulseReason"    # I

    .line 664
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 665
    iput-object p2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 666
    iput-object p3, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 667
    iput-boolean p4, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mConfigured:Z

    .line 668
    iput-boolean p5, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    .line 669
    iput p6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mPulseReason:I

    .line 670
    return-void
.end method

.method private enabledBySetting()Z
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 698
    return v1

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 716
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$400(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/doze/DozeService;->access$2200(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "sensorPerformsProxCheck":Z
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x19

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 721
    iget-object v1, p1, Landroid/hardware/TriggerEvent;->values:[F

    aget v1, v1, v3

    float-to-int v1, v1

    .line 722
    .local v1, "subType":I
    iget-object v4, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v4}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x19b

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 723
    iget-object v4, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v4}, Lcom/oneplus/doze/DozeService;->access$2300(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeParameters;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oneplus/doze/DozeParameters;->getPickupSubtypePerformsProxCheck(I)Z

    move-result v4

    move v0, v4

    .line 726
    .end local v1    # "subType":I
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 729
    .local v1, "v":Landroid/os/Vibrator;
    if-eqz v1, :cond_1

    .line 730
    const-wide/16 v4, 0x3e8

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    .line 731
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const/16 v7, 0xd

    .line 732
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 730
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 736
    .end local v1    # "v":Landroid/os/Vibrator;
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 737
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    iget v4, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mPulseReason:I

    invoke-static {v1, v4, v0}, Lcom/oneplus/doze/DozeService;->access$2400(Lcom/oneplus/doze/DozeService;IZ)V

    .line 739
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->updateListener()V

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    .line 744
    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2500(Lcom/oneplus/doze/DozeService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 745
    .local v4, "timeSinceNotification":J
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    .line 746
    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2300(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeParameters;->getPickupVibrationThreshold()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    move v1, v3

    .line 747
    .local v1, "withinVibrationThreshold":Z
    iget-object v3, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 748
    iget-object v2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oneplus/doze/DozeLog;->tracePickupPulse(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    .end local v0    # "sensorPerformsProxCheck":Z
    .end local v1    # "withinVibrationThreshold":Z
    .end local v4    # "timeSinceNotification":J
    :cond_3
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$400(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 752
    nop

    .line 753
    return-void

    .line 751
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$400(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .line 679
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 680
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    .line 681
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->updateListener()V

    .line 682
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .line 673
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 674
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    .line 675
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->updateListener()V

    .line 676
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRequested="

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisabled="

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigured="

    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mConfigured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDebugVibrate="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSensor="

    .line 711
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    return-object v0
.end method

.method public updateListener()V
    .locals 4

    .line 685
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mConfigured:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_1

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->enabledBySetting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 688
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestTriggerSensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 691
    .local v0, "rt":Z
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 694
    .end local v0    # "rt":Z
    :cond_2
    :goto_0
    return-void

    .line 685
    :cond_3
    :goto_1
    return-void
.end method
