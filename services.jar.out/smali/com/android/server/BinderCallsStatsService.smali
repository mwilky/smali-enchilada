.class public Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "BinderCallsStatsService.java"


# static fields
.field private static final PERSIST_SYS_BINDER_CALLS_DETAILED_TRACKING:Ljava/lang/String; = "persist.sys.binder_calls_detailed_tracking"

.field private static final TAG:Ljava/lang/String; = "BinderCallsStatsService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 2

    const-string v0, "BinderCallsStatsService"

    const-string v1, "Resetting stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    return-void
.end method

.method public static start()V
    .locals 4

    new-instance v0, Lcom/android/server/BinderCallsStatsService;

    invoke-direct {v0}, Lcom/android/server/BinderCallsStatsService;-><init>()V

    const-string v1, "binder_calls_stats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v1, "persist.sys.binder_calls_detailed_tracking"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "BinderCallsStatsService"

    const-string v3, "Enabled CPU usage tracking for binder calls. Controlled by persist.sys.binder_calls_detailed_tracking or via dumpsys binder_calls_stats --enable-detailed-tracking"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_5

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p3, v2

    const-string v4, "-a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "--reset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->reset()V

    const-string v0, "binder_calls_stats reset."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "--enable-detailed-tracking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string v0, "Detailed tracking enabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v4, "--disable-detailed-tracking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string v0, "Detailed tracking disabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "binder_calls_stats commands:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --reset: Reset stats"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method
