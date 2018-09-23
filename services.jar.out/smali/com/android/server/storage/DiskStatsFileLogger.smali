.class public Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "DiskStatsFileLogger.java"


# static fields
.field public static final APP_CACHES_KEY:Ljava/lang/String; = "cacheSizes"

.field public static final APP_CACHE_AGG_KEY:Ljava/lang/String; = "cacheSize"

.field public static final APP_DATA_KEY:Ljava/lang/String; = "appDataSizes"

.field public static final APP_DATA_SIZE_AGG_KEY:Ljava/lang/String; = "appDataSize"

.field public static final APP_SIZES_KEY:Ljava/lang/String; = "appSizes"

.field public static final APP_SIZE_AGG_KEY:Ljava/lang/String; = "appSize"

.field public static final AUDIO_KEY:Ljava/lang/String; = "audioSize"

.field public static final DOWNLOADS_KEY:Ljava/lang/String; = "downloadsSize"

.field public static final LAST_QUERY_TIMESTAMP_KEY:Ljava/lang/String; = "queryTime"

.field public static final MISC_KEY:Ljava/lang/String; = "otherSize"

.field public static final PACKAGE_NAMES_KEY:Ljava/lang/String; = "packageNames"

.field public static final PHOTOS_KEY:Ljava/lang/String; = "photosSize"

.field public static final SYSTEM_KEY:Ljava/lang/String; = "systemSize"

.field private static final TAG:Ljava/lang/String; = "DiskStatsLogger"

.field public static final VIDEOS_KEY:Ljava/lang/String; = "videosSize"


# instance fields
.field private mDownloadsSize:J

.field private mPackageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field private mSystemSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    invoke-virtual {p2}, Lcom/android/server/storage/FileCollector$MeasurementResult;->totalAccountedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    iput-wide p4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    iput-object p3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    return-void
.end method

.method private addAppsToJson(Lorg/json/JSONObject;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/storage/DiskStatsFileLogger;->filterOnlyPrimaryUser()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageStats;

    move-object v15, v12

    move-object/from16 v16, v13

    iget-wide v12, v14, Landroid/content/pm/PackageStats;->codeSize:J

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    iget-wide v3, v14, Landroid/content/pm/PackageStats;->dataSize:J

    move-object/from16 v19, v1

    iget-wide v0, v14, Landroid/content/pm/PackageStats;->cacheSize:J

    if-eqz v11, :cond_0

    move-wide/from16 v20, v9

    iget-wide v9, v14, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v12, v9

    iget-wide v9, v14, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v3, v9

    iget-wide v9, v14, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v9

    goto :goto_1

    :cond_0
    move-wide/from16 v20, v9

    :goto_1
    add-long/2addr v5, v12

    add-long/2addr v7, v3

    add-long v9, v20, v0

    move-wide/from16 v22, v5

    iget-object v5, v14, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v6, v19

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-object/from16 v5, v17

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-wide/from16 v24, v3

    move-object/from16 v3, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    nop

    move-object v4, v3

    move-object v3, v5

    move-object v1, v6

    move-object v12, v15

    move-wide/from16 v5, v22

    move-object/from16 v0, p1

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide/from16 v20, v9

    const-string/jumbo v4, "packageNames"

    move-object/from16 v9, p1

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appSizes"

    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cacheSizes"

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appDataSizes"

    invoke-virtual {v9, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appSize"

    invoke-virtual {v9, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "cacheSize"

    move-wide/from16 v12, v20

    invoke-virtual {v9, v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "appDataSize"

    invoke-virtual {v9, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method private filterOnlyPrimaryUser()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageStats;

    iget v3, v2, Landroid/content/pm/PackageStats;->userHandle:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageStats;

    if-eqz v3, :cond_1

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    goto :goto_1

    :cond_1
    iget-object v4, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/content/pm/PackageStats;

    invoke-direct {v5, v2}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getJsonRepresentation()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "queryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "photosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "videosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "audioSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "downloadsSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "systemSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "otherSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "DiskStatsLogger"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public dumpToFile(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/android/server/storage/DiskStatsFileLogger;->getJsonRepresentation()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method
