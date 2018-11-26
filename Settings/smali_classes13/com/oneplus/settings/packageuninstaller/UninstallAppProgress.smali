.class public Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;
.super Landroid/app/Activity;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;,
        Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;,
        Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "progress_fragment"

.field private static final QUICK_INSTALL_DELAY_MILLIS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "UninstallAppProgress"

.field private static final UNINSTALL_COMPLETE:I = 0x1

.field private static final UNINSTALL_IS_SLOW:I = 0x2


# instance fields
.field private mAllUsers:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCallback:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewInitialized:Z

.field private volatile mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "progress_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 13

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->initView()V

    goto/16 :goto_b

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->initView()V

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-interface {v1, v2, v3, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.RETURN_RESULT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.extra.INSTALL_RESULT"

    iget v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v3, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    if-ne v3, v1, :cond_3

    const/4 v1, -0x1

    nop

    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->finish()V

    return-void

    :cond_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x4

    const v5, 0x7f12124d

    if-eq v2, v3, :cond_b

    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    if-eq v2, v1, :cond_5

    const-string v1, "UninstallAppProgress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_5
    const v2, 0x7f12124b

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->notifyPackageRemoved()V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResultAndFinish()V

    return-void

    :cond_6
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v3, "device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, v5, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_1

    :cond_7
    :try_start_1
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v0, v9}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_8

    move-object v6, v8

    goto :goto_3

    :cond_8
    goto :goto_2

    :catch_1
    move-exception v9

    const-string v10, "UninstallAppProgress"

    const-string v11, "Failed to talk to package manager"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_1

    :cond_9
    :goto_3
    if-nez v6, :cond_a

    const-string v4, "UninstallAppProgress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uninstall failed because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is a device admin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    const v1, 0x7f12124f

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    goto/16 :goto_a

    :cond_a
    const-string v7, "UninstallAppProgress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uninstall failed because "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is a device admin of user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    const v7, 0x7f121250

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v8, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v8, v1, v4

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_b
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    const/16 v7, -0x2710

    move v8, v4

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    :try_start_2
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v0, v10}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v10

    goto :goto_7

    :cond_c
    goto :goto_6

    :catch_2
    move-exception v10

    const-string v11, "UninstallAppProgress"

    const-string v12, "Failed to talk to package manager"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_d
    :goto_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {p0, v2, v8, v7}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    goto :goto_8

    :cond_e
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setUsersButtonVisible(Z)V

    :goto_8
    if-nez v7, :cond_f

    const v1, 0x7f121248

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_f
    const/16 v1, -0x2710

    if-ne v7, v1, :cond_10

    const-string v1, "UninstallAppProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uninstall failed for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with code "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " no blocking user"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_10
    iget-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz v1, :cond_11

    const v1, 0x7f121242

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_11
    const v1, 0x7f121249

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    nop

    :goto_a
    nop

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->showCompletion(Ljava/lang/CharSequence;)V

    nop

    :goto_b
    return-void

    :cond_12
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mIsViewInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mIsViewInitialized:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010452

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010451

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const v2, 0x7f121256

    goto :goto_2

    :cond_3
    const v2, 0x7f121247

    :goto_2
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setTitle(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    new-instance v4, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-direct {v4}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;-><init>()V

    const-string v5, "progress_fragment"

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyPackageRemoved()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.settings.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResult(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-interface {v2, v3, v4, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->finish()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResultAndFinish()V

    :goto_1
    return-void

    :cond_1
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAllUsers:Z

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    :cond_2
    new-instance v4, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;

    invoke-direct {v4, p0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$1;)V

    move-object v1, v4

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz v7, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v5, v6, v1, v3, v7}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v5, "UninstallAppProgress"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package, not deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v3, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setResultAndFinish()V
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResult(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->finish()V

    return-void
.end method
