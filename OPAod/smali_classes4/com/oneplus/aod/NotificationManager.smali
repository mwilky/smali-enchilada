.class public Lcom/oneplus/aod/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/oneplus/aod/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;
    }
.end annotation


# static fields
.field static final UPDATE_REASON_NEW_POSTED:I = 0x0

.field static final UPDATE_REASON_OTHER:I = 0x3

.field static final UPDATE_REASON_RANKING:I = 0x2

.field static final UPDATE_REASON_REMOVE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mAllowLockscreenRemoteInput:Z

.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mAodView:Landroid/view/ViewGroup;

.field private mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

.field private mHandler:Landroid/os/Handler;

.field private mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field private mNotificationData:Lcom/oneplus/aod/NotificationData;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field private mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

.field private mSystemNotificationAsyncTask:Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    
    invoke-static {}, Lcom/android/server/BootReceiver;->initValues()V

    const-string v0, "NotificationManager"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    new-instance v1, Lcom/oneplus/aod/NotificationManager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/NotificationManager$1;-><init>(Lcom/oneplus/aod/NotificationManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    new-instance v1, Lcom/oneplus/aod/NotificationManager$2;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/NotificationManager$2;-><init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/oneplus/aod/NotificationManager$3;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/NotificationManager$3;-><init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;-><init>(Lcom/oneplus/aod/NotificationManager;Lcom/oneplus/aod/NotificationManager$1;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mSystemNotificationAsyncTask:Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/oneplus/aod/NotificationData;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/NotificationData;-><init>(Lcom/oneplus/aod/NotificationData$Environment;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iput-object p2, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/SingleNotificationView;

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    new-instance v1, Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    invoke-direct {v1, p1, v2}, Lcom/oneplus/aod/NotificationIconAreaController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    new-instance v1, Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/NotificationData;->setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_show_notifications"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateCurrentProfilesCache()V

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateLockscreenNotificationSetting()V

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updatePublicMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/NotificationManager;)Lcom/oneplus/aod/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updatePublicMode()V

    return-void
.end method

.method static synthetic access$402(Lcom/oneplus/aod/NotificationManager;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/NotificationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/NotificationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oneplus/aod/NotificationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/aod/NotificationManager;Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/NotificationManager;->isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cacheIsSystemNotification(Lcom/oneplus/aod/NotificationData$Entry;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSystemNotificationAsyncTask:Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSystemNotificationAsyncTask:Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/aod/NotificationData$Entry;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private createNotification(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationManager;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/StatusBarIconView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "NotificationManager"

    const-string v3, "createNotification: iconView = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v2, Lcom/oneplus/aod/NotificationData$Entry;

    invoke-direct {v2, p1, v0}, Lcom/oneplus/aod/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/oneplus/aod/StatusBarIconView;)V

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/aod/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "NotificationManager"

    const-string v4, "Unable to get notification remote views"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method private getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 4

    move-object v0, p1

    if-ltz p2, :cond_0

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1
.end method

.method private isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 5

    nop

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/NotificationManager;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "NotificationManager"

    const-string v4, "cacheIsSystemNotification: Could not find package info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLockscreenPublicMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mLockScreenPublicMode:Z

    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_show_notifications"

    iget v2, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/NotificationManager;->setShowLockscreenNotifications(Z)V

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->setLockScreenAllowRemoteInput(Z)V

    return-void
.end method

.method private updatePublicMode()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/aod/NotificationManager;->setLockscreenPublicMode(Z)V

    return-void
.end method

.method private updateSingleNotificationView()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0}, Lcom/oneplus/aod/SingleNotificationView;->updateView()V

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p2}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationManager;->createNotification(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/aod/NotificationManager;->cacheIsSystemNotification(Lcom/oneplus/aod/NotificationData$Entry;)V

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, v0, p2}, Lcom/oneplus/aod/NotificationData;->add(Lcom/oneplus/aod/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v4, v0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oneplus/aod/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->addNotification(Landroid/service/notification/StatusBarNotification;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    return-void
.end method

.method public createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/StatusBarIconView;
    .locals 12

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/StatusBarIconView;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/oneplus/aod/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_0

    const-string v3, "NotificationManager"

    const-string v4, "createIcon: small icon is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    new-instance v11, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Landroid/app/Notification;->iconLevel:I

    iget v8, v0, Landroid/app/Notification;->number:I

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v11

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "NotificationManager"

    const-string v5, "set icon view fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    return-object v1
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationData()Lcom/oneplus/aod/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    return-object v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return v0
.end method

.method public isLockScreenPublicMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mLockScreenPublicMode:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    iget v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    const-string v2, "NotificationManager"

    const-string v3, "%s: current userid: %d, notification userid: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v2, p1, v1}, Lcom/oneplus/aod/SingleNotificationView;->setNewPosted(Landroid/service/notification/StatusBarNotification;Z)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/aod/NotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V

    :goto_1
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    return-void
.end method

.method public onSecureLockScreen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v0

    return v0
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->removeNotification(Landroid/service/notification/StatusBarNotification;)Z

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/aod/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/oneplus/aod/NotificationData$Entry;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    return-void
.end method

.method public resetData()V
    .locals 2

    new-instance v0, Lcom/oneplus/aod/NotificationData;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationData;-><init>(Lcom/oneplus/aod/NotificationData$Environment;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationIconAreaController;->updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->reset()V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationData;->setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V

    return-void
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mAllowLockscreenRemoteInput:Z

    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mShowLockscreenNotifications:Z

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/SingleNotificationView;->setShowLockscreenNotifications(Z)V

    :cond_0
    return-void
.end method

.method public shouldHideNotifications(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationManager;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldHideNotifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v2, p1}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showingPublic(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 8

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->visibility:I

    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/aod/NotificationManager;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    :cond_2
    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v4, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v5, v1, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v6, v3, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/oneplus/aod/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/oneplus/aod/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "NotificationManager"

    const-string v8, "Unable to get notification remote views"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    move v0, v6

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    const-string v0, "NotificationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reusing notification for key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    iget v13, v4, Landroid/app/Notification;->iconLevel:I

    iget v14, v4, Landroid/app/Notification;->number:I

    iget-object v9, v1, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iget-object v9, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->setNotification(Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v9, "NotificationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t reapply views for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    if-nez v8, :cond_3

    const-string v0, "NotificationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not reusing notification for key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    iget v14, v4, Landroid/app/Notification;->iconLevel:I

    iget v15, v4, Landroid/app/Notification;->number:I

    iget-object v9, v1, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v16

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iget-object v9, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    iget-object v9, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v9, v0}, Lcom/oneplus/aod/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    :cond_3
    invoke-virtual {v1, v6}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    return-void
.end method

.method public updateNotifications(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationData;->filterAndSort()Z

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateSingleNotificationView()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationIconAreaController;->updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V

    return-void
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_show_notifications"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationManager;->adminAllowsUnredactedNotifications(I)Z

    move-result v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
