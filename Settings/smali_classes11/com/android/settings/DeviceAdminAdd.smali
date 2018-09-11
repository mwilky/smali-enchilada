.class public Lcom/android/settings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field public static final EXTRA_CALLED_FROM_SUPPORT_DIALOG:Ljava/lang/String; = "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

.field public static final EXTRA_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

.field private static final MAX_ADD_MSG_LINES:I = 0xf

.field private static final MAX_ADD_MSG_LINES_LANDSCAPE:I = 0x2

.field private static final MAX_ADD_MSG_LINES_PORTRAIT:I = 0x5

.field static final TAG:Ljava/lang/String; = "DeviceAdminAdd"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminPoliciesInitialized:Z

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mIsCalledFromSupportDialog:Z

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mSupportMessage:Landroid/widget/TextView;

.field private final mToken:Landroid/os/IBinder;

.field mUninstallButton:Landroid/widget/Button;

.field mUninstalling:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceAdminAdd;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminAdd;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->showPolicyTransparencyDialogIfRequired()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminAdd;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private addDeviceAdminPolicies(Z)V
    .locals 12
    .param p1, "showDescription"    # Z

    .line 678
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    if-nez v0, :cond_4

    .line 679
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    .line 680
    .local v0, "isAdminUser":Z
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 681
    .local v2, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    if-eqz v0, :cond_0

    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    goto :goto_1

    :cond_0
    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    .line 682
    .local v4, "descriptionId":I
    :goto_1
    if-eqz v0, :cond_1

    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    goto :goto_2

    :cond_1
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    .line 683
    .local v5, "labelId":I
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 684
    if-eqz p1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_2
    const-string v7, ""

    .line 683
    :goto_3
    invoke-static {p0, v6, v7, v3}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v3

    .line 686
    .local v3, "view":Landroid/view/View;
    const v6, 0x102036e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 687
    .local v6, "permIcon":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 688
    .local v7, "imageDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06029f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 689
    const v8, 0x1020372

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 690
    .local v8, "permGrpView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0602b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    const v9, 0x1020374

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 692
    .local v9, "permDescView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 694
    iget-object v10, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 695
    .end local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "descriptionId":I
    .end local v5    # "labelId":I
    .end local v6    # "permIcon":Landroid/widget/ImageView;
    .end local v7    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "permGrpView":Landroid/widget/TextView;
    .end local v9    # "permDescView":Landroid/widget/TextView;
    goto :goto_0

    .line 696
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    .line 698
    .end local v0    # "isAdminUser":Z
    :cond_4
    return-void
.end method

