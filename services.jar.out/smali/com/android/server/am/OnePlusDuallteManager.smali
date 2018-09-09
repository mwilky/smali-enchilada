.class public final Lcom/android/server/am/OnePlusDuallteManager;
.super Ljava/lang/Object;
.source "OnePlusDuallteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;,
        Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "com.Duallte.action.debug"

.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final DBG:Z

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static final DUALLTE_CONFIG_NAME:Ljava/lang/String; = "Duallte"

.field private static final DUALLTE_KEY:Ljava/lang/String; = "persist.radio.duallte.enable"

.field private static final DUALLTE_OPERATED:Ljava/lang/String; = "persist.radio.duallte.operated"

.field public static ENABLE:Z = false

.field private static final MESSAGE_SETDUALLTE:I = 0x2

.field private static final MESSAGE_UPDATE_FORGEGROUND:I = 0x1

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OnePlusDuallteManager"

.field private static final VALUE_FIRST_EXIT_PKG:I = 0x2

.field private static final VALUE_IN_SPECIAL_GAME:I = 0x1

.field private static final VALUE_NOT_FIRST_EXIT_PKG:I = 0x0

.field private static final VERSION:I = 0x78492d21

.field private static mDualSimStateReady:Z

.field private static mGamePkgLock:Ljava/lang/Object;

.field private static mMobile4gStateReady:Z

.field private static mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

.field private static operateDelayTime:J

.field private static sim1State:I

.field private static sim2State:I


# instance fields
.field private IExtTelephony:Ljava/lang/Object;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private isOperated:Z

.field private mContext:Landroid/content/Context;

.field private mCurFrontPkg:Ljava/lang/String;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOnePlusDuallteManagerHandler:Landroid/os/Handler;

.field private mPkgStatus:I

