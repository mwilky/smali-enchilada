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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    .line 61
    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 65
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    .line 69
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    .line 70
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 71
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 74
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 75
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 78
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenForCallState()V

    .line 79
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenFor3rdCallState()V

    .line 83
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$1;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$1;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    const-class v2, Lcom/android/server/OemSceneGameModePanel;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
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
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 47
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 47
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/OemSceneGameModePanel;Lcom/android/server/OemSceneGameModeView;)Lcom/android/server/OemSceneGameModeView;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;
    .param p1, "x1"    # Lcom/android/server/OemSceneGameModeView;

    .line 47
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModePanel;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 47
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneGameModePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 47
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private listenFor3rdCallState()V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_notifications_3rd_calls_uid"

    .line 286
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/OemSceneGameModePanel$7;-><init>(Lcom/android/server/OemSceneGameModePanel;Landroid/os/Handler;)V

    .line 285
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 299
    return-void
.end method

.method private listenForCallState()V
    .locals 3

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$6;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$6;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    return-void
.end method

.method private showSimple()V
    .locals 10

    .line 137
    new-instance v0, Lcom/android/server/OemSceneGameModeMessage;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const v3, 0x5090007

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/android/server/OemSceneGameModeMessage;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 138
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 141
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 142
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 143
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "GameModeMsg"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    .line 148
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    .line 149
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    .line 150
    return-void
.end method

.method private startHideAnimator()V
    .locals 1

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    .line 231
    return-void
.end method

.method private startHideAnimator(Z)V
    .locals 3
    .param p1, "delayed"    # Z

    .line 234
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$4;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$4;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$5;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$5;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 258
    return-void
.end method

.method private startShownAnimator()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$2;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$3;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$3;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 1

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    .line 263
    return-void
.end method

.method public hide()V
    .locals 1

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    .line 212
    return-void
.end method

.method public hide(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 215
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 216
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 217
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 218
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 227
    :cond_1
    :goto_0
    return-void
.end method

.method protected isDocked()Z
    .locals 7

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "isDocked":Z
    const/4 v1, 0x0

    move v2, v1

    .line 109
    .local v2, "dockMinimized":Z
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

    .line 110
    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isMinimizedDock()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 113
    goto :goto_1

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "OemSceneGameModePanel"

    const-string v6, "Remote exception while checking dock status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v4    # "e":Landroid/os/RemoteException;
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

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    .line 102
    return-void
.end method

.method public show(Z)V
    .locals 4
    .param p1, "animateView"    # Z

    .line 119
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 121
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 122
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 123
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

    .line 127
    .local v0, "toShowDetail":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanel;->isDocked()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 129
    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    goto :goto_1

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->showSimple()V

    .line 134
    :goto_1
    return-void
.end method

.method protected showDetail(Z)V
    .locals 10
    .param p1, "animateView"    # Z

    .line 155
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 156
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 159
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 160
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 171
    const-string v1, "OemSceneGameModePanel"

    const-string v2, "Error while checking rotation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 167
    :pswitch_0
    const v1, 0x5090004

    .line 168
    .local v1, "layoutId":I
    goto :goto_0

    .line 163
    .end local v1    # "layoutId":I
    :pswitch_1
    const v1, 0x5090006

    .line 164
    .restart local v1    # "layoutId":I
    nop

    .line 172
    :goto_0
    nop

    .line 175
    new-instance v2, Lcom/android/server/OemSceneGameModeDialog;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p0, p1}, Lcom/android/server/OemSceneGameModeDialog;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 176
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7f6

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 179
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 180
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 181
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "GameModeMsg"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    .line 186
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
