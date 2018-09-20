.class Lcom/oneplus/doze/DozeService$MotionCheck;
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
    name = "MotionCheck"
.end annotation


# static fields
.field protected static final RESULT_STATIC:I = 0x2

.field protected static final RESULT_TRIGGER:I = 0x1

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mFinished:Z

.field private mProximityChecking:Z

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method private constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 1

    .line 872
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".MotionCheck"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    .line 884
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p2, "x1"    # Lcom/oneplus/doze/DozeService$1;

    .line 872
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService$MotionCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 932
    if-nez p1, :cond_0

    .line 933
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService$MotionCheck;->setListening(Z)V

    goto :goto_0

    .line 934
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 935
    iget-object v2, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 936
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1, v0}, Lcom/oneplus/doze/DozeService;->access$1100(Lcom/oneplus/doze/DozeService;I)V

    goto :goto_0

    .line 937
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$300(Lcom/oneplus/doze/DozeService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2700(Lcom/oneplus/doze/DozeService;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->abortPulsingWithAnim()V

    .line 940
    :cond_2
    :goto_0
    return-void
.end method

.method private release()V
    .locals 2

    .line 956
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string v1, "Unregister motion Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    .line 963
    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    .line 887
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mFinished:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const v1, 0x1fa2654

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 889
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_1

    .line 890
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$MotionCheck;->finishWithResult(I)V

    .line 892
    return-void

    .line 895
    :cond_1
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    .line 896
    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v7

    .line 895
    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 897
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 898
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    .line 899
    return-void

    .line 887
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 945
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 903
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    .line 907
    return-void

    .line 910
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-nez v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string v1, "Event has no values!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-direct {p0, v3}, Lcom/oneplus/doze/DozeService$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 913
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 914
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 915
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 916
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 918
    :cond_3
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 927
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService$MotionCheck;->finishWithResult(I)V

    .line 929
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listen"    # Z

    .line 948
    if-eqz p1, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$MotionCheck;->check()V

    goto :goto_0

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService$MotionCheck;->release()V

    .line 953
    :goto_0
    return-void
.end method

.method public setProximityChecking(Z)V
    .locals 1
    .param p1, "proximityChecking"    # Z

    .line 921
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mProximityChecking:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 922
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mProximityChecking:Z

    .line 923
    return-void
.end method
