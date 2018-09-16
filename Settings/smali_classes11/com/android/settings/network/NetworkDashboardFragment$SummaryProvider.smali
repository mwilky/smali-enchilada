.class Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;
.super Ljava/lang/Object;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 184
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/network/TetherPreferenceController;)V

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "tetherPreferenceController"    # Lcom/android/settings/network/TetherPreferenceController;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 196
    iput-object p3, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    .line 197
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 9
    .param p1, "listening"    # Z

    .line 202
    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120cb0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f12097c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "mobileNetworkSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const v7, 0x7f120783

    invoke-virtual {v2, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f120970

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "dataUsageSettingSummary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v5

    aput-object v2, v8, v6

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v4, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {v4}, Lcom/android/settings/network/TetherPreferenceController;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v8, 0x7f120971

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "hotspotSettingSummary":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v4, v3, v6

    invoke-virtual {v8, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .end local v4    # "hotspotSettingSummary":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v3, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 231
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "mobileNetworkSummary":Ljava/lang/String;
    .end local v2    # "dataUsageSettingSummary":Ljava/lang/String;
    :cond_1
    return-void
.end method
