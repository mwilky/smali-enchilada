.class abstract Lcom/oneplus/doze/DozeService$ProximityCheck;
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
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# static fields
.field protected static final RESULT_FAR:I = 0x2

.field protected static final RESULT_NEAR:I = 0x1

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method private constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 1

    .line 957
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ProximityCheck"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p2, "x1"    # Lcom/oneplus/doze/DozeService$1;

    .line 957
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService$ProximityCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 2
    .param p1, "result"    # I

    .line 1015
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 1016
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1018
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1021
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2000(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2000(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/doze/DozeService$PickupCheck;->setProximityChecking(Z)V

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2800(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2800(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/doze/DozeService$MotionCheck;->setProximityChecking(Z)V

    .line 1028
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    .line 1030
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/doze/DozeService$ProximityCheck;->onProximityResult(I)V

    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mFinished:Z

    .line 1032
    return-void
.end method


# virtual methods
.method public check()V
    .locals 9

    .line 973
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mFinished:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 975
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_1

    .line 976
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 978
    return-void

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2000(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;

    move-result-object v1

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    .line 983
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2000(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/oneplus/doze/DozeService$PickupCheck;->setProximityChecking(Z)V

    .line 986
    :cond_2
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2800(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 987
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2800(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/oneplus/doze/DozeService$MotionCheck;->setProximityChecking(Z)V

    .line 989
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mMaxRange:F

    .line 990
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    .line 991
    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v7

    .line 990
    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 992
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 993
    iput-boolean v8, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    .line 994
    return-void

    .line 973
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_4
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1037
    return-void
.end method

.method public abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 998
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v2, "Event has no values!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    goto :goto_1

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iget v2, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mMaxRange:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 1004
    .local v0, "isNear":Z
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 1006
    .end local v0    # "isNear":Z
    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 1012
    return-void
.end method
