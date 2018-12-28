.class public Lcom/android/server/am/OnePlusJankManager;
.super Ljava/lang/Object;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;,
        Lcom/android/server/am/OnePlusJankManager$JankRecordItem;,
        Lcom/android/server/am/OnePlusJankManager$JankMDMItem;,
        Lcom/android/server/am/OnePlusJankManager$JankReportItem;
    }
.end annotation


# static fields
.field private static final ACTION_MDM_JANK_DATE:Ljava/lang/String; = "oneplus.intent.action.MDM_JANK_DATE"

.field private static final ACTION_SAVE_JANK_DATE:Ljava/lang/String; = "oneplus.intent.action.SAVE_JANK_DATE"

.field private static CATCH_SYSTRACE_TIME:I = 0x0

.field private static final CONFIG_NAME:Ljava/lang/String; = "OnePlusJankManager"

.field private static INTERVAL_SYSTRACE_TIME:I = 0x0

.field private static JANKMANAGER_DEBUG:Z = false

.field private static JANKMANAGER_DISK:Z = false

.field private static JANKMANAGER_ENABLE:Z = false

.field private static JANKMANAGER_MDM:Z = false

.field private static JANKMANAGER_STATE:Z = false

.field private static JANKMANAGER_SYSTRACE:Z = false

.field private static JANKMANAGER_TEST:Z = false

.field private static JANK_LEVEL_HIGH:I = 0x0

.field private static JANK_LEVEL_LONG:I = 0x0

.field private static JANK_LEVEL_LOW:I = 0x0

.field private static JANK_LEVEL_SYSTRACE:I = 0x0

.field private static final JANK_MDMID:Ljava/lang/String; = "PDJE7FI1KD"

.field private static final JANK_MDM_RECORD_FILE:Ljava/lang/String; = "/data/system/jankmdm.log"

.field private static final JANK_RECORD_FILE:Ljava/lang/String; = "/data/system/jankevent.log"

.field private static final LAST_MDM_TIME:Ljava/lang/String; = "lastMDMTime"

.field private static final MSG_GET_ONLINECONFIG:I = 0x2

.field private static final MSG_GET_SYSTRACE_FOR_JANK:I = 0x4

.field private static final MSG_INIT_ONLINECONFIG:I = 0x1

.field private static final MSG_RESET_SYSTRACE_STATE_FOR_JANK:I = 0x6

.field private static final MSG_STOP_SYSTRACE_FOR_JANK:I = 0x5

.field private static final MSG_UPLOAD_MDM_JANK_UPLOAD:I = 0x3

.field private static final PROP_BOOT_COMPLETED:Ljava/lang/String; = "sys.boot_completed"

.field private static final PROP_JANKMANAGER_DEBUG:Ljava/lang/String; = "persist.sys.jankmanager.debug"

.field private static final PROP_JANKMANAGER_DISK:Ljava/lang/String; = "persist.sys.jankmanager.disk"

.field private static final PROP_JANKMANAGER_ENABLE:Ljava/lang/String; = "persist.sys.jankmanager.enable"

.field private static final PROP_JANKMANAGER_LEVEL_HIGH:Ljava/lang/String; = "persist.sys.jankmanager.levelhigh"

.field private static final PROP_JANKMANAGER_LEVEL_LOW:Ljava/lang/String; = "persist.sys.jankmanager.levellow"

.field private static final PROP_JANKMANAGER_LEVEL_SYSTRACE:Ljava/lang/String; = "persist.sys.jankmanager.levelsystrace"

.field private static final PROP_JANKMANAGER_LONG:Ljava/lang/String; = "persist.sys.jankmanager.long"

.field private static final PROP_JANKMANAGER_MDM:Ljava/lang/String; = "persist.sys.jankmanager.mdm"

.field private static final PROP_JANKMANAGER_OPEN:Ljava/lang/String; = "persist.sys.jankmanager.state"

.field private static final PROP_JANKMANAGER_SYSTRACE:Ljava/lang/String; = "persist.sys.jankmanager.systrace"

.field private static final PROP_JANKMANAGER_SYSTRACE_TIME:Ljava/lang/String; = "persist.sys.jankmanager.tracetime"

.field private static final PROP_JANKMANAGER_TEST:Ljava/lang/String; = "persist.sys.jankmanager.test"

.field private static final TAG:Ljava/lang/String; = "OnePlusJankManager"

.field private static mJankInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

.field private static mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

.field private static sInstance:Lcom/android/server/am/OnePlusJankManager;


# instance fields
.field private isGetingSystrace:Z

.field private isJankAlarmInited:Z

.field private isLevelSystrace:Z

.field private isMDMAlarmInited:Z

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

