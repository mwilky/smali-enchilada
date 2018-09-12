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

    .line 33
    const-string v0, "NetworkSpeedController"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    .line 34
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    .line 35
    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    .line 36
    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    .line 37
    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    .line 38
    const/16 v0, 0x400

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    .line 39
    const-string v0, "K"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    .line 40
    const-string v0, "M"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    .line 41
    const-string v0, "G"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    .line 52
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    .line 45
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    .line 46
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    .line 47
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    .line 49
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 55
    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    .line 57
    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    .line 58
    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mTimer:Ljava/util/Timer;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    const-string v1, "netstats"

    .line 91
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 97
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v2, "networkspeed"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    const v4, 0x7f0d01c9

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setText(Ljava/lang/String;IZ)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v2, "networkspeed"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 101
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "icon_blacklist"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->scheduleNextUpdate()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->getTetherStats()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .line 31
    sget v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
    .param p1, "x1"    # J

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->formateSpeed(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->refreshSpeed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onShowStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    return-object v0
.end method

.method private divToFractionDigits(JJI)Ljava/lang/String;
    .locals 10
    .param p1, "unmber"    # J
    .param p3, "divisor"    # J
    .param p5, "maxNum"    # I

    .line 131
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "divisor shouldn\'t be 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "Error"

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local v0, "result":Ljava/lang/StringBuffer;
    move-wide v1, p1

    .line 137
    .local v1, "dividend":J
    div-long v3, v1, p3

    .line 138
    .local v3, "integer":J
    rem-long v5, v1, p3

    .line 139
    .local v5, "fraction":J
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 140
    if-lez p5, :cond_1

    .line 141
    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p5, :cond_1

    .line 143
    const-wide/16 v8, 0xa

    mul-long v1, v5, v8

    .line 144
    div-long v8, v1, p3

    .line 145
    .local v8, "r":J
    rem-long v5, v1, p3

    .line 146
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 142
    .end local v8    # "r":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 149
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private formateSpeed(J)Ljava/lang/String;
    .locals 11
    .param p1, "speed"    # J

    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v0, "result":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    .line 155
    .local v1, "unit":Ljava/lang/String;
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v2

    .line 156
    .local v2, "divisor":J
    const/4 v4, 0x0

    .line 157
    .local v4, "maxFractionDigits":I
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    .line 158
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v5

    .line 159
    const/4 v4, 0x2

    .line 160
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    goto/16 :goto_0

    .line 161
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

    .line 162
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v5

    .line 163
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    .line 164
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

    .line 165
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 166
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

    .line 167
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 168
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

    .line 169
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 171
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

    .line 172
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    int-to-long v2, v5

    .line 173
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    .line 174
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

    .line 175
    const/4 v4, 0x2

    goto :goto_0

    .line 176
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

    .line 177
    const/4 v4, 0x1

    goto :goto_0

    .line 178
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

    .line 179
    const/4 v4, 0x0

    goto :goto_0

    .line 182
    :cond_6
    sget v5, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v5, v6

    int-to-long v2, v5

    .line 183
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    .line 184
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

    .line 185
    const/4 v4, 0x2

    goto :goto_0

    .line 186
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

    .line 187
    const/4 v4, 0x1

    goto :goto_0

    .line 189
    :cond_8
    const/4 v4, 0x0

    .line 192
    :cond_9
    :goto_0
    move-object v5, p0

    move-wide v6, p1

    move-wide v8, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->divToFractionDigits(JJI)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "speedStr":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "/s "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getTetherStats()[J
    .locals 12

    .line 491
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 514
    .local v0, "bytes":[J
    :try_start_0
    const-string v1, "network_management"

    .line 515
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 514
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, -0x1

    .line 515
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 516
    .local v1, "stats":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    .line 517
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 518
    .local v4, "size":I
    :goto_0
    const-wide/16 v5, 0x0

    .line 519
    .local v5, "sumRxBytes":J
    const-wide/16 v7, 0x0

    .line 520
    .local v7, "sumTxBytes":J
    move-wide v8, v7

    move-wide v6, v5

    move-object v5, v2

    move v2, v3

    .end local v7    # "sumTxBytes":J
    .local v2, "i":I
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    .local v6, "sumRxBytes":J
    .local v8, "sumTxBytes":J
    :goto_1
    if-ge v2, v4, :cond_1

    .line 521
    invoke-virtual {v1, v2, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    move-object v5, v10

    .line 522
    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v6, v10

    .line 523
    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    .end local v2    # "i":I
    :cond_1
    aput-wide v6, v0, v3

    .line 526
    const/4 v2, 0x1

    aput-wide v8, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v1    # "stats":Landroid/net/NetworkStats;
    .end local v4    # "size":I
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v6    # "sumRxBytes":J
    .end local v8    # "sumTxBytes":J
    goto :goto_2

    .line 527
    :catch_0
    move-exception v1

    .line 530
    :goto_2
    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 439
    return v1

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 442
    .local v0, "isNetworkConnected":Z
    const/4 v2, 0x0

    .line 443
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 446
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v0, v1

    .line 447
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

    .line 448
    :cond_3
    return v0
.end method

.method private isNetworkSpeedTracing()Z
    .locals 1

    .line 452
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

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    .line 216
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    if-eq v1, v0, :cond_2

    .line 217
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    .line 218
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

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v2, "networkspeed"

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 224
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

    .line 225
    .local v2, "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V

    .line 226
    .end local v2    # "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    goto :goto_0

    .line 228
    :cond_2
    return-void
.end method

.method private onStartTraceSpeed()V
    .locals 2

    .line 231
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStartTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateSpeed()V

    .line 233
    return-void
.end method

.method private onStopTraceSpeed()V
    .locals 2

    .line 236
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStopTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->stopSpeed()V

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    .line 241
    return-void
.end method

.method private refreshSpeed()V
    .locals 3

    .line 283
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

    .line 284
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

    .line 285
    .local v1, "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    if-eqz v1, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    .line 288
    .end local v1    # "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    :cond_1
    goto :goto_0

    .line 289
    :cond_2
    return-void
.end method

.method private scheduleNextUpdate()V
    .locals 4

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 267
    .local v0, "nextTime":J
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 268
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 269
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 270
    return-void
.end method

.method private stopSpeed()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOff()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->removeMessages(I)V

    .line 280
    return-void
.end method

.method private updateSpeed()V
    .locals 3

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 245
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOn()V

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->removeMessages(I)V

    .line 259
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 260
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    .line 475
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call to IKeyguardStateCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    .line 116
    :cond_0
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    if-ne v0, v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    .line 120
    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne v0, v1, :cond_4

    .line 121
    const-string/jumbo v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "state":I
    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    .line 124
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

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    .line 128
    .end local v1    # "state":I
    :cond_4
    :goto_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 457
    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 461
    .local v0, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v1, "networkspeed"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 462
    .local v1, "blocknetworkSpeed":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-eq v1, v2, :cond_1

    .line 463
    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onTuningChanged blocknetworkSpeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    .line 467
    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 486
    monitor-exit p0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .line 105
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConnectivity connectedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " validatedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    .line 107
    return-void
.end method

.method public updateState()V
    .locals 4

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result v0

    .line 199
    .local v0, "traceState":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState traceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eq v1, v0, :cond_2

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    .line 202
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eqz v1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onStartTraceSpeed()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onStopTraceSpeed()V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 208
    .local v1, "message":Landroid/os/Message;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    return-void
.end method
