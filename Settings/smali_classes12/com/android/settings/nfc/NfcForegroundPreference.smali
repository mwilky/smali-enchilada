.class public Lcom/android/settings/nfc/NfcForegroundPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120997

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12098f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f12098e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    invoke-virtual {p0, p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPaymentAppsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    return v3
.end method

.method refresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
