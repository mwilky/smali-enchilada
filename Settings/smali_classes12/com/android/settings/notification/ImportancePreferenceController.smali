.class public Lcom/android/settings/notification/ImportancePreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "ImportancePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_IMPORTANCE:Ljava/lang/String; = "importance"


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    return-void
.end method


# virtual methods
.method protected getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_2

    const v2, 0x7f1209e3

    packed-switch v1, :pswitch_data_0

    const-string v2, ""

    return-object v2

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1209e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1209e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1209dd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1209e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1209e8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "importance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->isDefaultChannel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-static {v1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->saveChannel()V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->isChannelConfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ImportancePreferenceController;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/CharSequence;

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x4

    :goto_1
    if-lt v5, v1, :cond_1

    new-instance v6, Landroid/app/NotificationChannel;

    const-string v7, ""

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ImportancePreferenceController;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
