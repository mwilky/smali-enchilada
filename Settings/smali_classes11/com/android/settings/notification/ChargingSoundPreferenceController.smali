.class public Lcom/android/settings/notification/ChargingSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "ChargingSoundPreferenceController.java"


# static fields
.field private static final KEY_CHARGING_SOUNDS:Ljava/lang/String; = "charging_sounds"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v6, Lcom/android/settings/notification/SettingPref;

    const-string v2, "charging_sounds"

    const-string v3, "charging_sounds_enabled"

    const/4 v0, 0x0

    new-array v5, v0, [I

    const/4 v1, 0x1

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v6, p0, Lcom/android/settings/notification/ChargingSoundPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ChargingSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