.field private mJankMonitorThread:Landroid/os/HandlerThread;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    const/16 v0, 0xf

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    const/4 v1, 0x5

    sput v1, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    sput v0, Lcom/android/server/am/OnePlusJankManager;->INTERVAL_SYSTRACE_TIME:I

    new-instance v0, Lcom/android/server/am/OnePlusJankManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusJankManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->sInstance:Lcom/android/server/am/OnePlusJankManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusJankManager$JankReportItem;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    new-instance v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;-><init>(Lcom/android/server/am/OnePlusJankManager$1;)V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/OnePlusJankManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusJankManager$1;-><init>(Lcom/android/server/am/OnePlusJankManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string v1, "OnePlusJankManager create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "jankmanager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;-><init>(Lcom/android/server/am/OnePlusJankManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    return-void
.end method

.method private GetlogFile()V
    .locals 0

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusJankManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusJankManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusJankManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->reportJankInternal(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->getTraceAndDateForJank(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusJankManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->stopTraceForJank()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/am/OnePlusJankManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusJankManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/OnePlusJankManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusJankManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->saveJankFromHashMapToDisk()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusJankManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/am/OnePlusJankManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusJankManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->uploadMDM()V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private static formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-jkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatHashKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-jkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCurrentTimeStringDate()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getHashKeyFromStr(Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    .locals 8

    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v0, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iput-object v1, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    :cond_0
    const/4 v0, 0x0

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    return-object v4

    :cond_1
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v0, v5, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    return-object v3
.end method

.method private static getHashKeyFromStr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    .locals 8

    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v0, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iput-object v1, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    :cond_0
    const/4 v0, 0x0

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    return-object v4

    :cond_1
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v0, v5, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iput-object p1, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    return-object v3
.end method

.method public static getInstance()Lcom/android/server/am/OnePlusJankManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->sInstance:Lcom/android/server/am/OnePlusJankManager;

    return-object v0
.end method

.method private static getStrFromHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-times:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTraceAndDateForJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->isTracesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->startTracing()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget v3, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    const/4 v3, -0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method private isBootCompleted()Z
    .locals 2

    const-string/jumbo v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMDMEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    return v0
.end method

.method private isTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    return v0
.end method

.method private isTracesEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    return v0
.end method

.method private static persistToDisk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    move-object v1, p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x200000

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-gez v5, :cond_2

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v5

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getCurrentTimeStringDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v4, v7

    :goto_0
    nop

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    return v6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    nop

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const/4 v4, 0x0

    return v0

    :goto_3
    nop

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    const/4 v4, 0x0

    throw v0

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v4, 0x0

    return v0

    :cond_4
    :goto_5
    return v0
.end method

.method private persistToDisk(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-jkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getCurrentTimeStringDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/jankevent.log"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusJankManager;->persistToDisk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static readJankFromFileToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "OnePlusJankManager"

    const-string/jumbo v4, "readJankFromFileToHashMap The File doesn\'t not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    nop

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "OnePlusJankManager"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "OnePlusJankManager"

    const-string v5, "The File doesn\'t not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    return-object v1
.end method

.method private static readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "OnePlusJankManager"

    const-string/jumbo v4, "readJankFromFileToHashMap The File doesn\'t not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    nop

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_2

    invoke-static {v7}, Lcom/android/server/am/OnePlusJankManager;->getHashKeyFromStr(Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v8, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v8, v8, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v9, v9, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v10, v10, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v11, v11, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "OnePlusJankManager"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "OnePlusJankManager"

    const-string v5, "The File doesn\'t not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    return-object v1
.end method

.method private reportJankInternal(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "is Splash activity, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "not forground app, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 v1, 0x3

    if-eq p4, v1, :cond_6

    :cond_5
    if-ne p3, v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->getTraceAndDateForJank(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->isMDMEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->saveJankInfoToMap(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->persistToDisk(Ljava/lang/String;Ljava/lang/String;II)Z

    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 11

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    if-ge v1, v2, :cond_13

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WhiteListPkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "OnePlusJankManager"

    const-string v5, "[OnlineConfig] clear mWhiteList"

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

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v8, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "OnePlusJankManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add mWhiteList pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v7
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

    :cond_5
    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_6
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    const-string/jumbo v3, "persist.sys.jankmanager.state"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    const-string/jumbo v3, "persist.sys.jankmanager.enable"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    const-string/jumbo v3, "persist.sys.jankmanager.debug"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mdm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    const-string/jumbo v3, "persist.sys.jankmanager.mdm"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "disk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    const-string/jumbo v3, "persist.sys.jankmanager.disk"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "systrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    const-string/jumbo v3, "persist.sys.jankmanager.systrace"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    const-string/jumbo v3, "persist.sys.jankmanager.test"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "low_level"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    const-string/jumbo v3, "persist.sys.jankmanager.levellow"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "high_level"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    const-string/jumbo v3, "persist.sys.jankmanager.levelhigh"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "long_jank"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    const-string/jumbo v3, "persist.sys.jankmanager.long"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trace_value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    const-string/jumbo v3, "persist.sys.jankmanager.levelsystrace"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trace_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    const-string/jumbo v3, "persist.sys.jankmanager.tracetime"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_13
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "OnePlusJankManager"

    const-string v1, "[OnlineConfig] jankmanager updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "OnePlusJankManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] jankmanager Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, "OnePlusJankManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] jankmanager JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_4
    nop

    :goto_5
    return-void
.end method

.method private saveJankFromHashMapToDisk()V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string v1, "SaveJankHashMapToDisk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto :goto_0

    :cond_2
    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusJankManager;->writeJankFromHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    const-string v2, "/data/system/jankmdm.log"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusJankManager;->writeJankFromHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    :goto_2
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method

.method private saveJankInfoToMap(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "saveJankInfoToMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private scheduleRecommendationUpdate(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v1, v11, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusJankManager;->isTestMode()Z

    move-result v3

    const-wide/32 v13, 0x36ee80

    if-eqz v3, :cond_0

    const-wide/32 v3, 0xdbba0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    nop

    move-wide v7, v13

    :goto_0
    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    move-object v3, v2

    move-object v9, v12

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    invoke-static {v1, v11, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    const/4 v4, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusJankManager;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide v7, v13

    goto :goto_1

    :cond_1
    const-wide/32 v7, 0x5265c00

    :goto_1
    move-object v3, v2

    move-object v13, v9

    move-object v9, v11

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    iput-boolean v15, v0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    return-void
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusJankManager"

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

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OnePlusJankManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startBugReport()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "startBugReport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->GetlogFile()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v0, :cond_1

    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mOemExSvc:Lcom/oem/os/IOemExService;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mOemExSvc:Lcom/oem/os/IOemExService;

    const-string/jumbo v1, "jankmanager_outlier"

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->dumpJankBugreport(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusJankManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpLightBugreport failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startTracing()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "startTracing start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.traceur.JANK_START_TRACING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    return-void
.end method

.method private stopTraceForJank()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "stopTraceForJank"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->stopTracing()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->startBugReport()V

    return-void
.end method

.method private stopTracing()V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "stopTracing start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.traceur.JANK_STOP_TRACING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget v3, Lcom/android/server/am/OnePlusJankManager;->INTERVAL_SYSTRACE_TIME:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private toMDM(Lcom/android/server/am/OnePlusJankManager$JankMDMItem;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"pkg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"view\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"jkType\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"level\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"times\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateOnlineConfig()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "updateOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    const-string v2, "OnePlusJankManager"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusJankManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private uploadMDM()V
    .locals 7

    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "uploadMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    :cond_4
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusJankManager;->getHashKeyFromStr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusJankManager;->toMDM(Lcom/android/server/am/OnePlusJankManager$JankMDMItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    goto :goto_3

    :cond_8
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v2, "data"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v3, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    const-string v4, "PDJE7FI1KD"

    invoke-direct {v2, v3, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "jank_data_new"

    invoke-virtual {v2, v3, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "/data/system/jankmdm.log"

    invoke-static {v3}, Lcom/android/server/am/OnePlusJankManager;->deleteFile(Ljava/lang/String;)V

    return-void

    :cond_9
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method private static writeJankFromHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusJankManager;->getStrFromHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusJankManager;->persistToDisk(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The JnakManager status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Jank event list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "/data/system/jankevent.log"

    invoke-static {v0}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getUidForTraceur()I
    .locals 1

    const-string v0, "com.android.traceur"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusJankManager;->getUidForPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "persist.sys.jankmanager.state"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    const-string/jumbo v0, "persist.sys.jankmanager.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    const-string/jumbo v0, "persist.sys.jankmanager.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    const-string/jumbo v0, "persist.sys.jankmanager.mdm"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    const-string/jumbo v0, "persist.sys.jankmanager.disk"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    const-string/jumbo v0, "persist.sys.jankmanager.systrace"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    const-string/jumbo v0, "persist.sys.jankmanager.test"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    const-string/jumbo v0, "persist.sys.jankmanager.levellow"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    const-string/jumbo v0, "persist.sys.jankmanager.levelhigh"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    const-string/jumbo v0, "persist.sys.jankmanager.long"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    const-string/jumbo v0, "persist.sys.jankmanager.levelsystrace"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    const-string/jumbo v0, "persist.sys.jankmanager.tracetime"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    iput-object p1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    new-instance v3, Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusJankManager;)V

    const-string v4, "OnePlusJankManager"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusJankManager;->scheduleRecommendationUpdate(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    const-string v2, "fm.xiami.main"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    const-string v2, "com.tencent.qt.qtl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "viewName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "jankType"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "jankLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method
