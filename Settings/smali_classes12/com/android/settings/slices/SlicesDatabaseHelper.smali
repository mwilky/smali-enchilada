.class public Lcom/android/settings/slices/SlicesDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SlicesDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/slices/SlicesDatabaseHelper$IndexColumns;,
        Lcom/android/settings/slices/SlicesDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static final CREATE_SLICES_TABLE:Ljava/lang/String; = "CREATE VIRTUAL TABLE slices_index USING fts4(key, title, summary, screentitle, keywords, icon, fragment, controller, platform_slice, slice_type);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "slices_index.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final SHARED_PREFS_TAG:Ljava/lang/String; = "slices_shared_prefs"

.field private static final TAG:Ljava/lang/String; = "SlicesDatabaseHelper"

.field private static sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "slices_index.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "CREATE VIRTUAL TABLE slices_index USING fts4(key, title, summary, screentitle, keywords, icon, fragment, controller, platform_slice, slice_type);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SlicesDatabaseHelper"

    const-string v1, "Created databases"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS slices_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;
    .locals 3

    const-class v0, Lcom/android/settings/slices/SlicesDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/slices/SlicesDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;

    :cond_0
    sget-object v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isBuildIndexed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "slices_shared_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private isLocaleIndexed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setBuildIndexed()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setLocaleIndexed()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method getBuildTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public isSliceDataIndexed()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->isBuildIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->isLocaleIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    const-string v0, "SlicesDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconstructing DB from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public setIndexedState()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->setBuildIndexed()V

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->setLocaleIndexed()V

    return-void
.end method
