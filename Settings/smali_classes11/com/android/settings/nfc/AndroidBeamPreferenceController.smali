.class public Lcom/android/settings/nfc/AndroidBeamPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AndroidBeamPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field public static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"


# instance fields
.field private mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

.field private mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    return-void

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    new-instance v1, Lcom/android/settings/nfc/AndroidBeamEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->pause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->register()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->resume()V

    :cond_1
    return-void
.end method
