.class public Lcom/oneplus/doze/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DozeScrimController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/oneplus/doze/DozeParameters;

.field private mDozing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private mScrimView:Lcom/oneplus/doze/ScrimView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainView"    # Landroid/view/ViewGroup;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/oneplus/doze/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$1;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Lcom/oneplus/doze/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$2;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Lcom/oneplus/doze/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$3;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lcom/oneplus/doze/DozeScrimController$4;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$4;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/oneplus/doze/DozeParameters;

    invoke-direct {v0, p1}, Lcom/oneplus/doze/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    .line 54
    const v0, 0x7f090035

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/ScrimView;

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mScrimView:Lcom/oneplus/doze/ScrimView;

    .line 55
    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/doze/DozeScrimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/doze/DozeScrimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    iget v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/doze/DozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/doze/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/doze/DozeScrimController;)Lcom/oneplus/doze/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/doze/DozeScrimController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/doze/DozeScrimController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/doze/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/doze/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # F
    .param p3, "x3"    # J
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # Ljava/lang/Runnable;

    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/oneplus/doze/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/doze/DozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeScrimController;

    .line 36
    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    .line 131
    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->pulseFinished()V

    .line 139
    :cond_0
    return-void
.end method

.method private pulseFinished()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    .line 153
    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 144
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeScrimController;->postPulseInFinished()V

    .line 146
    :cond_0
    return-void
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endRunnable"    # Ljava/lang/Runnable;

    .line 157
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mScrimView:Lcom/oneplus/doze/ScrimView;

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/doze/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method


# virtual methods
.method public abortPulsingWithAnim()V
    .locals 4

    .line 94
    const-string v0, "DozeScrimController"

    const-string v1, "abortPulsingWithAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

.method public continuePulse(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 206
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/oneplus/doze/DozeScrimController;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v2, p1}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    return-void
.end method

.method public isDozing()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    return v0
.end method

.method public isPulsing()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postPulseInFinished()V
    .locals 8

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x1

    .line 113
    .local v0, "pickupOrDoubleTap":Z
    const/4 v2, 0x1

    const v3, 0x3e99999a    # 0.3f

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/oneplus/doze/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 117
    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 113
    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    goto :goto_0

    .line 113
    :goto_1
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/doze/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 120
    .end local v0    # "pickupOrDoubleTap":Z
    :cond_1
    return-void
.end method

.method public pulse(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .line 71
    if-eqz p1, :cond_2

    .line 75
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getPSensorState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    .line 84
    iput p2, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseReason:I

    .line 86
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void

    .line 77
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 78
    return-void

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pulseOutImmediatly()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->cancelPulsing()V

    .line 107
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 1
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .line 59
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    .line 62
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->cancelPulsing()V

    .line 67
    :goto_0
    return-void
.end method
