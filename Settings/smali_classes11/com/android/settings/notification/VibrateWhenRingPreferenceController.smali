.class public Lcom/android/settings/notification/VibrateWhenRingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VibrateWhenRingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"


# instance fields
.field private final DEFAULT_VALUE:I

.field private final NOTIFICATION_VIBRATE_WHEN_RINGING:I

.field private mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->DEFAULT_VALUE:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->NOTIFICATION_VIBRATE_WHEN_RINGING:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VibrateWhenRingPreferenceController;

    .line 37
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 75
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 76
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isSliceable()Z
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->register(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->register(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    .line 58
    nop

    .line 57
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
