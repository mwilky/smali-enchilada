.class final Landroid/hardware/SystemSensorManager$InjectEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InjectEventQueue"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1025
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->this$0:Landroid/hardware/SystemSensorManager;

    .line 1026
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 1027
    return-void
.end method


# virtual methods
.method protected addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1046
    return-void
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 1041
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1036
    return-void
.end method

.method injectSensorData(I[FIJ)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1030
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorDataBase(I[FIJ)I

    move-result v0

    return v0
.end method

.method protected removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1051
    return-void
.end method
