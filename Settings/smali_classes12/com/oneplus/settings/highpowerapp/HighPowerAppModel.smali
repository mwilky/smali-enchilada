.class public Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HighPowerAppModel"

.field private static final USE_FAKE_DATA:Z = false


# instance fields
.field private mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mDataObserverListLock:Ljava/lang/Object;

.field private mInstalledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mData:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-static {p1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->get(Landroid/content/Context;)Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-virtual {p0, p2}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->process()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private makeFakeList()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    rem-int/lit8 v7, v2, 0x3

    packed-switch v7, :pswitch_data_0

    :goto_1
    move v15, v4

    move/from16 v16, v5

    move v14, v6

    goto :goto_2

    :pswitch_0
    const/4 v6, -0x1

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :goto_2
    new-instance v17, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v4, v17

    move-object v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    invoke-direct/range {v4 .. v11}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IIZZJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;->OnDataChanged()V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private process()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-interface {v0}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    const-string v1, "HighPowerAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighPowerAppModel getBgPowerHungryList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v4, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v4, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_2
    new-instance v1, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->notifyDataChanged()V

    return-void
.end method


# virtual methods
.method public getBgMonitorMode()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-interface {v0}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->getBgMonitorMode()Z

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->setBgMonitorMode(Z)V

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseResource()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public stopApp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    iget-object v2, v1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    iget v2, v1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    invoke-interface {v0, p1, v2}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update()V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateInstalledPackages()V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "HighPowerAppModel"

    const-string v2, "some unknown error happened."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
