.class public Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;
.super Landroid/app/Activity;
.source "OPShutdownActivity.java"


# static fields
.field private static final DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"

.field public static sCountDownTimer:Landroid/os/CountDownTimer;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mSecondsCountdown:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    .line 19
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;
    .param p1, "x1"    # I

    .line 19
    iput p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    .line 19
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    .line 19
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->fireShutDown()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    .line 19
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->cancelCountDownTimer()V

    return-void
.end method

.method private cancelCountDownTimer()V
    .locals 2

    .line 96
    sget-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ShutdownActivity"

    const-string v1, "cancel sCountDownTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 101
    :cond_0
    return-void
.end method

.method private fireShutDown()V
    .locals 3

    .line 152
    const-string v0, "sys.debug.watchdog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 32
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ShutdownActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen is on ? ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 36
    .local v1, "win":Landroid/view/Window;
    const/high16 v2, 0x480000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 39
    const/16 v2, 0xb

    .line 40
    .local v2, "countSeconds":I
    const/16 v3, 0x3e8

    .line 41
    .local v3, "millisSeconds":I
    if-nez p1, :cond_0

    .line 42
    const/16 v4, 0xb

    iput v4, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    goto :goto_0

    .line 44
    :cond_0
    const-string v4, "lefttime"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    .line 45
    const-string v4, "message"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    .line 47
    :goto_0
    new-instance v4, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;

    iget v5, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v7, v5

    const-wide/16 v9, 0x3e8

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;JJ)V

    sput-object v4, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 79
    const-string v4, "ShutdownActivity"

    const-string v5, "ShutdonwActivity onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v4, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v4, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->finish()V

    goto :goto_1

    .line 84
    :cond_1
    sget-object v4, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 86
    :goto_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .line 105
    const-string v0, "ShutdownActivity"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "power off"

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 112
    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 121
    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 147
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "lefttime"

    iget v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "message"

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
