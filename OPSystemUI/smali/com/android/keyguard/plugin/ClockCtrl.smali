.class public Lcom/android/keyguard/plugin/ClockCtrl;
.super Ljava/lang/Object;
.source "ClockCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;,
        Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/keyguard/plugin/ClockCtrl;


# instance fields
.field private mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

.field private mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mScreenON:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/plugin/ClockCtrl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/plugin/ClockCtrl;->handleNotifySchedule(Z)V

    return-void
.end method

.method private dispatchTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    invoke-interface {v0}, Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;->onTimeChanged()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/keyguard/plugin/ClockCtrl;
    .locals 2

    const-class v0, Lcom/android/keyguard/plugin/ClockCtrl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/keyguard/plugin/ClockCtrl;->mInstance:Lcom/android/keyguard/plugin/ClockCtrl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/plugin/ClockCtrl;

    invoke-direct {v1}, Lcom/android/keyguard/plugin/ClockCtrl;-><init>()V

    sput-object v1, Lcom/android/keyguard/plugin/ClockCtrl;->mInstance:Lcom/android/keyguard/plugin/ClockCtrl;

    :cond_0
    sget-object v1, Lcom/android/keyguard/plugin/ClockCtrl;->mInstance:Lcom/android/keyguard/plugin/ClockCtrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleNotifySchedule(Z)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    sub-long/2addr v4, v0

    const-string v2, "ClockCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " schedule next: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/high16 v3, 0x20000

    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/plugin/ClockCtrl;->dispatchTimeChanged()V

    :cond_1
    return-void
.end method

.method private startUpdate(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ClockCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/plugin/ClockCtrl;->dispatchTimeChanged()V

    :cond_1
    return-void
.end method

.method private stopUpdate(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ClockCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ClockCtrl thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    const-string v0, "ScreenOFF"

    invoke-direct {p0, v0}, Lcom/android/keyguard/plugin/ClockCtrl;->stopUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    const-string v0, "ScreenON"

    invoke-direct {p0, v0}, Lcom/android/keyguard/plugin/ClockCtrl;->startUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCtrl(Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    invoke-virtual {p0}, Lcom/android/keyguard/plugin/ClockCtrl;->getNonUILooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;-><init>(Lcom/android/keyguard/plugin/ClockCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-eqz p2, :cond_0

    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    :cond_0
    const-string v0, "startCtrl"

    invoke-direct {p0, v0}, Lcom/android/keyguard/plugin/ClockCtrl;->startUpdate(Ljava/lang/String;)V

    return-void
.end method
