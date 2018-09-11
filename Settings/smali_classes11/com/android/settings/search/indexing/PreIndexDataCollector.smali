.class public Lcom/android/settings/search/indexing/PreIndexDataCollector;
.super Ljava/lang/Object;
.source "PreIndexDataCollector.java"


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IndexableDataCollector"


# instance fields
.field private final BASE_AUTHORITY:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIndexData:Lcom/android/settings/search/indexing/PreIndexData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->BASE_AUTHORITY:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.settings"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 117
    .local v1, "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 118
    .local v2, "uriForResources":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mIndexData:Lcom/android/settings/search/indexing/PreIndexData;

    iget-object v3, v3, Lcom/android/settings/search/indexing/PreIndexData;->dataToUpdate:Ljava/util/List;

    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v2, v4}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->getIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 122
    .local v3, "uriForRawData":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mIndexData:Lcom/android/settings/search/indexing/PreIndexData;

    iget-object v4, v4, Lcom/android/settings/search/indexing/PreIndexData;->dataToUpdate:Ljava/util/List;

    sget-object v5, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v3, v5}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->getIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 125
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "uriForResources":Landroid/net/Uri;
    .end local v3    # "uriForRawData":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "IndexableDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v0
.end method

.method private addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .line 180
    nop

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mIndexData:Lcom/android/settings/search/indexing/PreIndexData;

    iget-object v1, v1, Lcom/android/settings/search/indexing/PreIndexData;->nonIndexableKeys:Ljava/util/Map;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    return-void
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 290
    .local v6, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 293
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .local v0, "cursor":Landroid/database/Cursor;
    nop

    .line 296
    nop

    .line 299
    if-nez v0, :cond_0

    .line 300
    const-string v1, "IndexableDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object v7

    .line 305
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 306
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 307
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "IndexableDataCollector"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    const-string v3, "IndexableDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty non-indexable key from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    goto :goto_0

    .line 316
    :cond_1
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 319
    :cond_2
    nop

    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 319
    return-object v7

    .line 321
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 294
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IndexableDataCollector"

    const-string v2, "Exception querying the keys!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    return-object v7
.end method

.method private isPrivilegedPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 359
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 361
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 362
    .local v2, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 364
    .end local v2    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method


