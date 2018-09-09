.class public Lcom/android/server/am/ConnorDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ConnorDbHelper.java"


# static fields
.field protected static final CONNOR_FEED_COUNT:Ljava/lang/String; = "connor_feed_count"

.field protected static final CONNOR_FEED_HIT:Ljava/lang/String; = "connor_feed_hit"

.field protected static final CONNOR_ID:Ljava/lang/String; = "connor_id"

.field protected static final CONNOR_ISHOME:Ljava/lang/String; = "connor_is_home"

.field protected static final CONNOR_MODEL_ACC:Ljava/lang/String; = "connor_model_acc"

.field protected static final CONNOR_MODEL_LOSS:Ljava/lang/String; = "connor_model_loss"

.field protected static final CONNOR_MODEL_VERSION:Ljava/lang/String; = "connor_model_ver"

.field protected static final CONNOR_PACKAGENAME:Ljava/lang/String; = "connor_package_name"

.field protected static final CONNOR_PREDICT_NUMBER:Ljava/lang/String; = "connor_predict_num"

.field protected static final CONNOR_START_PROC_COUNT:Ljava/lang/String; = "connor_proc_count"

.field protected static final CONNOR_START_PROC_HIT:Ljava/lang/String; = "connor_proc_hit"

.field protected static final CONNOR_STATISTIC_CATEGORY:Ljava/lang/String; = "connor_stat_category"

.field protected static final CONNOR_STATISTIC_TABLE:Ljava/lang/String; = "connor_statistic_table"

.field protected static final CONNOR_TABLE_NAME:Ljava/lang/String; = "connor_history_table"

.field protected static final CONNOR_TS:Ljava/lang/String; = "connor_ts"

.field protected static final CREATE_HISTORY_TABLE:Ljava/lang/String; = "CREATE TABLE connor_history_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_ts INTEGER, connor_package_name TEXT, connor_is_home INTEGER)"

.field protected static final CREATE_STATISTIC_TABLE:Ljava/lang/String; = "CREATE TABLE connor_statistic_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_model_ver INTEGER, connor_model_acc INTEGER, connor_model_loss REAL, connor_stat_category TEXT, connor_predict_num INTEGER, connor_feed_count INTEGER, connor_feed_hit INTEGER, connor_proc_count INTEGER, connor_proc_hit INTEGER)"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnorDbHelper"


# instance fields
.field private final DB_MAX_ENTRY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    const-string v0, "15000"

    iput-object v0, p0, Lcom/android/server/am/ConnorDbHelper;->DB_MAX_ENTRY:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    const-string v0, "CREATE TABLE connor_history_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_ts INTEGER, connor_package_name TEXT, connor_is_home INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE TABLE connor_statistic_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_model_ver INTEGER, connor_model_acc INTEGER, connor_model_loss REAL, connor_stat_category TEXT, connor_predict_num INTEGER, connor_feed_count INTEGER, connor_feed_hit INTEGER, connor_proc_count INTEGER, connor_proc_hit INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 73
    const-string v0, "ConnorDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade old ver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new ver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 75
    const-string v0, "CREATE TABLE connor_statistic_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_model_ver INTEGER, connor_model_acc INTEGER, connor_model_loss REAL, connor_stat_category TEXT, connor_predict_num INTEGER, connor_feed_count INTEGER, connor_feed_hit INTEGER, connor_proc_count INTEGER, connor_proc_hit INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public restoreMM()V
    .locals 10

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/ConnorDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 81
    .local v9, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "connor_history_table"

    const-string v0, "connor_package_name"

    const-string v2, "connor_id"

    const-string v3, "connor_ts"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "connor_is_home = 0 "

    const-string v7, "connor_id desc "

    const-string v8, "15000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    .local v0, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "connor_package_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "indexPackageName":I
    const-string v2, "connor_ts"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, "indexTimeStamp":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/am/Connor;->nativeFeed(JLjava/lang/String;Z)V

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    .end local v1    # "indexPackageName":I
    .end local v2    # "indexTimeStamp":I
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_1
    if-eqz v9, :cond_3

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_2
    if-eqz v9, :cond_3

    :goto_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    :cond_3
    return-void

    .line 101
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v1
.end method
