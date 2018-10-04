.class public Landroid/app/slice/SliceMetrics;
.super Ljava/lang/Object;
.source "SliceMetrics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceMetrics"


# instance fields
.field private mLogMaker:Landroid/metrics/LogMaker;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57b

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    return-void
.end method


# virtual methods
.method public logHidden()V
    .locals 3

    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logTouch(ILandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x57c

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x57d

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logVisible()V
    .locals 3

    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
