.class public Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;
.super Ljava/lang/Object;
.source "CachedStorageValuesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;
    }
.end annotation


# static fields
.field public static final CACHE_APPS_SIZE_KEY:Ljava/lang/String; = "cache_apps_size"

.field public static final EXTERNAL_APP_BYTES:Ljava/lang/String; = "external_apps_bytes"

.field public static final EXTERNAL_AUDIO_BYTES:Ljava/lang/String; = "external_audio_bytes"

.field public static final EXTERNAL_IMAGE_BYTES:Ljava/lang/String; = "external_image_bytes"

.field public static final EXTERNAL_TOTAL_BYTES:Ljava/lang/String; = "external_total_bytes"

.field public static final EXTERNAL_VIDEO_BYTES:Ljava/lang/String; = "external_video_bytes"

.field public static final FREE_BYTES_KEY:Ljava/lang/String; = "free_bytes"

.field public static final GAME_APPS_SIZE_KEY:Ljava/lang/String; = "game_apps_size"

.field public static final MUSIC_APPS_SIZE_KEY:Ljava/lang/String; = "music_apps_size"

.field public static final OTHER_APPS_SIZE_KEY:Ljava/lang/String; = "other_apps_size"

.field public static final PHOTO_APPS_SIZE_KEY:Ljava/lang/String; = "photo_apps_size"

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "CachedStorageValues"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TIMESTAMP_KEY:Ljava/lang/String; = "last_query_timestamp"

.field public static final TOTAL_BYTES_KEY:Ljava/lang/String; = "total_bytes"

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"

.field public static final VIDEO_APPS_SIZE_KEY:Ljava/lang/String; = "video_apps_size"


# instance fields
.field private final mClobberThreshold:Ljava/lang/Long;

.field protected mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CachedStorageValues"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "storage_settings_clobber_threshold"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    return-void
.end method

.method private isDataValid()Z
    .locals 11

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_query_timestamp"

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v5

    sub-long v7, v5, v3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-gez v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method


# virtual methods
.method public cacheResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "free_bytes"

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "total_bytes"

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "game_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "music_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "photo_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "other_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_total_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_audio_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_video_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_image_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_apps_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    iget v2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_query_timestamp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getCachedAppsStorageResult()Landroid/util/SparseArray;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "game_apps_size"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "music_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "video_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "photo_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "other_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cache_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmp-long v1, v6, v16

    if-ltz v1, :cond_4

    cmp-long v1, v8, v16

    if-ltz v1, :cond_4

    cmp-long v1, v10, v16

    if-ltz v1, :cond_4

    cmp-long v1, v12, v16

    if-ltz v1, :cond_4

    cmp-long v1, v14, v16

    if-ltz v1, :cond_4

    cmp-long v1, v2, v16

    if-gez v1, :cond_1

    move-object v1, v0

    move-wide/from16 v46, v2

    move-wide/from16 v39, v10

    move-wide/from16 v41, v12

    move-wide/from16 v43, v14

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v18, v2

    const-string v2, "external_total_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v31, v14

    const-string v14, "external_audio_bytes"

    invoke-interface {v3, v14, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v33, v12

    const-string v12, "external_video_bytes"

    invoke-interface {v3, v12, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v35, v10

    const-string v10, "external_image_bytes"

    invoke-interface {v3, v10, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "external_apps_bytes"

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v1, v16

    if-ltz v0, :cond_3

    cmp-long v0, v14, v16

    if-ltz v0, :cond_3

    cmp-long v0, v12, v16

    if-ltz v0, :cond_3

    cmp-long v0, v10, v16

    if-ltz v0, :cond_3

    cmp-long v0, v3, v16

    if-gez v0, :cond_2

    move-wide/from16 v37, v1

    move-wide/from16 v46, v18

    move-wide/from16 v43, v31

    move-wide/from16 v41, v33

    move-wide/from16 v39, v35

    move-object/from16 v1, p0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-object/from16 v20, v0

    move-wide/from16 v21, v1

    move-wide/from16 v23, v14

    move-wide/from16 v25, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v3

    invoke-direct/range {v20 .. v30}, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;-><init>(JJJJJ)V

    new-instance v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    iput-wide v6, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iput-wide v8, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    move-wide/from16 v37, v1

    move-wide/from16 v1, v35

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    move-wide/from16 v39, v1

    move-wide/from16 v1, v33

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    move-wide/from16 v41, v1

    move-wide/from16 v1, v31

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    move-wide/from16 v43, v1

    move-wide/from16 v1, v18

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    iput-object v0, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-object/from16 v45, v0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-wide/from16 v46, v1

    move-object/from16 v1, p0

    iget v2, v1, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0

    :cond_3
    move-wide/from16 v37, v1

    move-wide/from16 v46, v18

    move-wide/from16 v43, v31

    move-wide/from16 v41, v33

    move-wide/from16 v39, v35

    move-object/from16 v1, p0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_4
    move-object v1, v0

    move-wide/from16 v46, v2

    move-wide/from16 v39, v10

    move-wide/from16 v41, v12

    move-wide/from16 v43, v14

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getCachedPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 9

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "free_bytes"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "total_bytes"

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    cmp-long v0, v2, v7

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method
