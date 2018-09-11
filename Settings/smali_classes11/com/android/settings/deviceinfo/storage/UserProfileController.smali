.class public Lcom/android/settings/deviceinfo/storage/UserProfileController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UserProfileController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;


# static fields
.field private static final PREFERENCE_KEY_BASE:Ljava/lang/String; = "pref_profile_"


# instance fields
.field private final mPreferenceOrder:I

.field private mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSizeBytes:J

.field private mUser:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/UserInfo;
    .param p3, "preferenceOrder"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    .line 55
    iput p3, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mPreferenceOrder:I

    .line 56
    return-void
.end method

.method private static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 139
    const v0, 0x7f06029f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 140
    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 70
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mPreferenceOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setOrder(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_profile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 75
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_profile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne v0, p1, :cond_0

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "userId"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    const-string v2, "private"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/StorageProfileFragment;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/16 v2, 0x2a

    .line 88
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 90
    const/4 v1, 0x1

    return v1

    .line 93
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleResult(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "stats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 101
    .local v0, "userId":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 102
    .local v1, "result":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    if-eqz v1, :cond_0

    .line 103
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-wide v4, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mTotalSizeBytes:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/UserProfileController;->setSize(JJ)V

    .line 110
    :cond_0
    return-void
.end method

.method public handleUserIcons(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "fetchedIcons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 128
    .local v0, "userIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mContext:Landroid/content/Context;

    const v2, 0x7f0803d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mContext:Landroid/content/Context;

    const v2, 0x7f06029f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 132
    :cond_0
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/deviceinfo/storage/UserProfileController;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_1
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public setSize(JJ)V
    .locals 1
    .param p1, "size"    # J
    .param p3, "totalSize"    # J

    .line 116
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 119
    :cond_0
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0
    .param p1, "totalSize"    # J

    .line 122
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mTotalSizeBytes:J

    .line 123
    return-void
.end method
