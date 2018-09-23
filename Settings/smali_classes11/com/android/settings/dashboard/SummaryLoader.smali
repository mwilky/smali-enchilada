.class public Lcom/android/settings/dashboard/SummaryLoader;
.super Ljava/lang/Object;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SummaryLoader$Worker;,
        Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;,
        Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;,
        Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SUMMARY_PROVIDER_FACTORY:Ljava/lang/String; = "SUMMARY_PROVIDER_FACTORY"

.field private static final TAG:Ljava/lang/String; = "SummaryLoader"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCategoryKey:Ljava/lang/String;

.field private final mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mListening:Z

.field private mReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

.field private final mSummaryProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mSummaryTextMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Lcom/android/settings/dashboard/SummaryLoader$Worker;

.field private mWorkerListening:Z

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryProviderMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryTextMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iput-object p2, p0, Lcom/android/settings/dashboard/SummaryLoader;->mCategoryKey:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SummaryLoader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings/dashboard/SummaryLoader$Worker;

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader$Worker;-><init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorker:Lcom/android/settings/dashboard/SummaryLoader$Worker;

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/SummaryLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/SummaryLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mCategoryKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->makeProviderW(Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/SummaryLoader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setListeningW(Z)V

    return-void
.end method

.method private getMetaData(Lcom/android/settingslib/drawer/Tile;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method private getSummaryProvider(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->getMetaData(Lcom/android/settingslib/drawer/Tile;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "SUMMARY_PROVIDER_FACTORY"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    iget-object v6, p0, Lcom/android/settings/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    invoke-interface {v5, v6, p0}, Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;->createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method private getTileFromCategory(Lcom/android/settingslib/drawer/DashboardCategory;Landroid/content/ComponentName;)Lcom/android/settingslib/drawer/Tile;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static synthetic lambda$setSummary$0(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mCategoryKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->getTileFromCategory(Lcom/android/settingslib/drawer/DashboardCategory;Landroid/content/ComponentName;)Lcom/android/settingslib/drawer/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryIfNeeded(Lcom/android/settingslib/drawer/Tile;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized makeProviderW(Lcom/android/settingslib/drawer/Tile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->getSummaryProvider(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryProviderMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setListeningW(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorkerListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorkerListening:Z

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1, p1}, Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;->setListening(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "SummaryLoader"

    const-string v4, "Problem in setListening"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/settings/dashboard/SummaryLoader$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/dashboard/SummaryLoader$1;-><init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setListeningW(Z)V

    return-void
.end method

.method public setListening(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mListening:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorker:Lcom/android/settings/dashboard/SummaryLoader$Worker;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SummaryLoader$Worker;->removeMessages(I)V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorker:Lcom/android/settings/dashboard/SummaryLoader$Worker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/dashboard/SummaryLoader$Worker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorker:Lcom/android/settings/dashboard/SummaryLoader$Worker;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader$Worker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorker:Lcom/android/settings/dashboard/SummaryLoader$Worker;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader$Worker;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mWorker:Lcom/android/settings/dashboard/SummaryLoader$Worker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/dashboard/SummaryLoader$Worker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;-><init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    return-void
.end method

.method updateSummaryIfNeeded(Lcom/android/settingslib/drawer/Tile;Ljava/lang/CharSequence;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryTextMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v1, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;->notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V

    :cond_1
    return-void
.end method

.method public updateSummaryToCache(Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v2, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryTextMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader;->mSummaryTextMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method
