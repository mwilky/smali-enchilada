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

    .line 89
    const-string/jumbo v0, "persist.vendor.qti.inputopts.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->OPTS_INPUT:Z

    .line 105
    const-wide/16 v2, 0xa

    sput-wide v2, Landroid/view/Choreographer;->sFrameDelay:J

    .line 108
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 140
    const-string v0, "debug.choreographer.vsync"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 144
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 149
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 162
    sput v1, Landroid/view/Choreographer;->mJunkTimes:I

    .line 163
    sput v1, Landroid/view/Choreographer;->mJunkLevel:I

    .line 164
    const/4 v0, 0x0

    sput-object v0, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    .line 165
    sput-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    .line 194
    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 239
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
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-string/jumbo v0, "persist.sys.jankmanager.state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Choreographer;->mJankManagerState:Z

    .line 168
    const-string/jumbo v0, "persist.sys.jankmanager.levellow"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLevelLowValue:I

    .line 169
    const-string/jumbo v0, "persist.sys.jankmanager.levelhigh"

    const/16 v2, 0xf

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLevelHighValue:I

    .line 170
    const-string/jumbo v0, "persist.sys.jankmanager.long"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLongValue:I

    .line 171
    const-string/jumbo v0, "persist.sys.jankmanager.levelsystrace"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/Choreographer;->mJankLevelTraceValue:I

    .line 172
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/Choreographer;->mJankLongStartTime:J

    .line 176
    iput-wide v2, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    .line 178
    iput v0, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    .line 181
    const/16 v2, 0x64

    iput v2, p0, Landroid/view/Choreographer;->mWindowType:I

    .line 198
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 217
    iput v1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 218
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    .line 219
    iput v2, p0, Landroid/view/Choreographer;->mMotionEventType:I

    .line 220
    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 221
    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 233
    new-instance v2, Landroid/view/FrameInfo;

    invoke-direct {v2}, Landroid/view/FrameInfo;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 278
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 279
    new-instance v2, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v2, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 280
    sget-boolean v2, Landroid/view/Choreographer;->USE_VSYNC:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 281
    new-instance v2, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v2, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_0

    .line 282
    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 283
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 285
    const v2, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v4

    div-float/2addr v2, v4

    float-to-long v4, v2

    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 287
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 288
    nop

    .line 288
    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 289
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v4, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v4, p0, v3}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v4, v2, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    .end local v0    # "i":I
    :cond_1
    const-string v0, "debug.hwui.fps_divisor"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/view/Choreographer$1;

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0
    .param p0, "x0"    # Landroid/view/Choreographer;

    .line 84
    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$400(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1
    .param p0, "x0"    # Landroid/view/Choreographer;

    .line 84
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .line 84
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # Landroid/view/Choreographer$CallbackRecord;

    .line 84
    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    .line 348
    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    .line 367
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    .line 309
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method public static getMainThreadInstance()Landroid/view/Choreographer;
    .locals 1

    .line 334
    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 2

    .line 296
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 298
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .locals 1

    .line 316
    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    .line 1023
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
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1028
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1029
    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    move-object v0, v2

    goto :goto_0

    .line 1031
    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1032
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1034
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 1035
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1036
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1037
    return-object v0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 487
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 489
    .local v1, "now":J
    add-long v3, v1, p4

    .line 490
    .local v3, "dueTime":J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 492
    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    .line 493
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 496
    .local v5, "msg":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 497
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 498
    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v5, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 500
    .end local v1    # "now":J
    .end local v3    # "dueTime":J
    .end local v5    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1042
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1043
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1044
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1045
    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    .line 341
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    .line 342
    .local v0, "old":Landroid/view/Choreographer;
    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 343
    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    .line 344
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 534
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 536
    :cond_0
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleFrameLocked(J)V
    .locals 7
    .param p1, "now"    # J

    .line 651
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_4

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 653
    sget-boolean v1, Landroid/view/Choreographer;->OPTS_INPUT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 654
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

    .line 656
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    iget v1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 670
    :pswitch_0
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 671
    iget v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    if-nez v1, :cond_0

    .line 672
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 673
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 674
    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 675
    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 676
    monitor-exit p0

    return-void

    .line 681
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 682
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 683
    goto :goto_0

    .line 660
    :pswitch_2
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 661
    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    if-nez v1, :cond_0

    .line 662
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 663
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 664
    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 665
    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 666
    monitor-exit p0

    return-void

    .line 687
    .end local v1    # "msg":Landroid/os/Message;
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

    .line 689
    :cond_1
    :goto_1
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_3

    .line 697
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 698
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_2

    .line 700
    :cond_2
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 701
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 702
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 703
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 705
    :cond_3
    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    sget-wide v5, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v3, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 710
    .local v3, "nextFrameTime":J
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 711
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 712
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 715
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "nextFrameTime":J
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

    .line 1019
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 1020
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .line 387
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 388
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4
    .param p0, "delayMillis"    # J

    .line 413
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 414
    .local v0, "frameDelay":J
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
    .param p1, "callbackType"    # I
    .param p2, "frameTimeNanos"    # J

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 931
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 935
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 936
    .local v4, "now":J
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    .line 938
    .local v0, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_0

    .line 939
    monitor-exit v3

    return-void

    .line 941
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 951
    const/4 v7, 0x3

    const-wide/16 v8, 0x8

    if-ne v2, v7, :cond_1

    .line 952
    sub-long v12, v4, p2

    .line 953
    .local v12, "jitterNanos":J
    const-string v7, "jitterNanos"

    long-to-int v14, v12

    invoke-static {v8, v9, v7, v14}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 954
    const-wide/16 v14, 0x2

    iget-wide v8, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    mul-long/2addr v14, v8

    cmp-long v7, v12, v14

    if-ltz v7, :cond_1

    .line 955
    iget-wide v7, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v7, v12, v7

    iget-wide v14, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    add-long/2addr v7, v14

    .line 965
    .local v7, "lastFrameOffset":J
    sub-long v9, v4, v7

    .line 966
    .end local p2    # "frameTimeNanos":J
    .local v9, "frameTimeNanos":J
    :try_start_1
    iput-wide v9, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    .end local v4    # "now":J
    .end local v7    # "lastFrameOffset":J
    .end local v12    # "jitterNanos":J
    move-wide v10, v9

    goto :goto_0

    .end local v0    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :catchall_0
    move-exception v0

    move-wide v10, v9

    goto :goto_3

    .end local v9    # "frameTimeNanos":J
    .restart local v0    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .restart local p2    # "frameTimeNanos":J
    :cond_1
    move-wide/from16 v10, p2

    .end local p2    # "frameTimeNanos":J
    .local v10, "frameTimeNanos":J
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v3, v0

    .line 972
    .end local v0    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .local v3, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    .line 973
    iget v0, v1, Landroid/view/Choreographer;->mDoframeTimes:I

    add-int/2addr v0, v6

    iput v0, v1, Landroid/view/Choreographer;->mDoframeTimes:I

    .line 977
    :cond_2
    const/4 v4, 0x0

    :try_start_3
    sget-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 978
    move-object v0, v3

    .local v0, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_1
    if-eqz v0, :cond_3

    .line 984
    invoke-virtual {v0, v10, v11}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 978
    iget-object v5, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v5

    goto :goto_1

    .line 987
    .end local v0    # "c":Landroid/view/Choreographer$CallbackRecord;
    :cond_3
    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 988
    :try_start_4
    iput-boolean v4, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 990
    :cond_4
    iget-object v0, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 991
    .local v0, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v3}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 992
    move-object v3, v0

    .line 993
    .end local v0    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-nez v3, :cond_4

    .line 994
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 995
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 996
    nop

    .line 997
    return-void

    .line 994
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 987
    :catchall_2
    move-exception v0

    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 988
    :try_start_6
    iput-boolean v4, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 990
    :goto_2
    iget-object v4, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 991
    .local v4, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v3}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 992
    move-object v3, v4

    .line 993
    .end local v4    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v3, :cond_5

    goto :goto_2

    .line 994
    :cond_5
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 995
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 994
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 969
    .end local v3    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .end local v10    # "frameTimeNanos":J
    .restart local p2    # "frameTimeNanos":J
    :catchall_4
    move-exception v0

    move-wide/from16 v10, p2

    .end local p2    # "frameTimeNanos":J
    .restart local v10    # "frameTimeNanos":J
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
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I

    move-object/from16 v1, p0

    .line 727
    iget-boolean v0, v1, Landroid/view/Choreographer;->mJankManagerState:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 728
    sput v2, Landroid/view/Choreographer;->mJunkLevel:I

    .line 730
    :cond_0
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 731
    :try_start_0
    iget-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_1

    .line 732
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 796
    :catchall_0
    move-exception v0

    move-wide/from16 v8, p1

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 741
    :cond_1
    move-wide/from16 v4, p1

    .line 742
    .local v4, "intendedFrameTimeNanos":J
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 743
    .local v6, "startNanos":J
    sub-long v10, v6, p1

    .line 744
    .local v10, "jitterNanos":J
    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    cmp-long v0, v10, v12

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-ltz v0, :cond_6

    .line 745
    move-object/from16 v16, v3

    :try_start_3
    iget-wide v2, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    div-long v2, v10, v2

    .line 746
    .local v2, "skippedFrames":J
    sget v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_2

    .line 747
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

    .line 752
    :cond_2
    iget-boolean v0, v1, Landroid/view/Choreographer;->mJankManagerState:Z

    if-eqz v0, :cond_5

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    if-eq v0, v14, :cond_5

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    const/16 v12, 0x64

    if-ge v0, v12, :cond_5

    .line 753
    iget v0, v1, Landroid/view/Choreographer;->mJankLevelHighValue:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_4

    .line 754
    const/4 v0, 0x2

    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    .line 755
    iget v0, v1, Landroid/view/Choreographer;->mJankLevelTraceValue:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_3

    .line 756
    sput v14, Landroid/view/Choreographer;->mJunkLevel:I

    goto :goto_0

    .line 758
    :cond_3
    const/4 v0, 0x2

    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    goto :goto_0

    .line 760
    :cond_4
    iget v0, v1, Landroid/view/Choreographer;->mJankLevelLowValue:I

    int-to-long v12, v0

    cmp-long v0, v2, v12

    if-ltz v0, :cond_5

    .line 761
    sput v15, Landroid/view/Choreographer;->mJunkLevel:I

    .line 765
    :cond_5
    :goto_0
    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v12, v10, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 773
    .local v12, "lastFrameOffset":J
    sub-long v2, v6, v12

    .end local v12    # "lastFrameOffset":J
    .end local p1    # "frameTimeNanos":J
    .local v2, "frameTimeNanos":J
    goto :goto_1

    .line 796
    .end local v2    # "frameTimeNanos":J
    .end local v4    # "intendedFrameTimeNanos":J
    .end local v6    # "startNanos":J
    .end local v10    # "jitterNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_1
    move-exception v0

    goto/16 :goto_3

    .line 776
    .restart local v4    # "intendedFrameTimeNanos":J
    .restart local v6    # "startNanos":J
    .restart local v10    # "jitterNanos":J
    :cond_6
    move-object/from16 v16, v3

    move-wide/from16 v2, p1

    .end local p1    # "frameTimeNanos":J
    .restart local v2    # "frameTimeNanos":J
    :goto_1
    :try_start_4
    iget-wide v8, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_7

    .line 781
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 782
    monitor-exit v16

    return-void

    .line 785
    :cond_7
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    if-le v0, v15, :cond_8

    .line 786
    iget-wide v12, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    sub-long v12, v2, v12

    .line 787
    .local v12, "timeSinceVsync":J
    iget-wide v14, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    int-to-long v8, v0

    mul-long/2addr v14, v8

    cmp-long v0, v12, v14

    if-gez v0, :cond_8

    const-wide/16 v8, 0x0

    cmp-long v0, v12, v8

    if-lez v0, :cond_8

    .line 788
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 789
    monitor-exit v16

    return-void

    .line 793
    .end local v12    # "timeSinceVsync":J
    :cond_8
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/view/FrameInfo;->setVsync(JJ)V

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 795
    iput-wide v2, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 796
    .end local v4    # "intendedFrameTimeNanos":J
    .end local v10    # "jitterNanos":J
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide v4, v6

    .line 799
    .end local v6    # "startNanos":J
    .local v4, "startNanos":J
    const-wide/16 v6, 0x8

    :try_start_5
    const-string v0, "Choreographer#doFrame"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 800
    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 802
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    .line 803
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 805
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markAnimationsStart()V

    .line 806
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 808
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    .line 809
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 811
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 813
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 814
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 815
    nop

    .line 819
    const-string v0, "doframeadd"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 820
    iget-boolean v0, v1, Landroid/view/Choreographer;->mJankManagerState:Z

    if-eqz v0, :cond_d

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    const/4 v8, 0x3

    if-eq v0, v8, :cond_d

    iget v0, v1, Landroid/view/Choreographer;->mWindowType:I

    const/16 v8, 0x64

    if-ge v0, v8, :cond_d

    .line 821
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 822
    .local v8, "myendNanos":J
    sub-long v10, v8, v4

    .line 823
    .local v10, "myjitterNanos":J
    long-to-int v0, v10

    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    long-to-int v12, v12

    if-le v0, v12, :cond_b

    .line 826
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

    .line 828
    const/4 v0, 0x0

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    .line 829
    iput-wide v8, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    goto :goto_2

    .line 830
    :cond_9
    iget-wide v12, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-nez v0, :cond_a

    .line 831
    iput-wide v8, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    .line 835
    :cond_a
    :goto_2
    sget v0, Landroid/view/Choreographer;->mJunkTimes:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    .line 838
    :cond_b
    sget v0, Landroid/view/Choreographer;->mJunkTimes:I

    iget v12, v1, Landroid/view/Choreographer;->mJankLongValue:I

    if-le v0, v12, :cond_c

    .line 839
    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 840
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

    .line 844
    sget-object v0, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sget-object v12, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    sget v13, Landroid/view/Choreographer;->mJunkTimes:I

    const/4 v14, 0x2

    invoke-static {v0, v12, v14, v13}, Lcom/oneplus/jankmanager/JankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    .line 846
    const/4 v0, 0x0

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    .line 847
    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    .line 848
    iput-wide v8, v1, Landroid/view/Choreographer;->mJankLongStartTime:J

    .line 852
    :cond_c
    sget v0, Landroid/view/Choreographer;->mJunkLevel:I

    if-lez v0, :cond_d

    .line 853
    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 854
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

    .line 858
    sget-object v0, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sget-object v12, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    sget v13, Landroid/view/Choreographer;->mJunkLevel:I

    const/4 v14, 0x1

    invoke-static {v0, v12, v14, v13}, Lcom/oneplus/jankmanager/JankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    .line 860
    const/4 v0, 0x0

    sput v0, Landroid/view/Choreographer;->mJunkTimes:I

    .line 861
    sput v0, Landroid/view/Choreographer;->mJunkLevel:I

    .line 865
    .end local v8    # "myendNanos":J
    .end local v10    # "myjitterNanos":J
    :cond_d
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 874
    return-void

    .line 813
    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 814
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 796
    .end local v4    # "startNanos":J
    :catchall_3
    move-exception v0

    move-wide v8, v2

    goto :goto_4

    .end local v2    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    .end local p1    # "frameTimeNanos":J
    .local v8, "frameTimeNanos":J
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
    .param p1, "callbackType"    # I

    .line 1008
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1011
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 1015
    .end local v1    # "now":J
    :cond_0
    monitor-exit v0

    .line 1016
    return-void

    .line 1015
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doScheduleVsync()V
    .locals 2

    .line 1000
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1001
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_0

    .line 1002
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1004
    :cond_0
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 430
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    .line 422
    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4

    .line 617
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    .line 629
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_1

    .line 634
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

    .line 631
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastFrameTimeNanos()J
    .locals 3

    .line 645
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
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

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 449
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 450
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 469
    if-eqz p2, :cond_1

    .line 472
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 476
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 477
    return-void

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 551
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 552
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .line 567
    if-eqz p1, :cond_0

    .line 571
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 573
    return-void

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 518
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 522
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 523
    return-void

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 584
    if-eqz p1, :cond_0

    .line 588
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 589
    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFPSDivisor(I)V
    .locals 0
    .param p1, "divisor"    # I

    .line 718
    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 719
    :cond_0
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 720
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    .line 721
    return-void
