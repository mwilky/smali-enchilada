.class public final Lcom/android/settingslib/users/UserManagerHelper;
.super Ljava/lang/Object;
.source "UserManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEADLESS_SYSTEM_USER:Ljava/lang/String; = "android.car.systemuser.headless"

.field private static final TAG:Ljava/lang/String; = "UserManagerHelper"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mUpdateListener:Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;

.field private final mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/users/UserManagerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/users/UserManagerHelper$1;-><init>(Lcom/android/settingslib/users/UserManagerHelper;)V

    iput-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/users/UserManagerHelper;)Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUpdateListener:Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;

    return-object v0
.end method

.method private assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getGuestDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->getUserDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private registerReceiver()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private switchToUserId(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UserManagerHelper"

    const-string v2, "Couldn\'t switch user."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public createNewUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "UserManagerHelper"

    const-string v2, "can\'t create user."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public currentProcessCanAddUsers()Z
    .locals 1

    const-string v0, "no_add_user"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public currentProcessCanModifyAccounts()Z
    .locals 1

    const-string v0, "no_modify_accounts"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessRunningAsDemoUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessRunningAsGuestUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public currentProcessCanRemoveUsers()Z
    .locals 1

    const-string v0, "no_remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public currentProcessCanSwitchUsers()Z
    .locals 1

    const-string v0, "no_user_switch"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public currentProcessHasUserRestriction(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public currentProcessRunningAsDemoUser()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    return v0
.end method

.method public currentProcessRunningAsGuestUser()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    return v0
.end method

.method public currentProcessRunningAsSystemUser()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    return v0
.end method

.method public foregroundUserCanAddUsers()Z
    .locals 1

    const-string v0, "no_add_user"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->foregroundUserHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public foregroundUserHasUserRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public foregroundUserIsGuestUser()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    return v0
.end method

.method public getAllUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExcludesSystemUser()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsersExceptUser(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllUsersExcludesCurrentProcessUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExceptUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsersExcludesForegroundUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExceptUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsersExcludesSystemUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExceptUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProcessUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getCurrentProcessUserInfo()Landroid/content/pm/UserInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public getForegroundUserInfo()Landroid/content/pm/UserInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGuestDefaultIcon()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUserDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUserIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public isHeadlessSystemUser()Z
    .locals 2

    const-string v0, "android.car.systemuser.headless"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerOnUsersUpdateListener(Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUpdateListener:Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;

    invoke-direct {p0}, Lcom/android/settingslib/users/UserManagerHelper;->registerReceiver()V

    return-void
.end method

.method public removeUser(Landroid/content/pm/UserInfo;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->userIsSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "UserManagerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is system user, could not be removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUserId(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    return v0
.end method

.method public scaleUserIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public setUserName(Landroid/content/pm/UserInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    return-void
.end method

.method public startNewGuestSession(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "UserManagerHelper"

    const-string v2, "can\'t create user."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUserId(I)V

    return-void
.end method

.method public switchToUser(Landroid/content/pm/UserInfo;)V
    .locals 2

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUserId(I)V

    return-void
.end method

.method public unregisterOnUsersUpdateListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/users/UserManagerHelper;->unregisterReceiver()V

    return-void
.end method

.method public userCanBeRemoved(Landroid/content/pm/UserInfo;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->userIsSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public userIsForegroundUser(Landroid/content/pm/UserInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public userIsRunningCurrentProcess(Landroid/content/pm/UserInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public userIsSystemUser(Landroid/content/pm/UserInfo;)Z
    .locals 1

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
