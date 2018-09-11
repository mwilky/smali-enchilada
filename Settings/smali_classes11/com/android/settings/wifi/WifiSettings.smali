.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final DATA_KEY_REFERENCE:Ljava/lang/String; = "main_toggle_wifi"

.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field public static final EXTRA_START_CONNECT_SSID:Ljava/lang/String; = "wifi_start_connect_ssid"

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_WRITE_NFC:I = 0xa

.field private static final PREF_KEY_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final PREF_KEY_ADDITIONAL_SETTINGS:Ljava/lang/String; = "additional_settings"

.field private static final PREF_KEY_CONFIGURE_WIFI_SETTINGS:Ljava/lang/String; = "configure_settings"

.field private static final PREF_KEY_CONNECTED_ACCESS_POINTS:Ljava/lang/String; = "connected_access_point"

.field private static final PREF_KEY_EMPTY_WIFI_LIST:Ljava/lang/String; = "wifi_empty_list"

.field private static final PREF_KEY_SAVED_NETWORKS:Ljava/lang/String; = "saved_networks"

.field private static final SAVED_WIFI_NFC_DIALOG_STATE:Ljava/lang/String; = "wifi_nfc_dlg_state"

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_MODE:Ljava/lang/String; = "dialog_mode"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field public static final WAPI_CERT_MANAGE_ACTION:Ljava/lang/String; = "android.Wapi.CertManage"

.field public static final WIFI_DIALOG_ID:I = 0x1

.field private static final WRITE_NFC_DIALOG_ID:I = 0x6


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

.field private mClickedConnect:Z

.field private mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsRestricted:Z

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/view/View;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

.field private final mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1174
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1222
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 195
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    .line 196
    return-void
.end method

.method private addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 3
    .param p1, "connectedAp"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 856
    nop

    .line 857
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    move-result-object v0

    .line 858
    .local v0, "pref":Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 861
    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 874
    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V

    .line 880
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 882
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 883
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 884
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    if-eqz v1, :cond_0

    .line 885
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 886
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->scrollToPreference(Landroid/support/v7/preference/Preference;)V

    .line 888
    :cond_0
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .line 996
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    .line 997
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 998
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 999
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1000
    return-void
.end method

.method private addPreferences()V
    .locals 3

    .line 226
    const v0, 0x7f1600e4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 228
    const-string v0, "connected_access_point"

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 230
    const-string v0, "access_points"

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 232
    const-string v0, "additional_settings"

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 234
    const-string v0, "configure_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 235
    const-string v0, "saved_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 238
    .local v0, "prefContext":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    .line 239
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0801c9

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f12139b

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 241
    new-instance v1, Lcom/android/settings/wifi/LinkablePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    .line 243
    new-instance v1, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 244
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1015
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1018
    :cond_0
    return-void
.end method

