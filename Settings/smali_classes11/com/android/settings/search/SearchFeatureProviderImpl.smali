.class public Lcom/android/settings/search/SearchFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SearchFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/search/SearchFeatureProvider;


# static fields
.field private static final METRICS_ACTION_SETTINGS_INDEX:Ljava/lang/String; = "search_synchronous_indexing"

.field private static final TAG:Ljava/lang/String; = "SearchFeatureProvider"


# instance fields
.field private mDatabaseIndexingManager:Lcom/android/settings/search/DatabaseIndexingManager;

.field private mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search/DatabaseIndexingManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/android/settings/search/DatabaseIndexingManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/settings/search/DatabaseIndexingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/DatabaseIndexingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/android/settings/search/DatabaseIndexingManager;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/android/settings/search/DatabaseIndexingManager;

    return-object v0
.end method

.method public getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/settings/search/SearchIndexableResourcesImpl;

    invoke-direct {v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    return-object v0
.end method

.method protected isSignatureWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerPackage"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public updateIndex(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "indexStartTime":J
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SearchFeatureProviderImpl;->getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search/DatabaseIndexingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/search/DatabaseIndexingManager;->performIndexing()V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 72
    .local v2, "indexingTime":I
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    const-string v4, "search_synchronous_indexing"

    .line 73
    invoke-virtual {v3, p1, v4, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public verifyLaunchSearchResultPageCaller(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "caller"    # Landroid/content/ComponentName;

    .line 43
    if-eqz p2, :cond_4

    .line 47
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/search/SearchFeatureProviderImpl;->getSettingsIntelligencePkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 50
    .local v1, "isSettingsPackage":Z
    :goto_1
    nop

    .line 51
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/search/SearchFeatureProviderImpl;->isSignatureWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 52
    .local v2, "isWhitelistedPackage":Z
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    .line 55
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Search result intents must be called with from a whitelisted package."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_3
    :goto_2
    return-void

    .line 44
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "isSettingsPackage":Z
    .end local v2    # "isWhitelistedPackage":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExternalSettingsTrampoline intents must be called with startActivityForResult"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
