.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final JANK_LEVEL_HIGH:I = 0x2

.field private static final JANK_LEVEL_LOW:I = 0x1

.field private static final JANK_LEVEL_TRACE:I = 0x3

.field private static final JANK_TYPE_NODRAW:I = 0x3

.field private static final JANK_TYPE_ONCE:I = 0x1

.field private static final JANK_TYPE_TOTAL:I = 0x2

.field private static final MOTION_EVENT_ACTION_CANCEL:I = 0x3

.field private static final MOTION_EVENT_ACTION_DOWN:I = 0x0

.field private static final MOTION_EVENT_ACTION_MOVE:I = 0x2

.field private static final MOTION_EVENT_ACTION_UP:I = 0x1

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final OPTS_INPUT:Z

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static mJunkLevel:I

.field private static mJunkTimes:I

.field private static volatile mMainInstance:Landroid/view/Choreographer;

.field private static mPackageName:Ljava/lang/String;

.field private static mViewTitle:Ljava/lang/String;

.field private static volatile sFrameDelay:J

.field private static final sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mConsumedDown:Z

.field private mConsumedMove:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private mDoframeTimes:I

.field private mDrawframeTimes:I

.field private mFPSDivisor:I

.field mFrameInfo:Landroid/view/FrameInfo;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mJankLastDrawFrameTime:J

.field private mJankLevelHighValue:I

.field private mJankLevelLowValue:I

.field private mJankLevelTraceValue:I

.field private mJankLongStartTime:J

.field private mJankLongValue:I

.field private mJankManagerState:Z

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mMotionEventType:I

