.class public Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;
.super Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.source "DefaultEmergencyShortcutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "default_emergency_app"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_emergency_app"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected hasAppCapability()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isDefaultApp()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->isEmergencyDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
