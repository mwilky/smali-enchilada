.class public final Lcom/android/server/AnimationThread;
.super Lcom/android/server/ServiceThread;
.source "AnimationThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/AnimationThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "android.anim"

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 3

    sget-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/AnimationThread;

    invoke-direct {v0}, Lcom/android/server/AnimationThread;-><init>()V

    sput-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    sget-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->start()V

    sget-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    invoke-virtual {v1}, Lcom/android/server/AnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/AnimationThread;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/AnimationThread;
    .locals 2

    const-class v0, Lcom/android/server/AnimationThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/AnimationThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

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

    const-class v0, Lcom/android/server/AnimationThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/AnimationThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/AnimationThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
