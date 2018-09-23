.class public Lcom/oneplus/settings/opfinger/OPScreenListener;
.super Ljava/lang/Object;
.source "OPScreenListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;,
        Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

.field private mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;-><init>(Lcom/oneplus/settings/opfinger/OPScreenListener;Lcom/oneplus/settings/opfinger/OPScreenListener$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/OPScreenListener;)Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    return-object v0
.end method

.method private getScreenState()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    invoke-interface {v1}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;->onScreenOn()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    invoke-interface {v1}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;->onScreenOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public begin(Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPScreenListener;->registerListener()V

    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPScreenListener;->getScreenState()V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
