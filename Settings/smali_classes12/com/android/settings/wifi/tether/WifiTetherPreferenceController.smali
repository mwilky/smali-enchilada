.class public Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final AIRPLANE_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final ID_NULL:I = -0x1

.field private static final WIFI_TETHER_SETTINGS:Ljava/lang/String; = "wifi_tether"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field mPreference:Landroid/support/v7/preference/Preference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftApState:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiRegexs:[Ljava/lang/String;

.field mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->AIRPLANE_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode(I)V

    return-void
.end method

.method private clearSummaryForAirplaneMode()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode(I)V

    return-void
.end method

.method private clearSummaryForAirplaneMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f12151d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x1040713

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    if-nez p1, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f12151e

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "wifi_tether"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether"

    return-object v0
.end method

.method handleWifiApStateChanged(II)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1214a6

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f121520

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f121468

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f121521

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f12144c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initWifiTetherSoftApManager()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;-><init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->AIRPLANE_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->registerSoftApCallback()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->unRegisterSoftApCallback()V

    :cond_0
    return-void
.end method
