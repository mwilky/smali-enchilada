.class Lcom/android/systemui/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeCustomMessage()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBouncerPromptReason()I
    .locals 9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    move v2, v5

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v3

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v7

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v8

    if-nez v8, :cond_4

    return v3

    :cond_4
    if-eqz v5, :cond_5

    and-int/lit8 v3, v7, 0x10

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    return v3

    :cond_5
    if-eqz v5, :cond_6

    and-int/lit8 v3, v7, 0x2

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    return v3

    :cond_6
    if-eqz v1, :cond_7

    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    return v3

    :cond_7
    if-eqz v5, :cond_8

    and-int/lit8 v3, v7, 0x8

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    return v3

    :cond_8
    return v4
.end method

.method public isScreenOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZI)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardDonePending(ZI)V
    .locals 4

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->changePanelAlpha(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2202(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardGone()V
    .locals 1

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBouncerVisiblityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSecondaryDisplayShowingChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZIZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public playTrustedSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetKeyguard()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    return-void
.end method

.method public startPowerKeyLaunchCamera()V
    .locals 9

    const-string v0, "KeyguardViewMediator"

    const-string v1, "startPowerKeyLaunchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    const/4 v8, 0x0

    move-object v1, v7

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public tryToStartFaceLockFromBouncer()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method
