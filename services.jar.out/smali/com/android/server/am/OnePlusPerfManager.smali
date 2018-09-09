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

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 74
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    .line 75
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    .line 76
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    .line 77
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 127
    const/16 v0, 0x4e20

    sput v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 83
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    .line 129
    new-instance v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    const-string v2, ""

    const-string v3, "0"

    sget v4, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 177
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 178
    iput-boolean v5, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 652
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    .line 653
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    .line 679
    const-string v1, "-1"

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 739
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 146
    const-string/jumbo v0, "persist.sys.opperf.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 148
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 150
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerfThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    .line 151
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 152
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;-><init>(Lcom/android/server/am/OnePlusPerfManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    .line 154
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    .line 155
    const-string/jumbo v0, "persist.sys.opperf.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 156
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->readXml()I

    .line 157
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 69
    sget v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->startSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusPerfManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;

    .line 69
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->forceUpdateOnlineConfigImmediately()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusPerfManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private deciedEnableModes(Ljava/lang/String;)V
    .locals 5
    .param p1, "switchStr"    # Ljava/lang/String;

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, "modes":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v1

    .line 445
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

    .line 446
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    .line 447
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    .line 448
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    move v3, v4

    nop

    :cond_3
    sput-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    .line 449
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newest switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 449
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
    .param p1, "enable"    # Z

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENTION!!!\tdeciedGCEnable: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 768
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

    .line 769
    const-string v0, "OPPerf"

    const-string v1, "deciedGCEnable failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_1
    return-void
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 775
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x1

    .line 777
    .local v2, "ret":Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 778
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 779
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

    .line 780
    const/4 v3, 0x0

    .line 791
    if-eqz v0, :cond_0

    .line 792
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 793
    const/4 v0, 0x0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v4

    .line 796
    .local v4, "ex":Ljava/io/IOException;
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

    .line 797
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 798
    :cond_0
    :goto_0
    nop

    .line 780
    :goto_1
    return v3

    .line 782
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 783
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 784
    .local v3, "statebuffer":[B
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 785
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

    .line 791
    .end local v3    # "statebuffer":[B
    :cond_2
    nop

    .line 792
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 793
    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    .line 795
    :catch_1
    move-exception v3

    .line 796
    .local v3, "ex":Ljava/io/IOException;
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

    .line 797
    const/4 v2, 0x0

    .line 799
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 798
    :cond_3
    :goto_4
    goto :goto_5

    .line 790
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 786
    :catch_2
    move-exception v3

    .line 787
    .restart local v3    # "ex":Ljava/io/IOException;
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

    .line 788
    const/4 v2, 0x0

    .line 791
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 792
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 795
    :catch_3
    move-exception v3

    .line 796
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 800
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_5
    return v2

    .line 790
    :goto_6
    nop

    .line 791
    if-eqz v0, :cond_4

    .line 792
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 793
    const/4 v0, 0x0

    goto :goto_7

    .line 795
    :catch_4
    move-exception v4

    .line 796
    .restart local v4    # "ex":Ljava/io/IOException;
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

    .line 797
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 798
    :cond_4
    :goto_7
    throw v3
.end method

.method private finishSpeedSchedtune(Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/lang/String;

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v0, v2

    .line 722
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
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

    .line 727
    :cond_0
    const-string v1, "-1"

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 728
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

    .line 731
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

    .line 733
    :goto_0
    return-void

    .line 722
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

    .line 760
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "forceUpdateOnlineConfigImmediately"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 761
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string v2, "OPPerf"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 762
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    .line 763
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPerfManager;
    .locals 1

    .line 139
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 142
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    return-object v0
.end method

.method private mayPerfRelease()Z
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 288
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 290
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

    .line 291
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V

    .line 292
    monitor-exit v0

    return v3

    .line 295
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

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v5, v5, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v1, v4

    .line 302
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v1, :cond_2

    .line 304
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    .line 305
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

    .line 306
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V

    .line 307
    monitor-exit v0

    return v3

    .line 309
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

    .end local v1    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    goto :goto_0

    .line 302
    .restart local v1    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 313
    .end local v1    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 314
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 454
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPPerf"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    return-void
.end method

.method public static numberStringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "numStr"    # Ljava/lang/String;

    .line 556
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 557
    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 558
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z
    .locals 7
    .param p1, "spi"    # Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    .param p2, "duration"    # I

    .line 225
    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 226
    .local v0, "mode":I
    const/4 v1, 0x0

    .line 227
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v2

    .line 228
    :try_start_0
    sget-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 229
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v1, 0x1

    .line 231
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

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 236
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    move-object v3, v5

    .line 237
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    if-eqz v3, :cond_2

    .line 239
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->getParam()[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 240
    const/4 v1, 0x1

    .line 241
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

    .line 243
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

    .line 246
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

    .line 248
    .end local v3    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :goto_0
    goto/16 :goto_2

    .line 237
    .restart local v3    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 249
    .end local v3    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_7

    .line 250
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v3, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    const/4 v1, 0x1

    .line 252
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

    .line 254
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 258
    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v3, v5

    .line 259
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    if-eqz v3, :cond_6

    .line 261
    :try_start_6
    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 262
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # set SCHEDTUNE #: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x1

    goto :goto_1

    .line 265
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

    .line 268
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

    .line 270
    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :goto_1
    goto :goto_2

    .line 259
    .restart local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5

    .line 273
    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 275
    :goto_2
    if-eqz v1, :cond_8

    .line 276
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->setValue(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;)V

    .line 277
    :cond_8
    monitor-exit v2

    .line 278
    return v1

    .line 277
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method private readXml()I
    .locals 30

    .line 327
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "# readXml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 328
    :cond_0
    const/4 v2, 0x0

    .line 329
    .local v2, "ret":I
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/opperf.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 330
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "# readXml # file not exists"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 332
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 334
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 335
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 336
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    move-object v6, v0

    .line 338
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-object v5, v0

    .line 339
    :try_start_1
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-object v6, v0

    .line 341
    :try_start_2
    const-string/jumbo v0, "perf"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 342
    .local v0, "nl":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 343
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v9, "version"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "versionStr":Ljava/lang/String;
    const-string/jumbo v10, "switch"

    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 345
    .local v10, "switchStr":Ljava/lang/String;
    const-string/jumbo v11, "timeout"

    invoke-interface {v8, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 346
    .local v11, "timeoutNode":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_3

    .line 347
    :try_start_3
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, "dftimeoutStr":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 348
    .end local v12    # "dftimeoutStr":Ljava/lang/String;
    goto :goto_1

    .line 433
    .end local v0    # "nl":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 433
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v17, "f":Ljava/io/File;
    .local v19, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v25, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    move-object/from16 v25, v5

    goto/16 :goto_c

    .line 350
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v0    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
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

    .line 351
    invoke-direct {v1, v10}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v12, "pkg"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 354
    .end local v0    # "nl":Lorg/w3c/dom/NodeList;
    .local v12, "nl":Lorg/w3c/dom/NodeList;
    if-nez v12, :cond_4

    .line 355
    :try_start_5
    const-string v0, "OPPerf"

    const-string v13, "# readXml # error # nl = null"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 376
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto/16 :goto_3

    .line 357
    :cond_4
    move v0, v7

    .line 357
    .local v0, "i":I
    :goto_2
    move v13, v0

    .line 357
    .end local v0    # "i":I
    .local v13, "i":I
    :try_start_6
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    if-ge v13, v0, :cond_6

    .line 358
    :try_start_7
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 359
    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 360
    .local v14, "pkgName":Ljava/lang/String;
    const-string/jumbo v0, "perflock"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 361
    .local v15, "perfLockTimeStr":Ljava/lang/String;
    const-string v0, "0"

    .line 362
    .local v0, "level":Ljava/lang/String;
    const-string/jumbo v7, "level"

    invoke-interface {v8, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 363
    .local v7, "n":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_5

    .line 364
    :try_start_8
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v0, v16

    .line 366
    .end local v0    # "level":Ljava/lang/String;
    .local v3, "level":Ljava/lang/String;
    .restart local v17    # "f":Ljava/io/File;
    :cond_5
    move-object/from16 v17, v3

    move-object v3, v0

    :try_start_9
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .line 367
    .local v18, "perfLockTime":I
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v19, v4

    move/from16 v4, v18

    :try_start_a
    invoke-direct {v0, v14, v4, v3}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    .end local v18    # "perfLockTime":I
    .local v4, "perfLockTime":I
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    move-object/from16 v20, v0

    .line 368
    .local v20, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string/jumbo v3, "readXml: "

    .line 368
    .end local v3    # "level":Ljava/lang/String;
    .local v21, "level":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .end local v20    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .local v3, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 369
    move/from16 v22, v4

    iget-object v4, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    .line 369
    .end local v4    # "perfLockTime":I
    .local v22, "perfLockTime":I
    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 370
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    monitor-exit v4

    .line 372
    add-int/lit8 v2, v2, 0x1

    .line 357
    .end local v3    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .end local v7    # "n":Lorg/w3c/dom/Node;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "perfLockTimeStr":Ljava/lang/String;
    .end local v21    # "level":Ljava/lang/String;
    .end local v22    # "perfLockTime":I
    add-int/lit8 v0, v13, 0x1

    .line 357
    .end local v13    # "i":I
    .local v0, "i":I
    move-object/from16 v3, v17

    move-object/from16 v4, v19

    const/4 v7, 0x0

    goto :goto_2

    .line 371
    .end local v0    # "i":I
    .restart local v3    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .restart local v7    # "n":Lorg/w3c/dom/Node;
    .restart local v13    # "i":I
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v15    # "perfLockTimeStr":Ljava/lang/String;
    .restart local v21    # "level":Ljava/lang/String;
    .restart local v22    # "perfLockTime":I
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 433
    .end local v3    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .end local v7    # "n":Lorg/w3c/dom/Node;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .end local v12    # "nl":Lorg/w3c/dom/NodeList;
    .end local v13    # "i":I
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "perfLockTimeStr":Ljava/lang/String;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v21    # "level":Ljava/lang/String;
    .end local v22    # "perfLockTime":I
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    .line 433
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto/16 :goto_c

    .line 376
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v3, "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .restart local v12    # "nl":Lorg/w3c/dom/NodeList;
    :cond_6
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 376
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_3
    :try_start_d
    const-string/jumbo v0, "spkg"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object v3, v0

    .line 377
    .end local v12    # "nl":Lorg/w3c/dom/NodeList;
    .local v3, "nl":Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_7

    .line 378
    :try_start_e
    const-string v0, "OPPerf"

    const-string v4, "# readXml # error spkg# nl = null"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 395
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    goto/16 :goto_6

    .line 433
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 380
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :cond_7
    const/4 v0, 0x0

    .line 380
    .restart local v0    # "i":I
    :goto_4
    move v4, v0

    .line 380
    .end local v0    # "i":I
    .local v4, "i":I
    :try_start_f
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    if-ge v4, v0, :cond_8

    .line 381
    :try_start_10
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 382
    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 383
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v0, "mode"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 384
    .local v12, "modeStr":Ljava/lang/String;
    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 385
    .local v13, "level":Ljava/lang/String;
    const-string/jumbo v0, "timeout"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 386
    .local v14, "timeoutStr":Ljava/lang/String;
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

    .line 387
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    .line 388
    .local v15, "mode":I
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 389
    .local v23, "timeout":I
    move-object/from16 v24, v3

    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    .line 389
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .local v24, "nl":Lorg/w3c/dom/NodeList;
    monitor-enter v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 390
    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object/from16 v25, v5

    :try_start_12
    new-instance v5, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 390
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v26, v8

    move/from16 v8, v23

    :try_start_13
    invoke-direct {v5, v7, v15, v13, v8}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 390
    .end local v23    # "timeout":I
    .local v8, "timeout":I
    .local v26, "nnm":Lorg/w3c/dom/NamedNodeMap;
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit v3

    .line 392
    add-int/lit8 v2, v2, 0x1

    .line 380
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "timeout":I
    .end local v12    # "modeStr":Ljava/lang/String;
    .end local v13    # "level":Ljava/lang/String;
    .end local v14    # "timeoutStr":Ljava/lang/String;
    .end local v15    # "mode":I
    add-int/lit8 v0, v4, 0x1

    .line 380
    .end local v4    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    goto/16 :goto_4

    .line 391
    .end local v0    # "i":I
    .end local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "i":I
    .restart local v7    # "pkgName":Ljava/lang/String;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v12    # "modeStr":Ljava/lang/String;
    .restart local v13    # "level":Ljava/lang/String;
    .restart local v14    # "timeoutStr":Ljava/lang/String;
    .restart local v15    # "mode":I
    .restart local v23    # "timeout":I
    :catchall_1
    move-exception v0

    move-object/from16 v26, v8

    move/from16 v8, v23

    .line 391
    .end local v23    # "timeout":I
    .local v8, "timeout":I
    .restart local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    goto :goto_5

    .line 391
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v23    # "timeout":I
    :catchall_2
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v8

    move/from16 v8, v23

    .line 391
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "timeout":I
    .local v8, "timeout":I
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
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

    .line 433
    .end local v4    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "timeout":I
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .end local v12    # "modeStr":Ljava/lang/String;
    .end local v13    # "level":Ljava/lang/String;
    .end local v14    # "timeoutStr":Ljava/lang/String;
    .end local v15    # "mode":I
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_3
    move-exception v0

    move-object/from16 v25, v5

    .line 433
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto/16 :goto_c

    .line 395
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :cond_8
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    .line 395
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_6
    :try_start_15
    const-string/jumbo v0, "perflock"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    move-object v3, v0

    .line 396
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_9

    .line 397
    :try_start_16
    const-string v0, "OPPerf"

    const-string/jumbo v4, "mode perflock is null!"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_8

    .line 433
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :catch_4
    move-exception v0

    goto/16 :goto_c

    .line 399
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :cond_9
    const/4 v0, 0x0

    .line 399
    .restart local v0    # "i":I
    :goto_7
    move v4, v0

    .line 399
    .end local v0    # "i":I
    .restart local v4    # "i":I
    :try_start_17
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    if-ge v4, v0, :cond_a

    .line 400
    :try_start_18
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 401
    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 402
    .local v5, "level":Ljava/lang/String;
    const-string/jumbo v0, "param"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 403
    .local v7, "param":Ljava/lang/String;
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

    .line 404
    iget-object v12, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    .line 405
    :try_start_19
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    new-instance v13, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    invoke-direct {v13, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    monitor-exit v12

    .line 399
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    add-int/lit8 v0, v4, 0x1

    .line 399
    .end local v4    # "i":I
    .restart local v0    # "i":I
    goto :goto_7

    .line 406
    .end local v0    # "i":I
    .restart local v4    # "i":I
    .restart local v5    # "level":Ljava/lang/String;
    .restart local v7    # "param":Ljava/lang/String;
    :catchall_4
    move-exception v0

    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    .line 410
    .end local v4    # "i":I
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    :cond_a
    :goto_8
    :try_start_1b
    const-string/jumbo v0, "schedtune"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    move-object v3, v0

    .line 411
    if-nez v3, :cond_b

    .line 412
    :try_start_1c
    const-string v0, "OPPerf"

    const-string/jumbo v4, "mode schedtune is null!"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    .line 437
    move-object/from16 v28, v6

    goto/16 :goto_b

    .line 414
    :cond_b
    const/4 v0, 0x0

    .line 414
    .restart local v0    # "i":I
    :goto_9
    move v4, v0

    .line 414
    .end local v0    # "i":I
    .restart local v4    # "i":I
    :try_start_1d
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_d

    .line 415
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 416
    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 417
    .restart local v5    # "level":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    move-object v7, v0

    .line 418
    .local v7, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v12, v0

    .line 419
    .local v12, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v0, "item"

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v13, v0

    .line 420
    .local v13, "nlitem":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .line 420
    .local v0, "j":I
    :goto_a
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v0, v14, :cond_c

    .line 421
    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    .line 422
    .local v14, "nnmitem":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v15, "path"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 423
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v27, v3

    const-string/jumbo v3, "param"

    .line 423
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .local v27, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v14, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6

    .line 424
    .local v3, "param":Ljava/lang/String;
    move-object/from16 v28, v6

    :try_start_1e
    const-string v6, "default"

    .line 424
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .local v28, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v14, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "defaultParam":Ljava/lang/String;
    move-object/from16 v29, v8

    new-instance v8, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .line 425
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v29, "nnm":Lorg/w3c/dom/NamedNodeMap;
    invoke-direct {v8, v1, v15, v3, v6}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    .line 420
    .end local v3    # "param":Ljava/lang/String;
    .end local v6    # "defaultParam":Ljava/lang/String;
    .end local v14    # "nnmitem":Lorg/w3c/dom/NamedNodeMap;
    .end local v15    # "path":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v27

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto :goto_a

    .line 427
    .end local v0    # "j":I
    .end local v27    # "nl":Lorg/w3c/dom/NodeList;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .end local v29    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v3, "nl":Lorg/w3c/dom/NodeList;
    .local v6, "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_c
    move-object/from16 v27, v3

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    .line 427
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v27    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v29    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedtuneMap add : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 428
    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5

    .line 429
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    monitor-exit v3

    .line 414
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v12    # "e":Lorg/w3c/dom/Element;
    .end local v13    # "nlitem":Lorg/w3c/dom/NodeList;
    add-int/lit8 v0, v4, 0x1

    .line 414
    .end local v4    # "i":I
    .local v0, "i":I
    move-object/from16 v3, v27

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto/16 :goto_9

    .line 430
    .end local v0    # "i":I
    .restart local v4    # "i":I
    .restart local v5    # "level":Ljava/lang/String;
    .restart local v7    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .restart local v12    # "e":Lorg/w3c/dom/Element;
    .restart local v13    # "nlitem":Lorg/w3c/dom/NodeList;
    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_5

    .line 433
    .end local v4    # "i":I
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .end local v12    # "e":Lorg/w3c/dom/Element;
    .end local v13    # "nlitem":Lorg/w3c/dom/NodeList;
    .end local v27    # "nl":Lorg/w3c/dom/NodeList;
    .end local v29    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :catch_5
    move-exception v0

    move-object/from16 v6, v28

    goto :goto_c

    .line 437
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :cond_d
    move-object/from16 v28, v6

    .line 439
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    :goto_b
    return v2

    .line 433
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_6
    move-exception v0

    move-object/from16 v28, v6

    .line 433
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    goto :goto_c

    .line 433
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_7
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v28, v6

    .line 433
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    goto :goto_c

    .line 433
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .local v3, "f":Ljava/io/File;
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_8
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v6

    .line 433
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    goto :goto_c

    .line 433
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_9
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    .line 433
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_c

    .line 433
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_a
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    .line 434
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
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

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    const/4 v3, -0x3

    return v3
.end method

.method private resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 17
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    move-object/from16 v1, p0

    .line 804
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

    .line 805
    :cond_0
    if-nez v2, :cond_1

    .line 806
    return-void

    .line 809
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 810
    const-string v0, "-1"

    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    .line 814
    :cond_2
    const/4 v3, 0x0

    .line 814
    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 815
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 816
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PkgMap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 817
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 818
    .local v5, "pkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 818
    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 819
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 820
    .local v7, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 821
    .local v8, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "perflock"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 822
    .local v9, "perflockStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 823
    .local v10, "perflock":I
    const-string/jumbo v11, "level"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 824
    .local v11, "level":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v12, ""

    if-ne v11, v12, :cond_4

    .line 825
    :cond_3
    const-string v12, "0"

    move-object v11, v12

    .line 827
    :cond_4
    iget-object v12, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    if-eqz v8, :cond_7

    .line 829
    :try_start_1
    iget-object v13, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 830
    .local v13, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v13, :cond_6

    .line 831
    const-string v14, "-1"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 832
    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 834
    :cond_5
    iput v10, v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 835
    iput-object v11, v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    goto :goto_2

    .line 838
    :cond_6
    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v15, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    invoke-direct {v15, v8, v10, v11}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v14, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .end local v13    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    goto :goto_2

    .line 842
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 841
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

    .line 842
    :cond_8
    monitor-exit v12

    .line 818
    .end local v7    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "perflockStr":Ljava/lang/String;
    .end local v10    # "perflock":I
    .end local v11    # "level":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 842
    .restart local v7    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "perflockStr":Ljava/lang/String;
    .restart local v10    # "perflock":I
    .restart local v11    # "level":Ljava/lang/String;
    :goto_3
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 844
    .end local v5    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "perflockStr":Ljava/lang/String;
    .end local v10    # "perflock":I
    .end local v11    # "level":Ljava/lang/String;
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

    .line 845
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 846
    .local v5, "switchStr":Ljava/lang/String;
    invoke-direct {v1, v5}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    .line 847
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

    .line 848
    .end local v5    # "switchStr":Ljava/lang/String;
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

    .line 849
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 850
    .local v5, "gaming":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/server/am/OnePlusPerfManager;->deciedGamingCoreEnable(Z)V

    .line 852
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

    .line 853
    .end local v5    # "gaming":Ljava/lang/String;
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

    .line 854
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 855
    .local v5, "timeoutStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 856
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

    .line 857
    .end local v5    # "timeoutStr":Ljava/lang/String;
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

    .line 858
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 859
    .local v5, "spkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 859
    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 860
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 861
    .local v7, "spkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 862
    .restart local v8    # "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "mode"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 863
    .local v9, "modeStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 864
    .local v10, "mode":I
    const-string/jumbo v11, "level"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 865
    .restart local v11    # "level":Ljava/lang/String;
    const-string/jumbo v12, "timeout"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 866
    .local v12, "timeoutStr":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 867
    .local v13, "timeout":I
    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v14
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 868
    if-eqz v8, :cond_13

    .line 869
    :try_start_3
    iget-object v15, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 870
    .local v15, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    if-eqz v15, :cond_12

    .line 871
    const-string v0, "-1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 872
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 874
    :cond_11
    iput v10, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 875
    iput-object v11, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 876
    iput v13, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    goto :goto_5

    .line 879
    :cond_12
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-direct {v2, v8, v10, v11, v13}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .end local v15    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    goto :goto_5

    .line 883
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 882
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

    .line 883
    :cond_14
    monitor-exit v14

    .line 859
    .end local v7    # "spkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "modeStr":Ljava/lang/String;
    .end local v10    # "mode":I
    .end local v11    # "level":Ljava/lang/String;
    .end local v12    # "timeoutStr":Ljava/lang/String;
    .end local v13    # "timeout":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_4

    .line 883
    .restart local v7    # "spkgInfoJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "modeStr":Ljava/lang/String;
    .restart local v10    # "mode":I
    .restart local v11    # "level":Ljava/lang/String;
    .restart local v12    # "timeoutStr":Ljava/lang/String;
    .restart local v13    # "timeout":I
    :goto_6
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 885
    .end local v5    # "spkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "spkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "modeStr":Ljava/lang/String;
    .end local v10    # "mode":I
    .end local v11    # "level":Ljava/lang/String;
    .end local v12    # "timeoutStr":Ljava/lang/String;
    .end local v13    # "timeout":I
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

    .line 886
    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    .line 887
    .local v2, "perflockJsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 887
    .local v0, "i":I
    :goto_7
    move v5, v0

    .line 887
    .end local v0    # "i":I
    .local v5, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_18

    .line 888
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v6, v0

    .line 889
    .local v6, "perflockJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "level"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 890
    .local v7, "level":Ljava/lang/String;
    const-string/jumbo v0, "param"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 891
    .local v8, "param":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    invoke-direct {v0, v8}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 892
    .local v9, "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    iget-object v10, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 893
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
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

    .line 895
    :cond_17
    monitor-exit v10

    .line 887
    .end local v6    # "perflockJsonObject":Lorg/json/JSONObject;
    .end local v7    # "level":Ljava/lang/String;
    .end local v8    # "param":Ljava/lang/String;
    .end local v9    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    add-int/lit8 v0, v5, 0x1

    .line 887
    .end local v5    # "i":I
    .restart local v0    # "i":I
    goto :goto_7

    .line 895
    .end local v0    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "perflockJsonObject":Lorg/json/JSONObject;
    .restart local v7    # "level":Ljava/lang/String;
    .restart local v8    # "param":Ljava/lang/String;
    .restart local v9    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 897
    .end local v2    # "perflockJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "perflockJsonObject":Lorg/json/JSONObject;
    .end local v7    # "level":Ljava/lang/String;
    .end local v8    # "param":Ljava/lang/String;
    .end local v9    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
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

    .line 898
    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    .line 899
    .local v2, "schedtuneJsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 899
    .restart local v0    # "i":I
    :goto_8
    move v5, v0

    .line 899
    .end local v0    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_1d

    .line 900
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    move-object v6, v0

    .line 902
    .local v6, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v7, v0

    .line 903
    .local v7, "schedtuneJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "level"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 904
    .local v8, "level":Ljava/lang/String;
    const-string/jumbo v0, "item"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v9, v0

    .line 906
    .local v9, "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 906
    .local v0, "j":I
    :goto_9
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_1b

    .line 907
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 908
    .local v10, "jsitem":Lorg/json/JSONObject;
    const-string/jumbo v11, "path"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 909
    .local v11, "path":Ljava/lang/String;
    const-string/jumbo v12, "param"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 910
    .local v12, "param":Ljava/lang/String;
    const-string v13, "default"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 911
    .local v13, "defaultParam":Ljava/lang/String;
    new-instance v14, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    invoke-direct {v14, v1, v11, v12, v13}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .local v14, "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    invoke-virtual {v6, v14}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    .line 913
    sget-boolean v15, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v15, :cond_1a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string/jumbo v2, "resolvePerfConfigFromJSON # schedtune, level = "

    .line 913
    .end local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .local v16, "schedtuneJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .end local v10    # "jsitem":Lorg/json/JSONObject;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "param":Ljava/lang/String;
    .end local v13    # "defaultParam":Ljava/lang/String;
    .end local v14    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    goto :goto_a

    .line 906
    .end local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :cond_1a
    move-object/from16 v16, v2

    .line 906
    .end local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    goto :goto_9

    .line 915
    .end local v0    # "j":I
    .end local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :cond_1b
    move-object/from16 v16, v2

    .line 915
    .end local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    iget-object v2, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 916
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
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

    .line 918
    :cond_1c
    monitor-exit v2

    .line 899
    .end local v6    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v7    # "schedtuneJsonObject":Lorg/json/JSONObject;
    .end local v8    # "level":Ljava/lang/String;
    .end local v9    # "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    add-int/lit8 v0, v5, 0x1

    .line 899
    .end local v5    # "i":I
    .local v0, "i":I
    move-object/from16 v2, v16

    goto/16 :goto_8

    .line 918
    .end local v0    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .restart local v7    # "schedtuneJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "level":Ljava/lang/String;
    .restart local v9    # "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    .line 814
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v7    # "schedtuneJsonObject":Lorg/json/JSONObject;
    .end local v8    # "level":Ljava/lang/String;
    .end local v9    # "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    .end local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :cond_1d
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 922
    .end local v3    # "index":I
    :cond_1e
    const-string v0, "OPPerf"

    const-string v2, "[OnlineConfig] OPPerf updated complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_c

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/Exception;
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

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_d

    .line 923
    :catch_1
    move-exception v0

    .line 924
    .local v0, "e":Lorg/json/JSONException;
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

    .line 927
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_c
    nop

    .line 928
    :goto_d
    return-void
.end method

.method private runAppMayWithPerf(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .line 200
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    if-nez v0, :cond_2

    .line 204
    if-eqz p1, :cond_1

    .line 205
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 208
    :goto_0
    return v1

    .line 210
    :cond_2
    const/4 v0, 0x0

    .line 211
    .local v0, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object v0, v2

    .line 213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
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

    .line 215
    if-nez v0, :cond_3

    .line 217
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v1

    return v1

    .line 219
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusPerfManager;->perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z

    move-result v1

    return v1

    .line 213
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
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    const-string v1, "0"

    .line 683
    .local v1, "level":Ljava/lang/String;
    sget v2, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 684
    .local v2, "timeout":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 685
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object v0, v4

    .line 686
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 687
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 688
    iget-object v1, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 689
    iget v2, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 691
    .end local v1    # "level":Ljava/lang/String;
    .end local v2    # "timeout":I
    .local v4, "level":Ljava/lang/String;
    .local v5, "timeout":I
    :cond_0
    move-object v4, v1

    move v5, v2

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->removeMessages(I)V

    .line 693
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 694
    .local v1, "msg":Landroid/os/Message;
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 695
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v5

    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 696
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

    .line 697
    return-void

    .line 699
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    .line 700
    .local v1, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v6, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 701
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v1, v3

    .line 702
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    if-eqz v1, :cond_3

    .line 704
    invoke-virtual {v1, v4}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 705
    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 706
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 707
    .local v2, "msg":Landroid/os/Message;
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v5

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 709
    const-string v3, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startSpeedSchedtune # level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 711
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

    .line 714
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

    .line 716
    :goto_0
    return-void

    .line 702
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 686
    .end local v4    # "level":Ljava/lang/String;
    .end local v5    # "timeout":I
    .local v1, "level":Ljava/lang/String;
    .local v2, "timeout":I
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
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 643
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 644
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    if-nez v0, :cond_1

    return v1

    .line 645
    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 647
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 648
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 649
    return v1
.end method

.method public autoAcquireOrRelease(Z)Z
    .locals 3
    .param p1, "done"    # Z

    .line 180
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
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

    .line 182
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 183
    if-eqz p1, :cond_2

    .line 184
    const-string v0, ""

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_1
    return v1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v0

    return v0

    .line 194
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
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 160
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 163
    .local v2, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v2, :cond_1

    .line 166
    iget v1, v2, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    monitor-exit v0

    return v1

    .line 168
    :cond_1
    monitor-exit v0

    return v1

    .line 170
    .end local v2    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 749
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "initOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 751
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 752
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    new-instance v3, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusPerfManager;)V

    const-string v4, "OPPerf"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 753
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 754
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 757
    return-void
.end method

.method public runAppMayWithPerf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
