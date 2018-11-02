.class public Lcom/android/settings/notification/DockAudioMediaPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "DockAudioMediaPreferenceController.java"


# static fields
.field private static final DEFAULT_DOCK_AUDIO_MEDIA:I = 0x0

.field private static final DOCK_AUDIO_MEDIA_DISABLED:I = 0x0

.field private static final DOCK_AUDIO_MEDIA_ENABLED:I = 0x1

.field private static final KEY_DOCK_AUDIO_MEDIA:Ljava/lang/String; = "dock_audio_media"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v7, Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;

    const-string v3, "dock_audio_media"

    const-string v4, "dock_audio_media_enabled"

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;-><init>(Lcom/android/settings/notification/DockAudioMediaPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/android/settings/notification/DockAudioMediaPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
