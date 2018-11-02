.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;,
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageAsyncLoader"


# instance fields
.field private mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mSeenPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUserManager:Landroid/os/UserManager;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    return-void
.end method

.method private getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "StorageAsyncLoader"

    const-string v2, "Loading apps"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v2, 0x0

    move/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v2

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    move-object v4, v0

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v9, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10, v5}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-interface {v0}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12, v13}, Lcom/android/settingslib/applications/StorageStatsSource;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v11

    invoke-interface {v0}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v13

    move-wide v15, v9

    cmp-long v17, v11, v13

    if-gez v17, :cond_0

    sub-long v17, v15, v13

    add-long v15, v17, v11

    :cond_0
    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    move-object/from16 v20, v5

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v17

    add-long v15, v15, v17

    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->category:I

    packed-switch v2, :pswitch_data_0

    move/from16 v21, v6

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x2000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    iget-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v5, v15

    iput-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    goto :goto_1

    :pswitch_0
    move/from16 v21, v6

    iget-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v5, v15

    iput-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    goto :goto_1

    :pswitch_1
    move/from16 v21, v6

    iget-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v5, v15

    iput-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    goto :goto_1

    :pswitch_2
    move/from16 v21, v6

    iget-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v5, v15

    iput-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    goto :goto_1

    :pswitch_3
    move/from16 v21, v6

    iget-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v5, v15

    iput-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    goto :goto_1

    :cond_2
    iget-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v5, v15

    iput-wide v5, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move/from16 v21, v6

    const-string v2, "StorageAsyncLoader"

    const-string v5, "App unexpectedly not found"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    goto/16 :goto_0

    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v0, "StorageAsyncLoader"

    const-string v2, "Loading external stats"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "StorageAsyncLoader"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v0, "StorageAsyncLoader"

    const-string v2, "Obtaining result completed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadApps()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;-><init>(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadApps()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadInBackground()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->onDiscardResult(Landroid/util/SparseArray;)V

    return-void
.end method
