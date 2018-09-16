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

    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 45
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    .line 52
    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    .line 34
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->beginShutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private beginShutdown()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "TimepowerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->finish()V

    .line 185
    return-void
.end method

.method private lightScreen()V
    .locals 4

    .line 223
    const v0, 0x780480

    .line 229
    .local v0, "flags":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 231
    .local v1, "win_params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 232
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 234
    iget-boolean v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 198
    const-string v0, "PowerOffPromptActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 127
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->beginShutdown()V

    .line 130
    goto :goto_0

    .line 132
    :pswitch_1
    const/4 v0, 0x0

    .line 134
    .local v0, "isMissedRequest":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "isMissedRequest"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 136
    const-string v2, "isMissedRequest"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 140
    :cond_0
    if-eqz v0, :cond_1

    .line 141
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->finish()V

    .line 147
    .end local v0    # "isMissedRequest":Z
    .end local v1    # "intent":Landroid/content/Intent;
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
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.Shutdown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 87
    iput-boolean v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    goto :goto_0

    .line 88
    :cond_0
    const-string v1, "com.android.settings.ShutdownWhenLocked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iput-boolean v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    .line 92
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    if-eqz v1, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->lightScreen()V

    .line 96
    :cond_2
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 100
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const v4, 0x30000001

    const-string v5, "TimepowerWakeLock"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    .local v4, "params":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v5, "Power off"

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 112
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 114
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    const v5, 0x7f121006

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->setupAlert()V

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 121
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 151
    const-string v0, "PowerOffPromptActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.SET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .line 189
    const-string v0, "PowerOffPromptActivity"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    return-void
.end method
