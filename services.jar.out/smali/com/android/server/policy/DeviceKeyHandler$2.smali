.class Lcom/android/server/policy/DeviceKeyHandler$2;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->access$500()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mProximityListener.onSensorChanged(): values[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$600(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-static {v3, v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$702(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->access$500()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DeviceKeyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProximityListener.onSensorChanged(): active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v4}, Lcom/android/server/policy/DeviceKeyHandler;->access$700(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$600(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
