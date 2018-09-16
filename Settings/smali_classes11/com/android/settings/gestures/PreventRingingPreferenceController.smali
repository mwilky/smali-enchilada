.class public Lcom/android/settings/gestures/PreventRingingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreventRingingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field static final KEY_VIDEO_PAUSED:Ljava/lang/String; = "key_video_paused"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_prevent_ringing_video"


# instance fields
.field private final SECURE_KEY:Ljava/lang/String;

.field mVideoPaused:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    const-string v0, "volume_hush_gesture"

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->SECURE_KEY:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingPreferenceController;->getVideoPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 73
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 62
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_hush_gesture"

    .line 99
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "value":I
    packed-switch v0, :pswitch_data_0

    .line 110
    const v1, 0x7f120e0c

    goto :goto_0

    .line 107
    :pswitch_0
    const v1, 0x7f120e0a

    .line 108
    .local v1, "summary":I
    goto :goto_0

    .line 104
    .end local v1    # "summary":I
    :pswitch_1
    const v1, 0x7f120e0e

    .line 105
    .restart local v1    # "summary":I
    nop

    .line 110
    :goto_0
    nop

    .line 112
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 143
    const-string v0, "gesture_prevent_ringing_video"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v0, "key_video_paused"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPaused:Z

    .line 120
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->isVideoPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPaused:Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    .line 133
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 148
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_hush_gesture"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    iget-boolean v1, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPaused:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 124
    const-string v0, "key_video_paused"

    iget-boolean v1, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mVideoPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 81
    .local v0, "pref":Landroid/support/v7/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingPreferenceController;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_hush_gesture"

    const/4 v3, 0x1

    .line 81
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    .line 91
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .end local v0    # "pref":Landroid/support/v7/preference/ListPreference;
    .end local v1    # "value":I
    goto :goto_0

    .line 88
    .restart local v0    # "pref":Landroid/support/v7/preference/ListPreference;
    .restart local v1    # "value":I
    :pswitch_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 89
    goto :goto_0

    .line 85
    :pswitch_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    nop

    .line 95
    .end local v0    # "pref":Landroid/support/v7/preference/ListPreference;
    .end local v1    # "value":I
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
