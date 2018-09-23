.class public Lcom/android/settings/display/ScreenSaverPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ScreenSaverPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "screensaver"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/ScreenSaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/ScreenSaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
