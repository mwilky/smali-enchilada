.class public Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestToggleWiFiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RequestToggleWiFiActivity"

.field private static final STATE_DISABLE:I = 0x3

.field private static final STATE_DISABLING:I = 0x4

.field private static final STATE_ENABLE:I = 0x1

.field private static final STATE_ENABLING:I = 0x2

.field private static final STATE_UNKNOWN:I = -0x1

.field private static final TOGGLE_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastUpdateState:I

.field private final mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

.field private mState:I

.field private final mTimeoutCommand:Ljava/lang/Runnable;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$RequestToggleWiFiActivity$PwZgoHTFFBr3iYEQbWj0vZPfHpw;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$RequestToggleWiFiActivity$PwZgoHTFFBr3iYEQbWj0vZPfHpw;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    :cond_0
    return-void
.end method

.method private scheduleToggleTimeout()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unscheduleToggleTimeout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateUi()V
    .locals 8

    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120536

    const v4, 0x7f1200f1

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f121511

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f1213ed

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f121505

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f1213ee

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setupAlert()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    nop

    :goto_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    :goto_1
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

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x794f8bbe

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v0, 0x12ecabe9

    if-eq v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_2
    const-string v4, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_2

    :pswitch_1
    iput v6, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    nop

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v2, "RequestToggleWiFiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find app with package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->register()V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_3

    :pswitch_4
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :goto_0
    goto :goto_3

    :pswitch_7
    packed-switch v0, :pswitch_data_3

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_1

    :pswitch_a
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    :goto_1
    goto :goto_3

    :pswitch_b
    packed-switch v0, :pswitch_data_4

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :pswitch_d
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    :goto_2
    nop

    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->unregister()V

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unscheduleToggleTimeout()V

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
