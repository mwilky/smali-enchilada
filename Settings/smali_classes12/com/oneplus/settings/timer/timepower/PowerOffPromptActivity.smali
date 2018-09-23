.class public Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PowerOffPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$NewStylePowerOffPromptActivity;
    }
.end annotation


# static fields
.field static final ACTION_TIMER_SHUTDOWN:Ljava/lang/String; = "com.android.settings.Shutdown"

.field static final ACTION_TIMER_SHUTDOWN_LOCKED:Ljava/lang/String; = "com.android.settings.ShutdownWhenLocked"

.field private static final EXTRA_IS_MISSED_REQUEST:Ljava/lang/String; = "isMissedRequest"

.field private static final MSG_SHUTDOWN_NOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerOffPromptActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsCurrentLocked:Z

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private final mMoveToFrontRunnable:Ljava/lang/Runnable;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->beginShutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private beginShutdown()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "TimepowerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->finish()V

    return-void
.end method

.method private lightScreen()V
    .locals 4

    const v0, 0x780480

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    iget-boolean v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    const-string v0, "PowerOffPromptActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->beginShutdown()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isMissedRequest"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "isMissedRequest"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->finish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Shutdown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    goto :goto_0

    :cond_0
    const-string v1, "com.android.settings.ShutdownWhenLocked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->lightScreen()V

    :cond_2
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const v4, 0x30000001

    const-string v5, "TimepowerWakeLock"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string v5, "Power off"

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x7f120fff

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->setupAlert()V

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "PowerOffPromptActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.SET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    const-string v0, "PowerOffPromptActivity"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
