.class public Lcom/oneplus/aod/DisplayViewManager;
.super Ljava/lang/Object;
.source "DisplayViewManager.java"


# static fields
.field public static final STATE_MAIN:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_NOTIFICATION:I = 0x2

.field public static final STATE_THREE_KEY:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/oneplus/doze/DozeParameters;

.field private mHandler:Landroid/os/Handler;

.field private mMainView:Lcom/oneplus/aod/AodMain;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResetViewRunnable:Ljava/lang/Runnable;

.field private mScrimView:Landroid/view/View;

.field private mSingleNotificationView:Landroid/view/ViewGroup;

.field private mState:I

.field private mThreeKeyview:Landroid/view/ViewGroup;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DisplayViewManager"

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/DisplayViewManager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/DisplayViewManager$1;-><init>(Lcom/oneplus/aod/DisplayViewManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mResetViewRunnable:Ljava/lang/Runnable;

    const v1, 0x7f09009d

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/AodMain;

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    const v1, 0x7f090118

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    const v1, 0x7f090135

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    const v1, 0x7f090035

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mScrimView:Landroid/view/View;

    iput-object p1, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/doze/DozeParameters;

    invoke-direct {v1, p1}, Lcom/oneplus/doze/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "DisplayViewManager"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/DisplayViewManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private updateView()V
    .locals 4

    const-string v0, "DisplayViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mScrimView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mScrimView:Landroid/view/View;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/oneplus/aod/Utils;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mSingleNotificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mThreeKeyview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    return v0
.end method

.method public postDelayResetViewState()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mResetViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/DisplayViewManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mResetViewRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetMainViewPosition()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodMain;->resetPosition()V

    return-void
.end method

.method public resetViewState()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isWakingUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DisplayViewManager"

    const-string v1, "resetViewState: don\'t reset view state during waking up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    invoke-direct {p0}, Lcom/oneplus/aod/DisplayViewManager;->updateView()V

    return-void
.end method

.method public setState(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DisplayViewManager"

    const-string v1, "setState: don\'t view set if not dozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isWakingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DisplayViewManager"

    const-string v1, "setState: don\'t view set if waking up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "DisplayViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/oneplus/aod/DisplayViewManager;->mState:I

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/DisplayViewManager;->updateView()V

    return-void
.end method