.field private mTouchMoveNum:I

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "persist.vendor.qti.inputopts.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->OPTS_INPUT:Z

    const-wide/16 v2, 0xa

    sput-wide v2, Landroid/view/Choreographer;->sFrameDelay:J

    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    const-string v0, "debug.choreographer.vsync"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    const-string v0, "debug.choreographer.skipwarning"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    sput v1, Landroid/view/Choreographer;->mJunkTimes:I

    sput v1, Landroid/view/Choreographer;->mJunkLevel:I

    const/4 v0, 0x0

    sput-object v0, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sput-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    const-string v0, "input"

    const-string v1, "animation"

    const-string/jumbo v2, "traversal"

    const-string v3, "commit"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.sys.jankmanager.state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Choreographer;->mJankManagerState:Z

    const-string/jumbo v0, "persist.sys.jankmanager.levellow"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLevelLowValue:I

    const-string/jumbo v0, "persist.sys.jankmanager.levelhigh"

    const/16 v2, 0xf

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLevelHighValue:I

    const-string/jumbo v0, "persist.sys.jankmanager.long"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLongValue:I

    const-string/jumbo v0, "persist.sys.jankmanager.levelsystrace"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLevelTraceValue:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/Choreographer;->mJankLongStartTime:J

    iput-wide v2, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    iput v0, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    const/16 v2, 0x64

    iput v2, p0, Landroid/view/Choreographer;->mWindowType:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    iput v1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput v2, p0, Landroid/view/Choreographer;->mMotionEventType:I

    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    new-instance v2, Landroid/view/FrameInfo;

    invoke-direct {v2}, Landroid/view/FrameInfo;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    new-instance v2, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v2, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    sget-boolean v2, Landroid/view/Choreographer;->USE_VSYNC:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v2, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const v2, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v4

    div-float/2addr v2, v4

    float-to-long v4, v2

    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    nop

    :goto_1
    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v4, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v4, p0, v3}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "debug.hwui.fps_divisor"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$400(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method private dispose()V
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method public static getMainThreadInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    return-object v0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 7

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v3, v1, p4

    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iput p1, v5, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v5, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

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

.method private scheduleFrameLocked(J)V
    .locals 7

    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    sget-boolean v1, Landroid/view/Choreographer;->OPTS_INPUT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleFrameLocked-mMotionEventType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/Choreographer;->mMotionEventType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mTouchMoveNum:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mConsumedDown:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mConsumedMove:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    iget v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    monitor-exit p0

    return-void

    :pswitch_1
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    sget-wide v5, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v3, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_4
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scheduleVsyncLocked()V
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0

    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    sub-long v2, p0, v0

    :goto_0
    return-wide v2
.end method


# virtual methods
.method doCallbacks(IJ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    const/4 v7, 0x3

    const-wide/16 v8, 0x8

    if-ne v2, v7, :cond_1

    sub-long v12, v4, p2

    const-string v7, "jitterNanos"

    long-to-int v14, v12

    invoke-static {v8, v9, v7, v14}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-wide/16 v14, 0x2

    iget-wide v8, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    mul-long/2addr v14, v8

    cmp-long v7, v12, v14

    if-ltz v7, :cond_1

    iget-wide v7, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v7, v12, v7

    iget-wide v14, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    add-long/2addr v7, v14

    sub-long v9, v4, v7

    :try_start_1
    iput-wide v9, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v10, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide v10, v9

    goto :goto_3

    :cond_1
    move-wide/from16 v10, p2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v3, v0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    iget v0, v1, Landroid/view/Choreographer;->mDoframeTimes:I

    add-int/2addr v0, v6

    iput v0, v1, Landroid/view/Choreographer;->mDoframeTimes:I

    :cond_2
    const/4 v4, 0x0

    :try_start_3
    sget-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v10, v11}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    iget-object v5, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v5

    goto :goto_1

    :cond_3
    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iput-boolean v4, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :cond_4
    iget-object v0, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v3}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    move-object v3, v0

    if-nez v3, :cond_4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    iput-boolean v4, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :goto_2
    iget-object v4, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v3}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    move-object v3, v4

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    move-wide/from16 v10, p2

    :goto_3
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method doFrame(JI)V
    .locals 18

    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/view/Choreographer;->mJankManagerState:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sput v2, Landroid/view/Choreographer;->mJunkLevel:I

    :cond_0
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v8, p1

    move-object/from16 v16, v3

    goto/16 :goto_4

    :cond_1
    move-wide/from16 v4, p1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v10, v6, p1

    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    cmp-long v0, v10, v12

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-ltz v0, :cond_6

    move-object/from16 v16, v3

    :try_start_3
    iget-wide v2, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    div-long v2, v10, v2

    sget v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_2

    const-string v0, "Choreographer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipped "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, v1, Landroid/view/Choreographer;->mJankManagerState:Z

    if-eqz v0, :cond_5

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    if-eq v0, v14, :cond_5

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    const/16 v12, 0x64

    if-ge v0, v12, :cond_5

    iget v0, v1, Landroid/view/Choreographer;->mJankLevelHighValue:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_4

    const/4 v0, 0x2

    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    iget v0, v1, Landroid/view/Choreographer;->mJankLevelTraceValue:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_3

    sput v14, Landroid/view/Choreographer;->mJunkLevel:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    goto :goto_0

    :cond_4
    iget v0, v1, Landroid/view/Choreographer;->mJankLevelLowValue:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_5

    sput v15, Landroid/view/Choreographer;->mJunkLevel:I

    :cond_5
    :goto_0
    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v12, v10, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sub-long v2, v6, v12

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v3

    move-wide/from16 v2, p1

    :goto_1
    :try_start_4
    iget-wide v8, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v16

    return-void

    :cond_7
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    if-le v0, v15, :cond_8

    iget-wide v12, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    sub-long v12, v2, v12

    iget-wide v14, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    int-to-long v8, v0

    mul-long/2addr v14, v8

    cmp-long v0, v12, v14

    if-gez v0, :cond_8

    const-wide/16 v8, 0x0

    cmp-long v0, v12, v8

    if-lez v0, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v16

    return-void

    :cond_8
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/view/FrameInfo;->setVsync(JJ)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    iput-wide v2, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide v4, v6

    const-wide/16 v6, 0x8

    :try_start_5
    const-string v0, "Choreographer#doFrame"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markAnimationsStart()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const-string v0, "doframeadd"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v0, v1, Landroid/view/Choreographer;->mJankManagerState:Z

    if-eqz v0, :cond_d

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    const/4 v8, 0x3

    if-eq v0, v8, :cond_d

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    const/16 v8, 0x64

    if-ge v0, v8, :cond_d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v10, v8, v4

    long-to-int v0, v10

    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    long-to-int v12, v12

    if-le v0, v12, :cond_b

    iget-wide v12, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_9

    iget-wide v12, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    sub-long v12, v8, v12

    long-to-float v0, v12

    const v12, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v12

    const/high16 v12, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v12

    if-lez v0, :cond_9

    const/4 v0, 0x0

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    iput-wide v8, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    goto :goto_2

    :cond_9
    iget-wide v12, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-nez v0, :cond_a

    iput-wide v8, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    :cond_a
    :goto_2
    sget v0, Landroid/view/Choreographer;->mJunkTimes:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    :cond_b
    sget v0, Landroid/view/Choreographer;->mJunkTimes:I

    iget v12, v1, Landroid/view/Choreographer;->mJankLongValue:I

    if-le v0, v12, :cond_c

    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "OnePlusJankManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Chor uploadMDM JANK_TYPE_TOTAL mViewTitle = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "--- jank mJunkTimes = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Landroid/view/Choreographer;->mJunkTimes:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sget-object v12, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    sget v13, Landroid/view/Choreographer;->mJunkTimes:I

    const/4 v14, 0x2

    invoke-static {v0, v12, v14, v13}, Lcom/oneplus/jankmanager/JankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    iput-wide v8, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    :cond_c
    sget v0, Landroid/view/Choreographer;->mJunkLevel:I

    if-lez v0, :cond_d

    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "OnePlusJankManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Chor uploadMDM JANK_TYPE_ONCE mViewTitle = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "--- jank level = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Landroid/view/Choreographer;->mJunkLevel:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sget-object v12, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    sget v13, Landroid/view/Choreographer;->mJunkLevel:I

    const/4 v14, 0x1

    invoke-static {v0, v12, v14, v13}, Lcom/oneplus/jankmanager/JankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    :cond_d
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_3
    move-exception v0

    move-wide v8, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    move-wide/from16 v8, p1

    :goto_4
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_4
.end method

