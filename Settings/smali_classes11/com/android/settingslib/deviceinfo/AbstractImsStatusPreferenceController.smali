.class public abstract Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractImsStatusPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_IMS_REGISTRATION_STATE:Ljava/lang/String; = "ims_reg_state"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mImsStatus:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "ims_reg_state"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->updateConnectivity()V

    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ims_reg_state"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "show_ims_registration_status_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method protected updateConnectivity()V
    .locals 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settingslib/R$string;->ims_reg_status_registered:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/settingslib/R$string;->ims_reg_status_not_registered:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method
