.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;->registerBatteryReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v2, p2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$000(Lcom/android/server/am/OnePlusPowerConsumptionDetector;Landroid/content/Intent;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# total elapsed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    return-void
.end method
