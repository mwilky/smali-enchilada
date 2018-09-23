.class public abstract Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiTetherBasePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;
    }
.end annotation


# instance fields
.field protected final mCm:Landroid/net/ConnectivityManager;

.field protected final mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

.field protected mPreference:Landroid/support/v7/preference/Preference;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected final mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mCm:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiRegexs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->updateDisplay()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiRegexs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public abstract updateDisplay()V
.end method
