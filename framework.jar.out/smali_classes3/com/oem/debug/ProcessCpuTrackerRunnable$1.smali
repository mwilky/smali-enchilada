.class Lcom/oem/debug/ProcessCpuTrackerRunnable$1;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oem/debug/ProcessCpuTrackerRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oem/debug/ProcessCpuTrackerRunnable;


# direct methods
.method constructor <init>(Lcom/oem/debug/ProcessCpuTrackerRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oem/debug/ProcessCpuTrackerRunnable;

    .line 32
    iput-object p1, p0, Lcom/oem/debug/ProcessCpuTrackerRunnable$1;->this$0:Lcom/oem/debug/ProcessCpuTrackerRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 35
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 36
    .local v0, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 37
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 39
    .local v1, "now":J
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 41
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 43
    monitor-exit v0

    .line 45
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    :catch_0
    move-exception v3

    .line 46
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 47
    const-string v3, "ProcessCpuTracker"

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
