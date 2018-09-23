.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    }
.end annotation


# static fields
.field public static final CALLING_UID_SELF:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SyncLogger"

.field private static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .locals 3

    const-class v0, Lcom/android/server/content/SyncLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_1

    const-string v1, "1"

    const-string v2, "debug.synclog"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SyncLogger"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    invoke-direct {v2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;-><init>()V

    sput-object v2, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/server/content/SyncLogger;

    invoke-direct {v2}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v2, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    :cond_3
    :goto_2
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public enabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public purgeOldLogs()V
    .locals 0

    return-void
.end method
