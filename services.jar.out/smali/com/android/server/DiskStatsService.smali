.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final DISKSTATS_DUMP_FILE:Ljava/lang/String; = "/data/system/diskstats_cache.json"

.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/storage/DiskStatsLoggingService;->schedule(Landroid/content/Context;)V

    return-void
.end method

.method private getRecentPerf()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v2

    return v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "storaged not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private reportCachedValues(Ljava/io/PrintWriter;)V
    .locals 4

    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "App Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "appSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "App Data Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "appDataSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "App Cache Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cacheSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Photos Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "photosSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Videos Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "videosSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Audio Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "audioSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Downloads Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "downloadsSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "System Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "systemSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Other Size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "otherSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Package Names: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "packageNames"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "App Sizes: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "appSizes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "App Data Sizes: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "appDataSizes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "Cache Sizes: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cacheSizes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DiskStatsService"

    const-string v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 19

    move-object/from16 v1, p1

    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v3, 0x10b00000006L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10300000001L

    const-string v7, "appSize"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1030000000aL

    const-string v7, "appDataSize"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string v5, "cacheSize"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide v7, 0x10300000002L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v5, "photosSize"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide v9, 0x10300000003L

    invoke-virtual {v1, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v5, "videosSize"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide v11, 0x10300000004L

    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000005L

    const-string v13, "audioSize"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000006L

    const-string v13, "downloadsSize"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000007L

    const-string/jumbo v13, "systemSize"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000008L

    const-string/jumbo v13, "otherSize"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v5, "packageNames"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "appSizes"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v13, "appDataSizes"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v14, "cacheSizes"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v15, v9, :cond_1

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v15, v9, :cond_1

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v15, v9, :cond_1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v15, :cond_0

    const-wide v11, 0x20b00000009L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v7, 0x10900000001L

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const-wide v5, 0x10300000002L

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    const-wide v5, 0x10300000004L

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    const-wide v5, 0x10300000003L

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const-wide v7, 0x10300000002L

    const-wide v11, 0x10300000004L

    goto :goto_0

    :cond_0
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_1

    :cond_1
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const-string v5, "DiskStatsService"

    const-string v6, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "DiskStatsService"

    const-string v3, "exception reading diskstats cache file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private reportDiskWriteSpeed(Ljava/io/PrintWriter;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string v2, "Recent Disk Write Speed (kB/s) = "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_0

    :cond_0
    const-string v2, "Recent Disk Write Speed data unavailable"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "DiskStatsService"

    const-string v3, "Recent Disk Write Speed data unavailable!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "DiskStatsService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide v2, 0x10500000007L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    :cond_0
    const-string v2, "DiskStatsService"

    const-string v3, "Recent Disk Write Speed data unavailable!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DiskStatsService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .locals 21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-lez v12, :cond_1

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    if-eqz v3, :cond_0

    const-wide v12, 0x20b00000004L

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v14, 0x10e00000001L

    move/from16 v10, p5

    invoke-virtual {v3, v14, v15, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    mul-long v18, v6, v4

    const-wide/16 v16, 0x400

    div-long v14, v18, v16

    const-wide v10, 0x10300000002L

    invoke-virtual {v3, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10300000003L

    mul-long v14, v8, v4

    div-long v14, v14, v16

    invoke-virtual {v3, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "-Free: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v10, v6, v4

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string v10, "K / "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v10, v8, v4

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string v10, "K total = "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v6

    div-long/2addr v10, v8

    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string v10, "% free"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    nop

    return-void

    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid stat: bsize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " avail="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " total="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "-Error: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v1, p2

    iget-object v0, v7, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string v2, "DiskStatsService"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x200

    new-array v8, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v8

    if-ge v0, v2, :cond_1

    int-to-byte v2, v0

    aput-byte v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system/perftest.tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v11, v4

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_2
    :goto_1
    throw v2

    :catch_2
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_2
    nop

    :cond_3
    :goto_3
    move-object v13, v2

    move-object v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_4
    const-string v2, "--proto"

    move-object/from16 v6, p3

    invoke-direct {v7, v6, v2}, Lcom/android/server/DiskStatsService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    const/4 v2, 0x0

    if-eqz v16, :cond_7

    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v3

    const/4 v1, 0x0

    const-wide v5, 0x10800000001L

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz v0, :cond_6

    const-wide v5, 0x10900000002L

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object/from16 v17, v10

    goto :goto_5

    :cond_6
    const-wide v5, 0x10500000003L

    move-object/from16 v17, v10

    sub-long v9, v14, v11

    invoke-virtual {v2, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_5
    move-object v10, v1

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v4, p1

    move-object/from16 v17, v10

    if-eqz v0, :cond_8

    const-string v3, "Test-Error: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string v3, "Latency: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v5, v14, v11

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v3, "ms [512B Data Write]"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    move-object v10, v1

    move-object v9, v2

    :goto_7
    if-eqz v16, :cond_9

    invoke-direct {v7, v9}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_8

    :cond_9
    invoke-direct {v7, v10}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeed(Ljava/io/PrintWriter;)V

    :goto_8
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Data"

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v10

    move-object/from16 v18, v0

    const/4 v0, 0x1

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Cache"

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    new-instance v2, Ljava/io/File;

    const-string v1, "/system"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "System"

    const/4 v6, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v2

    :goto_9
    if-eqz v16, :cond_d

    const-wide v3, 0x10e00000005L

    if-eqz v1, :cond_b

    const/4 v0, 0x3

    invoke-virtual {v9, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_a

    :cond_b
    if-eqz v2, :cond_c

    const/4 v0, 0x2

    invoke-virtual {v9, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_a

    :cond_c
    invoke-virtual {v9, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_a

    :cond_d
    if-eqz v1, :cond_e

    const-string v0, "File-based Encryption: true"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    :goto_a
    if-eqz v16, :cond_f

    invoke-direct {v7, v9}, Lcom/android/server/DiskStatsService;->reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_b

    :cond_f
    invoke-direct {v7, v10}, Lcom/android/server/DiskStatsService;->reportCachedValues(Ljava/io/PrintWriter;)V

    :goto_b
    if-eqz v16, :cond_10

    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_10
    return-void
.end method
