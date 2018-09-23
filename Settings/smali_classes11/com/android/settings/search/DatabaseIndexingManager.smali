.class public Lcom/android/settings/search/DatabaseIndexingManager;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DatabaseIndexingManager"


# instance fields
.field private mCollector:Lcom/android/settings/search/indexing/PreIndexDataCollector;

.field private mContext:Landroid/content/Context;

.field private mConverter:Lcom/android/settings/search/indexing/IndexDataConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DatabaseIndexingManager"

    const-string v2, "Cannot open writable database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private rebuildDatabase()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/search/DatabaseIndexingManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method getIndexData(Lcom/android/settings/search/indexing/PreIndexData;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/search/indexing/PreIndexData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/indexing/IndexData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mConverter:Lcom/android/settings/search/indexing/IndexDataConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search/indexing/IndexDataConverter;

    iget-object v1, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/indexing/IndexDataConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mConverter:Lcom/android/settings/search/indexing/IndexDataConverter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mConverter:Lcom/android/settings/search/indexing/IndexDataConverter;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/indexing/IndexDataConverter;->convertPreIndexDataToIndexData(Lcom/android/settings/search/indexing/PreIndexData;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getIndexDataFromProviders(Ljava/util/List;Z)Lcom/android/settings/search/indexing/PreIndexData;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/settings/search/indexing/PreIndexData;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mCollector:Lcom/android/settings/search/indexing/PreIndexDataCollector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search/indexing/PreIndexDataCollector;

    iget-object v1, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/indexing/PreIndexDataCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mCollector:Lcom/android/settings/search/indexing/PreIndexDataCollector;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mCollector:Lcom/android/settings/search/indexing/PreIndexDataCollector;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->collectIndexableData(Ljava/util/List;Z)Lcom/android/settings/search/indexing/PreIndexData;

    move-result-object v0

    return-object v0
.end method

.method insertIndexData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/indexing/IndexData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/indexing/IndexData;

    iget-object v2, v1, Lcom/android/settings/search/indexing/IndexData;->normalizedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "docid"

    invoke-virtual {v1}, Lcom/android/settings/search/indexing/IndexData;->getDocId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "locale"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_title"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->updatedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_title_normalized"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->normalizedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_summary_on"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->updatedSummaryOn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_summary_on_normalized"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->normalizedSummaryOn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_entries"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->entries:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_keywords"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->spaceDelimitedKeywords:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "class_name"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "screen_title"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->screenTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "intent_action"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->intentAction:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "intent_target_package"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->intentTargetPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "intent_target_class"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "icon"

    iget v4, v1, Lcom/android/settings/search/indexing/IndexData;->iconResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "enabled"

    iget-boolean v4, v1, Lcom/android/settings/search/indexing/IndexData;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "data_key_reference"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "user_id"

    iget v4, v1, Lcom/android/settings/search/indexing/IndexData;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "payload_type"

    iget v4, v1, Lcom/android/settings/search/indexing/IndexData;->payloadType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "payload"

    iget-object v4, v1, Lcom/android/settings/search/indexing/IndexData;->payload:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "prefs_index"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v3, v1, Lcom/android/settings/search/indexing/IndexData;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/settings/search/indexing/IndexData;->childClassName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "parent_class"

    iget-object v6, v1, Lcom/android/settings/search/indexing/IndexData;->className:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parent_title"

    iget-object v6, v1, Lcom/android/settings/search/indexing/IndexData;->screenTitle:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "child_class"

    iget-object v6, v1, Lcom/android/settings/search/indexing/IndexData;->childClassName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "child_title"

    iget-object v6, v1, Lcom/android/settings/search/indexing/IndexData;->updatedTitle:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "site_map"

    invoke-virtual {p1, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_1
    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method isFullIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1, p2}, Lcom/android/settings/search/IndexDatabaseHelper;->isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, p3}, Lcom/android/settings/search/IndexDatabaseHelper;->isBuildIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    nop

    invoke-static {p1, p4}, Lcom/android/settings/search/IndexDatabaseHelper;->areProvidersIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public performIndexing()V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    invoke-static {v3}, Lcom/android/settings/search/IndexDatabaseHelper;->buildProviderVersionedNames(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/settings/search/DatabaseIndexingManager;->isFullIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/settings/search/DatabaseIndexingManager;->rebuildDatabase()V

    :cond_0
    invoke-virtual {p0, v3, v7}, Lcom/android/settings/search/DatabaseIndexingManager;->getIndexDataFromProviders(Ljava/util/List;Z)Lcom/android/settings/search/indexing/PreIndexData;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/search/DatabaseIndexingManager;->updateDatabase(Lcom/android/settings/search/indexing/PreIndexData;Z)V

    iget-object v11, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/android/settings/search/IndexDatabaseHelper;->setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v5}, Lcom/android/settings/search/IndexDatabaseHelper;->setBuildIndexed(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/android/settings/search/IndexDatabaseHelper;->setProvidersIndexed(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method updateDataInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 20
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v11, "enabled = 1"

    const-string v12, "enabled = 0"

    const-string v2, "prefs_index"

    sget-object v3, Lcom/android/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    const-string v4, "enabled = 1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v1

    const-string v1, "enabled"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v8, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x8

    if-eqz v1, :cond_2

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "docid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "prefs_index"

    invoke-virtual {v9, v5, v14, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const-string v2, "prefs_index"

    sget-object v3, Lcom/android/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    const-string v4, "enabled = 0"

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v9

    move v15, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v4, v0, Lcom/android/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const/16 v4, 0xa

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_4

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "docid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "prefs_index"

    const/4 v8, 0x0

    invoke-virtual {v9, v7, v2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    goto :goto_1

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method updateDatabase(Lcom/android/settings/search/indexing/PreIndexData;Z)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Lcom/android/settings/search/indexing/PreIndexData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/settings/search/DatabaseIndexingManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "DatabaseIndexingManager"

    const-string v3, "Cannot indexDatabase Index as I cannot get a writable database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0, p1}, Lcom/android/settings/search/DatabaseIndexingManager;->getIndexData(Lcom/android/settings/search/indexing/PreIndexData;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/search/DatabaseIndexingManager;->insertIndexData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    if-nez p2, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/search/DatabaseIndexingManager;->updateDataInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
