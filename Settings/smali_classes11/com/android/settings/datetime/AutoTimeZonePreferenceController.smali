.class public Lcom/android/settings/datetime/AutoTimeZonePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimeZonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

.field private final mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/datetime/UpdateTimeAndDateCallback;
    .param p3, "isFromSUW"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 40
    iput-boolean p3, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mIsFromSUW:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "auto_zone"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mIsFromSUW:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time_zone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 63
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 64
    .local v0, "autoZoneEnabled":Z
    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    .line 65
    nop

    .line 64
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object v2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 67
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 55
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 59
    return-void
.end method
