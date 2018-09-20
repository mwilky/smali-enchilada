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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "NotificationManager"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    .line 57
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 60
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 61
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 64
    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    .line 110
    new-instance v1, Lcom/oneplus/aod/NotificationManager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/NotificationManager$1;-><init>(Lcom/oneplus/aod/NotificationManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 460
    new-instance v1, Lcom/oneplus/aod/NotificationManager$2;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/NotificationManager$2;-><init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 473
    new-instance v1, Lcom/oneplus/aod/NotificationManager$3;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/NotificationManager$3;-><init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 551
    new-instance v1, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;-><init>(Lcom/oneplus/aod/NotificationManager;Lcom/oneplus/aod/NotificationManager$1;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mSystemNotificationAsyncTask:Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    .line 69
    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 70
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    .line 71
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 73
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    .line 74
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    new-instance v1, Lcom/oneplus/aod/NotificationData;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/NotificationData;-><init>(Lcom/oneplus/aod/NotificationData$Environment;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    .line 76
    iput-object p2, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 77
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    .line 79
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/SingleNotificationView;

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    .line 81
    new-instance v1, Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mAodView:Landroid/view/ViewGroup;

    invoke-direct {v1, p1, v2}, Lcom/oneplus/aod/NotificationIconAreaController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    .line 82
    new-instance v1, Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    .line 83
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/NotificationData;->setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V

    .line 85
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    .line 85
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    .line 88
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    .line 89
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    .line 88
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateCurrentProfilesCache()V

    .line 106
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateLockscreenNotificationSetting()V

    .line 107
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updatePublicMode()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/NotificationManager;)Lcom/oneplus/aod/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updatePublicMode()V

    return-void
.end method

.method static synthetic access$402(Lcom/oneplus/aod/NotificationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/NotificationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/NotificationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;

    .line 32
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oneplus/aod/NotificationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/aod/NotificationManager;Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/service/notification/StatusBarNotification;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/NotificationManager;->isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .line 528
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 529
    return v0

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 533
    .local v1, "dpmFlags":I
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
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;

    .line 542
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSystemNotificationAsyncTask:Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSystemNotificationAsyncTask:Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/aod/NotificationData$Entry;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 549
    :cond_0
    return-void
.end method

.method private createNotification(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 248
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationManager;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/StatusBarIconView;

    move-result-object v0

    .line 249
    .local v0, "iconView":Lcom/oneplus/aod/StatusBarIconView;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 250
    const-string v2, "NotificationManager"

    const-string v3, "createNotification: iconView = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-object v1

    .line 255
    :cond_0
    new-instance v2, Lcom/oneplus/aod/NotificationData$Entry;

    invoke-direct {v2, p1, v0}, Lcom/oneplus/aod/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/oneplus/aod/StatusBarIconView;)V

    .line 259
    .local v2, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/aod/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "NotificationManager"

    const-string v4, "Unable to get notification remote views"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v2
.end method

.method private getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 608
    move-object v0, p1

    .line 610
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 614
    nop

    .line 615
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

    .line 620
    goto :goto_0

    .line 618
    :catch_0
    move-exception v1

    .line 622
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1
.end method

.method private isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .line 586
    nop

    .line 587
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 586
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/NotificationManager;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 588
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 591
    .local v1, "isSystemNotification":Ljava/lang/Boolean;
    nop

    .line 592
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    .line 591
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 594
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 595
    invoke-static {v3, v0, v2}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 599
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 597
    :catch_0
    move-exception v2

    .line 598
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NotificationManager"

    const-string v4, "cacheIsSystemNotification: Could not find package info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v1
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 509
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
    .param p1, "isPublic"    # Z

    .line 389
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mLockScreenPublicMode:Z

    .line 390
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 366
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 367
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

    .line 368
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 371
    :cond_0
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

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

    .line 405
    .local v0, "show":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 407
    .local v2, "dpmFlags":I
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 410
    .local v4, "allowedByDpm":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/NotificationManager;->setShowLockscreenNotifications(Z)V

    .line 422
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->setLockScreenAllowRemoteInput(Z)V

    .line 424
    return-void
.end method

.method private updatePublicMode()V
    .locals 5

    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "isPublic":Z
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 378
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 379
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 381
    goto :goto_1

    .line 377
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/aod/NotificationManager;->setLockscreenPublicMode(Z)V

    .line 386
    return-void
.end method

.method private updateSingleNotificationView()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0}, Lcom/oneplus/aod/SingleNotificationView;->updateView()V

    .line 307
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "oldEntry"    # Lcom/oneplus/aod/NotificationData$Entry;

    .line 152
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p2}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationManager;->createNotification(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v0

    .line 156
    .local v0, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, v0, p2}, Lcom/oneplus/aod/NotificationData;->add(Lcom/oneplus/aod/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/oneplus/aod/NotificationManager;->cacheIsSystemNotification(Lcom/oneplus/aod/NotificationData$Entry;)V

    .line 164
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v4, v0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oneplus/aod/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->addNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 166
    return-void
.end method

.method public createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/oneplus/aod/StatusBarIconView;
    .locals 12
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 270
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 271
    .local v0, "n":Landroid/app/Notification;
    new-instance v1, Lcom/oneplus/aod/StatusBarIconView;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
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

    .line 273
    .local v1, "iconView":Lcom/oneplus/aod/StatusBarIconView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 275
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 276
    .local v2, "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v10, 0x0

    if-nez v2, :cond_0

    .line 277
    const-string v3, "NotificationManager"

    const-string v4, "createIcon: small icon is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-object v10

    .line 280
    :cond_0
    new-instance v11, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 281
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 282
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Landroid/app/Notification;->iconLevel:I

    iget v8, v0, Landroid/app/Notification;->number:I

    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 286
    invoke-static {v3, v0}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v11

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 287
    .local v3, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v1, v3}, Lcom/oneplus/aod/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    const-string v4, "NotificationManager"

    const-string v5, "set icon view fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v10

    .line 291
    :cond_1
    return-object v1
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationData()Lcom/oneplus/aod/NotificationData;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    return-object v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 358
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 359
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

    .line 360
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 359
    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 360
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mDeviceProvisioned:Z

    return v0
.end method

.method public isLockScreenPublicMode()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationManager;->mLockScreenPublicMode:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 338
    iget v0, p0, Lcom/oneplus/aod/NotificationManager;->mCurrentUserId:I

    .line 339
    .local v0, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    .line 341
    .local v1, "notificationUserId":I
    const-string v2, "NotificationManager"

    const-string v3, "%s: current userid: %d, notification userid: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 341
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 138
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, "isUpdate":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v2, p1, v1}, Lcom/oneplus/aod/SingleNotificationView;->setNewPosted(Landroid/service/notification/StatusBarNotification;Z)V

    .line 144
    :cond_1
    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 147
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/aod/NotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V

    .line 149
    :goto_1
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 243
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 244
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 245
    return-void
