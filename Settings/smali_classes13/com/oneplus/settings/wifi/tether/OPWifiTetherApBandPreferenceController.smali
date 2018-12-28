.class public Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "OPWifiTetherApBandPreferenceController.java"


# static fields
.field public static final BAND_VALUES:[Ljava/lang/String;

.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_network_ap_band_single_select"

.field private static final TAG:Ljava/lang/String; = "OPWifiTetherApBandPref"


# instance fields
.field private final mBandEntries:[Ljava/lang/String;

.field private mBandIndex:I

.field private final mBandSummaries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->BAND_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 2

    const-string v0, "wifi_tether_network_ap_band_single_select"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    return-void
.end method

.method private is5GhzBandSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Lcom/android/settings/wifi/WifiUtils;->isSupportDualBand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public getBandIndex()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    return v0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether_network_ap_band_single_select"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v0, "OPWifiTetherApBandPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Band preference changed, updating band index to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    const/4 v0, 0x1

    return v0
.end method

.method public updateDisplay()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v3, "OPWifiTetherApBandPref"

    const-string v4, "Updating band index to 0 because no config"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v3, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v3, "OPWifiTetherApBandPref"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating band index to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iget-object v3, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v3, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v3, "OPWifiTetherApBandPref"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "5Ghz not supported, updating band index to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v3, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    iget v4, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    iget-object v5, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_2

    iput v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->setEnabled(Z)V

    const v2, 0x7f1213e8

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->setSummary(I)V

    goto :goto_1

    :cond_3
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->setExistingConfigValue(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
