.class Lcom/android/server/am/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskChangeNotificationController$MainHandler;,
        Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    }
.end annotation


# static fields
.field private static final LOG_STACK_STATE_MSG:I = 0x1

.field private static final NOTIFY_ACTIVITY_DISMISSING_DOCKED_STACK_MSG:I = 0x7

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED_MSG:I = 0x12

.field private static final NOTIFY_ACTIVITY_PINNED_LISTENERS_MSG:I = 0x3

.field private static final NOTIFY_ACTIVITY_REQUESTED_ORIENTATION_CHANGED_LISTENERS:I = 0xc

.field private static final NOTIFY_ACTIVITY_UNPINNED_LISTENERS_MSG:I = 0x11

.field private static final NOTIFY_FORCED_RESIZABLE_MSG:I = 0x6

.field private static final NOTIFY_PINNED_ACTIVITY_RESTART_ATTEMPT_LISTENERS_MSG:I = 0x4

.field private static final NOTIFY_PINNED_STACK_ANIMATION_ENDED_LISTENERS_MSG:I = 0x5

.field private static final NOTIFY_PINNED_STACK_ANIMATION_STARTED_LISTENERS_MSG:I = 0x10

.field private static final NOTIFY_TASK_ADDED_LISTENERS_MSG:I = 0x8

.field private static final NOTIFY_TASK_DESCRIPTION_CHANGED_LISTENERS_MSG:I = 0xb

.field private static final NOTIFY_TASK_MOVED_TO_FRONT_LISTENERS_MSG:I = 0xa

.field private static final NOTIFY_TASK_PROFILE_LOCKED_LISTENERS_MSG:I = 0xe

.field private static final NOTIFY_TASK_REMOVAL_STARTED_LISTENERS:I = 0xd

.field private static final NOTIFY_TASK_REMOVED_LISTENERS_MSG:I = 0x9

.field private static final NOTIFY_TASK_SNAPSHOT_CHANGED_LISTENERS_MSG:I = 0xf

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_DELAY:I = 0x64

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_MSG:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$YDk9fnP8p2R_OweiU9rSGaheQeE;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$YDk9fnP8p2R_OweiU9rSGaheQeE;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$K9kaSj6_p5pzfyRh9i93xiC9T3s;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$K9kaSj6_p5pzfyRh9i93xiC9T3s;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$IPqcWaWHIL4UnZEYJhAve5H7KmE;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$IPqcWaWHIL4UnZEYJhAve5H7KmE;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$bteC39aBoUFmJeWf3dk2BX1xZ6k;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$bteC39aBoUFmJeWf3dk2BX1xZ6k;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$grn5FwM5ofT98exjpSvrJhz-e7s;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$grn5FwM5ofT98exjpSvrJhz-e7s;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$O2UuB84QeMcZfsRHiuiFSTwwWHY;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$O2UuB84QeMcZfsRHiuiFSTwwWHY;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$a1rNhcYLIsgLeCng0_osaimgbqE;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$a1rNhcYLIsgLeCng0_osaimgbqE;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$3Qs2duXCIzQ1W3uon7k5iYUmOy8;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$3Qs2duXCIzQ1W3uon7k5iYUmOy8;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$YVmGNqlD5lzQCN49aly8kWWz1po;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$YVmGNqlD5lzQCN49aly8kWWz1po;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$iVGVcx2Ee37igl6ebl_htq_WO9o;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$5xMsPmGMl_n12-F1m2p9OBuXGrA;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$5xMsPmGMl_n12-F1m2p9OBuXGrA;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$sw023kIrIGSeLwYwKC0ioKX3zEA;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$sw023kIrIGSeLwYwKC0ioKX3zEA;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$d9Depygk2x7Vm_pl1RSk9_SSjvA;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$d9Depygk2x7Vm_pl1RSk9_SSjvA;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$Ln9-GPCsfrWRlWBInk_Po_Uv-_U;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$Ln9-GPCsfrWRlWBInk_Po_Uv-_U;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$FNdlAMBaRkRCa4U_pc-uamD9VHw;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$FNdlAMBaRkRCa4U_pc-uamD9VHw;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    iput-object p1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/am/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method private forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static synthetic lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationStarted()V

    return-void
.end method

.method static synthetic lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V

    return-void
.end method

.method static synthetic lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V

    return-void
.end method

.method static synthetic lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method static synthetic lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(II)V

    return-void
.end method

.method static synthetic lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return-void
.end method

.method static synthetic lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    return-void
.end method

.method static synthetic lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(I)V

    return-void
.end method

.method static synthetic lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method static synthetic lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    return-void
.end method

.method static synthetic lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method static synthetic lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    return-void
.end method

.method static synthetic lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt(Z)V

    return-void
.end method


# virtual methods
.method notifyActivityDismissingDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyActivityForcedResizable(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyActivityPinned(Lcom/android/server/am/ActivityRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyActivityRequestedOrientationChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyActivityUnpinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyPinnedActivityRestartAttempt(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyPinnedStackAnimationEnded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyPinnedStackAnimationStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskCreated(ILandroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskMovedToFront(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskProfileLocked(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskRemovalStarted(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyTaskStackChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
