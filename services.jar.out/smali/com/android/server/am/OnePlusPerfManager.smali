.class public Lcom/android/server/am/OnePlusPerfManager;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;,
        Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;,
        Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;,
        Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;,
        Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;,
        Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "OPPerf"

.field public static DEBUG:Z = false

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "0"

.field private static final DEFAULT_MODE:I = 0x0

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static DEFAULT_TIMEOUT:I = 0x0

.field public static ENABLE:Z = false

.field private static final ENABLE_FLAG_MODE_PERFHINT:I = 0x40

.field private static final ENABLE_FLAG_MODE_PERFLOCK:I = 0x80

.field private static final ENABLE_FLAG_MODE_SCHEDTUNE:I = 0x20

.field private static final ENABLE_FLAG_MODE_STARTSPEED:I = 0x10

.field public static ENABLE_MODE_PERFHINT:Z = false

.field public static ENABLE_MODE_PERFLOCK:Z = false

.field public static ENABLE_MODE_SCHEDTUNE:Z = false

.field public static ENABLE_MODE_STARTSPEED:Z = false

.field private static final GamingCoreSwitchPath:Ljava/lang/String; = "/sys/module/opchain/parameters/boost_tl"

.field private static INSTANCE:Lcom/android/server/am/OnePlusPerfManager; = null

.field private static final LEVEL_REMOVE:Ljava/lang/String; = "-1"

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final MSG_STARTSPEED_SCHEDTUNE:I = 0x1

.field private static final MSG_STARTSPEED_SCHEDTUNE_TIMEOUT:I = 0x2

.field private static final OPPERF_FILE:Ljava/lang/String; = "/system/etc/opperf.xml"

.field private static final PARAM_PATTERN:Ljava/lang/String; = ","

.field private static final PERF_MODE_PERFHINT:I = 0x6

.field private static final PERF_MODE_PERFLOCK:I = 0x7

.field private static final PERF_MODE_SCHEDTUNE:I = 0x5

.field private static final PERF_MODE_STARTSPEED:I = 0x4

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.opperf.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opperf.enable"

.field public static final TAG:Ljava/lang/String; = "OPPerf"

.field private static final XML_ATTR_GAMINGCORE:Ljava/lang/String; = "gamingcore"

.field private static final XML_ATTR_LEVEL:Ljava/lang/String; = "level"

.field private static final XML_ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_ATTR_PERF_PARAM:Ljava/lang/String; = "param"

.field private static final XML_ATTR_SCHEDTUNE_DEFAULT:Ljava/lang/String; = "default"

.field private static final XML_ATTR_SCHEDTUNE_PATH:Ljava/lang/String; = "path"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PERF:Ljava/lang/String; = "perf"

.field private static final XML_TAG_PERFHINT:Ljava/lang/String; = "perfhint"

.field private static final XML_TAG_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_SCHEDTUNE:Ljava/lang/String; = "schedtune"

.field private static final XML_TAG_SCHEDTUNE_ITEM:Ljava/lang/String; = "item"

.field private static final XML_TAG_SPKG:Ljava/lang/String; = "spkg"


# instance fields
.field private final currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

.field private mContext:Landroid/content/Context;

.field private mCurrentSpeedLevel:Ljava/lang/String;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPerfBoost:Landroid/util/BoostFramework;

.field private mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

.field mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

.field private mPerfLockLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;",
            ">;"
        }
    .end annotation
.end field

.field mPerfManagerThread:Landroid/os/HandlerThread;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$PerfInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedtuneParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;",
            ">;"
        }
    .end annotation
