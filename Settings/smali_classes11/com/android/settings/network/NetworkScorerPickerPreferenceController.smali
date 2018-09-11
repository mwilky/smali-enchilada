.class public Lcom/android/settings/network/NetworkScorerPickerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NetworkScorerPickerPreferenceController.java"


# instance fields
.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "network_score"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 41
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 50
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 51
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "allValidScorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 53
    .local v1, "enabled":Z
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 54
    if-nez v1, :cond_0

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v2}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    .line 60
    .local v2, "scorer":Landroid/net/NetworkScorerAppData;
    if-nez v2, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12097a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void
.end method