.end method

.method public onSecureLockScreen()Z
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v0

    return v0
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 227
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v0

    .line 228
    .local v0, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v2, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->removeNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/aod/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/oneplus/aod/NotificationData$Entry;

    .line 232
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 233
    return-void
.end method

.method public resetData()V
    .locals 2

    .line 236
    new-instance v0, Lcom/oneplus/aod/NotificationData;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationData;-><init>(Lcom/oneplus/aod/NotificationData$Environment;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    .line 237
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationIconAreaController;->updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->reset()V

    .line 239
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationData;->setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V

    .line 240
    return-void
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .locals 0
    .param p1, "allowLockscreenRemoteInput"    # Z

    .line 436
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mAllowLockscreenRemoteInput:Z

    .line 437
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 428
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationManager;->mShowLockscreenNotifications:Z

    .line 430
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/SingleNotificationView;->setShowLockscreenNotifications(Z)V

    .line 433
    :cond_0
    return-void
.end method

.method public shouldHideNotifications(I)Z
    .locals 1
    .param p1, "userid"    # I

    .line 320
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
    .param p1, "key"    # Ljava/lang/String;

    .line 326
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

    .line 327
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    .line 328
    invoke-virtual {v0, p1}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0
.end method

.method public showingPublic(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 8
    .param p1, "ent"    # Lcom/oneplus/aod/NotificationData$Entry;

    .line 514
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->visibility:I

    .line 517
    .local v0, "vis":I
    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 518
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/NotificationManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 519
    .local v1, "hideSensitive":Z
    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 520
    .local v4, "sensitiveNote":Z
    :goto_0
    iget-object v5, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/aod/NotificationManager;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v5

    .line 521
    .local v5, "sensitivePackage":Z
    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    :cond_2
    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v3

    .line 522
    .local v6, "sensitive":Z
    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationManager;->isLockScreenPublicMode()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 524
    .local v2, "showingPublic":Z
    :goto_2
    return v2
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 17
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    move-object/from16 v1, p0

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "key":Ljava/lang/String;
    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v3

    .line 171
    .local v3, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    if-nez v3, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mForegroundServiceController:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    iget-object v4, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v5, v1, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v6, v3, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/oneplus/aod/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 176
    .local v4, "n":Landroid/app/Notification;
    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Lcom/oneplus/aod/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 180
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/oneplus/aod/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .local v0, "applyInPlace":Z
    goto :goto_0

    .line 181
    .end local v0    # "applyInPlace":Z
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "NotificationManager"

    const-string v8, "Unable to get notification remote views"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    move v0, v6

    .local v0, "applyInPlace":Z
    :goto_0
    move v7, v0

    .line 186
    .end local v0    # "applyInPlace":Z
    .local v7, "applyInPlace":Z
    const/4 v8, 0x0

    .line 187
    .local v8, "updateSuccessful":Z
    if-eqz v7, :cond_2

    .line 188
    const-string v0, "NotificationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reusing notification for key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_1
    iget-object v0, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 195
    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    iget v13, v4, Landroid/app/Notification;->iconLevel:I

    iget v14, v4, Landroid/app/Notification;->number:I

    iget-object v9, v1, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 198
    invoke-static {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 199
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v9, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->setNotification(Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    const/4 v8, 0x1

    .line 207
    goto :goto_1

    .line 203
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v9, "NotificationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t reapply views for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 205
    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    if-nez v8, :cond_3

    .line 210
    const-string v0, "NotificationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not reusing notification for key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 214
    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    iget v14, v4, Landroid/app/Notification;->iconLevel:I

    iget v15, v4, Landroid/app/Notification;->number:I

    iget-object v9, v1, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 217
    invoke-static {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v16

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 218
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v9, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v9, v4}, Lcom/oneplus/aod/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 219
    iget-object v9, v3, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    invoke-virtual {v9, v0}, Lcom/oneplus/aod/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 222
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_3
    invoke-virtual {v1, v6}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 223
    return-void
.end method

.method public updateNotifications(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 295
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0}, Lcom/oneplus/aod/NotificationData;->filterAndSort()Z

    .line 297
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationManager;->updateSingleNotificationView()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mIconController:Lcom/oneplus/aod/NotificationIconAreaController;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationIconAreaController;->updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V

    .line 302
    return-void
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .line 445
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 446
    return v0

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 451
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    .line 450
    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 453
    .local v0, "allowed":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 454
    return v0

    .line 457
    .end local v0    # "allowed":Z
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .line 491
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 492
    return v0

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 496
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager;->mContext:Landroid/content/Context;

    .line 497
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    .line 496
    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 499
    .local v1, "allowedByUser":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationManager;->adminAllowsUnredactedNotifications(I)Z

    move-result v2

    .line 500
    .local v2, "allowedByDpm":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 501
    .local v0, "allowed":Z
    :goto_1
    iget-object v3, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 502
    return v0

    .line 505
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByUser":Z
    .end local v2    # "allowedByDpm":Z
    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
