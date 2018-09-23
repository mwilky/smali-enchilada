.class public Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;
.super Lcom/android/settings/users/AutoSyncDataPreferenceController;
.source "AutoSyncPersonalDataPreferenceController.java"


# static fields
.field private static final KEY_AUTO_SYNC_PERSONAL_ACCOUNT:Ljava/lang/String; = "auto_sync_personal_account_data"

.field private static final TAG:Ljava/lang/String; = "AutoSyncPersonalData"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_sync_personal_account_data"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
