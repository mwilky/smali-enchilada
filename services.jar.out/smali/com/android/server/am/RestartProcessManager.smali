.class public Lcom/android/server/am/RestartProcessManager;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RestartProcessManager$ScoreComparator;,
        Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;,
        Lcom/android/server/am/RestartProcessManager$ClusterComparator;,
        Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;,
        Lcom/android/server/am/RestartProcessManager$DayLRUComparator;,
        Lcom/android/server/am/RestartProcessManager$DayDurationComparator;,
        Lcom/android/server/am/RestartProcessManager$DayRecord;,
        Lcom/android/server/am/RestartProcessManager$PackageRankInfo;,
        Lcom/android/server/am/RestartProcessManager$CenterPoint;,
        Lcom/android/server/am/RestartProcessManager$Cluster;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_NAME:Ljava/lang/String; = "record.txt"

.field public static final BACKUP_PATH:Ljava/lang/String; = "RestartProcessManager"

.field public static final CONFIG_NAME:Ljava/lang/String; = "RestartProcessManager"

.field private static CRITERIA_GENERAL_DURATION:J = 0x0L

.field private static CRITERIA_VALID_DURATION:J = 0x0L

.field private static final DEBUG:Z = true

.field private static final KEY_ENABLE_ALL_MODULE:Ljava/lang/String; = "enable_all_module"

.field private static final KEY_ENABLE_MODULE:Ljava/lang/String; = "enable_module"

.field private static final KEY_GENERAL_DURATION:Ljava/lang/String; = "general_duration"

.field public static final KEY_GENERAL_USED_PACKAGES:Ljava/lang/String; = "General Used Packages"

.field public static final KEY_HIGH_USED_PACKAGES:Ljava/lang/String; = "High Used Packages"

.field public static final KEY_LOW_USED_PACKAGES:Ljava/lang/String; = "Low Used Packages"

.field public static final KEY_SELDOM_USED_PACKAGES:Ljava/lang/String; = "Seldom Used Packages"

.field public static final KEY_ULTRA_USED_PACKAGES:Ljava/lang/String; = "Ultra Used Packages"

.field private static final KEY_VALID_DURATION:Ljava/lang/String; = "valid_duration"

.field private static MAX_CALCULATE_ITERATION:I = 0x0

.field private static MAX_SCORE:D = 0.0

.field private static NORMAL_TIME_DIFF:J = 0x0L

.field private static NUM_CLUSTERS:I = 0x0

.field private static NUM_CLUSTERS_GENERAL:I = 0x0

.field private static NUM_CLUSTERS_HIGH:I = 0x0

.field private static NUM_CLUSTERS_LOW:I = 0x0

.field private static NUM_MAX_HIGH_USED:I = 0x0

.field private static NUM_MIN_HIGH:I = 0x0

.field public static final OLD_BACKUP_FILE_NAME:Ljava/lang/String; = "record_backup.txt"

.field public static final PROPERTY_RESTART_PROCESS:Ljava/lang/String; = "persist.sys.rp.debug"

.field public static final PROPERTY_RESTART_PROCESS_ENABLE:Ljava/lang/String; = "persist.sys.rp.enable"

.field public static final PROPERTY_RESTART_PROCESS_ENABLEAL:Ljava/lang/String; = "persist.sys.rp.enableall"

.field private static RANK_DURAION:J = 0x0L

.field private static RECORD_DURATION:J = 0x0L

.field private static RECORD_LIMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RestartProcessManager"

.field private static WARM_UP_TIME:J

.field private static WRITE_RECORD_DURATION:J

.field private static sAllPackagesInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentMaxDayRecord:I

.field private static sEnableAllModule:Z

.field private static sEnableModule:Z

.field public static sHasReadAllPackages:Z

.field private static sHasWarmUp:Z

.field public static sInitPkgsFromSystemReady:Z

.field public static sInitPkgsFromUnlock:Z

.field private static sIsScreenOff:Z

.field private static sLastRankTime:J

.field private static sLastRunningPackage:Ljava/lang/String;

.field private static sLastWriteRecordTime:J

.field private static sLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private static sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

