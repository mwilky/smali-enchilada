.class public Lcom/android/settings/notification/DeletedChannelsPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "DeletedChannelsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_DELETED:Ljava/lang/String; = "deleted"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "deleted"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->hasValidGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100014

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    return-void
.end method
