.class final Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmbryoManagerWrapper"
.end annotation


# instance fields
.field private final nullImpl:Lcom/android/server/am/IEmbryoManager;

.field private realImpl:Lcom/android/server/am/EmbryoManager;

.field private target:Lcom/android/server/am/IEmbryoManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/EmbryoManager$UselessManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$UselessManager;-><init>(Lcom/android/server/am/EmbryoManager$1;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    invoke-static {}, Lcom/android/server/am/EmbryoManager;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/EmbryoManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/EmbryoManager;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager;-><init>(Lcom/android/server/am/EmbryoManager$1;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;-><init>()V

    return-void
.end method

.method private declared-synchronized getImpl()Lcom/android/server/am/IEmbryoManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->attach(Landroid/app/IApplicationThread;I)Z

    move-result v0

    return v0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->forceUpdateOnlineConfig()V

    return-void
.end method

.method public goingToSleep()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->goingToSleep()V

    return-void
.end method

.method public declared-synchronized hotSwitch(ZZ)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->shutdown()V

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/IEmbryoManager;->notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->packageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V

    return-void
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->processStarted(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->shutdown()V

    return-void
.end method

.method public updateConfig()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->updateConfig()V

    return-void
.end method

.method public wakingUp()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->wakingUp()V

    return-void
.end method