# virtual methods
.method buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "settings/non_indexables_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "settings/indexables_raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "settings/indexables_xml_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public collectIndexableData(Ljava/util/List;Z)Lcom/android/settings/search/indexing/PreIndexData;
    .locals 6
    .param p2, "isFullIndex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/settings/search/indexing/PreIndexData;"
        }
    .end annotation

    .line 87
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/settings/search/indexing/PreIndexData;

    invoke-direct {v0}, Lcom/android/settings/search/indexing/PreIndexData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mIndexData:Lcom/android/settings/search/indexing/PreIndexData;

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 90
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v1}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    goto :goto_0

    .line 93
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 94
    .local v2, "authority":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 96
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 97
    invoke-direct {p0, v3, v2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 101
    .local v4, "nonIndexableStartTime":J
    invoke-direct {p0, v3, v2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "nonIndexableStartTime":J
    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mIndexData:Lcom/android/settings/search/indexing/PreIndexData;

    return-object v0
.end method

.method getIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 226
    .local v7, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 227
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 229
    .local v2, "rawData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    if-nez v1, :cond_0

    .line 230
    const-string v0, "IndexableDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-object v2

    .line 235
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 236
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 237
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 240
    .local v3, "providerRank":I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "summaryOn":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "summaryOff":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "entries":Ljava/lang/String;
    const/4 v9, 0x5

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 246
    .local v9, "keywords":Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, "screenTitle":Ljava/lang/String;
    const/4 v11, 0x7

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, "className":Ljava/lang/String;
    const/16 v12, 0x8

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 251
    .local v12, "iconResId":I
    const/16 v13, 0x9

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, "action":Ljava/lang/String;
    const/16 v14, 0xa

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, "targetPackage":Ljava/lang/String;
    const/16 v15, 0xb

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 257
    .local v15, "targetClass":Ljava/lang/String;
    move/from16 v16, v0

    const/16 v0, 0xc

    .end local v0    # "count":I
    .local v16, "count":I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "key":Ljava/lang/String;
    move/from16 v17, v3

    const/16 v3, 0xd

    .end local v3    # "providerRank":I
    .local v17, "providerRank":I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 260
    .local v3, "userId":I
    move-object/from16 v18, v7

    :try_start_2
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .local v18, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v19, v1

    move-object/from16 v1, p1

    :try_start_3
    invoke-direct {v7, v1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 261
    .end local v1    # "cursor":Landroid/database/Cursor;
    .local v7, "data":Lcom/android/settings/search/SearchIndexableRaw;
    .local v19, "cursor":Landroid/database/Cursor;
    iput-object v4, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 262
    iput-object v5, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 263
    iput-object v6, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 264
    iput-object v8, v7, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 265
    iput-object v9, v7, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 266
    iput-object v10, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 267
    iput-object v11, v7, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    move-object/from16 v1, p2

    :try_start_4
    iput-object v1, v7, Lcom/android/settings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    .line 269
    iput v12, v7, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    .line 270
    iput-object v13, v7, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 271
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 272
    iput-object v15, v7, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 273
    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 274
    iput v3, v7, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    .line 276
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summaryOn":Ljava/lang/String;
    .end local v6    # "summaryOff":Ljava/lang/String;
    .end local v7    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v8    # "entries":Ljava/lang/String;
    .end local v9    # "keywords":Ljava/lang/String;
    .end local v10    # "screenTitle":Ljava/lang/String;
    .end local v11    # "className":Ljava/lang/String;
    .end local v12    # "iconResId":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "targetPackage":Ljava/lang/String;
    .end local v15    # "targetClass":Ljava/lang/String;
    .end local v17    # "providerRank":I
    nop

    .line 237
    move/from16 v0, v16

    move-object/from16 v7, v18

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 280
    .end local v16    # "count":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p2

    .end local v19    # "cursor":Landroid/database/Cursor;
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_1
    move-object/from16 v3, v19

    goto :goto_2

    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v1, p2

    move-object/from16 v3, v19

    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .end local v18    # "resolver":Landroid/content/ContentResolver;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .local v7, "resolver":Landroid/content/ContentResolver;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v18, v7

    move-object/from16 v1, p2

    move-object/from16 v3, v19

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .restart local v18    # "resolver":Landroid/content/ContentResolver;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .end local v18    # "resolver":Landroid/content/ContentResolver;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move-object/from16 v19, v1

    move-object/from16 v18, v7

    move-object/from16 v1, p2

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .restart local v18    # "resolver":Landroid/content/ContentResolver;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    move-object/from16 v3, v19

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    nop

    .line 283
    return-object v2

    .line 280
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v18    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "resolver":Landroid/content/ContentResolver;
    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object/from16 v18, v7

    move-object/from16 v1, p2

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "resolver":Landroid/content/ContentResolver;
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method getIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 137
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "resources":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    if-nez v0, :cond_0

    .line 141
    const-string v2, "IndexableDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v1

    .line 146
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 147
    .local v2, "count":I
    if-lez v2, :cond_1

    .line 148
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 151
    .local v3, "xmlResId":I
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "className":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 154
    .local v5, "iconResId":I
    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "action":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "targetPackage":Ljava/lang/String;
    const/4 v9, 0x6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "targetClass":Ljava/lang/String;
    new-instance v10, Landroid/provider/SearchIndexableResource;

    invoke-direct {v10, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 161
    .local v10, "sir":Landroid/provider/SearchIndexableResource;
    iput v3, v10, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 162
    iput-object v4, v10, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 163
    iput-object p2, v10, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 164
    iput v5, v10, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 165
    iput-object v7, v10, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 166
    iput-object v8, v10, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 167
    iput-object v9, v10, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 169
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v3    # "xmlResId":I
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "iconResId":I
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "targetPackage":Ljava/lang/String;
    .end local v9    # "targetClass":Ljava/lang/String;
    .end local v10    # "sir":Landroid/provider/SearchIndexableResource;
    goto :goto_0

    .line 173
    .end local v2    # "count":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    nop

    .line 175
    return-object v1

    .line 173
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, "packageContext":Landroid/content/Context;
    invoke-virtual {p0, p2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v2, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 197
    .end local v0    # "packageContext":Landroid/content/Context;
    .end local v1    # "uriForNonIndexableKeys":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "IndexableDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v1, Lcom/android/settings/search/indexing/PreIndexDataCollector;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 333
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 334
    .local v0, "authority":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 336
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 340
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 341
    .local v2, "readPermission":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 343
    .local v4, "writePermission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 347
    :cond_1
    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    .line 348
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 352
    :cond_2
    iget-object v3, p0, Lcom/android/settings/search/indexing/PreIndexDataCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/search/indexing/PreIndexDataCollector;->isPrivilegedPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    return v3

    .line 349
    :cond_3
    :goto_0
    return v3

    .line 344
    :cond_4
    :goto_1
    return v3

    .line 337
    .end local v2    # "readPermission":Ljava/lang/String;
    .end local v4    # "writePermission":Ljava/lang/String;
    :cond_5
    :goto_2
    return v3
.end method
