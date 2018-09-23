.class public abstract Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "P2pCategoryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected mCategory:Landroid/support/v7/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addChild(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeAllChildren()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method
