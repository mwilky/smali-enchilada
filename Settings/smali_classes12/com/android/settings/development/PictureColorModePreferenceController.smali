.class public Lcom/android/settings/development/PictureColorModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "PictureColorModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_COLOR_MODE:Ljava/lang/String; = "picture_color_mode"


# instance fields
.field private mPreference:Lcom/android/settings/development/ColorModePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ColorModePreference;

    iput-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method getColorModeDescriptionsSize()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "picture_color_mode"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getColorModeDescriptionsSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->isWideColorGamut()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isWideColorGamut()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->startListening()V

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    return-void
.end method
