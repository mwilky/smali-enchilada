.class public Lcom/android/server/am/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# static fields
.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STATUS_BAR_MASK_LOCKED:I = 0x3a60000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATUS_BAR_MASK_PINNED:I = 0x29f0000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private mLockTaskModeState:I

.field private final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mTelecomManager:Landroid/telecom/TelecomManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x60000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LockTaskController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/LockTaskController;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method private isKeyguardAllowed(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isRecentsAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method private isRecentsAllowed(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRootTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$removeLockedTask$0(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public static synthetic lambda$setLockTaskMode$1(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V
    .locals 2

    nop

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/am/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic lambda$updateLockTaskFeatures$2(Lcom/android/server/am/LockTaskController;I)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    :cond_0
    return-void
.end method

.method private lockKeyguardIfNeeded()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_to_app_exit_locked"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "PINNED"

    return-object v0

    :pswitch_1
    const-string v0, "LOCKED"

    return-object v0

    :pswitch_2
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performStartLockTask(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    iput p3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/am/OemSceneModeAmHelper;->disableSceneButtonLockFeature(Landroid/content/Context;Z)V

    return-void

    :goto_1
    nop

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private performStopLockTask(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockKeyguardIfNeeded()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_1
    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    nop

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/am/OemSceneModeAmHelper;->disableSceneButtonLockFeature(Landroid/content/Context;Z)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    throw v1
.end method

.method private removeLockedTask(Lcom/android/server/am/TaskRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeLockedTask: removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeLockedTask: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " last task, reverting locktask mode. Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;-><init>(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private setKeyguardState(II)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/LockTaskController$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/LockTaskController$1;-><init>(Lcom/android/server/am/LockTaskController;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .locals 8

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setLockTaskMode: Can\'t lock due to auth"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/RecentTasks;->onLockTaskModeStateChanged(II)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$utz-CwgPkuGXoN5jp5hMoe4EpuQ;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/am/-$$Lambda$LockTaskController$utz-CwgPkuGXoN5jp5hMoe4EpuQ;-><init>(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v1, :cond_4

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLockTaskMode: Locking to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    iget v1, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    :cond_6
    if-eqz p4, :cond_8

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_7

    const/4 v1, 0x1

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method private setStatusBarState(II)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ActivityManager"

    const-string v2, "Can\'t find StatusBarService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const/high16 v1, 0x29f0000

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "ActivityManager"

    const-string v5, "Failed to set status bar flags"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method activityBlockedFromFinish(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    const-string v2, "Not finishing task in lock task mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method clearLockedTask(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method clearLockedTasks(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearLockedTasks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method getLockTaskModeState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    return v0
.end method

.method getRootTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getStatusBarDisableFlags(I)Landroid/util/Pair;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3ff0000

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    sget-object v3, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    sget-object v4, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v1, v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3a60000

    and-int/2addr v0, v2

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPackageWhitelisted(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    :cond_1
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method isTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method showLockTaskToast()V
    .locals 3

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Failed to send pinning escape toast"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iput p3, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v1, v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    const-string v1, "Mode default, asking user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    :cond_1
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v1, :cond_4

    const-string v1, "ActivityManager"

    if-eqz p2, :cond_3

    const-string v2, "Locking pinned"

    goto :goto_0

    :cond_3
    const-string v2, "Locking fully"

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p2, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    const-string/jumbo v2, "startLockTask"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    return-void
.end method

.method stopLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "stopAppPinning"

    invoke-virtual {p0, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "ActivityManager"

    const-string v1, "Attempted to stop LockTask with isSystemCaller=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_5

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-eq p3, v0, :cond_4

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne p3, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uid, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectiveUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    :goto_1
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t stop LockTask for null task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateLockTaskFeatures(II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;-><init>(Lcom/android/server/am/LockTaskController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ltz v1, :cond_7

    iget-object v5, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v7, 0x3

    if-eq v6, v4, :cond_1

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v2

    :goto_2
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    iget v8, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v8, v4, :cond_3

    iget v4, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v4, v7, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_4

    :cond_3
    :goto_3
    move v3, v2

    :goto_4
    iget v4, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne v4, v2, :cond_6

    iget v4, v5, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v4, :cond_5

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onLockTaskPackagesUpdated: removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mLockTaskAuth()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v5}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    const/4 v0, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_6
    if-ltz v1, :cond_8

    iget-object v5, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->onLockTaskPackagesUpdated()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    iget-object v6, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v6, v4, :cond_b

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v4, :cond_a

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onLockTaskPackagesUpdated: starting new locktask task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v4, "package updated"

    invoke-direct {p0, v5, v2, v4, v3}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_c
    return-void
.end method