.end field

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    const/16 v0, 0x4e20

    sput v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    const-string v2, ""

    const-string v3, "0"

    sget v4, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const-string v1, "-1"

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persist.sys.opperf.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerfThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;-><init>(Lcom/android/server/am/OnePlusPerfManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    const-string/jumbo v0, "persist.sys.opperf.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->readXml()I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->startSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusPerfManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->forceUpdateOnlineConfigImmediately()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusPerfManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private deciedEnableModes(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v1

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    :try_start_0
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    move v3, v4

    nop

    :cond_3
    sput-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newest switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private deciedGamingCoreEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENTION!!!\tdeciedGCEnable: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    const-string v0, "/sys/module/opchain/parameters/boost_tl"

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OPPerf"

    const-string v1, "deciedGCEnable failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : file not exits :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO close failed : path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",ex->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return v3

    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v4, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    nop

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v3

    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v6, "IO close failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    goto :goto_5

    :catchall_0
    move-exception v3

    goto :goto_6

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_5
    return v2

    :goto_6
    nop

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v0, 0x0

    goto :goto_7

    :catch_4
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO close failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPPerf"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    nop

    :cond_4
    :goto_7
    throw v3
.end method

.method private finishSpeedSchedtune(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSpeedSchedtune # level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reset failed!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "-1"

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSpeedSchedtune # level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSpeedSchedtune # stp = null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private forceUpdateOnlineConfigImmediately()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "forceUpdateOnlineConfigImmediately"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string v2, "OPPerf"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPerfManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    return-object v0
.end method

.method private mayPerfRelease()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V

    monitor-exit v0

    return v3

    :cond_0
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mayPerfRelease # release failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v5, v5, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v1, v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    const-string v2, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mayPerfRelease # reset SCHEDTUNE # : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V

    monitor-exit v0

    return v3

    :cond_2
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # reset SCHEDTUNE # stp = null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    :cond_3
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPPerf"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static numberStringToInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z
    .locals 7

    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perfAcquire # perflock change #: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    move-object v3, v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->getParam()[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v1, 0x1

    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # acquire failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire failed # pll = null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    goto/16 :goto_2

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v3, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perfAcquire # SCHEDTUNE change # : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v3, v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_6

    :try_start_6
    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # set SCHEDTUNE #: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # write schedtune failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # write schedtune failed # stp = null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_1
    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5

    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    :goto_2
    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->setValue(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;)V

    :cond_8
    monitor-exit v2

    return v1

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method private readXml()I
    .locals 30

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "# readXml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/opperf.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "# readXml # file not exists"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v6, v0

    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-object v5, v0

    :try_start_1
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-object v6, v0

    :try_start_2
    const-string/jumbo v0, "perf"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "version"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "switch"

    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "timeout"

    invoke-interface {v8, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v11, :cond_3

    :try_start_3
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    :goto_0
    move-object/from16 v25, v5

    goto/16 :goto_c

    :cond_3
    :goto_1
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " #switch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " #timeout "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    const-string/jumbo v12, "pkg"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    if-nez v12, :cond_4

    :try_start_5
    const-string v0, "OPPerf"

    const-string v13, "# readXml # error # nl = null"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto/16 :goto_3

    :cond_4
    move v0, v7

    :goto_2
    move v13, v0

    :try_start_6
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    if-ge v13, v0, :cond_6

    :try_start_7
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const-string/jumbo v0, "perflock"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-string v0, "0"

    const-string/jumbo v7, "level"

    invoke-interface {v8, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    if-eqz v7, :cond_5

    :try_start_8
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v0, v16

    :cond_5
    move-object/from16 v17, v3

    move-object v3, v0

    :try_start_9
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v19, v4

    move/from16 v4, v18

    :try_start_a
    invoke-direct {v0, v14, v4, v3}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v20, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string/jumbo v3, "readXml: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    move/from16 v22, v4

    iget-object v4, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v13, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    const/4 v7, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    goto/16 :goto_c

    :cond_6
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    :goto_3
    :try_start_d
    const-string/jumbo v0, "spkg"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object v3, v0

    if-nez v3, :cond_7

    :try_start_e
    const-string v0, "OPPerf"

    const-string v4, "# readXml # error spkg# nl = null"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_4
    move v4, v0

    :try_start_f
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    if-ge v4, v0, :cond_8

    :try_start_10
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const-string/jumbo v0, "mode"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string/jumbo v0, "timeout"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "spkg "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # mode "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # level "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # timeout "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    move-object/from16 v24, v3

    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object/from16 v25, v5

    :try_start_12
    new-instance v5, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v26, v8

    move/from16 v8, v23

    :try_start_13
    invoke-direct {v5, v7, v15, v13, v8}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v4, 0x1

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v26, v8

    move/from16 v8, v23

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v8

    move/from16 v8, v23

    :goto_5
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v25, v5

    goto/16 :goto_c

    :cond_8
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    :goto_6
    :try_start_15
    const-string/jumbo v0, "perflock"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    move-object v3, v0

    if-nez v3, :cond_9

    :try_start_16
    const-string v0, "OPPerf"

    const-string/jumbo v4, "mode perflock is null!"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :cond_9
    const/4 v0, 0x0

    :goto_7
    move v4, v0

    :try_start_17
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    if-ge v4, v0, :cond_a

    :try_start_18
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const-string/jumbo v0, "param"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "perflockMap add : ["

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "], "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    :try_start_19
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    new-instance v13, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    invoke-direct {v13, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12

    add-int/lit8 v0, v4, 0x1

    goto :goto_7

    :catchall_4
    move-exception v0

    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    :cond_a
    :goto_8
    :try_start_1b
    const-string/jumbo v0, "schedtune"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    move-object v3, v0

    if-nez v3, :cond_b

    :try_start_1c
    const-string v0, "OPPerf"

    const-string/jumbo v4, "mode schedtune is null!"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    move-object/from16 v28, v6

    goto/16 :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_9
    move v4, v0

    :try_start_1d
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_d

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    move-object v7, v0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v12, v0

    const-string/jumbo v0, "item"

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v13, v0

    const/4 v0, 0x0

    :goto_a
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v0, v14, :cond_c

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string/jumbo v15, "path"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v3

    const-string/jumbo v3, "param"

    invoke-interface {v14, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6

    move-object/from16 v28, v6

    :try_start_1e
    const-string v6, "default"

    invoke-interface {v14, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v8

    new-instance v8, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    invoke-direct {v8, v1, v15, v3, v6}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v27

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto :goto_a

    :cond_c
    move-object/from16 v27, v3

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedtuneMap add : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5

    :try_start_1f
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    add-int/lit8 v0, v4, 0x1

    move-object/from16 v3, v27

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_5

    :catch_5
    move-exception v0

    move-object/from16 v6, v28

    goto :goto_c

    :cond_d
    move-object/from16 v28, v6

    :goto_b
    return v2

    :catch_6
    move-exception v0

    move-object/from16 v28, v6

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v28, v6

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v6

    goto :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    goto :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    :goto_c
    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# readXml # parse error ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x3

    return v3
.end method

.method private resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolvePerfConfigFromJSON "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    const-string v0, "-1"

    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1e

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PkgMap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "perflock"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "level"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v12, ""

    if-ne v11, v12, :cond_4

    :cond_3
    const-string v12, "0"

    move-object v11, v12

    :cond_4
    iget-object v12, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_7

    :try_start_1
    iget-object v13, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    if-eqz v13, :cond_6

    const-string v14, "-1"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iput v10, v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    iput-object v11, v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v15, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    invoke-direct {v15, v8, v10, v11}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v14, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_7
    :goto_2
    sget-boolean v13, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "resolvePerfConfigFromJSON # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_8
    monitor-exit v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_3
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_9
    goto/16 :goto_b

    :cond_a
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "switch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolvePerfConfigFromJSON # switch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_b
    goto/16 :goto_b

    :cond_c
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gamingcore"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/server/am/OnePlusPerfManager;->deciedGamingCoreEnable(Z)V

    sget-boolean v6, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolvePerfConfigFromJSON # GamingCore = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_d
    goto/16 :goto_b

    :cond_e
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timeout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    sget-boolean v6, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolvePerfConfigFromJSON # timeout = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_f
    goto/16 :goto_b

    :cond_10
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "spkg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_15

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mode"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "level"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "timeout"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v14
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_13

    :try_start_3
    iget-object v15, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    if-eqz v15, :cond_12

    const-string v0, "-1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    iput v10, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    iput-object v11, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iput v13, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    goto :goto_5

    :cond_12
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-direct {v2, v8, v10, v11, v13}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_13
    :goto_5
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_14
    monitor-exit v14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_4

    :goto_6
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_15
    goto/16 :goto_b

    :cond_16
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "perflock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_7
    move v5, v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_18

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v6, v0

    const-string/jumbo v0, "level"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const-string/jumbo v0, "param"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    invoke-direct {v0, v8}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v10, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolvePerfConfigFromJSON #  "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_17
    monitor-exit v10

    add-int/lit8 v0, v5, 0x1

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_18
    goto/16 :goto_b

    :cond_19
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "schedtune"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_8
    move v5, v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_1d

    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    move-object v6, v0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v7, v0

    const-string/jumbo v0, "level"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    const-string/jumbo v0, "item"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_1b

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "path"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "param"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "default"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    invoke-direct {v14, v1, v11, v12, v13}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    sget-boolean v15, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v15, :cond_1a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string/jumbo v2, "resolvePerfConfigFromJSON # schedtune, level = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    move-object/from16 v16, v2

    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    goto :goto_9

    :cond_1b
    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resolvePerfConfigFromJSON # schedtune, add level "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_1c
    monitor-exit v2

    add-int/lit8 v0, v5, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    :cond_1d
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_1e
    const-string v0, "OPPerf"

    const-string v2, "[OnlineConfig] OPPerf updated complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] OPPerf Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_1
    move-exception v0

    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] OPPerf JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    nop

    :goto_d
    return-void
.end method

.method private runAppMayWithPerf(Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " # packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v1

    return v1

    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusPerfManager;->perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startSpeedSchedtune(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "0"

    sget v2, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object v0, v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v1, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    :cond_0
    move-object v4, v1

    move v5, v2

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v5

    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSpeedSchedtune # level:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " # change TIMEOUT:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v1, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v5

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v3, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startSpeedSchedtune # level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSpeedSchedtune # level:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " write failed!!!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSpeedSchedtune # stp = null : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method


# virtual methods
.method public acuqirePerfForStartSpeed(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return v1
.end method

.method public autoAcquireOrRelease(Z)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoAcquireOrRelease("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    if-eqz p1, :cond_2

    const-string v0, ""

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPkgPerfLock(Ljava/lang/String;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    if-eqz v2, :cond_1

    iget v1, v2, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "initOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    new-instance v3, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusPerfManager;)V

    const-string v4, "OPPerf"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    return-void
.end method

.method public runAppMayWithPerf(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