.field private mSpecialGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/reflect/Method;

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    .line 51
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 69
    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    .line 70
    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    .line 71
    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 72
    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 58
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    .line 59
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    .line 66
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    .line 67
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 202
    new-instance v1, Lcom/android/server/am/OnePlusDuallteManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusDuallteManager$1;-><init>(Lcom/android/server/am/OnePlusDuallteManager;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    const-string/jumbo v1, "sdm845"

    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 88
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnePlusDuallteManager VERSION = v2018061601 |ENABLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 93
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.Duallte.action.debug"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "mOnePlusDuallteManagerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "mOnePlusDuallteManagerThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v4, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;-><init>(Lcom/android/server/am/OnePlusDuallteManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    .line 103
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 105
    .local v4, "numSlots":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    .line 107
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    .line 108
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    if-ne v0, v5, :cond_0

    .line 110
    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 115
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 116
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 118
    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->init()V

    .line 123
    sput-object p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->handlePkgChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusDuallteManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Z

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->setDuallte(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 32
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReadyIfNeed()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->handleMobile4gStateReady(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 32
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusDuallteManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 32
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->dumpInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 32
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->dumpPkgInfos()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 32
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->setDuallteTest()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 32
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 32
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 32
    sput p0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    return p0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 32
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 32
    sput p0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    return p0
.end method

.method private dumpInfo()V
    .locals 4

    .line 251
    const-string v0, "OnePlusDuallteManager"

    const-string v1, "# dump # VERSION # 2018061601"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # operateDelayTime # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method private dumpPkgInfos()V
    .locals 7

    .line 257
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 259
    const-string v1, "OnePlusDuallteManager"

    const-string v2, "# dump # mSpecialGameList = null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    monitor-exit v0

    return-void

    .line 262
    :cond_0
    const/4 v1, 0x0

    .line 263
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    .local v3, "pkg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 265
    const-string v4, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # mSpecialGameList # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 267
    .end local v1    # "index":I
    :cond_1
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIExtTelephony()Ljava/lang/Object;
    .locals 8

    .line 471
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    const-string v1, "getIExtTelephony()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 474
    .local v1, "remoteService":Ljava/lang/Object;
    const-string/jumbo v2, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 475
    .local v2, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 476
    .local v3, "asInterface":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v1    # "remoteService":Ljava/lang/Object;
    .end local v2    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "asInterface":Ljava/lang/reflect/Method;
    nop

    .line 483
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    return-object v0

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    return-object v0
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusDuallteManager;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusDuallteManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 79
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/am/OnePlusDuallteManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusDuallteManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    return-object v0
.end method

.method private getMethod()Ljava/lang/reflect/Method;
    .locals 5

    .line 487
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    const-string v1, "getMethod()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    :try_start_0
    const-string/jumbo v0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 490
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "generalSetter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 497
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    return-object v0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMethod() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleDualSimStateReady(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "ready"    # Ljava/lang/Boolean;

    .line 367
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDualSimStateReady ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 369
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 370
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_1

    .line 371
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    .line 379
    :cond_2
    :goto_0
    return-void
.end method

.method private handleDualSimStateReadyIfNeed()V
    .locals 2

    .line 339
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    if-ne v0, v1, :cond_0

    .line 341
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-nez v0, :cond_1

    .line 342
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReady(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 345
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_1

    .line 346
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReady(Ljava/lang/Boolean;)V

    .line 349
    :cond_1
    :goto_0
    return-void
.end method

.method private handleMobile4gStateReady(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "ready"    # Ljava/lang/Boolean;

    .line 352
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMobile4gStateReady ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 354
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 355
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v0, :cond_1

    .line 356
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 358
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    .line 364
    :cond_2
    :goto_0
    return-void
.end method

.method private handlePkgChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 382
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePkgChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 385
    iput v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 386
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    :cond_1
    const-string/jumbo v1, "persist.radio.duallte.enable"

    const-string v5, "0"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "curDuallteState":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 392
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 393
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string v5, "1"

    invoke-direct {p0, v2, v5}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string v5, "0"

    invoke-direct {p0, v2, v5}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 396
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    .end local v1    # "curDuallteState":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    goto :goto_1

    .line 399
    :cond_3
    iget v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 419
    :pswitch_0
    iput v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 420
    goto :goto_1

    .line 401
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 402
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    if-eqz v1, :cond_7

    .line 403
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 404
    const-string/jumbo v1, "persist.radio.duallte.enable"

    const-string v5, "0"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1    # "curDuallteState":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 406
    const-string/jumbo v5, "persist.radio.duallte.enable"

    const-string v6, "1"

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 408
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5, v3, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 411
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    sget-wide v4, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 412
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    :cond_5
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .end local v1    # "curDuallteState":Ljava/lang/String;
    :cond_6
    :goto_0
    goto :goto_1

    .line 423
    :pswitch_2
    iput v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 424
    nop

    .line 430
    :cond_7
    :goto_1
    monitor-exit v0

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initSpecialGameList()V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initOnlineConfig()V

    .line 129
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initSysPropt()V

    .line 130
    return-void
.end method

.method private initSpecialGameList()V
    .locals 3

    .line 172
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.cf"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.sgame"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.pubgm"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.pubgmhd"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.speedmobile"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashroyale"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashofclans"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.qihoo"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.blizzard.wtcg.hearthstone"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSysPropt()V
    .locals 6

    .line 133
    const-string/jumbo v0, "persist.radio.duallte.operated"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "lastOperated":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.duallte.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "curDuallteState":Ljava/lang/String;
    const-string v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initSysPropt() lastOperated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |curDuallteState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 141
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private isStateReady()Z
    .locals 1

    .line 306
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recoverOperatedImmediately()V
    .locals 4

    .line 325
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recoverOperatedImmediately isOperated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    :cond_1
    const-string/jumbo v0, "persist.radio.duallte.enable"

    const-string v2, "1"

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 334
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 544
    if-nez p1, :cond_0

    .line 545
    const-string v0, "OnePlusDuallteManager"

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 550
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 550
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 551
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 552
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 554
    .local v3, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 555
    sget-boolean v4, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v4, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    .line 550
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "index":I
    :cond_2
    move v1, v0

    .line 561
    .restart local v1    # "index":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 562
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 563
    .restart local v2    # "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delaytime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 564
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 565
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    .line 561
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 569
    .end local v1    # "index":I
    :cond_4
    move v1, v0

    .line 569
    .restart local v1    # "index":I
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 570
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 571
    .restart local v2    # "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mSpecialGameList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 572
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :try_start_1
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 574
    .local v4, "jArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 575
    move v5, v0

    .line 575
    .local v5, "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 576
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 578
    iget-object v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 581
    .end local v4    # "jArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_6
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 569
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 592
    .end local v1    # "index":I
    :cond_8
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    goto/16 :goto_6

    .line 591
    :catchall_1
    move-exception v0

    goto/16 :goto_7

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 584
    :catch_1
    move-exception v0

    .line 585
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 592
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    .line 597
    :goto_6
    return-void

    .line 591
    :goto_7
    nop

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusDuallteManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusDuallteManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusDuallteManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private setDuallte(Z)Z
    .locals 6
    .param p1, "isRecover"    # Z

    .line 434
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDuallte isRecover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    if-nez v1, :cond_3

    goto :goto_0

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 455
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "oemDualLteSwitch"

    aput-object v5, v4, v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    nop

    .line 462
    if-eqz p1, :cond_4

    .line 463
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 464
    const-string/jumbo v0, "persist.radio.duallte.operated"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_4
    return v2

    .line 450
    :cond_5
    :goto_0
    :try_start_1
    const-string v1, "OnePlusDuallteManager"

    const-string/jumbo v2, "setDuallte method or IExtTelephony is null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    return v0

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    return v0
.end method

.method private setDuallteTest()V
    .locals 13

    .line 501
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    const-string/jumbo v1, "setDuallteTest"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    :try_start_0
    const-string/jumbo v0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 505
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 507
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 508
    .local v5, "method":Ljava/lang/reflect/Method;
    const-string v6, "OnePlusDuallteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMethods:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v5    # "method":Ljava/lang/reflect/Method;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 512
    .local v2, "methods2":[Ljava/lang/reflect/Method;
    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 513
    .local v6, "method":Ljava/lang/reflect/Method;
    const-string v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeclaredMethods:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v6    # "method":Ljava/lang/reflect/Method;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 516
    :cond_2
    const-string v4, "extphone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 517
    .local v4, "remoteService":Ljava/lang/Object;
    const-string/jumbo v5, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 518
    .local v5, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 519
    .local v6, "asInterface":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 521
    .local v8, "IExtTelephony":Ljava/lang/Object;
    const-string v9, "generalSetter"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v3

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v11, v7

    invoke-virtual {v0, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 522
    .local v9, "method2":Ljava/lang/reflect/Method;
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 523
    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "oemDualLteSwitch"

    aput-object v11, v10, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    aput-object v3, v10, v7

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    .end local v2    # "methods2":[Ljava/lang/reflect/Method;
    .end local v4    # "remoteService":Ljava/lang/Object;
    .end local v5    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "asInterface":Ljava/lang/reflect/Method;
    .end local v8    # "IExtTelephony":Ljava/lang/Object;
    .end local v9    # "method2":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDuallteTest() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private setProptValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 310
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "curValue":Ljava/lang/String;
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set system property key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusDuallteManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public frontPkgChangedEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 285
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frontPkgChangedEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    .line 288
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    if-nez v0, :cond_3

    .line 291
    if-eqz p1, :cond_2

    .line 292
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 295
    :goto_0
    return-void

    .line 298
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->isStateReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 300
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    .line 531
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;-><init>(Lcom/android/server/am/OnePlusDuallteManager;)V

    const-string v4, "Duallte"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 532
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 533
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 534
    return-void
.end method

.method public screenStateChangedEvent(Z)V
    .locals 3
    .param p1, "done"    # Z

    .line 271
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenStateChangedEvent done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |offScreenPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 274
    if-eqz p1, :cond_2

    .line 275
    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 282
    :cond_3
    :goto_0
    return-void
.end method
