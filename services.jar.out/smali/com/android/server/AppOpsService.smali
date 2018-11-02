.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ScreenCompatConfigUpdater;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$ActiveCallback;,
        Lcom/android/server/AppOpsService$ModeCallback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Constants;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field private static final IS_SCREEN_COMPAT_ENABLED:Z

.field public static final IS_SUPPORT_CAMERA_NOTCH:Z

.field public static MODE_COMPAT:I = 0x0

.field public static MODE_FULL:I = 0x0

.field public static MODE_NONFULL:I = 0x0

.field private static final NO_VERSION:I = -0x1

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field private static final SCREEN_COMPAT_CONFIG_NAME:Ljava/lang/String; = "Screen_Compat_Config"

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final UID_STATE_NAMES:[Ljava/lang/String;

.field static final UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

.field static final UID_STATE_TIME_ATTRS:[Ljava/lang/String;

.field static final WRITE_DELAY:J = 0x1b7740L

.field public static mEnableIgnoreCutoutMode:Z

.field public static mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mScreenCompatLock:Ljava/lang/Object;


# instance fields
.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/AppOpsService$Constants;

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mGetOnlineConfigRunner:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field mLastUptime:J

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field public mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    const-string/jumbo v1, "pers "

    const-string/jumbo v2, "top  "

    const-string v3, "fgsvc"

    const-string v4, "fg   "

    const-string v5, "bg   "

    const-string v6, "cch  "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    const-string/jumbo v1, "tp"

    const-string/jumbo v2, "tt"

    const-string/jumbo v3, "tfs"

    const-string/jumbo v4, "tf"

    const-string/jumbo v5, "tb"

    const-string/jumbo v6, "tc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    const-string/jumbo v1, "rp"

    const-string/jumbo v2, "rt"

    const-string/jumbo v3, "rfs"

    const-string/jumbo v4, "rf"

    const-string/jumbo v5, "rb"

    const-string/jumbo v6, "rc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x3a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    new-array v1, v0, [I

    const/16 v3, 0x23

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/android/server/AppOpsService;->mEnableIgnoreCutoutMode:Z

    const/16 v0, 0x64

    sput v0, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    const/16 v0, 0x65

    sput v0, Lcom/android/server/AppOpsService;->MODE_NONFULL:I

    const/16 v0, 0x66

    sput v0, Lcom/android/server/AppOpsService;->MODE_FULL:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/AppOpsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mGetOnlineConfigRunner:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$Constants;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsService;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsService;)Lcom/oneplus/config/ConfigObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AppOpsService;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppOpsService;->mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object p1
.end method

.method static synthetic access$400(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AppOpsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_6

    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$ChangeRec;

    iget v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v9, p1, :cond_3

    iget-object v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    new-instance v6, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Restriction;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    nop

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    if-nez v2, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    :cond_1
    new-instance v15, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, -0x1

    if-nez v1, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v0, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    iget v10, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    if-ne v10, v5, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_1

    iget-wide v11, v9, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v11, v3, v11

    goto :goto_2

    :cond_1
    iget v11, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v11, v11

    :goto_2
    move-wide v14, v11

    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    iget v11, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v6, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v7, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v5, v14

    move-wide/from16 v20, v3

    iget v3, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v4, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v11

    move-object v11, v13

    move-object/from16 v22, v9

    move-object v9, v13

    move/from16 v13, v16

    move-wide/from16 v23, v14

    move-object v14, v6

    move-object v15, v7

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v3, v20

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v20, v3

    goto :goto_6

    :cond_3
    move-wide/from16 v20, v3

    move-object v3, v2

    const/4 v2, 0x0

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_8

    aget v4, v1, v2

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    if-eqz v4, :cond_7

    if-nez v3, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    :cond_4
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_6

    iget-wide v7, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v7, v20, v7

    goto :goto_5

    :cond_6
    iget v7, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v7, v7

    :goto_5
    move-wide v14, v7

    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v8, v4, Lcom/android/server/AppOpsService$Op;->op:I

    iget v9, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v10, v4, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v11, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v12, v14

    iget v7, v4, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v6, v4, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v7

    move-object v7, v13

    move-object v0, v13

    move v13, v5

    move-wide/from16 v17, v14

    move/from16 v14, v16

    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    goto :goto_3

    :cond_8
    move-object v2, v3

    :goto_6
    return-object v2
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-gt v0, v1, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-gt v0, v1, :cond_1

    move v0, v9

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-boolean v0, v7, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_9

    if-eq v10, v11, :cond_9

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_2
    move v12, v0

    if-ltz v12, :cond_9

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    iget-object v0, v6, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArraySet;

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_3
    move v15, v0

    if-ltz v15, :cond_8

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/AppOpsService$ModeCallback;

    iget v0, v5, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_7

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v5, v0}, Lcom/android/server/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v9

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move/from16 v16, v0

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_5
    move v3, v0

    if-ltz v3, :cond_7

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    if-nez v16, :cond_6

    if-eqz v2, :cond_5

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v0, v4, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v20, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    goto :goto_7

    :cond_6
    :goto_6
    iget-object v1, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v4, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v1

    move-object v1, v6

    move-object/from16 v19, v2

    move-object v2, v5

    move/from16 v20, v3

    move-object/from16 v3, v17

    const/16 v17, 0x4

    move-object/from16 v18, v5

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_7
    add-int/lit8 v0, v20, -0x1

    move/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    :goto_8
    add-int/lit8 v0, v15, -0x1

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_8
    :goto_9
    add-int/lit8 v0, v12, -0x1

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set [--user <USER_ID>] <PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V
    .locals 11

    move-object v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    if-ge v3, v6, :cond_1

    aget-wide v7, p4, v3

    cmp-long v7, v7, v4

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x1

    nop

    :goto_2
    if-ge v2, v6, :cond_5

    aget-wide v7, p4, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_4

    if-eqz v3, :cond_3

    move-object v7, p2

    goto :goto_3

    :cond_3
    move-object v7, p3

    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    sget-object v7, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-wide v7, p4, v2

    move-object/from16 v9, p8

    invoke-virtual {v9, v7, v8}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-wide v7, p4, v2

    sub-long v7, v7, p5

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v9, p8

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v9, p8

    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 4

    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    move-object v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_2
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;
    .locals 11

    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_2
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    if-nez v2, :cond_a

    if-nez p3, :cond_3

    return-object v1

    :cond_3
    const/4 v3, 0x0

    if-eqz p1, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, -0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/high16 v8, 0x10000000

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-interface {v7, p2, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move v6, v8

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    :goto_0
    move v3, v8

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v8

    if-ltz v6, :cond_6

    const/4 v3, 0x0

    :cond_6
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v7

    :try_start_1
    const-string v8, "AppOps"

    const-string v9, "Could not contact PackageManager"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eq v6, p1, :cond_8

    if-nez p4, :cond_7

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "here"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    nop

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_9
    :goto_4
    new-instance v1, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v2
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 5

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-boolean v7, v5, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v7, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_1
    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$1lQKm3WHEUQsD7KzYyJ5stQSc04(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$NC5g1JY4YR6y4VePru4TO7AKp8M(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$UKMH8n9xZqCOX59uFPylskhjBgo(Lcom/android/server/AppOpsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$lxgFmOnGguOiLyfUZbyOpNBfTVw(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_0
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-object v4, v2, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v5, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Noting op not finished: uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v8, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v0, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    iget-object v6, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_4

    iget-object v1, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v0, v6

    monitor-exit p0

    return v1

    :cond_3
    goto :goto_1

    :cond_4
    if-eq v5, p1, :cond_5

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v0, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v7, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v0, v7

    monitor-exit p0

    return v6

    :cond_6
    :goto_1
    iget-object v1, v3, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v6, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v1, v6

    iget-object v1, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v7, 0x0

    aput-wide v7, v1, v6

    iput p4, v3, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iput-object p5, v3, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ModeCallback;

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void
.end method

.method private notifyWatchersOfChange(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    move-object v4, v0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_0
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    if-gez v0, :cond_2

    return v0

    :cond_2
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    return v7

    :cond_3
    return v5

    :pswitch_1
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    if-gez v0, :cond_4

    return v0

    :cond_4
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    return v7

    :cond_5
    return v5

    :pswitch_2
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->readState()V

    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v7

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_3
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v10, v10, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->writeState()V

    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    nop

    return v7

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_4
    const/4 v0, 0x0

    const/4 v6, -0x2

    move-object v8, v0

    move v0, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_8

    const-string v9, "--user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    move v0, v11

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    move-object v8, v10

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_8
    if-ne v0, v6, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move v0, v6

    :cond_9
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v6, v0, v8}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    const-string v6, "Reset all modes for: "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v0, v5, :cond_a

    const-string v6, "all users"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string/jumbo v6, "user "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(I)V

    :goto_3
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v8, :cond_b

    const-string v6, "all packages"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string/jumbo v6, "package "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return v7

    :pswitch_5
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    if-gez v0, :cond_c

    return v0

    :cond_c
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_d

    goto :goto_8

    :cond_d
    move v8, v7

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    const/4 v10, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    move v12, v7

    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_e

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_e

    const/4 v10, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    if-eqz v10, :cond_10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_11
    return v7

    :cond_12
    :goto_8
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :pswitch_6
    invoke-virtual {v1, v7, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    if-gez v0, :cond_13

    return v0

    :cond_13
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_15

    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_14

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    :cond_14
    invoke-interface {v8, v10, v11, v9}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    goto :goto_9

    :cond_15
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v11, v5, :cond_16

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    :cond_16
    invoke-interface {v8, v10, v9}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    :goto_9
    if-eqz v6, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_17

    goto/16 :goto_d

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v10, v7

    :goto_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    move v12, v7

    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1c

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, ": "

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_18

    const-string v14, "; time="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    cmp-long v14, v14, v16

    if-eqz v14, :cond_19

    const-string v14, "; rejectTime="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-ne v14, v5, :cond_1a

    const-string v14, " (running)"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    :cond_1a
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-eqz v14, :cond_1b

    const-string v14, "; duration="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_1b
    :goto_c
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    :cond_1d
    return v7

    :cond_1e
    :goto_d
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-le v8, v5, :cond_1f

    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    const/16 v9, 0x55

    if-ge v8, v9, :cond_1f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    invoke-static {v9}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    return v7

    :pswitch_7
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    if-gez v0, :cond_20

    return v0

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_21

    const-string v7, "Error: Mode not specified."

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_21
    invoke-static {v6, v4}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v8

    if-gez v8, :cond_22

    return v5

    :cond_22
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_23

    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v12, v8}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_e

    :cond_23
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v9, v10, v11, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_e
    return v7

    :goto_f
    return v0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_7
        -0x458a76fa -> :sswitch_6
        0x18f56 -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetScreenCompatConfig()V
    .locals 11

    const/16 v0, 0x46

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x46

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-ne v9, v2, :cond_1

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    sget v10, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    if-eq v9, v10, :cond_0

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    sget v10, Lcom/android/server/AppOpsService;->MODE_NONFULL:I

    if-eq v9, v10, :cond_0

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    sget v10, Lcom/android/server/AppOpsService;->MODE_FULL:I

    if-ne v9, v10, :cond_1

    :cond_0
    const/4 v9, 0x3

    invoke-virtual {p0, v2, v5, v6, v9}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, "root"

    return-object v0

    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    const-string v0, "com.android.shell"

    return-object v0

    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "media"

    return-object v0

    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    const-string v0, "audioserver"

    return-object v0

    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    const-string v0, "cameraserver"

    return-object v0

    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    const-string v0, "android"

    return-object v0

    :cond_5
    return-object p1
.end method

.method private resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat()V

    return-void

    :cond_1
    :try_start_0
    const-string v0, "AppOps"

    const-string v3, "[OnlineConfig] ScreenCompat: update config start"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    const/4 v0, 0x0

    :goto_0
    move v8, v0

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_11

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v9, v0

    const-string/jumbo v0, "op_screen_compat_enabled_config"

    const-string/jumbo v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "value"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_2

    const-string v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ScreenCompat: add default enabled pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    nop

    :cond_4
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_5
    const-string/jumbo v0, "op_screen_compat_full_config_mp1"

    const-string/jumbo v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_a

    const-string/jumbo v0, "value"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v12, v0

    const/4 v0, 0x0

    move v13, v0

    const/4 v0, 0x0

    :goto_3
    move v14, v0

    if-ge v14, v12, :cond_9

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    if-nez v13, :cond_7

    if-eqz v15, :cond_7

    const-string/jumbo v0, "reset_gesture_prop:"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_7

    const/4 v13, 0x1

    :try_start_1
    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-le v7, v10, :cond_6

    aget-object v7, v0, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v10, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v16, v11

    :try_start_2
    const-string v11, "GestureButton: reset_gesture_prop to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persist.sys.gesture_button.horizontal_dis"

    const/4 v10, 0x1

    aget-object v11, v0, v10

    invoke-static {v2, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_6
    move-object/from16 v16, v11

    :goto_4
    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v16, v11

    :goto_5
    :try_start_3
    const-string v2, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GestureButton: reset_gesture_prop failed "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_7
    move-object/from16 v16, v11

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_8

    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScreenCompat: add default full pkg:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v11, v16

    move-object/from16 v2, p1

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_9
    goto/16 :goto_2

    :cond_a
    const-string/jumbo v0, "op_screen_compat_3p_config"

    const-string/jumbo v2, "name"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "value"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v2, :cond_c

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v11, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_b

    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenCompat: add 3p config pkg:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_c
    goto/16 :goto_2

    :cond_d
    const-string/jumbo v0, "op_screen_compat_ignore_config"

    const-string/jumbo v2, "name"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "value"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/AppOpsService;->mEnableIgnoreCutoutMode:Z

    move v10, v7

    :goto_8
    if-ge v10, v2, :cond_10

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "ignore_all"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/server/AppOpsService;->mEnableIgnoreCutoutMode:Z

    const-string v13, "AppOps"

    const-string v14, "ScreenCompat: ignore all cutout."

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_e
    const/4 v12, 0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_f

    const-string v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ScreenCompat: add ignore config pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_10
    :goto_a
    add-int/lit8 v0, v8, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_11
    sget-object v2, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    iput-object v3, v1, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    iput-object v4, v1, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iput-object v5, v1, Lcom/android/server/AppOpsService;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    :cond_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    sput-object v6, Lcom/android/server/AppOpsService;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    :cond_15
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat()V

    const-string v0, "AppOps"

    const-string v2, "[OnlineConfig] ScreenCompat: update config complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] ScreenCompatConfigUpdater, error message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_3
    move-exception v0

    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] ScreenCompatConfigUpdater, error message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    nop

    :goto_c
    return-void
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v0, 0x417

    return v0

    :pswitch_1
    const/16 v0, 0x411

    return v0

    :pswitch_2
    const/16 v0, 0x3f5

    return v0

    :pswitch_3
    const/16 v0, 0x7d0

    return v0

    :pswitch_4
    return v2

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;

    if-eqz v4, :cond_2

    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    nop

    :try_start_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private upgradeLocked(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading app-ops xml from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v4, 0x40

    const/16 v5, 0x4e

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v6, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    move v6, v3

    move v3, v0

    :goto_1
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    if-eqz v8, :cond_3

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v10, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    new-instance v9, Lcom/android/server/AppOpsService$Op;

    iget-object v10, v8, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v5}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    iget v10, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v7, v5, v9}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x55

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 4

    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio disabled for suspended package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move p1, v1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    monitor-exit p0

    return v1

    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    monitor-exit p0

    return v3

    :cond_3
    iget v3, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 2

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 59

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    iget-object v0, v15, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v13, :cond_d

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v12

    :goto_0
    array-length v5, v13

    if-ge v0, v5, :cond_c

    aget-object v5, v13, v0

    const-string v6, "-h"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {v15, v14}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const-string v6, "-a"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v6, "--op"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    array-length v6, v13

    if-lt v0, v6, :cond_3

    const-string v6, "No argument for --op option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    aget-object v6, v13, v0

    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->access$500(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    if-gez v2, :cond_9

    return-void

    :cond_4
    const-string v6, "--package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v6, v0, 0x1

    array-length v0, v13

    if-lt v6, v0, :cond_5

    const-string v0, "No argument for --package option"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    aget-object v1, v13, v6

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v7, 0xc02000

    invoke-interface {v0, v1, v7, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    if-gez v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move v3, v0

    move v0, v6

    goto :goto_2

    :cond_7
    const-string v6, "--mode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v0, v0, 0x1

    array-length v6, v13

    if-lt v0, v6, :cond_8

    const-string v6, "No argument for --mode option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8
    aget-object v6, v13, v0

    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    if-gez v4, :cond_9

    return-void

    :cond_9
    :goto_2
    add-int/2addr v0, v11

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    move v10, v2

    move v5, v4

    move-object v4, v1

    goto :goto_3

    :cond_d
    move v10, v0

    move-object v4, v1

    move v5, v3

    move v3, v2

    :goto_3
    monitor-enter p0

    :try_start_1
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    invoke-virtual {v0, v14}, Lcom/android/server/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide/from16 v19, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v2, 0x0

    if-gez v10, :cond_f

    if-gez v5, :cond_f

    if-nez v4, :cond_f

    :try_start_2
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v11, :cond_f

    const-string v11, "  Profile owners:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v11, v12

    :goto_4
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_e

    const-string v12, "    User #"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v14, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    goto :goto_4

    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_45

    :cond_f
    :goto_5
    :try_start_3
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-lez v11, :cond_17

    const/4 v11, 0x0

    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    :goto_6
    move/from16 v23, v11

    :try_start_4
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_16

    if-ltz v10, :cond_10

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-eq v10, v11, :cond_10

    nop

    :goto_7
    move/from16 v11, v23

    goto/16 :goto_a

    :cond_10
    const/4 v11, 0x0

    move/from16 v24, v11

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    move/from16 v16, v12

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    if-eqz v4, :cond_11

    move-object/from16 v26, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v11, :cond_12

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_12

    goto :goto_9

    :cond_11
    move-object/from16 v26, v11

    :cond_12
    const/16 v23, 0x1

    if-nez v16, :cond_13

    const-string v11, "  Op mode watchers:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    :cond_13
    if-nez v24, :cond_14

    const-string v11, "    Op "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v24, 0x1

    :cond_14
    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v26

    move-object/from16 v13, p3

    goto :goto_8

    :cond_15
    move/from16 v12, v16

    goto :goto_7

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p3

    goto/16 :goto_6

    :cond_16
    move/from16 v2, v23

    :cond_17
    :try_start_5
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-lez v11, :cond_1b

    if-gez v10, :cond_1b

    const/4 v11, 0x0

    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    :goto_b
    :try_start_6
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_1c

    if-eqz v4, :cond_18

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    goto :goto_d

    :cond_18
    const/4 v11, 0x1

    if-nez v12, :cond_19

    const-string v13, "  Package mode watchers:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    :cond_19
    const-string v13, "    Pkg "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, ":"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    const/16 v16, 0x0

    :goto_c
    move/from16 v27, v16

    move/from16 v28, v11

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v11

    move/from16 v29, v12

    move/from16 v12, v27

    if-ge v12, v11, :cond_1a

    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v16, v12, 0x1

    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_c

    :cond_1a
    move/from16 v11, v28

    move/from16 v12, v29

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    move v11, v2

    :cond_1c
    :try_start_7
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-lez v2, :cond_21

    if-gez v10, :cond_21

    const/4 v2, 0x0

    move v12, v2

    const/4 v2, 0x0

    :goto_e
    :try_start_8
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_20

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    if-eqz v4, :cond_1d

    move/from16 v30, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v11, :cond_1e

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_1e

    nop

    move/from16 v11, v30

    goto :goto_10

    :cond_1d
    move/from16 v30, v11

    :cond_1e
    const/4 v11, 0x1

    if-nez v12, :cond_1f

    move/from16 v31, v11

    const-string v11, "  All op mode watchers:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    goto :goto_f

    :cond_1f
    move/from16 v31, v11

    :goto_f
    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v11, v31

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    move/from16 v30, v11

    :cond_21
    :try_start_9
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-lez v2, :cond_2b

    if-gez v5, :cond_2b

    const/4 v11, 0x1

    const/4 v2, 0x0

    move v12, v2

    const/4 v2, 0x0

    :goto_11
    :try_start_a
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_2a

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v16

    if-gtz v16, :cond_22

    nop

    move-wide/from16 v34, v6

    move/from16 v32, v11

    goto/16 :goto_13

    :cond_22
    move/from16 v32, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object/from16 v33, v16

    if-ltz v10, :cond_23

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v16

    if-gez v16, :cond_23

    nop

    move-wide/from16 v34, v6

    goto/16 :goto_13

    :cond_23
    if-eqz v4, :cond_24

    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v6, :cond_25

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v3, v6, :cond_25

    goto :goto_13

    :cond_24
    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    :cond_25
    if-nez v12, :cond_26

    const-string v6, "  All op active watchers:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    :cond_26
    const-string v6, "    "

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " ->"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "        ["

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v6, :cond_29

    if-lez v2, :cond_27

    const/16 v7, 0x20

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    :cond_27
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v6, -0x1

    if-ge v2, v7, :cond_28

    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_29
    const-string v7, "]"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_13
    const/16 v22, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v32

    move-wide/from16 v6, v34

    goto/16 :goto_11

    :cond_2a
    move-wide/from16 v34, v6

    move/from16 v32, v11

    const/16 v22, 0x1

    goto :goto_14

    :cond_2b
    move-wide/from16 v34, v6

    const/16 v22, 0x1

    :goto_14
    :try_start_b
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-lez v2, :cond_35

    if-gez v5, :cond_35

    const/4 v11, 0x1

    const/4 v2, 0x0

    move v6, v2

    const/4 v2, 0x0

    :goto_15
    :try_start_c
    iget-object v7, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_34

    const/4 v7, 0x0

    iget-object v12, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$ClientState;

    iget-object v13, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-lez v13, :cond_33

    const/4 v13, 0x0

    move/from16 v16, v13

    move v13, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_16
    move/from16 v36, v3

    :try_start_d
    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_32

    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Op;

    if-ltz v10, :cond_2c

    move/from16 v37, v11

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    if-eq v11, v10, :cond_2d

    goto :goto_17

    :cond_2c
    move/from16 v37, v11

    :cond_2d
    if-eqz v4, :cond_2e

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    goto :goto_17

    :cond_2e
    if-nez v7, :cond_2f

    const-string v11, "  Clients:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_2f
    if-nez v13, :cond_30

    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v11, "      "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v13, 0x1

    :cond_30
    if-nez v16, :cond_31

    const-string v11, "      Started ops:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    :cond_31
    const-string v11, "        "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "uid="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " pkg="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " op="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_17
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_16

    :cond_32
    move/from16 v37, v11

    move v6, v7

    goto :goto_18

    :cond_33
    move/from16 v36, v3

    move/from16 v37, v11

    :goto_18
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_15

    :cond_34
    move/from16 v36, v3

    move/from16 v37, v11

    goto :goto_19

    :catchall_1
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_45

    :cond_35
    move/from16 v36, v3

    :goto_19
    :try_start_e
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-lez v2, :cond_3a

    if-gez v10, :cond_3a

    if-eqz v4, :cond_3a

    if-gez v5, :cond_3a

    const/4 v2, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_1a
    :try_start_f
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3a

    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    move v12, v3

    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_39

    if-nez v12, :cond_36

    const-string v13, "  Audio Restrictions:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v11, 0x1

    :cond_36
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move/from16 v38, v11

    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " usage="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Restriction;

    move-object/from16 v39, v6

    const-string v6, ": mode="

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v11, Lcom/android/server/AppOpsService$Restriction;->mode:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "      Exceptions:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1c
    move-object/from16 v40, v7

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_38

    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v40

    goto :goto_1c

    :cond_37
    move-object/from16 v40, v7

    :cond_38
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v38

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    goto :goto_1b

    :cond_39
    add-int/lit8 v2, v2, 0x1

    move v3, v12

    goto/16 :goto_1a

    :cond_3a
    if-eqz v11, :cond_3b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1d

    :catchall_2
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    goto/16 :goto_45

    :cond_3b
    :goto_1d
    const/4 v2, 0x0

    :goto_1e
    move v13, v2

    :try_start_10
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v13, v2, :cond_6b

    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    move-object v12, v2

    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v6, v2

    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v7, v2

    if-gez v10, :cond_3d

    if-nez v4, :cond_3d

    if-ltz v5, :cond_3c

    goto :goto_1f

    :cond_3c
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_2c

    :cond_3d
    :goto_1f
    if-ltz v10, :cond_3f

    :try_start_11
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3e

    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3e

    goto :goto_20

    :cond_3e
    const/4 v2, 0x0

    goto :goto_21

    :cond_3f
    :goto_20
    move/from16 v2, v22

    :goto_21
    if-nez v4, :cond_40

    move/from16 v3, v22

    goto :goto_22

    :cond_40
    const/4 v3, 0x0

    :goto_22
    if-gez v5, :cond_41

    move/from16 v16, v22

    goto :goto_23

    :cond_41
    const/16 v16, 0x0

    :goto_23
    if-nez v16, :cond_45

    if-eqz v6, :cond_45

    move/from16 v17, v16

    const/16 v16, 0x0

    :goto_24
    move/from16 v41, v16

    if-nez v17, :cond_43

    move/from16 v42, v2

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    move/from16 v43, v3

    move/from16 v3, v41

    if-ge v3, v2, :cond_44

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, v5, :cond_42

    const/16 v17, 0x1

    :cond_42
    add-int/lit8 v16, v3, 0x1

    move/from16 v2, v42

    move/from16 v3, v43

    goto :goto_24

    :cond_43
    move/from16 v42, v2

    move/from16 v43, v3

    :cond_44
    move/from16 v16, v17

    goto :goto_25

    :cond_45
    move/from16 v42, v2

    move/from16 v43, v3

    :goto_25
    if-eqz v7, :cond_4f

    move/from16 v3, v43

    const/4 v2, 0x0

    :goto_26
    if-eqz v42, :cond_47

    if-eqz v3, :cond_47

    if-nez v16, :cond_46

    goto :goto_27

    :cond_46
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_2a

    :cond_47
    :goto_27
    move/from16 v44, v13

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_4e

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Ops;

    if-nez v42, :cond_48

    if-eqz v13, :cond_48

    invoke-virtual {v13, v10}, Lcom/android/server/AppOpsService$Ops;->indexOfKey(I)I

    move-result v17

    if-ltz v17, :cond_48

    const/16 v42, 0x1

    :cond_48
    if-nez v16, :cond_4c

    move/from16 v17, v16

    const/16 v16, 0x0

    :goto_28
    move/from16 v45, v16

    if-nez v17, :cond_4a

    move/from16 v46, v11

    invoke-virtual {v13}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v11

    move-object/from16 v47, v8

    move/from16 v8, v45

    if-ge v8, v11, :cond_4b

    invoke-virtual {v13, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Op;

    iget v11, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v11, v5, :cond_49

    const/16 v17, 0x1

    :cond_49
    add-int/lit8 v16, v8, 0x1

    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_28

    :cond_4a
    move-object/from16 v47, v8

    move/from16 v46, v11

    :cond_4b
    move/from16 v16, v17

    goto :goto_29

    :cond_4c
    move-object/from16 v47, v8

    move/from16 v46, v11

    :goto_29
    if-nez v3, :cond_4d

    iget-object v8, v13, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v8, :cond_4d

    const/4 v3, 0x1

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v44

    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_26

    :cond_4e
    move-object/from16 v47, v8

    move/from16 v46, v11

    :goto_2a
    move/from16 v43, v3

    goto :goto_2b

    :cond_4f
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    :goto_2b
    :try_start_12
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v2, :cond_50

    if-nez v42, :cond_50

    :try_start_13
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-lez v2, :cond_50

    const/16 v42, 0x1

    :cond_50
    if-eqz v42, :cond_6a

    if-eqz v43, :cond_6a

    if-nez v16, :cond_51

    nop

    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_3b

    :cond_51
    :goto_2c
    :try_start_14
    const-string v2, "  Uid "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    state="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eq v2, v3, :cond_52

    :try_start_15
    const-string v2, "    pendingState="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :cond_52
    :try_start_16
    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-eqz v2, :cond_53

    :try_start_17
    const-string v2, "    pendingStateCommitTime="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v2, v3, v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_53
    :try_start_18
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v2, :cond_54

    :try_start_19
    const-string v2, "    startNesting="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :cond_54
    :try_start_1a
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v2, :cond_59

    if-ltz v5, :cond_55

    const/4 v2, 0x4

    if-ne v5, v2, :cond_59

    :cond_55
    :try_start_1b
    const-string v2, "    foregroundOps:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2d
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    if-ltz v10, :cond_56

    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eq v10, v3, :cond_56

    goto :goto_2f

    :cond_56
    const-string v3, "      "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "WATCHER"

    goto :goto_2e

    :cond_57
    const-string v3, "SILENT"

    :goto_2e
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_58
    const-string v2, "    hasForegroundWatchers="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v12, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_59
    const/16 v21, 0x1

    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_5c

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    if-ltz v10, :cond_5a

    if-eq v10, v8, :cond_5a

    goto :goto_31

    :cond_5a
    if-ltz v5, :cond_5b

    if-eq v5, v11, :cond_5b

    goto :goto_31

    :cond_5b
    const-string v13, "      "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, ": mode="

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_5c
    if-nez v7, :cond_5d

    nop

    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_3a

    :cond_5d
    const/4 v2, 0x0

    :goto_32
    move v13, v2

    :try_start_1c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v13, v2, :cond_69

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object v11, v2

    if-eqz v4, :cond_5e

    :try_start_1d
    iget-object v2, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-nez v2, :cond_5e

    nop

    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_39

    :cond_5e
    const/4 v2, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_33
    move v8, v2

    :try_start_1e
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v8, v2, :cond_68

    invoke-virtual {v11, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    if-ltz v10, :cond_5f

    move-wide/from16 v48, v0

    :try_start_1f
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->op:I

    if-eq v10, v0, :cond_60

    goto :goto_34

    :cond_5f
    move-wide/from16 v48, v0

    :cond_60
    if-ltz v5, :cond_61

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v5, v0, :cond_61

    nop

    :goto_34
    move/from16 v50, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v53, v10

    move-object v5, v11

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    move-wide/from16 v23, v48

    const/16 v32, 0x0

    goto/16 :goto_38

    :cond_61
    if-nez v3, :cond_62

    const-string v0, "    Package "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    const/4 v3, 0x1

    :cond_62
    move v0, v3

    :try_start_20
    const-string v1, "      "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move v3, v1

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    if-eq v3, v1, :cond_64

    :try_start_21
    const-string v1, " / switch "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    if-eqz v1, :cond_63

    move/from16 v50, v0

    iget v0, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_35

    :cond_63
    move/from16 v50, v0

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    :goto_35
    move-object/from16 v51, v1

    const-string v1, "="

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    goto :goto_36

    :cond_64
    move/from16 v50, v0

    :goto_36
    :try_start_22
    const-string v0, "): "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          Access: "

    const-string v16, "                  "

    iget-object v1, v2, Lcom/android/server/AppOpsService$Op;->time:[J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    move-object/from16 v17, v1

    move-wide/from16 v23, v48

    move-object v1, v15

    move/from16 v52, v13

    move-object v13, v2

    move-object v2, v14

    move/from16 v27, v3

    move/from16 v26, v36

    move-object v3, v0

    move-object/from16 v28, v4

    move-object/from16 v4, v16

    move/from16 v29, v5

    move-object/from16 v5, v17

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide/from16 v6, v34

    move-object/from16 v8, v47

    :try_start_23
    invoke-direct/range {v1 .. v9}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    const-string v1, "          Reject: "

    const-string v2, "                  "

    iget-object v3, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:[J
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    move v4, v10

    move-object v10, v15

    move/from16 v53, v4

    move-object v5, v11

    move/from16 v4, v22

    const/16 v16, 0x0

    move-object v11, v14

    move-object/from16 v22, v12

    move/from16 v32, v16

    move-object v12, v1

    move-object v4, v13

    move/from16 v1, v44

    move/from16 v25, v52

    move-object v13, v2

    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-wide v15, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_24
    invoke-direct/range {v10 .. v18}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_65

    const-string v10, "          Running start at: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v10, v19, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_37

    :cond_65
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    if-eqz v10, :cond_66

    const-string v10, "          duration="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v10, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_66
    :goto_37
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eqz v10, :cond_67

    const-string v10, "          startNesting="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    :cond_67
    :goto_38
    add-int/lit8 v4, v31, 0x1

    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-object v11, v5

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v13, v25

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v3, v50

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_33

    :catchall_3
    move-exception v0

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_45

    :cond_68
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    :goto_39
    add-int/lit8 v4, v25, 0x1

    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_32

    :cond_69
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    :goto_3a
    move/from16 v11, v21

    goto :goto_3c

    :cond_6a
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    :goto_3b
    move/from16 v11, v46

    :goto_3c
    add-int/lit8 v0, v1, 0x1

    move-object v14, v2

    move-object v15, v3

    move-wide/from16 v34, v6

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move/from16 v10, v53

    const/16 v22, 0x1

    move v2, v0

    move-wide/from16 v0, v23

    goto/16 :goto_1e

    :cond_6b
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move/from16 v46, v11

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    const/16 v32, 0x0

    if-eqz v46, :cond_6c

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_6c
    iget-object v0, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move/from16 v1, v32

    :goto_3d
    if-ge v1, v0, :cond_75

    iget-object v4, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientRestrictionState;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  User restrictions for token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v10, :cond_6d

    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_3e

    :cond_6d
    move/from16 v12, v32

    :goto_3e
    move v10, v12

    if-lez v10, :cond_72

    const-string v11, "      Restricted ops:"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v11, v32

    :goto_3f
    if-ge v11, v10, :cond_72

    iget-object v12, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    iget-object v13, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Z

    if-nez v13, :cond_6e

    nop

    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    goto :goto_42

    :cond_6e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v13

    move/from16 v16, v32

    :goto_40
    move/from16 v54, v16

    move/from16 v55, v0

    move/from16 v0, v54

    if-ge v0, v15, :cond_71

    aget-boolean v16, v13, v0

    if-eqz v16, :cond_70

    move-object/from16 v56, v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    if-le v4, v6, :cond_6f

    const-string v4, ", "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_70
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    :goto_41
    add-int/lit8 v16, v0, 0x1

    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto :goto_40

    :cond_71
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " restricted ops: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_42
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto/16 :goto_3f

    :cond_72
    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_73

    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_43

    :cond_73
    move/from16 v12, v32

    :goto_43
    move v0, v12

    if-lez v0, :cond_74

    const-string v4, "      Excluded packages:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, v32

    :goto_44
    if-ge v4, v0, :cond_74

    iget-object v7, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v11, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const-string v12, "        "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "user: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " packages: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_74
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v55

    move-wide/from16 v6, v57

    goto/16 :goto_3d

    :cond_75
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    goto :goto_45

    :catchall_5
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    :goto_45
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_45
.end method

.method enforceManageAppOpsModes(III)V
    .locals 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 8

    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/AppOpsService$ClientState;

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v0, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    if-nez v2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-object v3, v1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v3, v0, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    if-gez v3, :cond_3

    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for non-existing package="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :cond_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation not started: uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v3, :cond_5

    invoke-direct {p0, p2, p3, p4, v4}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    :cond_5
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V
    .locals 6

    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eq v0, v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing op nesting under-run: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    :goto_2
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lt v0, v1, :cond_4

    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    :cond_4
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    :goto_3
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v4

    :cond_1
    invoke-direct {p0, v1, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    monitor-exit p0

    return-object v4

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$UidState;

    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v3

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_3

    :try_start_2
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {p0, v8, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2

    if-nez v7, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    :cond_1
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v11, v12, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v7

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v3

    goto :goto_3

    :cond_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/AppOpsService$ClientState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v4

    :cond_0
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v4

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_3

    iget-object v6, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    if-ne v7, p1, :cond_2

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne v7, p2, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadSystemAppList()V
    .locals 1

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    return-void
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_0

    return v8

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    return v8

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, v10

    move v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v9
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    :goto_1
    if-ltz v7, :cond_5

    iget-object v8, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne p1, v9, :cond_4

    iget-object v9, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    iget-object v9, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v9, :cond_4

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-direct {p0, v9, p1, p2, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    invoke-virtual {v1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_8

    invoke-virtual {v1, v5}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    iget v8, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v9, v6, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method readState()V
    .locals 13

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    nop

    const/4 v3, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne v6, v8, :cond_9

    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_7

    const/4 v9, 0x3

    if-ne v6, v9, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_7

    :cond_3
    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-ne v6, v9, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_6
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    goto :goto_1

    :cond_7
    const/4 v3, 0x1

    if-nez v3, :cond_8

    :try_start_4
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto/16 :goto_4

    :cond_9
    :try_start_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v4

    goto/16 :goto_5

    :catch_1
    move-exception v4

    :try_start_7
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v3, :cond_a

    :try_start_8
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_a
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_a
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v3, :cond_b

    :try_start_b
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    :catch_3
    move-exception v4

    :try_start_d
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v3, :cond_c

    :try_start_e
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_c
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v4

    :try_start_10
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v3, :cond_d

    :try_start_11
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_d
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_3

    :catch_5
    move-exception v4

    :try_start_13
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v3, :cond_e

    :try_start_14
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_e
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_3

    :catch_6
    move-exception v4

    :try_start_16
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-nez v3, :cond_f

    :try_start_17
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_f
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_3

    :goto_4
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    monitor-enter p0

    :try_start_1b
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->upgradeLocked(I)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw v1

    :goto_5
    if-nez v3, :cond_10

    :try_start_1c
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :cond_10
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto :goto_6

    :catch_7
    move-exception v5

    :goto_6
    :try_start_1e
    throw v4

    :catchall_2
    move-exception v2

    goto :goto_7

    :catch_8
    move-exception v2

    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    return-void

    :goto_7
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    :try_start_21
    throw v2

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    throw v2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v0, "n"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "p"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v11, v3, v9, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    iget v12, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v12, v8

    if-eqz v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    move v7, v12

    :cond_1
    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v11, "AppOps"

    const-string v12, "Could not contact PackageManager"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    if-eq v11, v10, :cond_d

    const/4 v11, 0x3

    if-ne v12, v11, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v0, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v24, v0

    goto/16 :goto_d

    :cond_5
    :goto_4
    if-eq v12, v11, :cond_c

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    nop

    move/from16 v24, v0

    goto/16 :goto_c

    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "op"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-direct {v1, v5, v10}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v15

    iget-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v8, :cond_7

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_7
    new-instance v8, Lcom/android/server/AppOpsService$Op;

    const-string/jumbo v9, "n"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v15, v3, v9}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    sub-int/2addr v9, v10

    :goto_5
    if-ltz v9, :cond_9

    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x2

    const/16 v20, 0x5

    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string/jumbo v13, "tfs"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x6

    goto/16 :goto_7

    :sswitch_1
    const-string/jumbo v13, "rfs"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xc

    goto/16 :goto_7

    :sswitch_2
    const-string/jumbo v13, "tt"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v13, v20

    goto/16 :goto_7

    :sswitch_3
    const-string/jumbo v13, "tp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x4

    goto/16 :goto_7

    :sswitch_4
    const-string/jumbo v13, "tf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x7

    goto/16 :goto_7

    :sswitch_5
    const-string/jumbo v13, "tc"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x9

    goto/16 :goto_7

    :sswitch_6
    const-string/jumbo v13, "tb"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x8

    goto/16 :goto_7

    :sswitch_7
    const-string/jumbo v13, "rt"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xb

    goto/16 :goto_7

    :sswitch_8
    const-string/jumbo v13, "rp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xa

    goto/16 :goto_7

    :sswitch_9
    const-string/jumbo v13, "rf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xd

    goto :goto_7

    :sswitch_a
    const-string/jumbo v13, "rc"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xf

    goto :goto_7

    :sswitch_b
    const-string/jumbo v13, "rb"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xe

    goto :goto_7

    :sswitch_c
    const-string/jumbo v13, "pu"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v13, v19

    goto :goto_7

    :sswitch_d
    const-string/jumbo v13, "pp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x3

    goto :goto_7

    :sswitch_e
    const-string/jumbo v13, "t"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x10

    goto :goto_7

    :sswitch_f
    const-string/jumbo v13, "r"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x11

    goto :goto_7

    :sswitch_10
    const-string/jumbo v13, "m"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_7

    :sswitch_11
    const-string v13, "d"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move v13, v10

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v13, -0x1

    :goto_7
    packed-switch v13, :pswitch_data_0

    const/16 v17, 0x3

    const/16 v20, 0x4

    const-string v13, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v0

    const-string v0, "Unknown attribute in \'op\' tag: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_0
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    goto :goto_8

    :pswitch_1
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    goto :goto_8

    :pswitch_2
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v20

    goto :goto_8

    :pswitch_3
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x4

    aput-wide v18, v13, v20

    goto :goto_8

    :pswitch_4
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v17, 0x3

    aput-wide v18, v13, v17

    goto :goto_8

    :pswitch_5
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    aput-wide v22, v13, v19

    goto :goto_8

    :pswitch_6
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    goto :goto_8

    :pswitch_7
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v16, 0x0

    aput-wide v18, v13, v16

    goto :goto_8

    :pswitch_8
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v20

    nop

    :goto_8
    move/from16 v24, v0

    const/16 v17, 0x3

    const/16 v20, 0x4

    goto/16 :goto_a

    :pswitch_9
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x4

    aput-wide v18, v13, v20

    nop

    move/from16 v24, v0

    const/16 v17, 0x3

    goto :goto_a

    :pswitch_a
    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v17, 0x3

    aput-wide v18, v13, v17

    goto :goto_9

    :pswitch_b
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    aput-wide v21, v13, v19

    goto :goto_9

    :pswitch_c
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    goto :goto_9

    :pswitch_d
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v16, 0x0

    aput-wide v18, v13, v16

    goto :goto_9

    :pswitch_e
    const/16 v17, 0x3

    const/16 v20, 0x4

    iput-object v11, v8, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    goto :goto_9

    :pswitch_f
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    goto :goto_9

    :pswitch_10
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    goto :goto_9

    :pswitch_11
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    nop

    :goto_9
    move/from16 v24, v0

    :goto_a
    add-int/lit8 v9, v9, -0x1

    move/from16 v11, v17

    move/from16 v13, v20

    move/from16 v0, v24

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_9
    move/from16 v24, v0

    iget-object v0, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    if-nez v0, :cond_a

    new-instance v4, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v4, v3, v15, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v0, v4

    iget-object v4, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v4, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v4, v8}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto :goto_b

    :cond_b
    move/from16 v24, v0

    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <pkg>: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_b
    goto :goto_c

    :cond_c
    move/from16 v24, v0

    :goto_c
    move/from16 v0, v24

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_d
    move/from16 v24, v0

    :goto_d
    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v4, v1, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_11
        0x6d -> :sswitch_10
        0x72 -> :sswitch_f
        0x74 -> :sswitch_e
        0xe00 -> :sswitch_d
        0xe05 -> :sswitch_c
        0xe30 -> :sswitch_b
        0xe31 -> :sswitch_a
        0xe34 -> :sswitch_9
        0xe3e -> :sswitch_8
        0xe42 -> :sswitch_7
        0xe6e -> :sswitch_6
        0xe6f -> :sswitch_5
        0xe72 -> :sswitch_4
        0xe7c -> :sswitch_3
        0xe80 -> :sswitch_2
        0x1b8bf -> :sswitch_1
        0x1c041 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_5

    :cond_1
    if-eq v4, v3, :cond_0

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "op"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "n"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "m"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v0, v5}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v5

    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v8, :cond_3

    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    :cond_3
    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_4
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_5
    return-void
.end method

.method public removeUser(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-virtual {v2, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeUidsForUserLocked(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v14, "resetAllModes"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v1, -0x1

    if-eqz v8, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    move v10, v1

    invoke-virtual {v7, v6, v5, v10}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    add-int/lit8 v2, v2, -0x1

    move-object v11, v1

    :goto_1
    move v1, v2

    if-ltz v1, :cond_12

    :try_start_2
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    iget v13, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_2

    if-ne v10, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    goto/16 :goto_7

    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    add-int/lit8 v14, v13, -0x1

    :goto_3
    if-ltz v14, :cond_6

    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-gtz v16, :cond_3

    const/4 v12, 0x0

    :try_start_3
    iput-object v12, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    goto/16 :goto_12

    :cond_3
    :goto_4
    :try_start_4
    iget v12, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    array-length v4, v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v19, v3

    move-object v3, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v4, :cond_4

    :try_start_5
    aget-object v16, v12, v11

    move-object/from16 v20, v16

    move/from16 v21, v4

    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v22, v5

    :try_start_6
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v23, v6

    move-object/from16 v6, v20

    :try_start_7
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    move-object v3, v4

    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v5, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move-object v1, v3

    move/from16 v16, v6

    move/from16 v19, v22

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    move-object v1, v3

    move/from16 v19, v5

    move/from16 v16, v6

    goto/16 :goto_d

    :cond_4
    move/from16 v22, v5

    move/from16 v23, v6

    move-object v11, v3

    goto :goto_6

    :cond_5
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v19

    move/from16 v5, v22

    move/from16 v6, v23

    const/4 v4, -0x1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    :goto_7
    :try_start_8
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_7

    goto/16 :goto_c

    :cond_7
    const/4 v3, -0x1

    if-eq v9, v3, :cond_8

    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v9, v3, :cond_8

    goto/16 :goto_c

    :cond_8
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v17, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_9
    if-ltz v13, :cond_d

    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_c

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v24, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    if-eq v15, v0, :cond_b

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v0, 0x1

    const/16 v17, 0x1

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v25, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    move-object/from16 v26, v3

    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v5

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-static {v11, v15, v0, v6, v3}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v3, v0

    :try_start_9
    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v11, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    invoke-static {v3, v0, v5, v6, v11}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    invoke-virtual {v14}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_a
    move-object v11, v3

    move/from16 v0, v25

    goto :goto_b

    :cond_b
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    goto :goto_a

    :cond_c
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    :goto_a
    move/from16 v0, v24

    :goto_b
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    goto :goto_9

    :cond_d
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    :try_start_a
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_e
    nop

    move/from16 v0, v24

    move-object/from16 v3, v26

    goto/16 :goto_8

    :cond_f
    move-object/from16 v26, v3

    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_10
    if-eqz v17, :cond_11

    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_11
    :goto_c
    add-int/lit8 v2, v1, -0x1

    move/from16 v5, v22

    move/from16 v6, v23

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    :goto_d
    goto/16 :goto_12

    :cond_12
    move/from16 v22, v5

    move/from16 v23, v6

    if-eqz v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v1, v11

    :goto_e
    move/from16 v19, v22

    move/from16 v16, v23

    goto/16 :goto_12

    :cond_13
    :goto_f
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_11
    move v15, v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_14

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/AppOpsService$ChangeRec;

    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v3, v6, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    move-object v2, v7

    move-object/from16 v18, v3

    move-object v3, v13

    move-object/from16 v28, v0

    move-object v0, v5

    move/from16 v19, v22

    move-object/from16 v5, v16

    move-object/from16 v20, v6

    move/from16 v16, v23

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, v15, 0x1

    move-object/from16 v0, v28

    goto :goto_11

    :cond_14
    move-object/from16 v28, v0

    move/from16 v19, v22

    move/from16 v16, v23

    goto :goto_10

    :cond_15
    move/from16 v19, v22

    move/from16 v16, v23

    return-void

    :catchall_6
    move-exception v0

    move/from16 v19, v22

    move/from16 v16, v23

    move-object v1, v11

    goto :goto_12

    :catchall_7
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    :goto_12
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_12
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_3

    new-instance v1, Lcom/android/server/AppOpsService$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    iput p4, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    if-eqz p5, :cond_2

    array-length v2, p5

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p5, v3

    if-eqz v4, :cond_1

    iget-object v5, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    if-ne p1, v0, :cond_1

    if-ne p4, v1, :cond_1

    move v0, p4

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move p4, v2

    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenCompat: setMode set old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p2, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v3, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v3, p4, :cond_8

    iput p4, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_4
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v3, v4

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    :cond_5
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_6
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    if-ne p4, v4, :cond_7

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p0

    move-object v4, v0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setUidMode(III)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    monitor-enter p0

    :try_start_0
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    const/4 v12, 0x0

    if-nez v1, :cond_1

    if-ne v9, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v2, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v2, v8}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v1, v2

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v2, :cond_2

    if-eq v9, v0, :cond_6

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    if-ne v9, v0, :cond_4

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_5

    iput-object v12, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_5
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_6
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_1
    iget-object v0, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v3, v1

    move v1, v11

    :goto_2
    if-ge v1, v2, :cond_8

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v5, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-nez v3, :cond_7

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v6

    :cond_7
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_8

    :cond_8
    move-object v1, v3

    :cond_9
    :try_start_3
    array-length v2, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v1

    move-object v1, v0

    move v0, v11

    :goto_3
    if-ge v0, v2, :cond_d

    :try_start_4
    aget-object v3, v13, v0

    iget-object v4, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v1, v4

    if-eqz v1, :cond_c

    if-nez v14, :cond_a

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v4

    :cond_a
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v5, v11

    :goto_4
    if-ge v5, v4, :cond_c

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$ModeCallback;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    if-nez v15, :cond_b

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v11

    invoke-virtual {v14, v6, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v14

    goto/16 :goto_8

    :cond_d
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v14, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/AppOpsService$ModeCallback;

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    if-nez v15, :cond_f

    iget-object v6, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    move-object v2, v7

    move-object v3, v11

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v1, 0x0

    :goto_6
    move v6, v1

    if-ge v6, v12, :cond_10

    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v2, v7

    move-object v3, v11

    move-object v8, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, v17, 0x1

    move/from16 v8, p2

    goto :goto_6

    :cond_10
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p2

    const/4 v12, 0x0

    goto :goto_5

    :cond_11
    return-void

    :catchall_2
    move-exception v0

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 9

    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x55

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {v1, v2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    if-nez v4, :cond_0

    return v0

    :cond_0
    move-object/from16 v5, p1

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {v1, v3, v4, v0, v6}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    invoke-direct {v1, v7, v2, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    monitor-exit p0

    return v0

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    iget-object v10, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v12, 0x3

    if-eqz v11, :cond_5

    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_5

    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v11

    if-eqz v11, :cond_4

    if-eqz p5, :cond_3

    if-eq v11, v12, :cond_4

    :cond_3
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v0, v6

    monitor-exit p0

    return v11

    :cond_4
    goto :goto_1

    :cond_5
    if-eq v9, v2, :cond_6

    invoke-direct {v1, v7, v9, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v11

    goto :goto_0

    :cond_6
    move-object v11, v8

    :goto_0
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v13

    if-eqz v13, :cond_8

    if-eqz p5, :cond_7

    if-eq v13, v12, :cond_8

    :cond_7
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v6

    monitor-exit p0

    return v13

    :cond_8
    :goto_1
    iget v11, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-nez v11, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    aput-wide v13, v11, v12

    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v13, 0x0

    aput-wide v13, v11, v12

    const/4 v11, -0x1

    iput v11, v8, Lcom/android/server/AppOpsService$Op;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v11, p4

    :try_start_1
    invoke-direct {v1, v2, v3, v11, v0}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    goto :goto_2

    :cond_9
    move-object/from16 v11, p4

    :goto_2
    iget v12, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    add-int/2addr v12, v0

    iput v12, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    add-int/2addr v12, v0

    iput v12, v10, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit p0

    return v6

    :catchall_0
    move-exception v0

    move-object/from16 v11, p4

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 12

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v7

    :cond_0
    const/4 v9, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_3

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v10, v1

    new-instance v11, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    array-length v2, p1

    :goto_0
    if-ge v9, v2, :cond_4

    aget v3, p1, v9

    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v1, p1

    move-object/from16 v9, p2

    const/4 v10, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, -0x1

    const/16 v2, 0x54

    invoke-static {v1, v13, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p4, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    if-eq v1, v13, :cond_1

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move v14, v1

    goto/16 :goto_1

    :cond_1
    move v0, v1

    :goto_0
    move v14, v0

    :try_start_1
    iget-object v0, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    if-nez v0, :cond_2

    new-instance v15, Lcom/android/server/AppOpsService$ModeCallback;

    move-object v1, v15

    move-object v2, v8

    move-object/from16 v3, p4

    move v4, v10

    move/from16 v5, p3

    move v6, v11

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AppOpsService$ModeCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    move-object v0, v15

    iget-object v1, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v14, v13, :cond_4

    iget-object v1, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_3

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    iget-object v2, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v9, :cond_6

    iget-object v1, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_5

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    iget-object v2, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-nez v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/AppOpsService$ActiveCallback;->destroy()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ModeCallback;->unlinkToDeath()V

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->clear()V

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_0
    iget-object v4, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v10, 0x2000

    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    goto :goto_2

    :catch_0
    move-exception v8

    :goto_2
    :try_start_2
    iget-object v8, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v7, v8, :cond_2

    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pruning old package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": new uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat()V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mGetOnlineConfigRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/AppOpsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    new-instance v2, Lcom/android/server/AppOpsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/AppOpsService$4;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public uidRemoved(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDefaultForScreenCompat()V
    .locals 4

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->loadSystemAppList()V

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->resetScreenCompatConfig()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    sget-object v1, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateDefaultForScreenCompat(Ljava/lang/String;I)V
    .locals 6

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    sget v1, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    sget v1, Lcom/android/server/AppOpsService;->MODE_FULL:I

    :goto_1
    if-ne v1, v2, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_6

    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenCompat: updateDefaultForScreenCompat pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " caller:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v3, 0x46

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_7

    const-string v2, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenCompat: updateDefaultForScreenCompat set mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, p2, p1, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    :goto_2
    return-void
.end method

.method public updateDefaultForScreenCompatUser(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppOps"

    const-string v2, "ScreenCompat: updateDefaultForScreenCompat failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    sget-object v2, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v2, v2, p2

    if-eqz v1, :cond_7

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-eq v3, v2, :cond_7

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    iput v2, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-lt v2, v4, :cond_3

    const/4 v4, 0x2

    if-gt v2, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v5, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    :goto_0
    goto :goto_1

    :cond_1
    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    goto :goto_3

    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    :cond_4
    :goto_3
    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    if-eqz v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v0

    :goto_4
    if-ltz v6, :cond_7

    iget-object v7, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual {v7}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    sub-int/2addr v8, v0

    :goto_5
    if-ltz v8, :cond_6

    invoke-virtual {v7, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    iget v10, v9, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lez v10, :cond_5

    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v3

    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v2

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 26

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v3, v0

    nop

    nop

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    :try_start_3
    iget-object v9, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_1

    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_1

    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "n"

    iget v11, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    const-string/jumbo v15, "op"

    invoke-interface {v5, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "n"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "m"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "op"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v7, "uid"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_a

    :cond_2
    if-eqz v4, :cond_f

    const/4 v7, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    :goto_2
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_e

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v10, :cond_4

    if-eqz v8, :cond_3

    :try_start_5
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "n"

    invoke-interface {v5, v0, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    :try_start_6
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v1, v10, v11, v12, v12}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v10, :cond_5

    :try_start_8
    const-string/jumbo v11, "p"

    iget-boolean v12, v10, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v12, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    goto/16 :goto_8

    :cond_5
    :try_start_9
    const-string/jumbo v11, "p"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    move v11, v12

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_d

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "n"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eq v14, v15, :cond_6

    :try_start_b
    const-string/jumbo v14, "m"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_6
    move v14, v12

    :goto_5
    const/4 v15, 0x6

    if-ge v14, v15, :cond_9

    :try_start_c
    invoke-virtual {v13, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastTimeFor(I)J

    move-result-wide v15

    move-wide/from16 v17, v15

    const-wide/16 v15, 0x0

    move-object/from16 v19, v13

    move-wide/from16 v12, v17

    cmp-long v17, v12, v15

    if-eqz v17, :cond_7

    sget-object v17, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    aget-object v15, v17, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v20, v4

    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v5, v4, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    :cond_7
    move-object/from16 v20, v4

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTimeFor(I)J

    move-result-wide v15

    move-wide/from16 v21, v15

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v21

    const-wide/16 v15, 0x0

    cmp-long v4, v8, v15

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move/from16 v25, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    :cond_8
    move/from16 v25, v6

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object v13, v0

    move-object/from16 v4, v20

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-object v0, v13

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v4

    if-eqz v4, :cond_a

    const-string v6, "d"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v9, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    const-string/jumbo v8, "pu"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v5, v12, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    const-string/jumbo v9, "pp"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    const-string/jumbo v9, "op"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v20

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v20

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    :goto_8
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_e
    move-object/from16 v20, v4

    move/from16 v25, v6

    if-eqz v8, :cond_10

    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    :cond_f
    move-object/from16 v20, v4

    move/from16 v25, v6

    :cond_10
    :goto_9
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    :goto_a
    :try_start_10
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_b
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_c
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0
.end method
