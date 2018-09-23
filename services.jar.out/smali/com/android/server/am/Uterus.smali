.class Lcom/android/server/am/Uterus;
.super Ljava/lang/Object;
.source "Uterus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Uterus$BirthRunnable;,
        Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;,
        Lcom/android/server/am/Uterus$InitiateRunnable;,
        Lcom/android/server/am/Uterus$EmbryoMemory;
    }
.end annotation


# static fields
.field private static final CRASH_COUNT_THRESHOLD:I = 0x3

.field private static final DEBUG:Z = true

.field private static final DEBUG_ONEPLUS:Z

.field private static final LOCAL_BLACKLIST_PATH:Ljava/lang/String; = "/data/system/embryo_black"

.field private static MAX:I = 0x0

.field private static final MDM_TAG:Ljava/lang/String; = "embryo_crash"

.field private static final PATH:Ljava/lang/String; = "/data/system/embryo"

.field private static final SCALE:J

.field private static final TAG:Ljava/lang/String; = "Embryo_Uterus"

.field private static final mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLocalBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/am/Uterus;


# instance fields
.field private final mAllSupervisorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private final mClaimedRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigUpdateRunnable:Ljava/lang/Runnable;

.field private final mCrashRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

.field private final mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/android/server/am/EmbryoHelper;

.field private mHomePackageName:Ljava/lang/String;

.field private mLRUHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private final mStub:Lcom/oneplus/embryo/IEmbryoController$Stub;

.field private final mSupervisors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field private final mTrimRunnable:Ljava/lang/Runnable;

.field private final mWaitingForAttach:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/Embryo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForPreload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/Embryo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    const-string/jumbo v0, "persist.sys.embryo.limit"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Uterus;->MAX:I

    const-string/jumbo v0, "persist.sys.embryo.scale"

    const-wide/32 v1, 0x36ee80

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/Uterus;->SCALE:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/android/server/am/Uterus;->MAX:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mClaimedRecord:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/am/EmbryoHelper;->getInstance()Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    new-instance v0, Lcom/android/server/am/Uterus$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$3;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Uterus$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$4;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Uterus$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$5;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mStub:Lcom/oneplus/embryo/IEmbryoController$Stub;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmbryoManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/Uterus;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/Uterus;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/Uterus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Uterus;->flushToStorage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/Uterus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Uterus;->updateLocalBlacklistToStorage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/Uterus;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/server/am/Uterus;->MAX:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    sput p0, Lcom/android/server/am/Uterus;->MAX:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/am/Uterus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    return-object v0
.end method

