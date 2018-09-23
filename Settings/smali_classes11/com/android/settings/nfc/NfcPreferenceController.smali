.class public Lcom/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field public static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"


# instance fields
.field private mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    return-void

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggle_nfc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->register()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
