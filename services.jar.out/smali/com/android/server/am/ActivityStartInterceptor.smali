.class Lcom/android/server/am/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/am/TaskRecord;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mServiceContext:Landroid/content/Context;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mUserController:Lcom/android/server/am/UserController;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Lcom/android/server/am/UserController;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Lcom/android/server/am/UserController;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserController:Lcom/android/server/am/UserController;

    return-void
.end method

.method private createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .locals 13

    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v12

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v1, 0x1

    new-array v8, v1, [Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v3, v8, v5

    new-array v9, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object v1, v9, v5

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v10, p2

    move-object v11, v12

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1
.end method

.method private deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private interceptHarmfulAppIfNeeded()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    return v0
.end method

.method private interceptQuietProfileIfNeeded()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    return v1
.end method

.method private interceptSuspendedByAdminPackage()Z
    .locals 11

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v3, "android.app.extra.RESTRICTION"

    const-string/jumbo v4, "policy_suspend_packages"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    return v2
.end method

.method private interceptSuspendedPackageIfNeeded()Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result v3

    return v3

    :cond_2
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x1

    return v4

    :cond_3
    :goto_0
    return v1
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p2}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v1, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const v1, 0x10804000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v3
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TASK_ID"

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iput p6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    iput p7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object p8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    move-result v0

    return v0
.end method

.method setStates(IIIILjava/lang/String;)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    iput p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    return-void
.end method
