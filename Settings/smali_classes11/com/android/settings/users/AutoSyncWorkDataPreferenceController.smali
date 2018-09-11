.class public Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;
.super Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;
.source "AutoSyncWorkDataPreferenceController.java"


# static fields
.field private static final KEY_AUTO_SYNC_WORK_ACCOUNT:Ljava/lang/String; = "auto_sync_work_account_data"

.field private static final TAG:Ljava/lang/String; = "AutoSyncWorkData"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/app/Fragment;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 36
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfileWithDisabled(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 37
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "auto_sync_work_account_data"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 49
    .local v1, "profilesCount":I
    invoke-static {v0}, Lcom/android/settings/Utils;->isMultiAppEnable(Ljava/util/List;)Z

    move-result v2

    .line 50
    .local v2, "isMultiAppEnable":Z
    const-string v3, "wils-debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isMultiAppEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v3, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 53
    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_0
    if-le v1, v4, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_1
    return v4
.end method
