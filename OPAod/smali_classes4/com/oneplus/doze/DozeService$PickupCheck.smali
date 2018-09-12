.class Lcom/oneplus/doze/DozeService$PickupCheck;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupCheck"
.end annotation


# static fields
.field protected static final RESULT_PICK_UP:I = 0x1

.field protected static final RESULT_STATIC:I = 0x2

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mCurrentState:I

.field private mFinished:Z

.field private mMaxRange:F

.field private mProximityChecking:Z

.field private mRegistered:Z

.field private mSensorType:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method public constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 3

    .line 767
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".PickupCheck"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mTag:Ljava/lang/String;

    .line 758
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mFinished:Z

    .line 769
    const p1, 0x1fa2652

    iput p1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mSensorType:I

    .line 770
    const-string p1, "TYPE_PICK_UP"

    .line 771
    .local p1, "sensor":Ljava/lang/String;
    const-string v0, "DozeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choose sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 823
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 827
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/Utils;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 828
    iget v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mCurrentState:I

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 829
    iget-object v2, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$300(Lcom/oneplus/doze/DozeService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 830
    iget-object v2, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 831
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0, v1}, Lcom/oneplus/doze/DozeService;->access$1100(Lcom/oneplus/doze/DozeService;I)V

    goto :goto_0

    .line 833
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$300(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2700(Lcom/oneplus/doze/DozeService;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 834
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->abortPulsingWithAnim()V

    goto :goto_0

    .line 836
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 837
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1900(Lcom/oneplus/doze/DozeService;)V

    .line 839
    :cond_3
    :goto_0
    iput p1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mCurrentState:I

    .line 840
    return-void
.end method

.method private release()V
    .locals 2

    .line 851
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mTag:Ljava/lang/String;

    const-string v1, "Unregister P Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mRegistered:Z

    .line 858
    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    .line 775
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mFinished:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 777
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_1

    .line 778
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mTag:Ljava/lang/String;

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$PickupCheck;->finishWithResult(I)V

    .line 780
    return-void

    .line 782
    :cond_1
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mTag:Ljava/lang/String;

    const-string v2, "sensor registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mMaxRange:F

    .line 785
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    .line 786
    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v7

    .line 785
    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 787
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 788
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mRegistered:Z

    .line 789
    return-void

    .line 775
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 816
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 794
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    .line 795
    return-void

    .line 798
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mTag:Ljava/lang/String;

    const-string v2, "Event has no values!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$PickupCheck;->finishWithResult(I)V

    goto :goto_1

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    .line 804
    .local v0, "isPickup":Z
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/doze/DozeService$PickupCheck;->finishWithResult(I)V

    .line 806
    .end local v0    # "isPickup":Z
    :goto_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 820
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listen"    # Z

    .line 843
    if-eqz p1, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$PickupCheck;->check()V

    goto :goto_0

    .line 846
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService$PickupCheck;->release()V

    .line 848
    :goto_0
    return-void
.end method

.method public setProximityChecking(Z)V
    .locals 1
    .param p1, "proximityChecking"    # Z

    .line 809
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mProximityChecking:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 810
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$PickupCheck;->mProximityChecking:Z

    .line 811
    return-void
.end method
