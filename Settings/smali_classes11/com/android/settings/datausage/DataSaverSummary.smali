.class public Lcom/android/settings/datausage/DataSaverSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# static fields
.field private static final KEY_UNRESTRICTED_ACCESS:Ljava/lang/String; = "unrestricted_access"

.field private static final PROPERTY_DATA_SAVER_STATE:Ljava/lang/String; = "persist.radio.data_saver.state"

.field static final TAG:Ljava/lang/String; = "DataSaverSummary"


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitching:Z

.field private mUnrestrictedAccess:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/AppStateDataUsageBridge;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataSaverSummary;

    .line 41
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    return-object v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 130
    const v0, 0x7f120711

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 125
    const/16 v0, 0x15c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 80
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f12048c

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 85
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 199
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .line 147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f160033

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverSummary;->addPreferencesFromResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    .line 67
    const v1, 0x104018f

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 68
    const-string v0, "unrestricted_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    .line 69
    nop

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 69
    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 71
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 72
    new-instance v0, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 73
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 74
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onExtraInfoUpdated()V
    .locals 9

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    .local v1, "allApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 157
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "count":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 158
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 159
    .local v5, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    sget-object v6, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v6, v5}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 160
    goto :goto_1

    .line 162
    :cond_1
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v6, v6, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    if-eqz v6, :cond_2

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 157
    .end local v5    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100010

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 167
    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 204
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/datausage/DataSaverSummary$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataSaverSummary$1;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/widget/SwitchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 189
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 179
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 194
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    .line 106
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 91
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 92
    new-instance v0, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 93
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 95
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshWhitelist()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshBlacklist()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    .line 99
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 174
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    if-eqz v0, :cond_0

    .line 112
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 115
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    .line 117
    const-string v0, "DataSaverSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "persist.radio.data_saver.state"

    if-eqz p2, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 143
    return-void
.end method
