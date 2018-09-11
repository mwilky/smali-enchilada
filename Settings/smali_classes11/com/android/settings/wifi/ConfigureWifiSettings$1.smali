.class Lcom/android/settings/wifi/ConfigureWifiSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ConfigureWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ConfigureWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private checkForFeatureSupportedScorers(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    const-string v0, "network_score"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 153
    .local v0, "mNetworkScoreManager":Landroid/net/NetworkScoreManager;
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    .line 154
    .local v1, "appData":Landroid/net/NetworkScorerAppData;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 155
    .local v2, "mEnableUseWifiComponentName":Landroid/content/ComponentName;
    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 156
    return v3

    .line 158
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v4

    .line 159
    .local v4, "scorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkScorerAppData;

    .line 160
    .local v6, "scorer":Landroid/net/NetworkScorerAppData;
    invoke-virtual {v6}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 161
    return v3

    .line 163
    .end local v6    # "scorer":Landroid/net/NetworkScorerAppData;
    :cond_2
    goto :goto_1

    .line 164
    :cond_3
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "connectivity"

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 130
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 131
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 133
    :cond_0
    const-string v3, "current_ip_address"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->checkForFeatureSupportedScorers(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    const-string v3, "use_open_wifi_automatically"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f1600df

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 119
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    const v1, 0x7f050043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 146
    return v0
.end method
