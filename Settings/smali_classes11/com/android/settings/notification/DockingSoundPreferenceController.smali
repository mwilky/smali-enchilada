.class public Lcom/android/settings/notification/DockingSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "DockingSoundPreferenceController.java"


# static fields
.field private static final KEY_DOCKING_SOUNDS:Ljava/lang/String; = "docking_sounds"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 34
    new-instance v7, Lcom/android/settings/notification/DockingSoundPreferenceController$1;

    const-string v3, "docking_sounds"

    const-string v4, "dock_sounds_enabled"

    const/4 v0, 0x0

    new-array v6, v0, [I

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/DockingSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/DockingSoundPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/android/settings/notification/DockingSoundPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    .line 41
    return-void
.end method
