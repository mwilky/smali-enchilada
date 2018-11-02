.class public Lcom/android/settings/nfc/AndroidBeamEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "AndroidBeamEnabler.java"


# instance fields
.field private final mBeamDisallowedBySystem:Z

.field private final mPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->isNfcAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f12010c

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f12010b

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f120108

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
