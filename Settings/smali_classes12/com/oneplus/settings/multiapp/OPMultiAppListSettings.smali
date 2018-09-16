.class public Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;,
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0x1

.field public static final FLAG_FROM:I = 0x4000000

.field public static final INSTALL_MULTI_APP:I = 0x58

.field public static final PROFILE_NAME:Ljava/lang/String; = "Multi-App"

.field public static final TAG:Ljava/lang/String; = "OPMultiAppListSettings"

.field private static final TEST_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final TEST_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListView:Landroid/widget/ListView;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mCreateManagedProfileTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLoad:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasTargetUser:Z

.field private mInitPosition:I

.field private mInstallMultiApphandler:Landroid/os/Handler;

.field private mIpm:Landroid/content/pm/IPackageManager;

.field private mIsInCreating:Z

.field private mIsWarnDialogShowing:Z

.field private mLoadingContainer:Landroid/view/View;

.field private mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

.field private mLoadingMessageView:Landroid/widget/TextView;

.field private mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

.field private mNeedReloadData:Z

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

.field private final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRefreshUIHandler:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-string v0, "com.oneplus.settings.multiapp/com.oneplus.settings.multiapp.OPBasicDeviceAdminReceiver"

    .line 100
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->TEST_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHasTargetUser:Z

    .line 90
    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    .line 93
    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    .line 96
    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    .line 104
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mRefreshUIHandler:Landroid/os/Handler;

    .line 670
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->removeMultiAppByPosition(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 67
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->setUpUserOrProfile()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/lib/util/loading/LoadingHelper;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInitPosition:I

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initFailed()V

    return-void
.end method

.method static synthetic access$2102(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/oneplus/settings/better/OPAppModel;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->installMultiApp(Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mRefreshUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private enableProfile()V
    .locals 6

    .line 593
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 594
    .local v0, "userId":I
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const v3, 0x7f120b92

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 596
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 597
    .local v1, "parent":Landroid/content/pm/UserInfo;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.USER"

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 599
    const/high16 v3, 0x50000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 601
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 602
    return-void
.end method

.method private getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 546
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    .line 549
    .local v0, "myUser":I
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 550
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_0

    .line 551
    goto :goto_0

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 554
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_1

    .line 555
    goto :goto_0

    .line 558
    :cond_1
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_2

    .line 559
    return-object v2

    .line 561
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    goto :goto_0

    .line 562
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "position"    # I

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    .line 295
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 296
    .local v0, "model":Lcom/oneplus/settings/better/OPAppModel;
    return-object v0
.end method

.method private initFailed()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    .line 454
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .line 223
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 224
    const v0, 0x7f0a0374

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    .line 225
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    const v2, 0x7f0803b8

    const v3, 0x7f0803b6

    const v4, 0x7f0702b0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->setListDivider(Landroid/content/Context;Landroid/widget/ListView;III)V

    .line 227
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    const v0, 0x7f0a02eb

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    const v1, 0x7f0a02ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingMessageView:Landroid/widget/TextView;

    .line 232
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 265
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->startLoadData()V

    .line 266
    return-void
.end method

.method private installMdmOnManagedProfile()V
    .locals 4

    .line 605
    const-string v0, "OPMultiAppListSettings"

    const-string v1, "Installing mobile device management app on managed profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 610
    .local v0, "status":I
    const/16 v1, -0x6f

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    return-void

    .line 615
    :cond_1
    const-string v1, "OPMultiAppListSettings"

    const-string v2, "Could not install mobile device management app on managed profile because the user is restricted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_2
    const-string v1, "OPMultiAppListSettings"

    const-string v2, "Could not install mobile device management app on managed profile because the package could not be found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_0
    const-string v1, "OPMultiAppListSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not install mobile device management app on managed profile. Unknown status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v0    # "status":I
    goto :goto_1

    .line 625
    :catch_0
    move-exception v0

    .line 629
    :goto_1
    return-void
.end method

.method private installMultiApp(Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .line 376
    const-string v0, "OPMultiAppListSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installMultiApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 382
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 385
    .local v0, "status":I
    const/16 v1, -0x6f

    if-eq v0, v1, :cond_2

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    const-string v1, "OPMultiAppListSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installMultiApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x45

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 390
    return-void

    .line 393
    :cond_2
    const-string v1, "OPMultiAppListSettings"

    const-string v2, "Could not install mobile device management app on managed profile because the user is restricted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_3
    const-string v1, "OPMultiAppListSettings"

    const-string v2, "Could not install mobile device management app on managed profile because the package could not be found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    const-string v1, "OPMultiAppListSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not install mobile device management app on managed profile. Unknown status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "status":I
    goto :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "neverThrown":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "OPMultiAppListSettings"

    const-string v2, "This should not happen."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v0    # "neverThrown":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void
.end method

.method private refreshList(I)V
    .locals 1
    .param p1, "position"    # I

    .line 300
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList(ILcom/oneplus/settings/better/OPAppModel;)V

    .line 301
    return-void
.end method

.method private refreshList(ILcom/oneplus/settings/better/OPAppModel;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getSelected(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 305
    .local v0, "isSelected":Z
    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 307
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 308
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x58

    add-int/2addr v3, p1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 309
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 310
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    .end local v1    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 320
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->showWarnigDialog(I)V

    .line 322
    :goto_0
    return-void
.end method

.method private refreshListByMovePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    if-nez v0, :cond_0

    .line 657
    return-void

    .line 659
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v2, 0x45

    .line 661
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v1

    .line 660
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 662
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    .line 663
    .local v2, "model":Lcom/oneplus/settings/better/OPAppModel;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 666
    .end local v2    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :cond_1
    goto :goto_0

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setData(Ljava/util/List;)V

    .line 668
    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method private removeMultiApp(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 411
    const-string v0, "OPMultiAppListSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMultiApp ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    const-string v0, "package"

    .line 416
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 415
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 418
    .local v1, "mIpm":Landroid/content/pm/IPackageManager;
    :try_start_0
    new-instance v4, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;)V

    .line 419
    .local v4, "observer":Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
    const/4 v3, -0x1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v4    # "observer":Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private removeMultiAppByPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .line 329
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    .line 330
    .local v0, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    const/16 v2, 0x58

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->removeMultiApp(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setSelected(IZ)V

    .line 333
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x45

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 335
    return-void
.end method

.method private removeProfile()V
    .locals 2

    .line 432
    const-string v0, "device_policy"

    .line 433
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 434
    .local v0, "manager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 436
    return-void
.end method

.method private setMdmAsActiveAdmin()V
    .locals 4

    .line 579
    const-string v0, "device_policy"

    .line 580
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 581
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->TEST_COMPONENT_NAME:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 583
    return-void
.end method

.method private setMdmAsManagedProfileOwner()V
    .locals 4

    .line 567
    const-string v0, "device_policy"

    .line 568
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 569
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->TEST_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    const-string v1, "OPMultiAppListSettings"

    const-string v2, "Could not set profile owner."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    return-void
.end method

.method private setUpUserOrProfile()V
    .locals 2

    .line 644
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->enableProfile()V

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHasTargetUser:Z

    .line 646
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 648
    .local v0, "iActivityManager":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    goto :goto_0

    .line 649
    :catch_0
    move-exception v1

    .line 653
    :goto_0
    return-void
.end method

.method private setUserProvisioningState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .line 632
    const-string v0, "device_policy"

    .line 633
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 634
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "OPMultiAppListSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting userProvisioningState for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setUserProvisioningState(II)V

    .line 636
    return-void
.end method

.method private showWarnigDialog(I)V
    .locals 3
    .param p1, "position"    # I

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120b94

    .line 343
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120a37

    new-instance v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12038a

    new-instance v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    .line 361
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 362
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 369
    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    .line 373
    :cond_1
    return-void

    .line 339
    :cond_2
    :goto_0
    return-void
.end method

.method private startLoadData()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 271
    return-void
.end method


# virtual methods
.method public getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 4
    .param p1, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .line 325
    const v0, 0x7f120b99

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "enabledString":Ljava/lang/String;
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 146
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->setContentView(I)V

    .line 148
    iput-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    .line 149
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIpm:Landroid/content/pm/IPackageManager;

    .line 150
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAccountManager:Landroid/accounts/AccountManager;

    .line 151
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    .line 153
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 155
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 156
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "install-multiapp-handler-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 158
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    .line 193
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initView()V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    .line 195
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->registerPackageReceiver()V

    .line 196
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 689
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 690
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 691
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 694
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 276
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "OPMultiAppListSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneplus multi app list item click:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    if-eqz v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_1

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    .line 283
    iput p3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInitPosition:I

    .line 284
    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;)V

    iput-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mCreateManagedProfileTask:Landroid/os/AsyncTask;

    .line 286
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->beginShowProgress()V

    .line 287
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mCreateManagedProfileTask:Landroid/os/AsyncTask;

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f120b92

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0, p3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList(ILcom/oneplus/settings/better/OPAppModel;)V

    .line 291
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 210
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 201
    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->startLoadData()V

    .line 203
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    .line 205
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    .line 206
    return-void
.end method
