.class Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WatchlistReportDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;,
        Lcom/android/server/net/watchlist/WatchlistReportDbHelper$WhiteListReportContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_MODEL:Ljava/lang/String; = "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

.field private static final DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final INDEX_CNC_DOMAIN:I = 0x1

.field private static final INDEX_DIGEST:I = 0x0

.field private static final INDEX_TIMESTAMP:I = 0x2

.field private static final NAME:Ljava/lang/String; = "watchlist_report.db"

.field private static final TAG:Ljava/lang/String; = "WatchlistReportDbHelper"

.field private static final VERSION:I = 0x2

.field private static sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "app_digest"

    const-string v1, "cnc_domain"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getSystemWatchlistDbFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->setIdleConnectionTimeout(J)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    .locals 2

    const-class v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getSystemWatchlistDbFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "watchlist_report.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cleanup(J)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "records"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .locals 16

    const-string/jumbo v1, "timestamp < ?"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v0, 0x0

    move-object v13, v0

    const/4 v3, 0x1

    :try_start_0
    const-string/jumbo v4, "records"

    sget-object v5, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "timestamp < ?"

    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    aput-object v2, v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v2

    if-nez v13, :cond_1

    nop

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    nop

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    move-object v0, v5

    :cond_2
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    invoke-direct {v4, v2, v0, v3}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v4

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public insertNewRecord([BLjava/lang/String;J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_digest"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "cnc_domain"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "records"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS records"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
