.class Lcom/android/server/am/OnePlusNetCgroupSetManager$2;
.super Landroid/app/IProcessObserver$Stub;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] onForegroundActivitiesChanged pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    const-string v0, ""

    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$200(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v4

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v4

    if-eq v4, v1, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[netCgroupSet] info is error return, mFrontActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " |mCurrentFrontUid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |packageName_t:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v4, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I

    const-string v4, ""

    move-object v0, v4

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    monitor-enter v3

    if-eqz p3, :cond_9

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v6

    if-eq v5, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_6
    goto :goto_0

    :cond_7
    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v4, :cond_9

    :cond_8
    const-string v4, "OnePlusNetCgroupSetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[netCgroupSet] current is launcher, mFrontActivityUids:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_9
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    monitor-enter v2

    if-eqz p3, :cond_a

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v3

    if-eq v3, p2, :cond_b

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v3

    if-eq v3, v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_d

    :cond_c
    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] after onForegroundActivitiesChanged mFrontActivityUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v1, p3, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$300(Lcom/android/server/am/OnePlusNetCgroupSetManager;ZI)V

    return-void

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onProcessDied(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] onProcessDied pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