.field private static sStartWarmUpTime:J

.field private static sUpdatingPackage:Ljava/lang/String;

.field private static sWritingRecord:Z


# instance fields
.field private mBackupFile:Ljava/io/File;

.field private mBaseDir:Ljava/io/File;

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFile:Landroid/util/AtomicFile;

.field private mHighWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecificList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartCenterPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$CenterPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromUnlock:Z

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    const-string v4, ""

    sput-object v4, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    sput v0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    const-wide/16 v2, 0x3e8

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    const-wide/32 v2, 0x5265c00

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    const-wide/32 v4, 0x1b7740

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->WRITE_RECORD_DURATION:J

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    const-string/jumbo v0, "ro.build.beta"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x2932e00

    nop

    :cond_0
    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    const-wide/32 v2, 0x36ee80

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->NORMAL_TIME_DIFF:J

    const/16 v0, 0x14

    sput v0, Lcom/android/server/am/RestartProcessManager;->MAX_CALCULATE_ITERATION:I

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sget v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_MIN_HIGH:I

    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_MAX_HIGH_USED:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    :try_start_0
    const-string v0, "RestartProcessManager"

    const-string v1, "RestartProcessManager start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.sys.rp.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    const-string/jumbo v0, "persist.sys.rp.enableall"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    :cond_0
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_RESTART_PROCESS_ENABLE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_RESTART_PROCESS_ENABLEAL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    :cond_2
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initEssentials()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/RestartProcessManager;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager;->mFile:Landroid/util/AtomicFile;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    return p0
.end method

.method static synthetic access$3100()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    return-wide v0
.end method

.method static synthetic access$3200()I
    .locals 1

    sget v0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .locals 0

    sput p0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    return p0
.end method

.method static synthetic access$3302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400()I
    .locals 1

    sget v0, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    return v0
.end method

.method static synthetic access$3500()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D
    .locals 2

    invoke-static {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    return-wide p0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method private addSpecificList([Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to it\'s not in specific list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addWhiteList([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v3, "high"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "general"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "low"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private assignCluster()V
    .locals 13

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v2, v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    move-wide v2, v0

    const/4 v10, 0x0

    :goto_1
    sget v11, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v10, v11, :cond_1

    iget-object v11, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v11}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v5

    cmpg-double v12, v5, v2

    if-gez v12, :cond_0

    move-wide v2, v5

    move v4, v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v4}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setCluster(I)V

    iget-object v10, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v10, v9}, Lcom/android/server/am/RestartProcessManager$Cluster;->addData(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private calculate()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-nez v2, :cond_3

    sget v3, Lcom/android/server/am/RestartProcessManager;->MAX_CALCULATE_ITERATION:I

    if-le v3, v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->clearClusters()V

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->getCenterPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->assignCluster()V

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->calculateCenterPoint()V

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->getCenterPoints()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v6, v5

    move v5, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-static {v8, v9}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$CenterPoint;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v8

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v9, v8, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v9}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    goto :goto_2

    :cond_1
    const-string v5, "RestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Iteration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "RestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Centroid distances: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v4

    new-instance v12, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    invoke-static {v4, v12}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$CenterPoint;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    goto :goto_3

    :cond_4
    return-void
.end method

