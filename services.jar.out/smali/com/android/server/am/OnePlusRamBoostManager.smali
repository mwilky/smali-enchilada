.class public Lcom/android/server/am/OnePlusRamBoostManager;
.super Ljava/lang/Object;
.source "OnePlusRamBoostManager.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;,
        Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "RamBoost"

.field private static final DAY_IN_MS:J = 0x5265c00L

.field private static DEBUG:Z = false

.field private static final DEFAULT_END_HOTCOUTN:Ljava/lang/String; = "0"

.field private static ENABLE:Z = false

.field private static IOPPRELOAD:Z = false

.field private static final IOP_TIMEOUT:J = 0x2710L

.field private static final MAX_HIGH_USE_HOTCOUNT:I = 0x384

.field private static final MSG_DISABLE_RAMBOOST:I = 0x6

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_INIT_ONLINECONFIG:I = 0x2

.field private static final MSG_IOP_PRELOAD:I = 0xa

.field private static final MSG_IOP_RECORD:I = 0x9

.field private static final MSG_IOP_START:I = 0x8

.field private static final MSG_READ_XML:I = 0x7

.field private static final MSG_RESUME_HOTCOUNT:I = 0x4

.field private static final MSG_UPDATE_HIGHUSAGE_PKG:I = 0x5

.field private static final MSG_WRITE_HOTCOUNT:I = 0x3

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ramboost.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ramboost.enable"

.field private static final PROP_IOPPRELOAD:Ljava/lang/String; = "persist.sys.ramboost.ioppreload"

.field private static final PROP_RESIDE_SWITCH:Ljava/lang/String; = "/proc/sys/vm/page_cache_reside_switch"

.field private static final RAMBOOST_FILE:Ljava/lang/String; = "/system/etc/ramboost.xml"

.field private static final SOCKET_NAME:Ljava/lang/String; = "ramboost"

.field public static final TAG:Ljava/lang/String; = "OnePlusRamBoostManager"

.field private static final XML_ATTR_HOTCOUNT:Ljava/lang/String; = "hotcount"

.field private static final XML_ATTR_IOPPRELOAD:Ljava/lang/String; = "ioppreload"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_IOP:Ljava/lang/String; = "iop"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_RAMBOOST:Ljava/lang/String; = "ramboost"

.field private static mInstance:Lcom/android/server/am/OnePlusRamBoostManager;


# instance fields
.field private mAppPageCacheInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHighUsagePkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIopPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPageCachePkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

.field private mRamBoostThread:Landroid/os/HandlerThread;

.field private suffixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usageMgr:Lcom/android/server/am/RestartProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".oppo.nearme.gamecenter"

    const-string v2, ".oppo"

    const-string v3, ".nearme.gamecenter"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->suffixList:Ljava/util/List;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ramboost"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusRamBoostManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusRamBoostManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchPreload()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusRamBoostManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusRamBoostManager;->updateHighUsagePkg(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->writeHotCount(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusRamBoostManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->resumeHotCount(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->disableRamBoost()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusRamBoostManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->readXML()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->propertyInit()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusRamBoostManager;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private connectServer()Landroid/net/LocalSocket;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "ramboost"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    const-string v2, "OnePlusRamBoostManager"

    const-string/jumbo v3, "socket connect"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "OnePlusRamBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private disableRamBoost()V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusRamBoostManager"

    const-string v1, "disableRamBoost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusRamBoostManager;->getEchoPath(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpList()V
    .locals 3

    const-string v0, "OnePlusRamBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPageCachePkgMap size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OnePlusRamBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHighUsagePkgList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v3, "OnePlusRamBoostManager"

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

    const-string v5, "OnePlusRamBoostManager"

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

    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "OnePlusRamBoostManager"

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

    const-string v4, "OnePlusRamBoostManager"

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
    const-string v4, "OnePlusRamBoostManager"

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

    const-string v4, "OnePlusRamBoostManager"

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

    const-string v6, "OnePlusRamBoostManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    nop

    :cond_4
    :goto_7
    throw v3
.end method

