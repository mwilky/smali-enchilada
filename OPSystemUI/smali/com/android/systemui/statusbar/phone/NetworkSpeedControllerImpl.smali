.class public Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NetworkSpeedController;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;,
        Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;,
        Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static ERTRY_POINT:I

.field private static HANDRED:I

.field private static TAG:Ljava/lang/String;

.field private static TEN:I

.field private static THOUSAND:I

.field private static UNIT_GB:Ljava/lang/String;

.field private static UNIT_KB:Ljava/lang/String;

.field private static UNIT_MB:Ljava/lang/String;

.field private static UPDATE_INTERVAL:I


# instance fields
.field private MSG_MAYBE_STOP_NETWORTSPEED:I

.field private MSG_UPDATE_NETWORTSPEED:I

.field private MSG_UPDATE_SHOW:I

.field private MSG_UPDATE_SPEED_ON_BG:I

.field private mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

.field private mBlockNetworkSpeed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

.field private mHotSpotEnable:Z

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsFirstLoad:Z

.field private final mNetworkSpeedStateCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkTraceState:Z

.field private mShow:Z

.field private mSpeed:Ljava/lang/String;

.field private mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkSpeedController"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    const/16 v0, 0x400

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    const-string v0, "K"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    const-string v0, "M"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    const-string v0, "G"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    const/16 v0, 0x7d1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mTimer:Ljava/util/Timer;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v2, "networkspeed"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    const v4, 0x7f0d01cd

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setText(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v2, "networkspeed"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "icon_blacklist"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->scheduleNextUpdate()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)[J
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->getTetherStats()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->formateSpeed(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->refreshSpeed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onShowStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    return-object v0
.end method

.method private divToFractionDigits(JJI)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "divisor shouldn\'t be 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Error"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-wide v1, p1

    div-long v3, v1, p3

    rem-long v5, v1, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-lez p5, :cond_1

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p5, :cond_1

    const-wide/16 v8, 0xa

    mul-long v1, v5, v8

    div-long v8, v1, p3

    rem-long v5, v1, p3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private formateSpeed(J)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v2

    const/4 v4, 0x0

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v5

    const/4 v4, 0x2

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_3

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_3

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_1

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_1
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_2

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_2

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_9

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_9

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_6

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_6

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    int-to-long v2, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_4

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v5, v5

    mul-long/2addr v5, v2

    cmp-long v5, p1, v5

    if-gez v5, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    :cond_4
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_5

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v5, v5

    mul-long/2addr v5, v2

    cmp-long v5, p1, v5

    if-gez v5, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_9

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v5, v5

    mul-long/2addr v5, v2

    cmp-long v5, p1, v5

    if-gez v5, :cond_9

    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    int-to-long v2, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_7

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v5, v5

    mul-long/2addr v5, v2

    cmp-long v5, p1, v5

    if-gez v5, :cond_7

    const/4 v4, 0x2

    goto :goto_0

    :cond_7
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_8

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v5, v5

    mul-long/2addr v5, v2

    cmp-long v5, p1, v5

    if-gez v5, :cond_8

    const/4 v4, 0x1

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_0
    move-object v5, p0

    move-wide v6, p1

    move-wide v8, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->divToFractionDigits(JJI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "/s "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getTetherStats()[J
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [J

    :try_start_0
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-wide v8, v7

    move-wide v6, v5

    move-object v5, v2

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    move-object v5, v10

    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v6, v10

    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aput-wide v6, v0, v3

    const/4 v2, 0x1

    aput-wide v8, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v0, v1

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method private isNetworkSpeedTracing()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onShowStateChange()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowStateChange s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v2, "networkspeed"

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onStartTraceSpeed()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStartTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateSpeed()V

    return-void
.end method

.method private onStopTraceSpeed()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStopTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->stopSpeed()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-void
.end method

.method private refreshSpeed()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSpeed sp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private scheduleNextUpdate()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopSpeed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOff()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->removeMessages(I)V

    return-void
.end method

.method private updateSpeed()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOn()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->removeMessages(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call to IKeyguardStateCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    :cond_0
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne v0, v1, :cond_4

    const-string/jumbo v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HotSpot enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "networkspeed"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onTuningChanged blocknetworkSpeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity connectedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " validatedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    return-void
.end method

.method public updateState()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateState traceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onStartTraceSpeed()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onStopTraceSpeed()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
