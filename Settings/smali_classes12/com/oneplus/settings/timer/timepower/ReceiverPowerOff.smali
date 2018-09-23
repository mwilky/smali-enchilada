.class public Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverPowerOff.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiverPowerOff"

.field private static mIsCalling:Z

.field private static mIsPoweroff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPowerOffPromptRunnable:Ljava/lang/Runnable;

.field private mPoweroffAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;-><init>(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isUsingTheme(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_is_using_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private rememberShutdownRequestMissed(Landroid/content/Context;)V
    .locals 3

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_shutdown_request_missed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.android.settings.Shutdown"

    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "com.android.settings.ShutdownWhenLocked"

    :cond_1
    const-string v3, "com.android.settings.POWER_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    nop

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "trigger_time"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0xea60

    cmp-long v3, v8, v10

    if-ltz v3, :cond_2

    return-void

    :cond_2
    sget-boolean v3, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    if-eqz v3, :cond_3

    sput-boolean v4, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    return-void

    :cond_3
    const-string v3, "phone want to turn off now !"

    invoke-static {p1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->isUsingTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ReceiverPowerOff"

    const-string v4, "time to shutdown when changing theme, so delay shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->rememberShutdownRequestMissed(Landroid/content/Context;)V

    return-void

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    sput-boolean v4, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    :cond_7
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sput-boolean v5, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    sget-boolean v4, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    if-eqz v4, :cond_8

    sput-boolean v5, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_0
    return-void
.end method
