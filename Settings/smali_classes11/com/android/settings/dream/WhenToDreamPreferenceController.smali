.class public Lcom/android/settings/dream/WhenToDreamPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WhenToDreamPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final WHEN_TO_START:Ljava/lang/String; = "when_to_start"


# instance fields
.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "when_to_start"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->getDreamSettingDescriptionResId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