.method private filterSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->suffixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getEchoPath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/page_hot_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getHotCountFromHighList(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OnePlusRamBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHotCountFromHighList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz v0, :cond_2

    const/16 v2, 0x384

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :cond_2
    :goto_0
    const-string v2, "0"

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusRamBoostManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusRamBoostManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    return-object v0
.end method

.method private getPreloadString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    :cond_0
    const-string/jumbo v2, "iop_preload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private isHighUsedPkg(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private propertyInit()V
    .locals 2

    const-string/jumbo v0, "persist.sys.ramboost.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    const-string/jumbo v0, "persist.sys.ramboost.enable"

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.ramboost.ioppreload"

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readXML()I
    .locals 17

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusRamBoostManager"

    const-string/jumbo v2, "readXML"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/ramboost.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusRamBoostManager"

    const-string v4, "# readXml # file not exists"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v6, v0

    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object v5, v0

    invoke-virtual {v5, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v6, v0

    const-string/jumbo v0, "ramboost"

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

    const-string/jumbo v11, "ioppreload"

    invoke-interface {v8, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    sget-boolean v12, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "OnePlusRamBoostManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "version="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", switch="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", ioppreload="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v12, "pkg"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    if-nez v12, :cond_4

    const-string v0, "OnePlusRamBoostManager"

    const-string v13, "# readXml # error # pkg nl = null"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v0, v7

    :goto_0
    move v13, v0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v13, v0, :cond_6

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

    const-string v0, "hotcount"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    iget-object v3, v1, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "OnePlusRamBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PageCachePkgMap add # "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    add-int/lit8 v0, v13, 0x1

    const/4 v3, -0x1

    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_6
    :goto_1
    const-string/jumbo v0, "iop"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v3, v0

    if-nez v3, :cond_7

    const-string v0, "OnePlusRamBoostManager"

    const-string v7, "# readXml # error # iop nl = null"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_2
    move v7, v0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_9

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "OnePlusRamBoostManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IopPkgList add: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v13, v1, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v13

    add-int/lit8 v0, v7, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_9
    :goto_3
    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "OnePlusRamBoostManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# readXml # parse error ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x1

    return v3
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusRamBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "OnePlusRamBoostManager"

    const-string v5, "[OnlineConfig] clear PageCacheList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hotcount"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_4

    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v9, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "OnePlusRamBoostManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[OnlineConfig] add pkg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "iop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "OnePlusRamBoostManager"

    const-string v5, "[OnlineConfig] clear IopPkgList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v7, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    const-string v0, "OnePlusRamBoostManager"

    const-string v1, "[OnlineConfig] ramboost updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "OnePlusRamBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] ramboost Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v1, "OnePlusRamBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] ramboost JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    nop

    :goto_6
    return-void
.end method

.method private resumeHotCount(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string v1, "OnePlusRamBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeHotCount: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendMsgIOPrefetchPreload()I
    .locals 7

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->getPreloadString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v3

    move-object v4, v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v5, "OnePlusRamBoostManager"

    const-string/jumbo v6, "iop_preload"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v2

    int-to-short v5, v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private sendMsgIOPrefetchRecord(Ljava/lang/String;)I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "iop_record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v2

    move-object v3, v2

    const/4 v4, -0x1

    if-nez v2, :cond_0

    return v4

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v5, "OnePlusRamBoostManager"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v1

    int-to-short v5, v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return v4
.end method

.method private sendMsgIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iop_start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v3

    move-object v4, v3

    const/4 v5, -0x1

    if-nez v3, :cond_0

    return v5

    :cond_0
    :try_start_1
    const-string v3, "OnePlusRamBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "OnePlusRamBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    array-length v6, v2

    int-to-short v6, v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    array-length v6, v2

    invoke-virtual {v3, v2, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    if-lez p1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "pkgName"

    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const-wide/16 v9, 0x2710

    invoke-virtual {v6, v3, v9, v10}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return v8

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return v5

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusRamBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setprop:"

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

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OnePlusRamBoostManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static shortToBytes(S)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private updateHighUsagePkg(J)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusRamBoostManager"

    const-string/jumbo v1, "updateHighUsagePkg"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateOnlineConfig()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusRamBoostManager"

    const-string/jumbo v1, "updateOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    const-string v2, "RamBoost"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private writeHotCount(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->getEchoPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "OnePlusRamBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount FAILED!!! # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OnePlusRamBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "OnePlusRamBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeHotCount # no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in PkgMap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const-string v1, "0"

    if-eq v1, p2, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 5

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "DEBUG true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    goto :goto_0

    :cond_0
    const-string v1, "DEBUG false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "update highlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->removeMessages(I)V

    const-wide/32 v3, 0x5265c00

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusRamBoostManager;->updateHighUsagePkg(J)V

    const-string v1, "OnePlusRamBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHighUsagePkgList size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "dump List"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->dumpList()V

    goto :goto_0

    :cond_3
    const-string v1, "OnePlusRamBoostManager"

    const-string/jumbo v3, "invalid config cmd!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusRamBoostManager"

    const-string/jumbo v1, "initOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    new-instance v3, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;)V

    const-string v4, "RamBoost"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "codePath"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyRamBoost(Ljava/lang/String;IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->filterSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->getHotCountFromHighList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "pkgName"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "hotCount"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pid"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    :cond_2
    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string v2, "OnePlusRamBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    const-string v1, "OnePlusRamBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeHotCount: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    const-string v0, "OnePlusRamBoostManager"

    const-string v1, "OIMC enable ramboost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    const-string v0, "OnePlusRamBoostManager"

    const-string v1, "OIMC disable ramboost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    return v0
.end method
