.class Lcom/android/server/am/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAodShowing:Z

.field private mBeforeUnoccludeTransit:I

.field private mDismissalRequested:Z

.field private mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field private mKeyguardGoingAway:Z

.field private mKeyguardShowing:Z

.field private mOccluded:Z

.field private mSecondaryDisplayShowing:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mVisibilityTransactionDepth:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method

.method private convertTransitFlags(I)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_2
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleDismissKeyguard()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_0
    return-void
.end method

.method private handleOccludedChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->resolveOccludeTransit()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/am/OemSceneModeAmHelper;->handleShowOrOccludedChanged(Lcom/android/server/am/KeyguardController;ZZLcom/android/server/am/ActivityStackSupervisor;)V

    return-void
.end method

.method private resolveOccludeTransit()I
    .locals 3

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v1, 0x17

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v1

    :cond_1
    const/16 v0, 0x16

    return v0
.end method

.method private setKeyguardGoingAway(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    return-void
.end method

.method private updateKeyguardSleepToken()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "Keyguard"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_1
    :goto_0
    return-void
.end method

.method private visibilitiesUpdated()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_1
    if-ltz v6, :cond_4

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    iget v8, v5, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    nop

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v8, :cond_0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    :cond_0
    move v9, v2

    goto :goto_3

    :cond_1
    :goto_2
    move v9, v4

    :goto_3
    iput-boolean v9, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    :cond_2
    iget-object v8, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eq v2, v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleOccludedChanged()V

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, v1, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleDismissKeyguard()V

    :cond_7
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    return-void
.end method

.method canDismissKeyguard()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canShowWhileOccluded(ZZ)Z
    .locals 1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 4

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/am/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method endActivityVisibilityUpdate()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->visibilitiesUpdated()V

    :cond_0
    return-void
.end method

.method isKeyguardGoingAway()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeyguardLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeyguardOrAodShowing(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method isKeyguardShowing(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method keyguardGoingAway(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "keyguardGoingAway"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x14

    invoke-direct {p0, p1}, Lcom/android/server/am/KeyguardController;->convertTransitFlags(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->onKeyguardDone()V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->addStartingWindowsForVisibleActivities(Z)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    const-string/jumbo v3, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method setKeyguardShown(ZZI)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p3, v1, :cond_3

    return-void

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    iput p3, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    invoke-direct {p0, v2}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/am/OemSceneModeAmHelper;->handleShowOrOccludedChanged(Lcom/android/server/am/KeyguardController;ZZLcom/android/server/am/ActivityStackSupervisor;)V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
