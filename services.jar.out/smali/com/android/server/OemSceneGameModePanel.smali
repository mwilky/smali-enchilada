.class public Lcom/android/server/OemSceneGameModePanel;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"


# static fields
.field private static final ACTION_PHONE_STATE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final MESSAGE_ANIMATION_DURATION:J = 0x1f4L

.field private static final SHORT_DURATION_TIMEOUT:J = 0x1194L

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModePanel"

.field private static final UID_NO_3RD_CALLING:Ljava/lang/String; = "-1"


# instance fields
.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mWManager:Landroid/view/WindowManager;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerService:Landroid/view/IWindowManager;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenForCallState()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenFor3rdCallState()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$1;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$1;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    const-class v2, Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneGameModePanel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/OemSceneGameModePanel;Lcom/android/server/OemSceneGameModeView;)Lcom/android/server/OemSceneGameModeView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModePanel;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneGameModePanel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private listenFor3rdCallState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/OemSceneGameModePanel$7;-><init>(Lcom/android/server/OemSceneGameModePanel;Landroid/os/Handler;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private listenForCallState()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$6;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$6;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showSimple()V
    .locals 10

    new-instance v0, Lcom/android/server/OemSceneGameModeMessage;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const v3, 0x5090007

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/android/server/OemSceneGameModeMessage;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "GameModeMsg"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    return-void
.end method

.method private startHideAnimator()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    return-void
.end method

.method private startHideAnimator(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$4;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$4;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$5;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$5;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startShownAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$2;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$3;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$3;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    :cond_1
    :goto_0
    return-void
.end method

.method protected isDocked()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v0, v4

    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isMinimizedDock()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "OemSceneGameModePanel"

    const-string v6, "Remote exception while checking dock status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_panel_detail"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanel;->isDocked()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->showSimple()V

    :goto_1
    return-void
.end method

.method protected showDetail(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "OemSceneGameModePanel"

    const-string v2, "Error while checking rotation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const v1, 0x5090004

    goto :goto_0

    :pswitch_1
    const v1, 0x5090006

    nop

    :goto_0
    nop

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p0, p1}, Lcom/android/server/OemSceneGameModeDialog;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7f6

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "GameModeMsg"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
