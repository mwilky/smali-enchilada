.class Lcom/android/server/am/OnePlusTemperatureMonitor$2;
.super Ljava/lang/Object;
.source "OnePlusTemperatureMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$400(Lcom/android/server/am/OnePlusTemperatureMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$500(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$000(Lcom/android/server/am/OnePlusTemperatureMonitor;)V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void
.end method
