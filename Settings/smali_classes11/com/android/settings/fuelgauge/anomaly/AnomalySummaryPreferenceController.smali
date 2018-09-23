.class public Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;
.super Ljava/lang/Object;
.source "AnomalySummaryPreferenceController.java"


# static fields
.field public static final ANOMALY_KEY:Ljava/lang/String; = "high_usage"

.field private static final REQUEST_ANOMALY_ACTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HighUsagePreferenceController"


# instance fields
.field mAnomalies:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation
.end field

.field mAnomalyPreference:Landroid/support/v7/preference/Preference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mMetricsKey:I

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "high_usage"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mMetricsKey:I

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->hideHighUsagePreference()V

    return-void
.end method


# virtual methods
.method public hideHighUsagePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "high_usage"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mMetricsKey:I

    invoke-static {v0, v3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v4, "HighUsagePreferenceController"

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-static {v0, v1, v3}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->startBatteryAbnormalPage(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public updateAnomalySummaryPreference(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10002f

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-le v1, v3, :cond_0

    const v5, 0x7f1201f4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v2, v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {v3, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getSummaryResIdFromAnomalyType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method