.method private findAdminWithPackageName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 736
    .local v0, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v0, :cond_0

    .line 737
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 739
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/-$$Lambda$DeviceAdminAdd$3kbf0VppdPbIFmWVVpDZ5dj27E4;

    invoke-direct {v2, p1}, Lcom/android/settings/-$$Lambda$DeviceAdminAdd$3kbf0VppdPbIFmWVVpDZ5dj27E4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 664
    const-string v0, "no_remove_managed_profile"

    .line 665
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getParentUserId()I

    move-result v1

    .line 664
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method private getParentUserId()I
    .locals 2

    .line 674
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method private hasBaseCantRemoveProfileRestriction()Z
    .locals 2

    .line 669
    const-string v0, "no_remove_managed_profile"

    .line 670
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getParentUserId()I

    move-result v1

    .line 669
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAdminUninstallable()Z
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .line 724
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 725
    .local v0, "um":Landroid/os/UserManager;
    nop

    .line 726
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 725
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 727
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$findAdminWithPackageName$0(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "i"    # Landroid/content/ComponentName;

    .line 739
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showPolicyTransparencyDialogIfRequired()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 436
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 443
    .local v0, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_1

    .line 444
    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 449
    .end local v0    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_1
    return-void
.end method


# virtual methods
.method addAndFinish()V
    .locals 5

    .line 453
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 455
    const v0, 0x16059

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 456
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 455
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 462
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 467
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_1

    .line 469
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 470
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 469
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    goto :goto_1

    .line 471
    :catch_1
    move-exception v0

    .line 472
    .local v0, "re":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 475
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 476
    return-void
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 479
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v0, :cond_0

    .line 480
    return-void

    .line 482
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 483
    if-nez p1, :cond_1

    .line 485
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_2

    .line 494
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    goto :goto_1

    .line 495
    :catch_1
    move-exception v0

    .line 497
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 500
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    .line 502
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_2
    return-void
.end method

.method getEllipsizedLines()I
    .locals 3

    .line 713
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 714
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 716
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 717
    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 716
    :goto_0
    return v1
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3
    .param p1, "allow"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 505
    if-eqz p1, :cond_0

    const/16 v0, 0x2fe

    goto :goto_0

    .line 506
    :cond_0
    const/16 v0, 0x2ff

    .line 507
    .local v0, "logCategory":I
    :goto_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v0, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 508
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "icicle"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 136
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 137
    .local v2, "actionBar":Landroid/app/ActionBar;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_1

    .line 139
    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 143
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 147
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 148
    const-string v0, "appops"

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 151
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x10000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    .line 152
    const-string v0, "DeviceAdminAdd"

    const-string v3, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 154
    return-void

    .line 157
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 163
    .local v0, "who":Landroid/content/ComponentName;
    if-nez v0, :cond_4

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {v1, v7}, Lcom/android/settings/DeviceAdminAdd;->findAdminWithPackageName(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v8

    .line 166
    .local v8, "installedAdmin":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/ComponentName;>;"
    invoke-virtual {v8}, Ljava/util/Optional;->isPresent()Z

    move-result v9

    if-nez v9, :cond_3

    .line 167
    const-string v3, "DeviceAdminAdd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No component specified in "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 169
    return-void

    .line 171
    :cond_3
    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/content/ComponentName;

    .line 172
    iput-boolean v3, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    .line 175
    .end local v0    # "who":Landroid/content/ComponentName;
    .end local v8    # "installedAdmin":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/ComponentName;>;"
    .local v7, "who":Landroid/content/ComponentName;
    :cond_4
    move-object v7, v0

    if-eqz v5, :cond_8

    const-string v0, "android.app.action.SET_PROFILE_OWNER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 176
    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 177
    invoke-virtual {v1, v3}, Lcom/android/settings/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 178
    iput-boolean v3, v1, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    .line 179
    nop

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "callingPackage":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 188
    :cond_5
    :try_start_0
    invoke-virtual {v4, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 189
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v3

    if-nez v9, :cond_6

    .line 190
    const-string v3, "DeviceAdminAdd"

    const-string v6, "Cannot set a non-system app as a profile owner"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return-void

    .line 198
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DeviceAdminAdd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find the package "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 197
    return-void

    .line 183
    .end local v0    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    :goto_0
    const-string v0, "DeviceAdminAdd"

    const-string v3, "Unknown or incorrect caller"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 185
    return-void

    .line 203
    .end local v8    # "callingPackage":Ljava/lang/String;
    :cond_8
    :goto_1
    const/16 v0, 0x80

    :try_start_1
    invoke-virtual {v4, v7, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v8, v0

    .line 208
    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    nop

    .line 207
    nop

    .line 213
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v9, 0x8000

    invoke-virtual {v4, v0, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 217
    .local v9, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v9, :cond_9

    move v0, v6

    goto :goto_2

    :cond_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    move v10, v0

    .line 218
    .local v10, "count":I
    const/4 v11, 0x0

    .line 219
    .local v11, "found":Z
    move v0, v6

    .local v0, "i":I
    :goto_3
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    if-ge v12, v10, :cond_b

    .line 220
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 221
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 226
    :try_start_2
    iput-object v8, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 227
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v13}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    .local v0, "dpi":Landroid/app/admin/DeviceAdminInfo;
    const/4 v11, 0x1

    .line 233
    .end local v0    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v12    # "i":I
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_4
    goto :goto_5

    .line 231
    .restart local v12    # "i":I
    .restart local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    const-string v14, "DeviceAdminAdd"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 229
    :catch_2
    move-exception v0

    .line 230
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DeviceAdminAdd"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_4

    .line 219
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_a
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "i":I
    .local v0, "i":I
    const/4 v3, 0x1

    goto :goto_3

    .line 237
    .end local v0    # "i":I
    :cond_b
    :goto_5
    if-nez v11, :cond_c

    .line 238
    const-string v0, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request to add invalid device admin: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 240
    return-void

    .line 244
    .end local v9    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "count":I
    .end local v11    # "found":Z
    :cond_c
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v3, v0

    .line 245
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 247
    :try_start_3
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 256
    nop

    .line 261
    const-string v0, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 262
    iput-boolean v6, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 263
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 264
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 265
    const-string v0, "DeviceAdminAdd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested admin is already being removed: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 267
    return-void

    .line 270
    :cond_d
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    nop

    .local v6, "i":I
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_f

    .line 272
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 273
    .local v9, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget-object v10, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v11, v9, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v10, v7, v11}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v10

    if-nez v10, :cond_e

    .line 274
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 275
    goto :goto_7

    .line 271
    .end local v9    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 278
    .end local v6    # "i":I
    :cond_f
    :goto_7
    iget-boolean v6, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v6, :cond_10

    .line 280
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 282
    return-void

    .line 289
    .end local v0    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    :cond_10
    iget-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->addAndFinish()V

    .line 291
    return-void

    .line 294
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 296
    const v0, 0x7f0d007e

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    .line 298
    const v0, 0x7f0a0044

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0a0046

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 300
    const v0, 0x7f0a0042

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f0a040e

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f0a003c

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0a003d

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 305
    new-instance v0, Lcom/android/settings/DeviceAdminAdd$1;

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    .line 311
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v9, Lcom/android/settings/DeviceAdminAdd$2;

    invoke-direct {v9, v1}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v6, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 333
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 335
    const v6, 0x7f0a004c

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 336
    const v6, 0x7f0a0047

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 337
    const v6, 0x7f0a004a

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    .line 339
    const v6, 0x7f0a00d6

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 340
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 341
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/DeviceAdminAdd$3;

    invoke-direct {v9, v1}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v6, 0x7f0a0579

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    .line 350
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 351
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {v9, v1}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const v6, 0x7f0a001c

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v1, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 362
    const v6, 0x7f0a0448

    invoke-virtual {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 363
    .local v6, "restrictedAction":Landroid/view/View;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 364
    new-instance v9, Lcom/android/settings/DeviceAdminAdd$5;

    invoke-direct {v9, v1}, Lcom/android/settings/DeviceAdminAdd$5;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void

    .line 252
    .end local v0    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v6    # "restrictedAction":Landroid/view/View;
    :catch_3
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DeviceAdminAdd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to retrieve device policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 255
    return-void

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 249
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "DeviceAdminAdd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to retrieve device policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 251
    return-void

    .line 204
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_5
    move-exception v0

    move-object v3, v0

    .line 205
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DeviceAdminAdd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to retrieve device policy "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 207
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 548
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 568
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 550
    :cond_0
    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 551
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 553
    const v2, 0x7f120594

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$6;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$6;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    const v2, 0x7f12058e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 421
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 4

    .line 523
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 525
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 529
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 532
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 512
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 513
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    .line 516
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 519
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 536
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 541
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 544
    :cond_0
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 701
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 703
    .local v0, "tv":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 704
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 705
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xf

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 707
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v2, :cond_2

    .line 708
    const v2, 0x10802bd

    goto :goto_2

    .line 709
    :cond_2
    const v2, 0x10802bc

    .line 707
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    return-void
.end method

.method updateInterface()V
    .locals 10

    .line 574
    const v0, 0x7f0a0449

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 578
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    goto :goto_0

    .line 581
    :catch_0
    move-exception v3

    .line 582
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v3, :cond_0

    .line 585
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 588
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 591
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    const/4 v4, 0x1

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 595
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 596
    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 597
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 598
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 599
    .local v3, "isProfileOwner":Z
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v5

    .line 600
    .local v5, "isManagedProfile":Z
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 602
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v7, 0x7f1200d8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 603
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v7, 0x7f120ebb

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 605
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    .line 606
    .local v6, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v7

    .line 607
    .local v7, "hasBaseRestriction":Z
    if-eqz v6, :cond_2

    if-nez v7, :cond_2

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 611
    .end local v6    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v7    # "hasBaseRestriction":Z
    goto/16 :goto_5

    :cond_4
    const v0, 0x7f120eba

    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 612
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v7

    .line 611
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 624
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 625
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v7, 0x7f120544

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 626
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 626
    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v4, v1

    .line 625
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    const v4, 0x7f1200bc

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->setTitle(I)V

    .line 629
    iget-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v4, :cond_6

    .line 630
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v4, 0x7f120eb9

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    .line 632
    :cond_6
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    .line 614
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 616
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f1200d9

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 619
    :cond_8
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f1200d5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 621
    :goto_4
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 635
    :goto_5
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 636
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 635
    invoke-virtual {v0, v4, v6}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 637
    .local v0, "supportMessage":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 638
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 641
    :cond_9
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    .end local v0    # "supportMessage":Ljava/lang/CharSequence;
    .end local v3    # "isProfileOwner":Z
    .end local v5    # "isManagedProfile":Z
    :goto_6
    goto :goto_8

    .line 644
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v3, 0x7f120545

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 646
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v1

    .line 645
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_b

    .line 648
    const v0, 0x7f120e47

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 650
    :cond_b
    const v0, 0x7f1200ca

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 652
    :goto_7
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v3, 0x7f1200c9

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 653
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->isAdminUninstallable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 654
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 656
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iput-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 659
    :goto_8
    return-void
.end method
