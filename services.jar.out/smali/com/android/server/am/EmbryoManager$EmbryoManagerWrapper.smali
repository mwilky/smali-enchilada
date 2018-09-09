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

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Lcom/android/server/am/EmbryoManager$UselessManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$UselessManager;-><init>(Lcom/android/server/am/EmbryoManager$1;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    .line 562
    invoke-static {}, Lcom/android/server/am/EmbryoManager;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/EmbryoManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Lcom/android/server/am/EmbryoManager;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager;-><init>(Lcom/android/server/am/EmbryoManager$1;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    .line 564
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    .line 568
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/EmbryoManager$1;

    .line 556
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;-><init>()V

    return-void
.end method

.method private declared-synchronized getImpl()Lcom/android/server/am/IEmbryoManager;
    .locals 1

    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;
    throw v0
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 616
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 617
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 1
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .line 601
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

    .line 661
    .local p1, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 641
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 1

    .line 666
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->forceUpdateOnlineConfig()V

    .line 667
    return-void
.end method

.method public goingToSleep()V
    .locals 1

    .line 621
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->goingToSleep()V

    .line 622
    return-void
.end method

.method public declared-synchronized hotSwitch(ZZ)V
    .locals 1
    .param p1, "newState"    # Z
    .param p2, "oldState"    # Z

    monitor-enter p0

    .line 571
    if-eqz p1, :cond_0

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    goto :goto_0

    .line 570
    .end local p1    # "newState":Z
    .end local p2    # "oldState":Z
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 576
    .restart local p1    # "newState":Z
    .restart local p2    # "oldState":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->shutdown()V

    .line 578
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->cleanup()V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :goto_0
    monitor-exit p0

    return-void

    .line 570
    .end local p1    # "newState":Z
    .end local p2    # "oldState":Z
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;
    throw p1
.end method

.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 611
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 612
    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "versionName"    # Ljava/lang/String;

    .line 671
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/IEmbryoManager;->notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V

    .line 672
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .line 596
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 636
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->packageChanged(Ljava/lang/String;I)V

    .line 637
    return-void
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 631
    .local p2, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 632
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p2, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V

    .line 592
    return-void
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 676
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->processStarted(Lcom/android/server/am/ProcessRecord;)V

    .line 677
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 656
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    .line 657
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .line 646
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 647
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 606
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->shutdown()V

    .line 607
    return-void
.end method

.method public updateConfig()V
    .locals 1

    .line 651
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->updateConfig()V

    .line 652
    return-void
.end method

.method public wakingUp()V
    .locals 1

    .line 626
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->wakingUp()V

    .line 627
    return-void
.end method
