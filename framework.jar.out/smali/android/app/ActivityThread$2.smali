.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x4

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v5, :cond_1

    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dalvik max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x400

    div-long v9, v1, v7

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " total="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " used="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    iget-object v6, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_2
    :goto_0
    return-void
.end method