.method private calculateCenterPoint()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$Cluster;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getDatas()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    iget-wide v13, v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    add-double/2addr v3, v13

    iget-wide v13, v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    add-double/2addr v5, v13

    iget-wide v13, v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    add-double/2addr v7, v13

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v11

    if-lez v10, :cond_1

    int-to-double v12, v10

    div-double v12, v3, v12

    int-to-double v14, v10

    div-double v14, v5, v14

    move-object/from16 v16, v1

    int-to-double v0, v10

    div-double v0, v7, v0

    iput-wide v12, v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iput-wide v14, v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iput-wide v0, v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    goto :goto_2

    :cond_1
    move-object/from16 v16, v1

    :goto_2
    move-object/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cleanAllWhitelist()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearClusters()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v1}, Lcom/android/server/am/RestartProcessManager$Cluster;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private doCleanData(J)V
    .locals 4

    const-string v0, "RestartProcessManager"

    const-string v1, "Start to clean data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->cleanData(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    sput-wide p1, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    sput v0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v2, "record.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v3, "record_backup.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "RestartProcessManager"

    const-string v1, "Finish cleaning data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private getAllPackagesByUsage(Z)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    :cond_1
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->isDeviceDeepIdleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RestartProcessManager"

    const-string v2, "Deep idle mode, use last result!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->rankAllPkgs()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromUnlock:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    if-eqz v0, :cond_d

    sget-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    const-string v0, "RestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to rank due to duration is over : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->rankAllPkgs()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    :goto_0
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, "RestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total packages : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/am/RestartProcessManager$ClusterComparator;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/am/RestartProcessManager$ClusterComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    if-ge v8, v10, :cond_4

    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v10, v10, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    sget v8, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    :goto_2
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v11, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v10, v10, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    sget v8, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v8, v10

    :goto_3
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v8, v10, :cond_6

    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v10, v10, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    move v8, v7

    :goto_4
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v8, v10, :cond_7

    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v10}, Lcom/android/server/am/RestartProcessManager$Cluster;->dump()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_MAX_HIGH_USED:I

    sub-int/2addr v8, v10

    if-lez v8, :cond_9

    new-instance v10, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;

    invoke-direct {v10, v9}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v10, v7

    :goto_5
    if-ge v10, v8, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_8

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const-string v13, "RestartProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choose "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from High to General"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    sget v7, Lcom/android/server/am/RestartProcessManager;->NUM_MIN_HIGH:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v7, v10

    if-lez v7, :cond_b

    new-instance v10, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;

    invoke-direct {v10, v9}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v15, 0x0

    :goto_6
    move v9, v15

    if-ge v9, v7, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_a

    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const-string v12, "RestartProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Choose "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " from General to High"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v15, v9, 0x1

    goto :goto_6

    :cond_b
    iget-object v9, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v10, "High Used Packages"

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "RestartProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KEY_HIGH_USED_PACKAGES : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v10, "General Used Packages"

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "RestartProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KEY_GENERAL_USED_PACKAGES : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v10, "Low Used Packages"

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "RestartProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KEY_LOW_USED_PACKAGES : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    iget-object v6, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v0

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v0

    :cond_e
    :goto_7
    const-string v0, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sEnableModule is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sEnableAllModule is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v0
.end method

