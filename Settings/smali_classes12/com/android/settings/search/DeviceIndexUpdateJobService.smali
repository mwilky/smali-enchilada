.class public Lcom/android/settings/search/DeviceIndexUpdateJobService;
.super Landroid/app/job/JobService;
.source "DeviceIndexUpdateJobService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DeviceIndexUpdate"


# instance fields
.field protected mRunningJob:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lcom/android/settings/search/DeviceIndexUpdateJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->updateIndex(Landroid/app/job/JobParameters;)V

    return-void
.end method


# virtual methods
.method protected bindSliceSynchronous(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 9

    const/4 v0, 0x1

    new-array v7, v0, [Landroidx/slice/Slice;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    new-instance v8, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;-><init>(Lcom/android/settings/search/DeviceIndexUpdateJobService;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroidx/slice/SliceViewManager;Landroid/net/Uri;)V

    invoke-virtual {p1, p2, v1}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    invoke-virtual {p1, p2}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    const/4 v2, 0x0

    aget-object v2, v7, v2

    return-object v2
.end method

.method protected findTitle(Landroidx/slice/Slice;Landroidx/slice/SliceMetadata;)Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    const-string v3, "text"

    const-string v4, "title"

    invoke-static {v2, v3, v4, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v4, "text"

    const-string v5, "large"

    invoke-static {v2, v4, v5, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_3
    const-string v4, "text"

    invoke-static {v2, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_4
    return-object v1
.end method

.method protected getMetadata(Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1

    invoke-static {p0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getSliceViewManager()Landroidx/slice/SliceViewManager;
    .locals 1

    invoke-static {p0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    return-object v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/search/-$$Lambda$DeviceIndexUpdateJobService$CyjXGsZVpAu5iTckScg1Ee8_bGU;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/search/-$$Lambda$DeviceIndexUpdateJobService$CyjXGsZVpAu5iTckScg1Ee8_bGU;-><init>(Lcom/android/settings/search/DeviceIndexUpdateJobService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected updateIndex(Landroid/app/job/JobParameters;)V
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getSliceViewManager()Landroidx/slice/SliceViewManager;

    move-result-object v8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v9}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v8, v10}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v6}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->clearIndex(Landroid/content/Context;)V

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/Uri;

    iget-boolean v0, v6, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v6, v8, v13}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->bindSliceSynchronous(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getMetadata(Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->findTitle(Landroidx/slice/Slice;Landroidx/slice/SliceMetadata;)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.VIEW_SLICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slice"

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->createDeepLink(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v15}, Landroidx/slice/SliceMetadata;->getSliceKeywords()Ljava/util/List;

    move-result-object v5

    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v16

    move-object v3, v13

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object/from16 v1, p1

    invoke-virtual {v6, v1, v0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
