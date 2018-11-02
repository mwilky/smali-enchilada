.class public Lcom/android/settings/display/WallpaperPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WallpaperPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final TAG:Ljava/lang/String; = "WallpaperPrefController"


# instance fields
.field private final mWallpaperClass:Ljava/lang/String;

.field private final mWallpaperPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120418

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120417

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    return-void
.end method

.method private disablePreferenceIfManaged(Lcom/android/settingslib/RestrictedPreference;)V
    .locals 4

    const-string v0, "no_set_wallpaper"

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v1, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "no_set_wallpaper"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "no_set_wallpaper"

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wallpaper"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    nop

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    :goto_0
    const-string v0, "WallpaperPrefController"

    const-string v2, "No Wallpaper picker specified!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/display/WallpaperPreferenceController;->disablePreferenceIfManaged(Lcom/android/settingslib/RestrictedPreference;)V

    return-void
.end method
