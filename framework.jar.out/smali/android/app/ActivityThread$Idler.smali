.class Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 8

    iget-object v0, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v2, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    :cond_1
    sget-boolean v5, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v5, :cond_3

    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting idle of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " finished="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mFinished:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_4

    :try_start_0
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-interface {v3, v5, v6, v1}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_4
    :goto_1
    move-object v5, v0

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_1

    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v3}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    :cond_6
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    return v2
.end method
