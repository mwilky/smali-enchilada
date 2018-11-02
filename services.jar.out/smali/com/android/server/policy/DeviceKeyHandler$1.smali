.class Lcom/android/server/policy/DeviceKeyHandler$1;
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

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/DeviceKeyHandler;->access$300(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/DeviceKeyHandler$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$1$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler$1;Z)V

    const-wide/16 v4, 0x28

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
