.class public Lcom/android/settings/notification/DescriptionPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "DescriptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_DESC:Ljava/lang/String; = "desc"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/DescriptionPreferenceController;->hasValidGroup()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/DescriptionPreferenceController;->hasValidGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/DescriptionPreferenceController;->hasValidGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/DescriptionPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    return-void
.end method
