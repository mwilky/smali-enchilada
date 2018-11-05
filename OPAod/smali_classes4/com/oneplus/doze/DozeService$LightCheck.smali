.class abstract Lcom/oneplus/doze/DozeService$LightCheck;
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
    name = "LightCheck"
.end annotation


# static fields
.field protected static final LEVEL_1:I = 0x1

.field protected static final LEVEL_2:I = 0x2

.field protected static final LEVEL_3:I = 0x3

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mFinished:Z

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method private constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1400(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".LightCheck"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService$LightCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2900(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2500(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/doze/DozeService$LightCheck;->onLightResult(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mFinished:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mFinished:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2500(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$2500(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v3}, Lcom/oneplus/doze/DozeService;->access$2900(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v7

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$2900(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public abstract onLightResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    const-string v2, "Event has no values!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$LightCheck;->finishWithResult(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    cmpg-float v2, v2, v0

    const/high16 v3, 0x457a0000    # 4000.0f

    if-gtz v2, :cond_2

    cmpg-float v2, v0, v3

    if-gez v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    cmpg-float v2, v3, v0

    if-gtz v2, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$LightCheck;->finishWithResult(I)V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    const-string v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService$LightCheck;->finishWithResult(I)V

    return-void
.end method
