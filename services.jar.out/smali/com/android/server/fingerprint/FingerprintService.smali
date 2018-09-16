.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintConfigCallback;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;,
        Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field private static final CLEANUP_UNUSED_FP:Z = true

.field static final DEBUG:Z = true

.field private static final DISABLE_FP_LONGPRESS:I = 0x4

.field private static final ENABLE_FP_LONGPRESS:I = 0x3

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINISH_FP_ENROLL:I = 0xa

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final RESUME_FP_ENROLL:I = 0x8

.field private static final SUSPEND_FP_ENROLL:I = 0x9

.field static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final DOUBLE_ACCOUNT_UID:I

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockX:I

.field private mBlockXEnd:I

.field private mBlockY:I

.field private mBlockYEnd:I

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field mDiagnoseManager:Landroid/os/OPDiagnoseManager;

.field private mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field private mHandler:Landroid/os/Handler;

.field private final mKeyguardPackage:Ljava/lang/String;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResetClientState:Ljava/lang/Runnable;

.field private final mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

.field private mToken:Landroid/os/IBinder;

.field private mUnknownFingerprints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x48

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 131
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->DOUBLE_ACCOUNT_UID:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    .line 156
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 157
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 187
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    .line 204
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    .line 205
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockXEnd:I

    .line 206
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockYEnd:I

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 228
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    .line 260
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    .line 291
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 1271
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$12;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$12;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 319
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 322
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 323
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 324
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 325
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    .line 328
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 329
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 330
    const-string/jumbo v1, "statusbar"

    .line 331
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 330
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 332
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 333
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    .line 337
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "opdiagnose"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OPDiagnoseManager;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    .line 340
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x505001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    .line 341
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x505001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    .line 342
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x505001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockXEnd:I

    .line 343
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x505001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockYEnd:I

    .line 346
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x47

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-direct {v0, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    .line 348
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintConfigCallback;

    invoke-direct {v1, p0, v5}, Lcom/android/server/fingerprint/FingerprintService$FingerprintConfigCallback;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->addCallback(Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;)V

    .line 351
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/ClientMonitor;

    .line 119
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 119
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;

    .line 119
    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 119
    invoke-direct/range {p0 .. p5}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "x6"    # I
    .param p8, "x7"    # Z
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Landroid/os/Bundle;
    .param p11, "x10"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 119
    invoke-direct/range {p0 .. p11}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->allowUseCustomFingerprint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/ClientMonitor;
    .param p2, "x2"    # Z

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getAuthPackageInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/fingerprint/FingerprintService;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->shouldBlockTouch(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 1044
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_0
    return-void
.end method

.method private allowUseCustomFingerprint(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1948
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x47

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1949
    return v0

    .line 1952
    :cond_0
    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1953
    return v0

    .line 1956
    :cond_1
    const-string v1, "debug.apply_allow_fp_list"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1957
    return v0

    .line 1960
    :cond_2
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowUseCustomFingerprint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-virtual {v1, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1963
    return v0

    .line 1966
    :cond_4
    return v2
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIII)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I

    .line 997
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->allowUseCustomFingerprint(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 998
    return v1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1007
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1008
    return v2

    .line 1010
    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1011
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not a current user or profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return v1

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x37

    invoke-virtual {v0, v3, p3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1016
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return v1

    .line 1019
    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->currentClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1020
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not in foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return v1

    .line 1024
    :cond_5
    return v2
.end method

.method private cancelLockoutResetForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 711
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 712
    return-void
.end method

.method private cleanupUnknownFingerprints()V
    .locals 10

    .line 477
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    .line 479
    .local v0, "uf":Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 480
    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 481
    .local v8, "restricted":Z
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    iget v6, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->userId:I

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    .line 483
    .end local v0    # "uf":Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
    .end local v8    # "restricted":Z
    goto :goto_0

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 486
    :goto_0
    return-void
.end method

.method private clearEnumerateState()V
    .locals 2

    .line 465
    const-string v0, "FingerprintService"

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    return-void
.end method

.method private currentClient(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doFingerprintCleanupForUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->enumerateUser(I)V

    .line 462
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1692
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1694
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "service"

    const-string v2, "Fingerprint Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1696
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1697
    .local v1, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1698
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1699
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1700
    .local v5, "N":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1701
    .local v6, "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1702
    .local v7, "cryptoStats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1703
    .local v8, "set":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1704
    const-string v9, "count"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1705
    const-string v9, "accept"

    const/4 v10, 0x0

    if-eqz v6, :cond_0

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_1

    :cond_0
    move v11, v10

    :goto_1
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1706
    const-string/jumbo v9, "reject"

    if-eqz v6, :cond_1

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_2

    :cond_1
    move v11, v10

    :goto_2
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1707
    const-string v9, "acquire"

    if-eqz v6, :cond_2

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_3

    :cond_2
    move v11, v10

    :goto_3
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1708
    const-string/jumbo v9, "lockout"

    if-eqz v6, :cond_3

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_4

    :cond_3
    move v11, v10

    :goto_4
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1709
    const-string/jumbo v9, "permanentLockout"

    if-eqz v6, :cond_4

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_5

    :cond_4
    move v11, v10

    :goto_5
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1712
    const-string v9, "acceptCrypto"

    if-eqz v7, :cond_5

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_6

    :cond_5
    move v11, v10

    :goto_6
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1713
    const-string/jumbo v9, "rejectCrypto"

    if-eqz v7, :cond_6

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_7

    :cond_6
    move v11, v10

    :goto_7
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1714
    const-string v9, "acquireCrypto"

    if-eqz v7, :cond_7

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_8

    :cond_7
    move v11, v10

    :goto_8
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1715
    const-string/jumbo v9, "lockoutCrypto"

    if-eqz v7, :cond_8

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_9

    :cond_8
    move v11, v10

    :goto_9
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1716
    const-string/jumbo v9, "permanentLockoutCrypto"

    .line 1717
    if-eqz v7, :cond_9

    iget v10, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    nop

    .line 1716
    :cond_9
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1718
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1719
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "N":I
    .end local v6    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v7    # "cryptoStats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 1721
    :cond_a
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    .end local v1    # "sets":Lorg/json/JSONArray;
    goto :goto_a

    .line 1722
    :catch_0
    move-exception v1

    .line 1723
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FingerprintService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1727
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    move-object/from16 v0, p0

    .line 1730
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1731
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1732
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1734
    .local v5, "userId":I
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1736
    .local v6, "userToken":J
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1737
    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v11, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 1738
    invoke-virtual {v10, v11, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 1737
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1741
    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1742
    .local v10, "normal":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-eqz v10, :cond_0

    .line 1743
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1744
    .local v13, "countsToken":J
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1745
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1746
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1747
    iget v11, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1748
    iget v8, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1749
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1754
    .end local v13    # "countsToken":J
    :cond_0
    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1755
    .local v8, "crypto":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-eqz v8, :cond_1

    .line 1756
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1757
    .local v11, "countsToken":J
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1758
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1759
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1760
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1761
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1762
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1765
    .end local v11    # "countsToken":J
    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1766
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "userToken":J
    .end local v8    # "crypto":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v10    # "normal":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    goto/16 :goto_0

    .line 1767
    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1768
    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1769
    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1770
    return-void
.end method

.method private enumerateUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 470
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 472
    .local v5, "restricted":Z
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    .line 473
    return-void
.end method

.method private getAuthPackageInternal()Ljava/lang/String;
    .locals 2

    .line 1972
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 1973
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_0

    .line 1974
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1977
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockoutMode()I
    .locals 4

    .line 692
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 693
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 694
    .local v1, "failedAttempts":I
    const/16 v3, 0x14

    if-lt v1, v3, :cond_0

    .line 695
    const/4 v2, 0x2

    return v2

    .line 696
    :cond_0
    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 697
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    rem-int/lit8 v3, v1, 0x5

    if-nez v3, :cond_1

    .line 699
    const/4 v2, 0x1

    return v2

    .line 701
    :cond_1
    return v2
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "userId"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    .line 716
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 715
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getUserOrWorkProfileId(Ljava/lang/String;I)I
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1832
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    return p2

    .line 1835
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method private isForegroundActivity(II)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 973
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 974
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 975
    .local v2, "N":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 976
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 977
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_0

    .line 979
    const/4 v0, 0x1

    return v0

    .line 975
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 984
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 982
    :catch_0
    move-exception v1

    .line 983
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "am.getRunningAppProcesses() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1843
    const/4 v0, 0x0

    .line 1844
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1846
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1848
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1849
    nop

    .line 1850
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1848
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private listenForUserSwitches()V
    .locals 3

    .line 1855
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$13;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$13;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    goto :goto_0

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private loadAuthenticatorIds()V
    .locals 8

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 440
    .local v0, "t":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 441
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 442
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    .line 443
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 444
    invoke-direct {p0, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 446
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 449
    .end local v0    # "t":J
    .local v2, "t":J
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 450
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    return-void
.end method

.method private notifyClientActiveCallbacks(Z)V
    .locals 5
    .param p1, "isActive"    # Z

    .line 1061
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1062
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1064
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V

    .line 1066
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v3}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChangedWithPkg(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    goto :goto_2

    .line 1068
    :catch_0
    move-exception v2

    .line 1070
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1062
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    .line 1055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 3
    .param p1, "client"    # Lcom/android/server/fingerprint/ClientMonitor;

    .line 675
    if-eqz p1, :cond_1

    .line 676
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    .line 677
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    .line 678
    const-string v0, "FingerprintService"

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    .line 678
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_2

    .line 683
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-nez v0, :cond_3

    .line 687
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 689
    :cond_3
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 1051
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1052
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 705
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 705
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 708
    return-void
.end method

.method private shouldBlockTouch(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1982
    const/4 v0, 0x0

    .line 1984
    .local v0, "block":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1985
    return v2

    .line 1987
    :cond_0
    const-string v1, "com.oneplus.applocker"

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1988
    return v2

    .line 1991
    :cond_1
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockXEnd:I

    if-gt p1, v1, :cond_3

    .line 1992
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    if-lt p2, v1, :cond_3

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockYEnd:I

    if-gt p1, v1, :cond_3

    .line 1993
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block Touch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1997
    :cond_3
    return v2
.end method

.method private startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "callingUserId"    # I
    .param p5, "groupId"    # I
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "flags"    # I
    .param p8, "restricted"    # Z
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "bundle"    # Landroid/os/Bundle;
    .param p11, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object/from16 v15, p0

    move/from16 v0, p5

    move-object/from16 v14, p9

    .line 1080
    const/4 v13, 0x0

    const/16 v1, 0x3e7

    const/4 v12, 0x1

    if-ne v0, v1, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v13

    :goto_0
    move/from16 v16, v2

    .line 1081
    .local v16, "isDoubleAccount":Z
    if-ne v0, v1, :cond_1

    .line 1082
    iget v0, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1086
    .end local p5    # "groupId":I
    .local v11, "groupId":I
    :cond_1
    move v11, v0

    invoke-direct {v15, v11, v14}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1088
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v17, Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget v5, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    iget-object v1, v15, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, v17

    move-object/from16 v18, v1

    move-object v1, v15

    move/from16 v19, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move/from16 v7, v19

    move v8, v11

    move/from16 v19, v11

    move/from16 v11, p8

    .end local v11    # "groupId":I
    .local v19, "groupId":I
    move-object v12, v14

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/server/fingerprint/FingerprintService$10;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1152
    .local v0, "client":Lcom/android/server/fingerprint/AuthenticationClient;
    if-eqz v16, :cond_2

    .line 1153
    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->setDoubleAccount()V

    .line 1157
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    .line 1158
    .local v1, "lockoutMode":I
    if-eqz v1, :cond_5

    .line 1159
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1162
    const/4 v2, 0x7

    goto :goto_1

    .line 1163
    :cond_3
    const/16 v2, 0x9

    .line 1164
    .local v2, "errorCode":I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1165
    const-string v3, "FingerprintService"

    const-string v4, "Cannot send permanent lockout message to client"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_4
    return-void

    .line 1169
    .end local v2    # "errorCode":I
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v3, p0

    invoke-direct {v3, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1170
    return-void
.end method

.method private startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 5
    .param p1, "newClient"    # Lcom/android/server/fingerprint/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 756
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 757
    .local v0, "currentClient":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_3

    .line 758
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    goto :goto_1

    .line 764
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 765
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 775
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 776
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 777
    :cond_3
    if-eqz p1, :cond_5

    .line 778
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 779
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 779
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 787
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateStatus(I)I

    goto :goto_2

    .line 789
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateStatus(I)I

    .line 793
    :goto_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 795
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->start()I

    .line 800
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 801
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove pending client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 806
    :cond_5
    :goto_3
    return-void
.end method

.method private startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;

    move-object/from16 v13, p0

    .line 1175
    move/from16 v14, p3

    move-object/from16 v15, p7

    invoke-direct {v13, v14, v15}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1177
    move v8, v14

    .line 1179
    .local v8, "groupId":I
    new-instance v16, Lcom/android/server/fingerprint/FingerprintService$11;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v13, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget-object v12, v13, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move v7, v14

    move-object/from16 v9, p2

    move/from16 v10, p6

    move-object v11, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/server/fingerprint/FingerprintService$11;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1192
    .local v0, "client":Lcom/android/server/fingerprint/EnrollClient;
    const/4 v1, 0x1

    invoke-direct {v13, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1193
    return-void
.end method

.method private updateActiveGroup(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1782
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v0, :cond_6

    .line 1784
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    .line 1785
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v1, :cond_4

    .line 1786
    sget v1, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 1787
    .local v1, "firstSdkInt":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1788
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First SDK version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is invalid; must be at least VERSION_CODES.BASE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x45

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1796
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .local v2, "baseDir":Ljava/io/File;
    goto :goto_0

    .line 1798
    .end local v2    # "baseDir":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1801
    .restart local v2    # "baseDir":Ljava/io/File;
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v4, "fpdata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1802
    .local v3, "fpDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1803
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1804
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    return-void

    .line 1810
    :cond_2
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1811
    const-string v4, "FingerprintService"

    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    return-void

    .line 1816
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 1817
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1819
    .end local v1    # "firstSdkInt":I
    .end local v2    # "baseDir":Ljava/io/File;
    .end local v3    # "fpDir":Ljava/io/File;
    :cond_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1820
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v3

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1819
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1823
    goto :goto_2

    .line 1821
    :catch_0
    move-exception v1

    .line 1822
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to setActiveGroup():"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1825
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    return-void
.end method

.method private userActivity()V
    .locals 5

    .line 659
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 660
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 661
    return-void
.end method


# virtual methods
.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 932
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1873
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    .line 1877
    .local v0, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e7

    if-ne v1, v4, :cond_0

    .line 1878
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 1881
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method getEffectiveUserId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 937
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 938
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_0

    .line 939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 940
    .local v1, "callingIdentity":J
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 941
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    .end local v1    # "callingIdentity":J
    goto :goto_0

    .line 943
    :cond_0
    const-string v1, "FingerprintService"

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_0
    return p1
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 903
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    .line 904
    iget p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 906
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnrolledFingerprints: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 3

    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    if-nez v0, :cond_1

    .line 415
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mExtDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :try_start_1
    invoke-static {}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getService()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get fingerpritn ext interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 418
    :catch_1
    move-exception v0

    .line 422
    :goto_0
    nop

    .line 423
    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    if-nez v0, :cond_0

    .line 424
    const-string v0, "FingerprintService"

    const-string v1, "fingerpritn ext HIDL not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 428
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    invoke-interface {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 413
    .end local p0    # "this":Lcom/android/server/fingerprint/FingerprintService;
    throw v0
.end method

.method public declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 7

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_3

    .line 370
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :try_start_1
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 373
    :catch_1
    move-exception v0

    .line 377
    :goto_0
    nop

    .line 378
    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    monitor-exit p0

    return-object v1

    .line 383
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    :try_start_4
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    goto :goto_2

    .line 387
    :catch_2
    move-exception v0

    .line 388
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    const-string v0, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 395
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 396
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    goto :goto_3

    .line 398
    :cond_1
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 402
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_FP_HW_ERROR:I

    invoke-virtual {v0, v2, v3}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    .line 406
    :cond_2
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 409
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 368
    .end local p0    # "this":Lcom/android/server/fingerprint/FingerprintService;
    throw v0
.end method

.method public getStatus()I
    .locals 4

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    .line 1918
    .local v0, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v0, :cond_0

    .line 1920
    :try_start_0
    invoke-interface {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getStatus()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1921
    :catch_0
    move-exception v1

    .line 1922
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "getStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1925
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected handleAcquired(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 619
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 620
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    goto :goto_2

    .line 623
    :cond_0
    if-nez v0, :cond_1

    .line 624
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 625
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 627
    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v4, p3, p4, v2, v2}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onFingerprintEventCallback(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    goto :goto_1

    .line 628
    :catch_0
    move-exception v4

    .line 630
    .local v4, "re":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    .end local v3    # "i":I
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_2

    .line 639
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    .line 641
    :cond_2
    return-void
.end method

.method protected handleAuthenticated(JIILjava/util/ArrayList;)V
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 586
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 589
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [I

    const/16 v4, 0x47

    aput v4, v1, v2

    .line 590
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 592
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getStatus()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 593
    return-void

    .line 596
    :cond_0
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAuthenticated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-eqz p3, :cond_2

    .line 600
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 601
    .local v1, "byteToken":[B
    nop

    .local v2, "i":I
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 602
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v2

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 608
    .end local v1    # "byteToken":[B
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAuthenticated(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 609
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 611
    :cond_3
    if-eqz p3, :cond_4

    .line 612
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_1

    .line 614
    :cond_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    .line 616
    :goto_1
    return-void
.end method

.method protected handleEnrollResult(JIII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 644
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 645
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnrollResult(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 649
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEnrollResult when client == null, remaining = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fingerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", groupId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void
.end method

.method protected handleEnumerate(JIII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 489
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 496
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/server/fingerprint/EnumerateClient;

    if-nez v1, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnumerationResult(III)Z

    .line 502
    if-nez p5, :cond_4

    .line 503
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_3

    .line 504
    move-object v1, v0

    check-cast v1, Lcom/android/server/fingerprint/InternalEnumerateClient;

    .line 505
    invoke-virtual {v1}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getUnknownFingerprints()Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, "unknownFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fingerprints for deletion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 512
    .local v3, "f":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v3    # "f":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_0

    .line 514
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 515
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    .line 516
    .end local v1    # "unknownFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    goto :goto_1

    .line 517
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 520
    :cond_4
    :goto_1
    return-void
.end method

.method protected handleError(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 527
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 529
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 535
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_2

    .line 536
    :cond_1
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 538
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 542
    :cond_3
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p3, v1, :cond_5

    .line 546
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v1, :cond_6

    .line 548
    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start pending client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 550
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    goto :goto_1

    .line 552
    :cond_5
    const/4 v1, 0x1

    if-ne p3, v1, :cond_6

    .line 554
    const-string v1, "FingerprintService"

    const-string v3, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    monitor-enter p0

    .line 556
    :try_start_0
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 557
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 558
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 559
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 561
    :cond_6
    :goto_1
    return-void
.end method

.method protected handleRemoved(JIII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 564
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 570
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onRemoved(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 573
    invoke-virtual {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 577
    :cond_0
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    goto :goto_0

    .line 579
    :cond_1
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_2

    .line 580
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 582
    :cond_2
    :goto_0
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 664
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    const-string v0, "FingerprintService"

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 668
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 670
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 671
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    .line 672
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 912
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 913
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 918
    :cond_0
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_1

    .line 919
    iget p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 922
    :cond_1
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasEnrolledFingerprints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 927
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 8
    .param p1, "userId"    # I

    .line 949
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 950
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 951
    const-string v2, "FingerprintService"

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return v1

    .line 955
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 958
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    .local v7, "profileId":I
    if-ne v7, p1, :cond_1

    .line 960
    nop

    .line 964
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    const/4 v1, 0x1

    return v1

    .line 958
    .end local v7    # "profileId":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 964
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 965
    nop

    .line 967
    return v1

    .line 964
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 1774
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1775
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1776
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 1777
    return-void
.end method

.method protected resetFailedAttemptsForUser(ZI)V
    .locals 3
    .param p1, "clearAttemptCounter"    # Z
    .param p2, "userId"    # I

    .line 1198
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset fingerprint lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    if-eqz p1, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1207
    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1208
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1209
    return-void
.end method

.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 355
    const-string v0, "FingerprintService"

    const-string v1, "fingerprint HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "fingerprintd_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 359
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_FP_DIE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    .line 364
    :cond_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    .line 366
    return-void
.end method

.method startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "restricted"    # Z
    .param p5, "internal"    # Z

    move-object/from16 v12, p0

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v13

    .line 861
    .local v13, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v13, :cond_0

    .line 862
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startEnumerate: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 865
    :cond_0
    const/4 v14, 0x1

    if-eqz p5, :cond_1

    .line 866
    move/from16 v11, p2

    invoke-virtual {v12, v11}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v15

    .line 867
    .local v15, "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 868
    .local v10, "context":Landroid/content/Context;
    new-instance v16, Lcom/android/server/fingerprint/FingerprintService$8;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 869
    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v11

    move v8, v11

    move/from16 v9, p4

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    .end local v10    # "context":Landroid/content/Context;
    .local v18, "context":Landroid/content/Context;
    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$8;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V

    .line 881
    .local v0, "client":Lcom/android/server/fingerprint/InternalEnumerateClient;
    invoke-direct {v12, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 882
    .end local v0    # "client":Lcom/android/server/fingerprint/InternalEnumerateClient;
    .end local v15    # "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v18    # "context":Landroid/content/Context;
    goto :goto_0

    .line 884
    :cond_1
    new-instance v11, Lcom/android/server/fingerprint/FingerprintService$9;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 885
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p2

    move/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/FingerprintService$9;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 896
    .local v0, "client":Lcom/android/server/fingerprint/EnumerateClient;
    invoke-direct {v12, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 898
    .end local v0    # "client":Lcom/android/server/fingerprint/EnumerateClient;
    :goto_0
    return-void
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 735
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 736
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 737
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v1

    .line 741
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 742
    :catch_0
    move-exception v2

    .line 743
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPostEnroll failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 721
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 722
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 723
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-wide v1

    .line 727
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 728
    :catch_0
    move-exception v3

    .line 729
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startPreEnroll failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    .end local v3    # "e":Landroid/os/RemoteException;
    return-wide v1
.end method

.method startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "restricted"    # Z
    .param p7, "internal"    # Z

    move-object/from16 v12, p0

    .line 810
    if-nez p1, :cond_0

    .line 811
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 814
    :cond_0
    if-nez p5, :cond_1

    .line 815
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: receiver is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void

    .line 819
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v13

    .line 820
    .local v13, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v13, :cond_2

    .line 821
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void

    .line 825
    :cond_2
    const/4 v11, 0x1

    if-eqz p7, :cond_3

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 827
    .local v10, "context":Landroid/content/Context;
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$6;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 829
    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move-object v0, v14

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v16, v10

    move/from16 v10, p6

    .end local v10    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    move-object/from16 v17, v13

    move v13, v11

    move-object v11, v15

    .line 829
    .end local v13    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .local v17, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    .line 839
    .local v0, "client":Lcom/android/server/fingerprint/InternalRemovalClient;
    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 840
    .end local v0    # "client":Lcom/android/server/fingerprint/InternalRemovalClient;
    .end local v16    # "context":Landroid/content/Context;
    goto :goto_0

    .line 842
    .end local v17    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .restart local v13    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :cond_3
    move-object/from16 v17, v13

    move v13, v11

    .line 842
    .end local v13    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .restart local v17    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$7;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 843
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v14

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$7;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    .line 854
    .local v0, "client":Lcom/android/server/fingerprint/RemovalClient;
    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 856
    .end local v0    # "client":Lcom/android/server/fingerprint/RemovalClient;
    :goto_0
    return-void
.end method

.method public updateStatus(I)I
    .locals 4
    .param p1, "status"    # I

    .line 1889
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/EnrollClient;

    if-eqz v0, :cond_2

    .line 1890
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    check-cast v0, Lcom/android/server/fingerprint/EnrollClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/EnrollClient;->suspend()V

    goto :goto_0

    .line 1892
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    check-cast v0, Lcom/android/server/fingerprint/EnrollClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/EnrollClient;->resume()V

    goto :goto_0

    .line 1894
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 1896
    const/16 p1, 0x8

    .line 1902
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    .line 1903
    .local v0, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v0, :cond_3

    .line 1905
    :try_start_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatus , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    invoke-interface {v0, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->updateStatus(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1908
    :catch_0
    move-exception v1

    .line 1909
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "updateStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
