.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v6, v0

    if-nez v6, :cond_1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    return-void

    :cond_1
    :try_start_2
    iget-object v0, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object v7, v0

    if-eqz v7, :cond_5

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    iget-wide v8, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v10, v2, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v8, v10

    iget-wide v10, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v12, v2, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v10, v12

    add-long v12, v8, v10

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$400(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    add-long/2addr v12, v14

    iget-wide v14, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v14, v12

    if-nez v0, :cond_3

    iget-wide v14, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v16, v4

    :try_start_4
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v0, v14, v3

    if-nez v0, :cond_4

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v14, v2, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v0, v3, v14

    if-nez v0, :cond_4

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-wide v14, v2, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v0, v3, v14

    if-nez v0, :cond_4

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v0, v3, v8

    if-nez v0, :cond_4

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v0, v3, v10

    if-nez v0, :cond_4

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    iget-wide v14, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v0, v3, v14

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v4, v16

    goto :goto_1

    :cond_3
    move/from16 v16, v4

    :cond_4
    :goto_0
    iput-wide v12, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    iput-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v10, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iget-wide v3, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->access$500(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$400(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->access$500(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$600(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->access$500(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_6

    :try_start_6
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x4

    iget-object v8, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v8}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v4, v16

    goto :goto_2

    :catchall_1
    move-exception v0

    move/from16 v16, v4

    :goto_2
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_5
    move/from16 v16, v4

    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    iget v3, v2, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v0, v3, :cond_7

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_7
    monitor-exit v5

    return-void

    :catchall_3
    move-exception v0

    move/from16 v16, v4

    :goto_4
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4
.end method