.method doScheduleCallback(I)V
    .locals 4

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

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

.method doScheduleVsync()V
    .locals 2

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

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

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastFrameTimeNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFPSDivisor(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    return-void
.end method

.method public setMotionEventInfo(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput p1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setViewTitle(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput v1, Landroid/view/Choreographer;->mJunkTimes:I

    :cond_0
    sput-object p1, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sput-object p2, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    iput p5, p0, Landroid/view/Choreographer;->mWindowType:I

    iget-wide v2, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    sub-long v2, p3, v2

    long-to-float v0, v2

    const v2, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput-wide p3, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    iput v1, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    iput v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/view/Choreographer;->mJankManagerState:Z

    if-eqz v0, :cond_6

    iget-wide v2, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/view/Choreographer;->mWindowType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    iget v0, p0, Landroid/view/Choreographer;->mWindowType:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_6

    iget v0, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    iget v3, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    iget v4, p0, Landroid/view/Choreographer;->mJankLevelHighValue:I

    if-lt v0, v4, :cond_3

    iget v4, p0, Landroid/view/Choreographer;->mJankLevelTraceValue:I

    if-lt v0, v4, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    iget v4, p0, Landroid/view/Choreographer;->mJankLevelLowValue:I

    if-lt v0, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_0
    sget-object v4, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    if-eqz v4, :cond_5

    if-lez v3, :cond_5

    const-string v4, "OnePlusJankManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Chor uploadMDM JANK_TYPE_NODRAW mViewTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--- jank level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/oneplus/jankmanager/JankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    iput-wide p3, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    iput v1, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    iput v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    :cond_6
    :goto_1
    return-void
.end method
