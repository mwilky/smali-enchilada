.class public Landroid/arch/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# static fields
.field static final TIMEOUT_MS:J = 0x2bcL
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;


# instance fields
.field private mDelayedPauseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

.field private mPauseSent:Z

.field private final mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

.field private mResumedCounter:I

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 56
    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 59
    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 62
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 64
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 152
    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/ProcessLifecycleOwner;

    .line 49
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchPauseIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/ProcessLifecycleOwner;

    .line 49
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Landroid/arch/lifecycle/ProcessLifecycleOwner;)Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/ProcessLifecycleOwner;

    .line 49
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    return-object v0
.end method

.method private dispatchPauseIfNeeded()V
    .locals 2

    .line 138
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 140
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 142
    :cond_0
    return-void
.end method

.method private dispatchStopIfNeeded()V
    .locals 2

    .line 145
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 149
    :cond_0
    return-void
.end method

.method public static get()Landroid/arch/lifecycle/LifecycleOwner;
    .locals 1

    .line 98
    sget-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    sget-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V

    .line 103
    return-void
.end method


# virtual methods
.method activityPaused()V
    .locals 4

    .line 126
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 127
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_0
    return-void
.end method

.method activityResumed()V
    .locals 2

    .line 114
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 115
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-ne v0, v1, :cond_1

    .line 116
    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    :cond_1
    :goto_0
    return-void
.end method

.method activityStarted()V
    .locals 2

    .line 106
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 107
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 111
    :cond_0
    return-void
.end method

.method activityStopped()V
    .locals 1

    .line 133
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 134
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    .line 135
    return-void
.end method

.method attach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    .line 156
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 158
    .local v0, "app":Landroid/app/Application;
    new-instance v1, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;

    invoke-direct {v1, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 174
    return-void
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method