.method private getCenterPoints()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$CenterPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v3

    new-instance v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    iget-wide v5, v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v7, v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v9, v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getDistance(DDDDDD)D
    .locals 9

    sub-double v2, p0, p6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v6, p2, p8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    sub-double v0, p4, p10

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getDistance(Lcom/android/server/am/RestartProcessManager$CenterPoint;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D
    .locals 12

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    iget-wide v6, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v8, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v10, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/RestartProcessManager;->getDistance(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D
    .locals 12

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    iget-wide v6, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v8, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v10, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/RestartProcessManager;->getDistance(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/am/RestartProcessManager;
    .locals 4

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/RestartProcessManager;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "RestartProcessManager"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    return-object v0
.end method

.method private hasWarmUp()Z
    .locals 4

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    return v0
.end method

.method private initCluster()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-direct {v2}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-direct {v1, v0}, Lcom/android/server/am/RestartProcessManager$Cluster;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v1, v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->setCenterPoint(Lcom/android/server/am/RestartProcessManager$CenterPoint;)V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initEssentials()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initCluster()V

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->readOldRecord()V

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->setDebugParameter()V

    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    :cond_0
    return-void
.end method

.method private rankAllPkgs()V
    .locals 41

    move-object/from16 v1, p0

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_1

    goto/16 :goto_e

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v0, "RestartProcessManager"

    const-string v7, "Start to rank all packages"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v7, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_3

    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v9}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->resetScore()V

    invoke-virtual {v9, v5, v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    goto/16 :goto_b

    :cond_3
    if-eqz v0, :cond_4

    const-string v7, "RestartProcessManager"

    const-string v8, "CurrentMaxDayRecord has changed, update all packages again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v9, v5, v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    sget v10, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v11, 0x1

    if-ge v9, v10, :cond_b

    :try_start_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    sget-object v10, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v13, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_7

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v14}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    invoke-static {v14}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$800(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v15

    invoke-static {v14}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$900(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v17

    move/from16 v19, v9

    add-long v8, v15, v17

    invoke-static {v14, v8, v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$702(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v9, v19

    goto :goto_4

    :cond_5
    move/from16 v19, v9

    sget v8, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    sub-int/2addr v8, v11

    move/from16 v9, v19

    if-eq v9, v8, :cond_6

    invoke-static {v14, v11}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    :cond_6
    :goto_4
    goto :goto_5

    :cond_7
    const-string v8, "RestartProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " size is abnrmal "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", max size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto/16 :goto_3

    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1400(Lcom/android/server/am/RestartProcessManager$DayRecord;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    invoke-direct {v1, v7}, Lcom/android/server/am/RestartProcessManager;->rankDayRecords(Ljava/util/ArrayList;)V

    sget v8, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    sub-int/2addr v8, v11

    if-eq v9, v8, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v10, v11}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_b
    :try_start_5
    sget-object v8, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_d

    :try_start_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const/4 v12, 0x0

    :goto_9
    sget v13, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    if-ge v12, v13, :cond_c

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-wide v14, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1500(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v16

    add-int/lit8 v11, v12, 0x1

    move-wide/from16 v20, v5

    int-to-double v5, v11

    mul-double v16, v16, v5

    add-double v14, v14, v16

    iput-wide v14, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1600(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v14

    add-int/lit8 v11, v12, 0x1

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    int-to-double v7, v11

    mul-double/2addr v14, v7

    add-double/2addr v5, v14

    iput-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1700(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v7

    add-int/lit8 v11, v12, 0x1

    int-to-double v14, v11

    mul-double/2addr v7, v14

    add-double/2addr v5, v7

    iput-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    const/4 v11, 0x1

    goto :goto_9

    :cond_c
    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_d
    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    :try_start_7
    iget-object v5, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/RestartProcessManager$ScoreComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/am/RestartProcessManager$ScoreComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    move-wide/from16 v24, v15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v26, v15

    sub-double v15, v13, v5

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-wide/from16 v2, v24

    sub-double v24, v2, v9

    move-wide/from16 v31, v9

    move-wide/from16 v8, v26

    sub-double v26, v8, v11

    :try_start_8
    const-string v7, "RestartProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v0

    const-string/jumbo v0, "maxScoreX : "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", maxScoreY : "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", maxScoreZ : "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RestartProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "minScoreX : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ", minScoreY : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v34, v2

    move-wide/from16 v2, v31

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ", minScoreZ : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    :goto_a
    move/from16 v0, v30

    sget v7, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v0, v7, :cond_e

    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-wide/from16 v36, v8

    int-to-double v8, v0

    mul-double/2addr v8, v15

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v38, v13

    int-to-double v13, v10

    div-double/2addr v8, v13

    add-double/2addr v8, v5

    iput-wide v8, v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    int-to-double v8, v0

    mul-double v8, v8, v24

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    int-to-double v13, v10

    div-double/2addr v8, v13

    add-double v9, v2, v8

    iput-wide v9, v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    int-to-double v8, v0

    mul-double v8, v8, v26

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    int-to-double v13, v10

    div-double/2addr v8, v13

    add-double/2addr v8, v11

    iput-wide v8, v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v7}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    add-int/lit8 v30, v0, 0x1

    move-wide/from16 v8, v36

    move-wide/from16 v13, v38

    goto :goto_a

    :cond_e
    move-wide/from16 v36, v8

    move-wide/from16 v38, v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->calculate()V

    const-string v0, "RestartProcessManager"

    const-string v7, "Finish all packages"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    :goto_b
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    :goto_d
    return-void

    :cond_f
    :goto_e
    return-void
.end method

.method private rankDayRecords(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$DayRecord;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->resetScore()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayDurationComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/RestartProcessManager$DayDurationComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v3

    const-string v1, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max day duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_1

    sget-wide v6, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    long-to-double v8, v8

    long-to-double v10, v3

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1602(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    const-string v6, "RestartProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$2600(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " got score "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1600(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " in DayDuration for duration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayLRUComparator;

    invoke-direct {v1, v2}, Lcom/android/server/am/RestartProcessManager$DayLRUComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-string v1, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Max LRU Diff : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v10

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    cmp-long v12, v10, v6

    if-gez v12, :cond_3

    goto :goto_2

    :cond_3
    sget-wide v12, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    long-to-double v14, v10

    long-to-double v6, v8

    div-double/2addr v14, v6

    mul-double/2addr v12, v14

    invoke-static {v5, v12, v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1702(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    const-string v6, "RestartProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$2600(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " got score "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1700(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, " in DayLRU for LRU diff : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;

    invoke-direct {v1, v2}, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v1

    const-string v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max launch times : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_5

    sget-wide v10, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    long-to-double v14, v14

    long-to-double v12, v1

    div-double/2addr v14, v12

    mul-double/2addr v10, v14

    invoke-static {v6, v10, v11}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1502(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    const-string v7, "RestartProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$2600(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " got score "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1500(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " in DayLaunchTimes for launch times : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    goto :goto_3

    :cond_6
    return-void
.end method

.method private readFileContent(Ljava/io/File;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "RestartProcessManager"

    const-string v4, "Read old record"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_5

    const-string v3, "RestartProcessManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HasWarmUp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WarmUpTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HasWarmUp :"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    const-string v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HasWarmUp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const-string v5, "WarmUpTime :"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sput-wide v5, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    const-string v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartWarmUpTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    const-string v5, "PackageName:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    new-instance v5, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-direct {v5, v2, v7, v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    const-string v5, "\\s+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-direct {v8, v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$902(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1202(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    aget-object v6, v5, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    array-length v6, v5

    const/16 v9, 0x8

    if-ge v6, v9, :cond_3

    invoke-static {v8, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v8, v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    const/4 v6, 0x5

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1502(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    const/4 v6, 0x6

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1602(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    const/4 v6, 0x7

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1702(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    :goto_1
    sget-object v6, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$1802(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$1902(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    goto/16 :goto_0

    :cond_5
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    throw v1
.end method

.method private readOldRecord()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v3, "record.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v4, "record_backup.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->readFileContent(Ljava/io/File;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    return-void
.end method

.method private removeWhiteList([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    const-string/jumbo v3, "high"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "general"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "low"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static resolveConfig(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p0, :cond_0

    const-string v0, "RestartProcessManager"

    const-string v1, "[OnlineConfig] RestartProcess jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Online config : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "value"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "valid_duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    goto :goto_2

    :cond_1
    const-string v3, "general_duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    goto :goto_2

    :cond_2
    const-string v3, "enable_module"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    goto :goto_2

    :cond_3
    const-string v3, "enable_all_module"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sget-boolean v4, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eq v4, v3, :cond_5

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v4

    invoke-direct {v4}, Lcom/android/server/am/RestartProcessManager;->initEssentials()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    :cond_5
    :goto_1
    sput-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    :cond_8
    const-string v0, "RestartProcessManager"

    const-string v1, "[OnlineConfig] RestartProcessManager updated complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private setClusterParam([Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    sput v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v3, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sget v4, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    add-int/2addr v3, v4

    sput v3, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    const-string v3, "RestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NUM_CLUSTERS_HIGH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", NUM_CLUSTERS_GENERAL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", NUM_CLUSTERS_LOW : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initCluster()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static setCriteriaGeneralDuration(J)V
    .locals 0

    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    return-void
.end method

.method private static setCriteriaValidDuration(J)V
    .locals 0

    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    return-void
.end method

.method private setDebugParameter()V
    .locals 4

    const-string/jumbo v0, "persist.sys.rp.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.rp.debug : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    const-wide/32 v1, 0x1b7740

    sput-wide v1, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    const/4 v1, 0x5

    sput v1, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    const-wide/32 v1, 0x493e0

    sput-wide v1, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    :cond_0
    return-void
.end method

.method public static setScreenState(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen off is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setUpdatingPackage(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdatingPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWhitelist()V
    .locals 10

    const-string/jumbo v0, "persist.sys.rp.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v2, "High Used Packages"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v3, "General Used Packages"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v4, "Low Used Packages"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v5, "High Used Packages"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v2, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v5, "General Used Packages"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v3, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v5, "Low Used Packages"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    goto :goto_1

    :cond_5
    :goto_2
    if-nez v6, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    goto :goto_3

    :cond_7
    :goto_4
    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    goto :goto_6

    :cond_a
    :goto_7
    if-nez v6, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    goto :goto_8

    :cond_c
    :goto_9
    goto :goto_5

    :cond_d
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_c

    :cond_e
    goto :goto_b

    :cond_f
    :goto_c
    if-nez v6, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    goto :goto_d

    :cond_11
    :goto_e
    goto :goto_a

    :cond_12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addNewPackages(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cleanAllData(J)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", new time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/am/RestartProcessManager;->NORMAL_TIME_DIFF:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const-string v4, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normal time diff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v4, "RestartProcessManager"

    const-string v5, "Clean all data due to time is changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/am/RestartProcessManager;->writeRecord(Z)V

    const-string v2, "Current Restart Whitelist : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Classification Whitelist : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "High used : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "General used : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "Low used : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    const-string v2, "Current Restart Rank : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "ScoreFG   ScoreLRU   ScoreTimes   Package Name                                           Total Launch Times   Foreground Time                    Last LaunchTime"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->resetOldRecord()V

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$800(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$900(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$702(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2914(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$3014(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    goto :goto_5

    :cond_5
    const-string v4, "%1$6.2f      %2$6.2f       %3$6.2f      %4$50s  %5$18d  %6$16d   %7$32d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    iget-wide v6, v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    iget-wide v7, v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$3000(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2900(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$1900(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Print All type packages : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_8
    return-void
.end method

.method public getGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "General Used Packages"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "High Used Packages"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Low Used Packages"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public handleCommand([Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "RestartProcessManager"

    const-string v1, "Handle command :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "RestartProcessManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    monitor-enter p0

    add-int/lit8 v1, v0, -0x1

    :try_start_0
    aget-object v1, p1, v1

    const-string v2, "cleanall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->cleanAllWhitelist()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    add-int/lit8 v2, v0, -0x3

    aget-object v2, p1, v2

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->addWhiteList([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x3

    aget-object v1, p1, v1

    const-string/jumbo v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->removeWhiteList([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_5

    aget-object v1, p1, v2

    const-string/jumbo v3, "specific"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->addSpecificList([Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    aget-object v1, p1, v2

    const-string v3, "clusters"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->setClusterParam([Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    aget-object v1, p1, v2

    const-string v2, "clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_8
    :goto_4
    return-void
.end method

.method public initialAllPackage(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-direct {v4, v1, v2, v2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialAllPackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isHighUsedPackages(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, ""

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDuration(Ljava/lang/String;J)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2300(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen is off, skip updateDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2300(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setFinishTime(J)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2302(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateLaunchTime(Ljava/lang/String;J)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    if-eqz v0, :cond_1

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen is off, skip updateLaunchTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Total Launch Times :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    if-nez v0, :cond_2

    sput-object p1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    const-string v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sLastRunningPackage (null) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setLastLaunchTime(J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2302(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z

    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->increaseLaunchTime(Ljava/lang/String;)V

    :cond_3
    sput-object p1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Running Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , start time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeRecord(Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_2

    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    if-nez v2, :cond_1

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/RestartProcessManager;->WRITE_RECORD_DURATION:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    :cond_1
    const-string v2, "RestartProcessManager"

    const-string v3, "No need to write old record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v2, "RestartProcessManager"

    const-string v3, "Start to write old record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    new-instance v2, Lcom/android/server/am/RestartProcessManager$1;

    const-string v3, "RestartProcessManager"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/server/am/RestartProcessManager$1;-><init>(Lcom/android/server/am/RestartProcessManager;Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$1;->start()V

    return-void
.end method
