.class public Lcom/android/settings/notification/ZenFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method protected hide(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenFooterPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/notification/ZenFooterPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez v0, :cond_0

    const v0, 0x7f121598

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f121595

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
