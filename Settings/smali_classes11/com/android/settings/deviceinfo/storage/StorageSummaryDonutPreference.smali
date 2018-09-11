.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryDonutPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$BoldLinkSpan;
    }
.end annotation


# instance fields
.field private mPercent:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    .line 64
    const v0, 0x7f0d0256

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setLayoutResource(I)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 79
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 81
    const v0, 0x7f0a0195

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/DonutView;

    .line 82
    .local v0, "donut":Lcom/android/settings/widget/DonutView;
    if-eqz v0, :cond_0

    .line 83
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/DonutView;->setPercentage(D)V

    .line 86
    :cond_0
    const v1, 0x7f0a016d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    .local v1, "deletionHelperButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 94
    if-eqz p1, :cond_1

    const v0, 0x7f0a016d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.oneplus.security"

    .line 98
    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.security.action.CLEAN_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 104
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    goto :goto_1

    .line 106
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x348

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void
.end method

.method public setPercent(JJ)V
    .locals 4
    .param p1, "usedBytes"    # J
    .param p3, "totalBytes"    # J

    .line 69
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    long-to-double v0, p1

    long-to-double v2, p3

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    .line 74
    return-void
.end method
