.class Lcom/android/server/am/OnePlusTemperatureMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusTemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusTemperatureMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusTemperatureMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OPTM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mTestReceiver # onReceive # action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "com.optm.action.test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mTestReceiver # onReceive # code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "debug_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sput-boolean v3, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    goto :goto_0

    :cond_2
    const-string v2, "debug_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    sput-boolean v4, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    goto :goto_0

    :cond_3
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-static {v2}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$000(Lcom/android/server/am/OnePlusTemperatureMonitor;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "monitor_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$100(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "monitor_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$100(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "report"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    const-string v3, "OPTM"

    iget-object v4, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-static {v4}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$200(Lcom/android/server/am/OnePlusTemperatureMonitor;)Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$300(Lcom/android/server/am/OnePlusTemperatureMonitor;Ljava/lang/String;Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;)V

    :cond_7
    :goto_0
    return-void
.end method