.method private configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    .line 813
    .local p1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 815
    return v1

    .line 818
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 819
    .local v0, "connectedAp":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 821
    return v1

    .line 825
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 826
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 827
    return v3

    .line 831
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 833
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 836
    .local v1, "preference":Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    invoke-virtual {v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    if-eq v2, v0, :cond_3

    .line 837
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 838
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 839
    return v3

    .line 844
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 847
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 848
    return v3
.end method

.method private createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .locals 7
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 803
    new-instance v6, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const v4, 0x7f08025f

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-object v6
.end method

.method private createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 8
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 796
    new-instance v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    const v5, 0x7f08025f

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    return-object v7
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 4

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 378
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private getCurrentWifiNetwork()Landroid/net/Network;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 5
    .param p0, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 715
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 716
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 717
    return v1

    .line 719
    :cond_0
    nop

    .line 720
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 721
    .local v2, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v3

    .line 725
    .local v3, "reason":I
    const/16 v4, 0xd

    if-ne v4, v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 722
    .end local v3    # "reason":I
    :cond_3
    :goto_0
    return v1
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 120
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const-string v0, "WifiSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 5

    .line 963
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 964
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 965
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "wifi_wakeup_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "wifi_scan_always_enabled"

    .line 967
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "airplane_mode_on"

    .line 969
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 971
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 965
    move v3, v4

    goto :goto_0

    .line 971
    :cond_0
    nop

    .line 965
    :goto_0
    return v3
.end method

.method public static synthetic lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 863
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 864
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 865
    invoke-virtual {v0}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 867
    invoke-virtual {v1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object v1

    .line 866
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    goto :goto_0

    .line 869
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 871
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$addConnectedAccessPointPreference$3(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .param p2, "preference"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 876
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 877
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 878
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    .line 125
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 128
    return-void
.end method

.method public static synthetic lambda$setOffMessage$4(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 2

    .line 984
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 985
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 986
    const v1, 0x7f12084d

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 987
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 984
    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 926
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 927
    const v1, 0x7f120df9

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 928
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 929
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 930
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 932
    return-void
.end method

.method private registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 5
    .param p1, "wifiNetwork"    # Landroid/net/Network;
    .param p2, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 892
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 898
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    return-void

    .line 902
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 904
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;-><init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 905
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 907
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 908
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 909
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    new-instance v3, Landroid/os/Handler;

    .line 911
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 905
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 912
    return-void

    .line 893
    :cond_2
    :goto_0
    const-string v0, "WifiSettings"

    const-string v1, "Network or Preference were null when registering callback."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method private removeConnectedAccessPointPreference()V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 941
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 942
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 943
    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f121408

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 371
    return-void
.end method

.method private setAdditionalSettingsSummaries()V
    .locals 7

    .line 946
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 947
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 948
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    const v1, 0x7f1213cd

    goto :goto_0

    .line 950
    :cond_0
    const v1, 0x7f1213cc

    .line 947
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getNumSavedNetworks()I

    move-result v0

    .line 952
    .local v0, "numSavedNetworks":I
    if-lez v0, :cond_1

    .line 953
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 954
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 955
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100042

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 956
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 955
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 960
    :goto_1
    return-void
.end method

.method private setOffMessage()V
    .locals 6

    .line 975
    const v0, 0x7f121409

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 979
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v1, v2

    .line 981
    .local v1, "wifiScanningMode":Z
    if-eqz v1, :cond_1

    const v2, 0x7f12146e

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 982
    :cond_1
    const v2, 0x7f12146f

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 983
    .local v2, "description":Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;

    .local v3, "clickListener":Lcom/android/settings/LinkifyUtils$OnClickListener;
    invoke-direct {v3, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 989
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/settings/wifi/LinkablePreference;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    .line 990
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 991
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 992
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 993
    return-void
.end method

.method private showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "dialogMode"    # I

    .line 574
    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 576
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 577
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 579
    return-void

    .line 583
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 589
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 590
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 592
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 593
    return-void
.end method

.method private startWapiCertManage()V
    .locals 3

    .line 1144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1145
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f121382

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1147
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    const v2, 0x7f121390

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1157
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    const v2, 0x7f121381

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1166
    return-void
.end method

.method private unregisterCaptivePortalNetworkCallback()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WifiSettings"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 923
    :cond_0
    return-void
.end method

.method private updateAccessPointPreferences()V
    .locals 10

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 735
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAccessPoints called for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1
    const/4 v1, 0x0

    .line 740
    .local v1, "hasAvailableAccessPoints":Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 741
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 744
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z

    move-result v2

    .line 745
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 746
    .local v3, "numAccessPoints":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 747
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    .line 749
    .local v4, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 750
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 752
    nop

    .line 753
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 754
    .local v6, "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v6, :cond_2

    .line 755
    invoke-virtual {v6, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 756
    goto :goto_1

    .line 758
    :cond_2
    nop

    .line 759
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v7

    .line 760
    .local v7, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    invoke-virtual {v7, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v7, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 762
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 763
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v8

    if-eqz v8, :cond_4

    .line 764
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v4}, Lcom/android/settings/wifi/WifiSettings;->isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 765
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 766
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 769
    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 770
    invoke-virtual {v4, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 771
    invoke-virtual {v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    .line 746
    .end local v4    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v7    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 774
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 775
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 776
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 777
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    .line 779
    if-nez v1, :cond_7

    .line 780
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 781
    new-instance v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 782
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 783
    const v5, 0x7f12140a

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 784
    add-int/lit8 v5, v2, 0x1

    .local v5, "index":I
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 785
    .end local v2    # "index":I
    const-string v2, "wifi_empty_list"

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 786
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 787
    .end local v4    # "pref":Landroid/support/v7/preference/Preference;
    nop

    .line 791
    move v2, v5

    goto :goto_2

    .line 789
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x6a4

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    :goto_2
    return-void
.end method

.method private updateAccessPointsDelayed()V
    .locals 5

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 662
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 663
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    return-void

    .line 666
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 667
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 669
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method


# virtual methods
.method protected connect(IZ)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "isSavedNetwork"    # Z

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1107
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "isSavedNetwork"    # Z

    .line 1096
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getVisibilityLogger()Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;IZ)V

    .line 1098
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 1100
    return-void
.end method

.method forget()V
    .locals 5

    .line 1070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1071
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1073
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1076
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1088
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1091
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1092
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 634
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 640
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_0
    const/16 v0, 0x25e

    return v0

    .line 636
    :cond_1
    const/16 v0, 0x25b

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 1121
    const v0, 0x7f120734

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 431
    const/16 v0, 0x67

    return v0
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1126
    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 1128
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1129
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1139
    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 2

    .line 650
    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointsChanged (WifiTracker) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointsDelayed()V

    .line 652
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 248
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 250
    nop

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 250
    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 255
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 259
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 274
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 289
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 304
    if-eqz p1, :cond_2

    .line 305
    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 306
    const-string v1, "wifi_ap_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const-string v1, "wifi_ap_state"

    .line 308
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 311
    :cond_1
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    const-string v1, "wifi_nfc_dlg_state"

    .line 313
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 320
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "wifi_enable_next_on_connect"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 322
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v3, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    nop

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 326
    .local v3, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v3, :cond_3

    .line 327
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 329
    .local v4, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 334
    .end local v3    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 335
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 337
    const-string v2, "wifi_start_connect_ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    const-string v2, "wifi_start_connect_ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 340
    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 418
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 420
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 421
    .local v0, "formerlyRestricted":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 422
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    .line 427
    :cond_0
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 4

    .line 1113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1116
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 1117
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 711
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 498
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 500
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 527
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 523
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 524
    return v1

    .line 519
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 520
    return v1

    .line 515
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 516
    return v1

    .line 502
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    .line 503
    .local v0, "isSavedNetwork":Z
    if-eqz v0, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-nez v2, :cond_2

    .line 507
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 508
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 510
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 512
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setAnimationAllowed(Z)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 223
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 457
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 459
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v1, :cond_4

    .line 460
    move-object v1, v0

    check-cast v1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 461
    invoke-virtual {v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 462
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 463
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 464
    const/4 v1, 0x7

    const v3, 0x7f12143a

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 469
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    return-void

    .line 473
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 477
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f12143b

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 479
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 480
    const/16 v3, 0x9

    const v4, 0x7f12143c

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 493
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .line 597
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 629
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 619
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 621
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 623
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 627
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 601
    nop

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createFullscreen(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_5

    .line 607
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 611
    :cond_5
    nop

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 615
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 344
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    .line 349
    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 1023
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1171
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    .line 1172
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 402
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 406
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 533
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 538
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 539
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 540
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 541
    const/4 v0, 0x0

    return v0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 551
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-nez v2, :cond_3

    .line 552
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 553
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 554
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 555
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 556
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 558
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 561
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 563
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 565
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_7

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 570
    :goto_1
    return v1

    .line 568
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 385
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 389
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 390
    .local v1, "alreadyImmutablyRestricted":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 391
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v2, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 398
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 436
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "dialog_mode"

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 444
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 451
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 453
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 353
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 356
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 358
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 360
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    .line 364
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 412
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 413
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 414
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1030
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 200
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 203
    const v1, 0x7f0d02d7

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0413

    .line 204
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 207
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const v2, 0x7f121494

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 210
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 674
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 675
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 679
    .local v0, "wifiState":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 681
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    .line 682
    goto :goto_0

    .line 685
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 686
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 687
    const v1, 0x7f1214c4

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 688
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 689
    goto :goto_0

    .line 698
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 699
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    .line 700
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 692
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 693
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 694
    const v1, 0x7f1214d0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 695
    nop

    .line 703
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    :cond_1
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .line 1034
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1036
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1038
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1039
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-ne v1, v2, :cond_3

    .line 1043
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->checkWapiParam()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1044
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getCurSecurity()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1045
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWapiCertManage()V

    .line 1047
    :cond_1
    return-void

    .line 1050
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1053
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->checkWapiParam()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1054
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getCurSecurity()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1055
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWapiCertManage()V

    .line 1057
    :cond_4
    return-void

    .line 1060
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1061
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_6

    .line 1062
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1066
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1067
    return-void
.end method