.end method

.method public setMotionEventInfo(II)V
    .locals 1
    .param p1, "motionEventType"    # I
    .param p2, "touchMoveNum"    # I

    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    iput p2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    .line 325
    iput p1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    .line 326
    monitor-exit p0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setViewTitle(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewTitle"    # Ljava/lang/String;
    .param p3, "drawTime"    # J
    .param p5, "windowType"    # I

    .line 881
    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    sput v1, Landroid/view/Choreographer;->mJunkTimes:I

    .line 884
    :cond_0
    sput-object p1, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    .line 885
    sput-object p2, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    .line 886
    iput p5, p0, Landroid/view/Choreographer;->mWindowType:I

    .line 888
    iget-wide v2, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    sub-long v2, p3, v2

    long-to-float v0, v2

    const v2, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 889
    iput-wide p3, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    .line 890
    iput v1, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    .line 891
    iput v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    .line 892
    return-void

    .line 896
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

    .line 898
    iget v0, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    iget v3, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    sub-int/2addr v0, v3

    .line 899
    .local v0, "nodrawFrames":I
    const/4 v3, 0x0

    .line 902
    .local v3, "nodrawLevel":I
    iget v4, p0, Landroid/view/Choreographer;->mJankLevelHighValue:I

    if-lt v0, v4, :cond_3

    .line 903
    iget v4, p0, Landroid/view/Choreographer;->mJankLevelTraceValue:I

    if-lt v0, v4, :cond_2

    .line 904
    const/4 v3, 0x3

    goto :goto_0

    .line 906
    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    .line 908
    :cond_3
    iget v4, p0, Landroid/view/Choreographer;->mJankLevelLowValue:I

    if-lt v0, v4, :cond_4

    .line 909
    const/4 v3, 0x1

    .line 911
    :cond_4
    :goto_0
    sget-object v4, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    if-eqz v4, :cond_5

    if-lez v3, :cond_5

    .line 912
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

    .line 916
    sget-object v4, Landroid/view/Choreographer;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/view/Choreographer;->mViewTitle:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/oneplus/jankmanager/JankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    .line 918
    iput-wide p3, p0, Landroid/view/Choreographer;->mJankLastDrawFrameTime:J

    .line 919
    iput v1, p0, Landroid/view/Choreographer;->mDoframeTimes:I

    .line 920
    iput v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    goto :goto_1

    .line 922
    :cond_5
    iget v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/Choreographer;->mDrawframeTimes:I

    .line 925
    .end local v0    # "nodrawFrames":I
    .end local v3    # "nodrawLevel":I
    :cond_6
    :goto_1
    return-void
.end method