.method private doCleanUp(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/EmbryoSupervisor;

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3e7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/EmbryoSupervisor;

    move-object v4, v5

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    :goto_2
    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized flushToStorage()V
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v0, "Embryo_Uterus"

    const-string v1, "Flush to storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;

    invoke-direct {v1}, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    sget-wide v3, Lcom/android/server/am/Uterus;->SCALE:J

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/Uterus;->mHomePackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-lez v9, :cond_2

    long-to-double v9, v3

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v11

    long-to-double v11, v11

    div-double v5, v9, v11

    :cond_2
    const/4 v2, 0x0

    :cond_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "fg"

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v11, v5

    double-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->dump()V

    goto :goto_0

    :cond_4
    const-string v7, "/data/system/embryo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    const-string v2, "Embryo_Uterus"

    const-string v3, "Embryo flush failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/android/server/am/Uterus;
    .locals 1

    sget-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/Uterus;

    invoke-direct {v0}, Lcom/android/server/am/Uterus;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    :cond_0
    sget-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    return-object v0
.end method

.method private notifyMDM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Uterus$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/Uterus$2;-><init>(Lcom/android/server/am/Uterus;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized updateLocalBlacklistToStorage()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Embryo_Uterus"

    const-string v1, "Flush black list to storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "/data/system/embryo_black"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Embryo_Uterus"

    const-string v2, "black list flush failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addClaimRecord(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mClaimedRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Embryo;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getUid()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    monitor-enter v2

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->needAbortion()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Landroid/os/Process;->killProcessQuiet(I)V

    const-string v3, "Embryo_Uterus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Embryo abortion, pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p2, v1}, Landroid/os/Process;->setProcessGroup(II)V

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/am/EmbryoHelper;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    invoke-virtual {v0, p1}, Lcom/android/server/am/Embryo;->setThread(Landroid/app/IApplicationThread;)V

    iget-object v5, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v5, v1}, Lcom/android/server/am/EmbryoHelper;->getCommonServicesLocked(Z)Landroid/util/ArrayMap;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "embryo"

    iget-object v7, p0, Lcom/android/server/am/Uterus;->mStub:Lcom/oneplus/embryo/IEmbryoController$Stub;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v6}, Lcom/android/server/am/EmbryoHelper;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-interface {p1, v3, v4, v6, v5}, Landroid/app/IApplicationThread;->schedulePreload(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v3

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    monitor-enter v2

    :try_start_7
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    monitor-exit v2

    return v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    :catchall_3
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2
.end method

.method public cleanup()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public dumpsys(Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/Uterus;->MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waiting_for_attach:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Embryo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waiting_for_preload:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Embryo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v0, Lcom/android/server/am/Uterus$EmbryoMemory;

    invoke-direct {v0}, Lcom/android/server/am/Uterus$EmbryoMemory;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supervisors:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/am/EmbryoSupervisor;->dump(Ljava/io/PrintWriter;Lcom/android/server/am/Uterus$EmbryoMemory;)V

    goto :goto_2

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v1, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    if-nez v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Memory Usage: PSS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB, USS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avg. Memory Usage: PSS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    iget v4, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB, USS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    iget v4, v0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;
    .locals 4

    move-object v0, p1

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public finish(Lcom/android/server/am/EmbryoSupervisor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;
    .locals 4

    sget-object v0, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "com.android.cts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-object v2

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v2

    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/EmbryoSupervisor;

    if-nez v1, :cond_3

    new-instance v3, Lcom/android/server/am/EmbryoSupervisor;

    invoke-direct {v3, p1, p2}, Lcom/android/server/am/EmbryoSupervisor;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v2

    return-object v1

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v0

    return-object v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public goingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public initLocalBlackList()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/embryo_black"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initiate()V
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/embryo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/Uterus$InitiateRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/Uterus$InitiateRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$1;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mClaimedRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "over crash limit, add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to black list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/am/Uterus;->updateLocalBlackList(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/android/server/am/Uterus;->notifyMDM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update crash record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCrashRecord:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add crash record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " count 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V
    .locals 5

    const/4 v0, 0x0

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/am/Uterus$BirthRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/am/Uterus$BirthRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/Uterus$1;)V

    invoke-virtual {v1, p3}, Lcom/android/server/am/Uterus$BirthRunnable;->setCheckProcess(Z)V

    if-lez p2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v1, :cond_2

    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create Embryo failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pid=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    new-instance v1, Lcom/android/server/am/Embryo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/Embryo;-><init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/Embryo;->setPid(I)V

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Embryo created."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_3
    :goto_0
    return-void
.end method

.method public resume(Ljava/lang/String;ZI)V
    .locals 4

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/server/am/Uterus;->mHomePackageName:Ljava/lang/String;

    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->stop()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    return-void

    :cond_3
    monitor-enter v0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->start()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public scheduleBackup()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Uterus$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/Uterus$1;-><init>(Lcom/android/server/am/Uterus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/Uterus;->doCleanUp(Ljava/util/Set;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setMDMTracker(Lnet/oneplus/odm/insight/tracker/OSTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Uterus;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-void
.end method

.method public shutdown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Uterus;->flushToStorage()V

    invoke-direct {p0}, Lcom/android/server/am/Uterus;->updateLocalBlacklistToStorage()V

    return-void
.end method

.method public trim()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateConfig()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLocalBlackList(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/Uterus;->doCleanUp(Ljava/util/Set;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
