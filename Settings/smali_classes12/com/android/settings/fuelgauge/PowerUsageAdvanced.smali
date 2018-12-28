.class public Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# static fields
.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_GRAPH:Ljava/lang/String; = "battery_graph"

.field private static final KEY_SHOW_ALL_APPS:Ljava/lang/String; = "show_all_apps"

.field static final MENU_TOGGLE_APPS:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "AdvancedBatteryUsage"


# instance fields
.field private mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

.field private mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field mShowAllApps:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    return-void
.end method

.method private updateHistPrefSummary(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v3}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getAdvancedUsageScreenInfoString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setBottomSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideBottomSummary()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    const-string v3, "app_list"

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/SettingsActivity;

    move-object v1, v7

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AdvancedBatteryUsage"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600a5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "battery_graph"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->restoreSavedInstance(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    nop

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120737

    goto :goto_0

    :cond_0
    const v0, 0x7f121029

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120737

    goto :goto_0

    :cond_1
    const v0, 0x7f121029

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x354

    iget-boolean v4, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->restartBatteryStatsLoader(I)V

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "show_all_apps"

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected refreshUi(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->refreshAppListGroup(Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

.method restoreSavedInstance(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "show_all_apps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    :cond_0
    return-void
.end method
