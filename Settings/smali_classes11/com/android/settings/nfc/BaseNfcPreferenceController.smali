.class public abstract Lcom/android/settings/nfc/BaseNfcPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BaseNfcPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;
    }
.end annotation


# instance fields
.field private mAirplaneMode:I

.field private mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field protected mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

.field protected mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/BaseNfcPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/BaseNfcPreferenceController;

    .line 36
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/BaseNfcPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/BaseNfcPreferenceController;

    .line 36
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/BaseNfcPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/BaseNfcPreferenceController;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->updateNfcPreference()V

    return-void
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateNfcPreference()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    iget v2, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneMode:I

    .line 103
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "airplaneMode":I
    iget v1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneMode:I

    if-ne v0, v1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iput v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneMode:I

    .line 109
    iget v1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 110
    .local v1, "toggleable":Z
    if-eqz v1, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_1

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 115
    :goto_1
    iget-object v2, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 116
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    iput-object v1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 62
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;-><init>(Lcom/android/settings/nfc/BaseNfcPreferenceController;Lcom/android/settings/nfc/BaseNfcPreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    .line 64
    invoke-direct {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->updateNfcPreference()V

    .line 66
    :cond_1
    return-void
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public isAvailable()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->unregister()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    .line 100
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->register()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    .line 90
    :cond_1
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method
