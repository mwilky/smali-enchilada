.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$SettingsAttrs;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_DISPATCH_UNLOCK_LOCKOUT:I = 0xd

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_FLUSH_TRUST_USUALLY_MANAGED:I = 0xa

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REFRESH_DEVICE_LOCKED_FOR_USER:I = 0xe

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_STOP_USER:I = 0xc

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNLOCK_USER:I = 0xb

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final TRUST_USUALLY_MANAGED_FLUSH_DELAY:I = 0x1d4c0


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDeviceLockedForUser"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTrustUsuallyManagedForUser"
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserIsTrusted"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersUnlockedByFingerprint"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "TrustManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustManagerService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/trust/TrustManagerService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p1
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private aggregateIsTrusted(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private dispatchDeviceLocked(IZ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .locals 4

    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const/4 p3, 0x0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_1
    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchOnTrustError(Ljava/lang/CharSequence;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_1
    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .locals 4

    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_1
    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_1

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchUnlockLockout(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_0

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockLockout(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_b

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    :try_start_0
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v6, "android.service.trust.trustagent"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_2

    const-string v5, "TrustManagerService"

    const-string v6, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v7, v9, :cond_3

    if-eq v8, v10, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trust-agent"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "TrustManagerService"

    const-string v10, "Meta-data does not start with trust-agent tag"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    return-object v0

    :cond_5
    :try_start_2
    sget-object v9, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v5, v6, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move v2, v10

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_7

    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v0

    :catch_0
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_7

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_7

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    const-string v5, "TrustManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_8
    if-nez v1, :cond_9

    return-object v0

    :cond_9
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;-><init>(Landroid/content/ComponentName;Z)V

    return-object v0

    :cond_b
    :goto_3
    return-object v0
.end method

.method private isTrustUsuallyManagedInternal(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    monitor-exit v2

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v2, v4

    nop

    :cond_1
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enabling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because it is a default agent."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v7}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_3

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Leaving agent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " disabled because package is not a system package."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {p1, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "trust_agents_initialized"

    invoke-static {v7, v8, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .locals 13

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    const-string v1, "TrustManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, -0x1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_5

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v11, v6, :cond_3

    iget-object v11, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    monitor-enter v11

    :try_start_0
    iget-object v12, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v6, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    move v10, v12

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v11

    goto :goto_2

    :catch_0
    move-exception v11

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    if-eqz v9, :cond_4

    if-nez v8, :cond_4

    if-nez v10, :cond_4

    move v11, v1

    goto :goto_3

    :cond_4
    move v11, v3

    :goto_3
    invoke-direct {p0, v6, v11}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    :cond_3
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because package does not have permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private resolveProfileParent(I)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setDeviceLockedForUser(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateTrustAll()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTrustUsuallyManaged(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method isDeviceLockedInner(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEscrowTokenActive(JI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "trust"

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStopUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method refreshAgentList(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TrustManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshAgentList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_2

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshAgentList(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    :cond_2
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    if-eqz v9, :cond_4

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v11, :cond_4

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    if-nez v11, :cond_6

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": switchToByUser=false"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v11

    if-nez v11, :cond_7

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": user not started"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    if-nez v11, :cond_8

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": no secure credential"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v12

    and-int/lit8 v14, v12, 0x10

    if-eqz v14, :cond_9

    move v14, v4

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    :goto_2
    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v15}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_a

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "TrustManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshAgentList: skipping user "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": no agents enabled by user"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto/16 :goto_1

    :cond_a
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v3, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v4}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    sget-boolean v16, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v16, :cond_c

    move-object/from16 v17, v2

    const-string v2, "TrustManagerService"

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    const-string/jumbo v6, "refreshAgentList: skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": not enabled by user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    :goto_5
    const/4 v4, 0x1

    :goto_6
    const/4 v13, 0x0

    goto :goto_3

    :cond_c
    const/4 v4, 0x1

    const/4 v13, 0x0

    goto :goto_3

    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    if-eqz v14, :cond_f

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v13, v2}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    sget-boolean v5, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "TrustManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string/jumbo v2, "refreshAgentList: skipping "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not allowed by DPM"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    new-instance v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v13, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    iput v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_7

    :cond_10
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    :goto_7
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v5, :cond_11

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    iget-boolean v5, v5, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_12

    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_12

    const-string v6, "TrustManagerService"

    move-object/from16 v21, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    const-string/jumbo v4, "refreshAgentList: trustagent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "of user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "can unlock user profile."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    :goto_9
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_14

    if-nez v5, :cond_14

    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v3, :cond_13

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshAgentList: skipping user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'s trust agent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": FBE still locked and  the agent cannot unlock user profile."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_a
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    goto/16 :goto_5

    :cond_14
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_18

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    if-nez v5, :cond_15

    goto :goto_b

    :cond_15
    move/from16 v24, v5

    goto :goto_c

    :cond_16
    :goto_b
    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_17

    const-string v6, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string/jumbo v3, "refreshAgentList: skipping user "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": prevented by StrongAuthTracker = 0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move/from16 v24, v5

    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_17
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    goto/16 :goto_6

    :cond_18
    move/from16 v24, v5

    :goto_c
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v3, :cond_19

    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    :cond_19
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1a
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_d
    goto/16 :goto_a

    :cond_1b
    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v2, -0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v2, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_20

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1d

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, v5, :cond_1f

    :cond_1d
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    if-eqz v3, :cond_22

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_f

    :cond_21
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_22
    :goto_f
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v3, :cond_1

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void
.end method

.method showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    return-void
.end method

.method updateDevicePolicyFeatures()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    :cond_2
    return-void
.end method

.method public updateTrust(II)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eq v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
