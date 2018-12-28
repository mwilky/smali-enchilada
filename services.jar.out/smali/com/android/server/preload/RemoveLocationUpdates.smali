.class public final Lcom/android/server/preload/RemoveLocationUpdates;
.super Landroid/os/HandlerThread;
.source "RemoveLocationUpdates.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/preload/RemoveLocationUpdates;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string/jumbo v0, "preload.RemoveLocationUpdates"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 3

    sget-object v0, Lcom/android/server/preload/RemoveLocationUpdates;->sInstance:Lcom/android/server/preload/RemoveLocationUpdates;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/preload/RemoveLocationUpdates;

    invoke-direct {v0}, Lcom/android/server/preload/RemoveLocationUpdates;-><init>()V

    sput-object v0, Lcom/android/server/preload/RemoveLocationUpdates;->sInstance:Lcom/android/server/preload/RemoveLocationUpdates;

    sget-object v0, Lcom/android/server/preload/RemoveLocationUpdates;->sInstance:Lcom/android/server/preload/RemoveLocationUpdates;

    invoke-virtual {v0}, Lcom/android/server/preload/RemoveLocationUpdates;->start()V

    sget-object v0, Lcom/android/server/preload/RemoveLocationUpdates;->sInstance:Lcom/android/server/preload/RemoveLocationUpdates;

    invoke-virtual {v0}, Lcom/android/server/preload/RemoveLocationUpdates;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/preload/RemoveLocationUpdates;->sInstance:Lcom/android/server/preload/RemoveLocationUpdates;

    invoke-virtual {v1}, Lcom/android/server/preload/RemoveLocationUpdates;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/preload/RemoveLocationUpdates;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/preload/RemoveLocationUpdates;
    .locals 2

    const-class v0, Lcom/android/server/preload/RemoveLocationUpdates;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/preload/RemoveLocationUpdates;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/preload/RemoveLocationUpdates;->sInstance:Lcom/android/server/preload/RemoveLocationUpdates;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/android/server/preload/RemoveLocationUpdates;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/preload/RemoveLocationUpdates;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/preload/RemoveLocationUpdates;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
