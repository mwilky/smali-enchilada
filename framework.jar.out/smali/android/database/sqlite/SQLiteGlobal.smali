.class public final Landroid/database/sqlite/SQLiteGlobal;
.super Ljava/lang/Object;
.source "SQLiteGlobal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteGlobal"

.field private static sDefaultPageSize:I

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultJournalMode()Ljava/lang/String;
    .locals 3

    const-string v0, "debug.sqlite.journalmode"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPageSize()I
    .locals 3

    sget-object v0, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    sput v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    :cond_0
    const-string v1, "debug.sqlite.pagesize"

    sget v2, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefaultSyncMode()Ljava/lang/String;
    .locals 3

    const-string v0, "debug.sqlite.syncmode"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdleConnectionTimeout()I
    .locals 3

    const-string v0, "debug.sqlite.idle_connection_timeout"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getJournalSizeLimit()I
    .locals 3

    const-string v0, "debug.sqlite.journalsizelimit"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWALAutoCheckpoint()I
    .locals 3

    const-string v0, "debug.sqlite.wal.autocheckpoint"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getWALConnectionPoolSize()I
    .locals 3

    const-string v0, "debug.sqlite.wal.poolsize"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getWALSyncMode()Ljava/lang/String;
    .locals 3

    const-string v0, "debug.sqlite.wal.syncmode"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCompatibilityWalSupported()Z
    .locals 3

    const-string v0, "debug.sqlite.compatibility_wal_supported"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static native nativeReleaseMemory()I
.end method

.method public static releaseMemory()I
    .locals 1

    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->nativeReleaseMemory()I

    move-result v0

    return v0
.end method
