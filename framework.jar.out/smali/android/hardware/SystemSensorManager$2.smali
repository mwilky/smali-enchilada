.class Landroid/hardware/SystemSensorManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;

    .line 518
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    if-ne v0, v1, :cond_0

    .line 523
    const-string v0, "SensorManager"

    const-string v1, "DYNS received DYNAMIC_SENSOR_CHANED broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->access$002(Landroid/hardware/SystemSensorManager;Z)Z

    .line 527
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->access$100(Landroid/hardware/SystemSensorManager;)V

    .line 529
    :cond_0
    return-void
.end method
