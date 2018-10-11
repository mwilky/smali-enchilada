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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/doze/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$1;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/doze/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$2;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/doze/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$3;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/doze/DozeScrimController$4;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeScrimController$4;-><init>(Lcom/oneplus/doze/DozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/doze/DozeParameters;

    invoke-direct {v0, p1}, Lcom/oneplus/doze/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    const v0, 0x7f090035

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/ScrimView;

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mScrimView:Lcom/oneplus/doze/ScrimView;

    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/doze/DozeScrimController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/doze/DozeScrimController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/doze/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/doze/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/doze/DozeScrimController;)Lcom/oneplus/doze/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/doze/DozeScrimController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/doze/DozeScrimController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/doze/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/doze/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/oneplus/doze/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/doze/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->pulseFinished()V

    :cond_0
    return-void
.end method

.method private pulseFinished()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseFinished()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseStarted()V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeScrimController;->postPulseInFinished()V

    :cond_0
    return-void
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mScrimView:Lcom/oneplus/doze/ScrimView;

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/doze/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public abortPulsingWithAnim()V
    .locals 4

    const-string v0, "DozeScrimController"

    const-string v1, "abortPulsingWithAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public continuePulse(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/oneplus/doze/DozeScrimController;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v2, p1}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isDozing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    return v0
.end method

.method public isPulsing()Z
    .locals 1

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

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    const v3, 0x3e99999a    # 0.3f

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/oneplus/doze/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    goto :goto_0

    :goto_1
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/doze/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public pulse(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 2

    if-eqz p1, :cond_2

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

    :cond_0
    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseCallback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    iput p2, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseReason:I

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pulseOutImmediatly()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->cancelPulsing()V

    return-void
.end method

.method public setDozing(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/doze/DozeScrimController;->cancelPulsing()V

    :goto_0
    return-void
.end method
