.class public Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGamingModeNotificationWaySettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final GAME_MODE_BLOCK_NOTIFICATION:Ljava/lang/String; = "game_mode_block_notification"

.field private static final KEY_ONEPLUS_INSTRUCITONS:Ljava/lang/String; = "oneplus_instrucitons"

.field private static final KEY_SHIELDING_NOTIFICATION:Ljava/lang/String; = "shielding_notification"

.field private static final KEY_SUSPENSION_NOTICE:Ljava/lang/String; = "suspension_notice"

.field private static final KEY_WEAK_TEXT_REMINDING:Ljava/lang/String; = "weak_text_reminding"

.field private static final SHIELDING_NOTIFICATION_VALUE:I = 0x1

.field private static final SUSPENSION_NOTICE_VALUE:I = 0x0

.field private static final WEAK_TEXT_REMINDING_VALUE:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

.field private mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

.field private mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

.field private mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setGamingModeNotificationWayValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->setAnimTypes(I)V

    .line 55
    return-void
.end method

.method private updateUI()V
    .locals 5

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 105
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 106
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 107
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 108
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 111
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 121
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f160080

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->addPreferencesFromResource(I)V

    .line 42
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "suspension_notice"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    .line 44
    const-string v0, "weak_text_reminding"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    .line 45
    const-string v0, "shielding_notification"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 49
    const-string v0, "oneplus_instrucitons"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->releaseAnim()V

    .line 102
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->stopAnim()V

    .line 93
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/settings/ui/RadioButtonPreference;

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 62
    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->setGamingModeNotificationWayValue(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 67
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->setGamingModeNotificationWayValue(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 72
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->setGamingModeNotificationWayValue(I)V

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->updateUI()V

    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->startAnim()V

    .line 84
    :cond_0
    return-void
.end method
