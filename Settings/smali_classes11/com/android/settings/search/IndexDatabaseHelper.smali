.class public Lcom/android/settings/search/IndexDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IndexDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/IndexDatabaseHelper$SavedQueriesColumns;,
        Lcom/android/settings/search/IndexDatabaseHelper$MetaColumns;,
        Lcom/android/settings/search/IndexDatabaseHelper$IndexColumns;,
        Lcom/android/settings/search/IndexDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static final CREATE_INDEX_TABLE:Ljava/lang/String; = "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id, payload_type, payload);"

.field private static final CREATE_META_TABLE:Ljava/lang/String; = "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL)"

.field private static final CREATE_SAVED_QUERIES_TABLE:Ljava/lang/String; = "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

.field private static final CREATE_SITE_MAP_TABLE:Ljava/lang/String; = "CREATE VIRTUAL TABLE site_map USING fts4(parent_class, child_class, parent_title, child_title)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "search_index.db"

.field private static final DATABASE_VERSION:I = 0x76

.field private static final INSERT_BUILD_VERSION:Ljava/lang/String;

.field private static final PREF_KEY_INDEXED_PROVIDERS:Ljava/lang/String; = "indexed_providers"

.field private static final SELECT_BUILD_VERSION:Ljava/lang/String; = "SELECT build FROM meta_index LIMIT 1;"

.field private static final SHARED_PREFS_TAG:Ljava/lang/String; = "indexing_manager"

.field private static final TAG:Ljava/lang/String; = "IndexDatabaseHelper"

.field private static sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO meta_index VALUES (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->INSERT_BUILD_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    const-string v0, "search_index.db"

    const/4 v1, 0x0

    const/16 v2, 0x76

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 176
    return-void
.end method

.method static areProvidersIndexed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerVersionedNames"    # Ljava/lang/String;

    .line 284
    const-string v0, "indexing_manager"

    .line 285
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "indexed_providers"

    .line 286
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "indexedProviders":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 184
    const-string v0, "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id, payload_type, payload);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v0, "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v0, "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string v0, "CREATE VIRTUAL TABLE site_map USING fts4(parent_class, child_class, parent_title, child_title)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->INSERT_BUILD_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Bootstrapped database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method static buildProviderVersionedNames(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 254
    .local p0, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 256
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 258
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 301
    const-string v0, "DROP TABLE IF EXISTS meta_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string v0, "DROP TABLE IF EXISTS prefs_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const-string v0, "DROP TABLE IF EXISTS saved_queries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v0, "DROP TABLE IF EXISTS site_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "version":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v1

    .line 238
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT build FROM meta_index LIMIT 1;"

    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v2, v1

    .line 239
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 245
    :cond_0
    if-eqz v2, :cond_1

    .line 246
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "IndexDatabaseHelper"

    const-string v4, "Cannot get build version from Index metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    :goto_1
    return-object v0

    .line 245
    :goto_2
    if-eqz v2, :cond_2

    .line 246
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/settings/search/IndexDatabaseHelper;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcom/android/settings/search/IndexDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/search/IndexDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    .line 170
    :cond_0
    sget-object v1, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 166
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static isBuildIndexed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildNo"    # Ljava/lang/String;

    .line 291
    const-string v0, "indexing_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 291
    return v0
.end method

.method static isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .line 279
    const-string v0, "indexing_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 279
    return v0
.end method

.method static setBuildIndexed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildNo"    # Ljava/lang/String;

    .line 297
    const-string v0, "indexing_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method

.method static setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .line 265
    const-string v0, "indexing_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    return-void
.end method

.method static setProvidersIndexed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerVersionedNames"    # Ljava/lang/String;

    .line 272
    const-string v0, "indexing_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "indexed_providers"

    .line 274
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 219
    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'. Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 223
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 194
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 196
    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using schema version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as build-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 203
    :cond_0
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index is fine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 209
    const/16 v0, 0x76

    if-ge p2, v0, :cond_0

    .line 210
    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'. Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    :cond_0
    return-void
.end method

.method public reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 226
    iget-object v0, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "indexing_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    return-void
.end method
