.class public Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
.super Landroid/app/Activity;
.source "OPPowerOffPromptActivity.java"


# static fields
.field private static final MSG_CANCEL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OPPowerOffPromptActivity"

.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private mResume:Z

.field private mShutdownDialog:Landroid/app/ProgressDialog;

.field private mStatus:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 33
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 36
    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 189
    const/16 v1, 0x3c

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 190
    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    .line 195
    new-instance v0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/settings/ui/OPTimerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
    .param p1, "x1"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->cancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$610(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 27
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 271
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 272
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x20000001

    const-string v2, "TimepowerWakeLock"

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 278
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 145
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->dismiss()V

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->finish()V

    .line 148
    return-void
.end method

.method private dismissShutdownDialog()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    :cond_0
    return-void
.end method

.method private raiseScreenUp()V
    .locals 3

    .line 291
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const-string v1, "TimepowerWakeLock"

    const v2, 0x30000006

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 300
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 286
    :cond_0
    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 130
    :cond_1
    return-void

    .line 125
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 172
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->releaseWakeLock()V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 55
    :cond_0
    const v0, 0x180480

    .line 59
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 65
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->raiseScreenUp()V

    .line 69
    new-instance v1, Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPTimerDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 71
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120cce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->setTitle(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120ccd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 73
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120ccc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    const/16 v5, 0x3c

    .line 76
    invoke-virtual {v1, v2, v4, v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 101
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120ccb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    const/16 v5, 0xa

    .line 101
    invoke-virtual {v1, v2, v4, v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 114
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->show()V

    .line 115
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    const/4 v2, -0x1

    iget v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->setButtonType(IIZ)V

    .line 117
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    .line 119
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    const v2, 0x1040612

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mShutdownDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 121
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->dismissShutdownDialog()V

    .line 187
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    const-string v0, "time"

    iget v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 160
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->acquireWakeLock()V

    .line 162
    return-void
.end method
