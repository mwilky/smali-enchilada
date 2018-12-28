.class abstract Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PocketCheck"
.end annotation


# static fields
.field protected static final RESULT_FAR:I = 0x2

.field protected static final RESULT_NEAR:I = 0x1

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mChanged:Z

.field private mHandler:Landroid/os/Handler;

.field private mMaxRange:F

.field private mRegistered:Z

.field private mRegisteredTime:J

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "AodUpdateMonitor.PocketCheck"

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mTag:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mChanged:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegisteredTime:J

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    return-void
.end method

.method private onPocketResult(I)V
    .locals 6

    const-string v0, "AodUpdateMonitor.PocketCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3200(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3200(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v2

    if-ne v2, p1, :cond_1

    const-string v0, "AodUpdateMonitor.PocketCheck"

    const-string v2, "state unchanged"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "AodUpdateMonitor.PocketCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPocketResult: near:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dreamState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$700(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3202(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$800(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3000(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$800(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegisteredTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3000(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mChanged:Z

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "AodUpdateMonitor.PocketCheck"

    const-string v1, "Event has no values!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    goto :goto_1

    :cond_0
    const-string v1, "AodUpdateMonitor.PocketCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mMaxRange:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    move v2, v0

    nop

    :cond_1
    move v1, v2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    return-void
.end method

.method public startListening()V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$4500(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;

    move-result-object v0

    const v1, 0x1fa2651

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v2, "AodUpdateMonitor.PocketCheck"

    const-string v3, "No sensor found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    return-void

    :cond_1
    const-string v2, "AodUpdateMonitor.PocketCheck"

    const-string v3, "startListening"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mMaxRange:F

    iput-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mChanged:Z

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$4500(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegistered:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegisteredTime:J

    return-void
.end method

.method public stopListening()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "AodUpdateMonitor.PocketCheck"

    const-string v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3202(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$4500(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegistered:Z

    return-void
.end method
