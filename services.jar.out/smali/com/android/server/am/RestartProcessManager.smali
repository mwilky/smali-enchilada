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

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromUnlock:Z

    .line 50
    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    .line 51
    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    .line 53
    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    .line 54
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    .line 55
    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    .line 56
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    .line 57
    const-string v4, ""

    sput-object v4, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    .line 58
    const-string v4, ""

    sput-object v4, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    .line 60
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    .line 61
    sput v0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    .line 62
    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    .line 63
    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    .line 65
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 67
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    .line 70
    const-wide/16 v2, 0x3e8

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    .line 71
    const-wide/32 v2, 0x5265c00

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    .line 72
    const-wide/32 v4, 0x1b7740

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->WRITE_RECORD_DURATION:J

    .line 73
    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    .line 74
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    .line 75
    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    .line 76
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

    .line 77
    :cond_0
    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    .line 78
    const-wide/32 v2, 0x36ee80

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->NORMAL_TIME_DIFF:J

    .line 79
    const/16 v0, 0x14

    sput v0, Lcom/android/server/am/RestartProcessManager;->MAX_CALCULATE_ITERATION:I

    .line 80
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    .line 81
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    .line 82
    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    .line 83
    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    .line 84
    sget v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sget v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    .line 85
    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_MIN_HIGH:I

    .line 86
    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_MAX_HIGH_USED:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    .line 108
    :try_start_0
    const-string v0, "RestartProcessManager"

    const-string v1, "RestartProcessManager start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v0, "persist.sys.rp.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 111
    const-string/jumbo v0, "persist.sys.rp.enableall"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    .line 113
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-nez v0, :cond_0

    .line 114
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 116
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

    .line 117
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

    .line 119
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    .line 120
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_1
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_2

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    .line 127
    :cond_2
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initEssentials()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_3
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 134
    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 28
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager;

    .line 28
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 28
    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager;

    .line 28
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/RestartProcessManager;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager;
    .param p1, "x1"    # Landroid/util/AtomicFile;

    .line 28
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager;->mFile:Landroid/util/AtomicFile;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 28
    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    return p0
.end method

.method static synthetic access$3100()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    return-wide v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .line 28
    sget v0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 28
    sput p0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    return p0
.end method

.method static synthetic access$3302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 28
    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400()I
    .locals 1

    .line 28
    sget v0, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    return v0
.end method

.method static synthetic access$3500()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "x1"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .line 28
    invoke-static {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 28
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    return-wide p0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method private addSpecificList([Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 1187
    monitor-enter p0

    .line 1188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1189
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1193
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1194
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1196
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1197
    const-string v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
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

    .line 1197
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1201
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    :cond_1
    goto :goto_1

    .line 1202
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    :cond_2
    monitor-exit p0

    .line 1203
    return-void

    .line 1202
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addWhiteList([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 1220
    array-length v0, p1

    .line 1221
    .local v0, "argsSize":I
    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    .line 1222
    .local v1, "type":Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    .line 1224
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1225
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1226
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1228
    const-string v3, "high"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1230
    :cond_0
    const-string v3, "general"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1231
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1232
    :cond_1
    const-string/jumbo v3, "low"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1233
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_2
    :goto_0
    return-void
.end method

.method private assignCluster()V
    .locals 13

    .line 956
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 957
    .local v0, "max":D
    move-wide v2, v0

    .line 958
    .local v2, "min":D
    const/4 v4, 0x0

    .line 959
    .local v4, "cluster":I
    const-wide/16 v5, 0x0

    .line 961
    .local v5, "distance":D
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

    .line 962
    .local v8, "key":Ljava/lang/String;
    sget-object v9, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 963
    .local v9, "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    move-wide v2, v0

    .line 964
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget v11, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v10, v11, :cond_1

    .line 965
    iget-object v11, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 966
    .local v11, "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v11}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v5

    .line 967
    cmpg-double v12, v5, v2

    if-gez v12, :cond_0

    .line 968
    move-wide v2, v5

    .line 969
    move v4, v10

    .line 964
    .end local v11    # "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 972
    .end local v10    # "i":I
    :cond_1
    invoke-virtual {v9, v4}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setCluster(I)V

    .line 973
    iget-object v10, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v10, v9}, Lcom/android/server/am/RestartProcessManager$Cluster;->addData(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)V

    .line 974
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    goto :goto_0

    .line 975
    :cond_2
    return-void
.end method

.method private calculate()V
    .locals 13

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "finish":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 901
    .local v0, "iteration":I
    .local v2, "finish":Z
    :goto_0
    if-nez v2, :cond_3

    sget v3, Lcom/android/server/am/RestartProcessManager;->MAX_CALCULATE_ITERATION:I

    if-le v3, v0, :cond_3

    .line 903
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->clearClusters()V

    .line 904
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->getCenterPoints()Ljava/util/ArrayList;

    move-result-object v3

    .line 907
    .local v3, "lastCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->assignCluster()V

    .line 910
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->calculateCenterPoint()V

    .line 912
    add-int/lit8 v0, v0, 0x1

    .line 914
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->getCenterPoints()Ljava/util/ArrayList;

    move-result-object v4

    .line 917
    .local v4, "currentCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    const-wide/16 v5, 0x0

    .line 918
    .local v5, "distance":D
    move-wide v6, v5

    move v5, v1

    .local v5, "i":I
    .local v6, "distance":D
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 919
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-static {v8, v9}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$CenterPoint;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 918
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 922
    .end local v5    # "i":I
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

    .line 923
    .local v8, "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
    iget-object v9, v8, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v9}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    .line 924
    .end local v8    # "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
    goto :goto_2

    .line 925
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

    .line 926
    const-string v5, "RestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Centroid distances: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_2

    .line 931
    const/4 v2, 0x1

    .line 933
    .end local v3    # "lastCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    .end local v4    # "currentCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    .end local v6    # "distance":D
    :cond_2
    goto/16 :goto_0

    .line 934
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

    .line 935
    .local v3, "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
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

    .line 936
    .end local v3    # "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
    goto :goto_3

    .line 937
    :cond_4
    return-void
.end method

.method private calculateCenterPoint()V
    .locals 17

    .line 978
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

    .line 979
    .local v2, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    const-wide/16 v3, 0x0

    .line 980
    .local v3, "sumX":D
    const-wide/16 v5, 0x0

    .line 981
    .local v5, "sumY":D
    const-wide/16 v7, 0x0

    .line 983
    .local v7, "sumZ":D
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getDatas()Ljava/util/ArrayList;

    move-result-object v9

    .line 984
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 986
    .local v10, "n_points":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 987
    .local v12, "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    iget-wide v13, v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    add-double/2addr v3, v13

    .line 988
    iget-wide v13, v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    add-double/2addr v5, v13

    .line 989
    iget-wide v13, v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    add-double/2addr v7, v13

    .line 990
    .end local v12    # "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    goto :goto_1

    .line 992
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v11

    .line 993
    .local v11, "cp":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    if-lez v10, :cond_1

    .line 994
    int-to-double v12, v10

    div-double v12, v3, v12

    .line 995
    .local v12, "newX":D
    int-to-double v14, v10

    div-double v14, v5, v14

    .line 996
    .local v14, "newY":D
    move-object/from16 v16, v1

    int-to-double v0, v10

    div-double v0, v7, v0

    .line 998
    .local v0, "newZ":D
    iput-wide v12, v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 999
    iput-wide v14, v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    .line 1000
    iput-wide v0, v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    .end local v0    # "newZ":D
    .end local v2    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    .end local v3    # "sumX":D
    .end local v5    # "sumY":D
    .end local v7    # "sumZ":D
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v10    # "n_points":I
    .end local v11    # "cp":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .end local v12    # "newX":D
    .end local v14    # "newY":D
    goto :goto_2

    .line 1002
    :cond_1
    move-object/from16 v16, v1

    .line 978
    :goto_2
    move-object/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_0

    .line 1003
    :cond_2
    return-void
.end method

.method private cleanAllWhitelist()V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1240
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1241
    return-void
.end method

.method private clearClusters()V
    .locals 2

    .line 940
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

    .line 941
    .local v1, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v1}, Lcom/android/server/am/RestartProcessManager$Cluster;->clear()V

    .line 942
    .end local v1    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    goto :goto_0

    .line 943
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

    .line 657
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 659
    return-object v0

    .line 660
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

    .line 661
    .local v2, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v2    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    goto :goto_0

    .line 663
    :cond_1
    return-object v0
.end method

.method private doCleanData(J)V
    .locals 4
    .param p1, "curTime"    # J

    .line 194
    const-string v0, "RestartProcessManager"

    const-string v1, "Start to clean data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-enter p0

    .line 196
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

    .line 197
    .local v1, "pkgName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->cleanData(J)V

    .line 198
    .end local v1    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 199
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    .line 200
    sput-wide p1, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    .line 201
    sput v0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    .line 202
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    .line 203
    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    .line 204
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v2, "record.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v0, "currentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 210
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v3, "record_backup.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .end local v0    # "currentFile":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    const-string v0, "RestartProcessManager"

    const-string v1, "Finish cleaning data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 216
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
    .param p1, "needRefresh"    # Z
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

    .line 507
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 515
    :cond_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-nez v0, :cond_1

    .line 516
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 517
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 519
    :cond_1
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->isDeviceDeepIdleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    const-string v0, "RestartProcessManager"

    const-string v2, "Deep idle mode, use last result!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    .line 522
    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v0

    .line 529
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 531
    .local v2, "now":J
    if-eqz p1, :cond_3

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->rankAllPkgs()V

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    goto :goto_0

    .line 534
    :cond_3
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromUnlock:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    if-eqz v0, :cond_d

    .line 535
    sget-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    .line 536
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

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->rankAllPkgs()V

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    .line 548
    :goto_0
    monitor-enter p0

    .line 549
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v0, "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v4, "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v5, "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v6, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 553
    iget-object v6, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 556
    .local v6, "totalSize":I
    const-string v7, "RestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total packages : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/am/RestartProcessManager$ClusterComparator;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/am/RestartProcessManager$ClusterComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 560
    const/4 v7, 0x0

    move v8, v7

    .line 560
    .local v8, "i":I
    :goto_1
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    if-ge v8, v10, :cond_4

    .line 561
    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v10, v10, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 560
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 564
    .end local v8    # "i":I
    :cond_4
    sget v8, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    .line 564
    .restart local v8    # "i":I
    :goto_2
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v11, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    .line 565
    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v10, v10, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 568
    .end local v8    # "i":I
    :cond_5
    sget v8, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v8, v10

    .line 568
    .restart local v8    # "i":I
    :goto_3
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v8, v10, :cond_6

    .line 569
    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v10, v10, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 568
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 573
    .end local v8    # "i":I
    :cond_6
    move v8, v7

    .line 573
    .restart local v8    # "i":I
    :goto_4
    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v8, v10, :cond_7

    .line 574
    iget-object v10, v1, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 575
    .local v10, "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v10}, Lcom/android/server/am/RestartProcessManager$Cluster;->dump()V

    .line 573
    .end local v10    # "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 581
    .end local v8    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_MAX_HIGH_USED:I

    sub-int/2addr v8, v10

    .line 582
    .local v8, "overNum":I
    if-lez v8, :cond_9

    .line 583
    new-instance v10, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;

    invoke-direct {v10, v9}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 584
    move v10, v7

    .line 584
    .local v10, "i":I
    :goto_5
    if-ge v10, v8, :cond_9

    .line 585
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 586
    .local v11, "size":I
    if-lez v11, :cond_8

    .line 587
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 589
    .local v12, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
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

    .line 590
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v11    # "size":I
    .end local v12    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_5

    .line 598
    .end local v10    # "i":I
    :cond_9
    sget v7, Lcom/android/server/am/RestartProcessManager;->NUM_MIN_HIGH:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v7, v10

    .line 599
    .local v7, "lack":I
    if-lez v7, :cond_b

    .line 600
    new-instance v10, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;

    invoke-direct {v10, v9}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 602
    const/4 v15, 0x0

    .line 602
    .local v15, "i":I
    :goto_6
    move v9, v15

    .line 602
    .end local v15    # "i":I
    .local v9, "i":I
    if-ge v9, v7, :cond_b

    .line 603
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 604
    .local v10, "size":I
    if-lez v10, :cond_a

    .line 605
    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 607
    .local v11, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
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

    .line 608
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v10    # "size":I
    .end local v11    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_a
    add-int/lit8 v15, v9, 0x1

    .line 602
    .end local v9    # "i":I
    .restart local v15    # "i":I
    goto :goto_6

    .line 614
    .end local v15    # "i":I
    :cond_b
    iget-object v9, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v10, "High Used Packages"

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
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

    .line 618
    iget-object v9, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v10, "General Used Packages"

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
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

    .line 622
    iget-object v9, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v10, "Low Used Packages"

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
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

    .line 625
    .end local v6    # "totalSize":I
    .end local v7    # "lack":I
    .end local v8    # "overNum":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    .line 627
    iget-object v6, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v6

    .line 625
    .end local v0    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v4    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v5    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 540
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    .line 541
    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v0

    .line 544
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    .line 545
    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v0

    .line 508
    .end local v2    # "now":J
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

    .line 509
    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 510
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

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v0, "centerPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
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

    .line 948
    .local v2, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v3

    .line 949
    .local v3, "aux":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    new-instance v11, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    iget-wide v5, v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v7, v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v9, v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    .line 950
    .local v4, "point":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    .end local v2    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    .end local v3    # "aux":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .end local v4    # "point":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    goto :goto_0

    .line 952
    :cond_0
    return-object v0
.end method

.method private static getDistance(DDDDDD)D
    .locals 9
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "z1"    # D
    .param p6, "x2"    # D
    .param p8, "y2"    # D
    .param p10, "z2"    # D

    .line 1014
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
    .param p0, "cp1"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .param p1, "cp2"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .line 1010
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
    .param p0, "data"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "cp"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .line 1006
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

    .line 168
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/server/am/RestartProcessManager;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "RestartProcessManager"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 171
    :cond_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    return-object v0
.end method

.method private hasWarmUp()Z
    .locals 4

    .line 631
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    return v0

    .line 634
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    .line 635
    return v0
.end method

.method private initCluster()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-direct {v2}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-direct {v1, v0}, Lcom/android/server/am/RestartProcessManager$Cluster;-><init>(I)V

    .line 150
    .local v1, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v1, v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->setCenterPoint(Lcom/android/server/am/RestartProcessManager$CenterPoint;)V

    .line 151
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v1    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initEssentials()V
    .locals 4

    .line 137
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initCluster()V

    .line 138
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->readOldRecord()V

    .line 139
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->setDebugParameter()V

    .line 140
    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    .line 142
    :cond_0
    return-void
.end method

.method private rankAllPkgs()V
    .locals 41

    .line 766
    move-object/from16 v1, p0

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 767
    return-void

    .line 769
    :cond_0
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_1

    goto/16 :goto_e

    .line 773
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 774
    .local v2, "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 775
    .local v3, "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 778
    .local v4, "scoreZList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 779
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 782
    .local v5, "startTime":J
    const-string v0, "RestartProcessManager"

    const-string v7, "Start to rank all packages"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, "isMaxRecordChange":Z
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

    .line 787
    .local v8, "key":Ljava/lang/String;
    sget-object v9, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 788
    .local v9, "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v9}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->resetScore()V

    .line 789
    invoke-virtual {v9, v5, v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 790
    const/4 v0, 0x1

    .line 791
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_2
    goto :goto_0

    .line 890
    .end local v0    # "isMaxRecordChange":Z
    .end local v5    # "startTime":J
    :catchall_0
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    goto/16 :goto_b

    .line 794
    .restart local v0    # "isMaxRecordChange":Z
    .restart local v5    # "startTime":J
    :cond_3
    if-eqz v0, :cond_4

    .line 795
    const-string v7, "RestartProcessManager"

    const-string v8, "CurrentMaxDayRecord has changed, update all packages again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
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

    .line 797
    .restart local v8    # "key":Ljava/lang/String;
    sget-object v9, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 798
    .restart local v9    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v9, v5, v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 799
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    goto :goto_1

    .line 803
    :cond_4
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v7, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    const/4 v9, 0x0

    .line 804
    .local v9, "i":I
    :goto_2
    sget v10, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v11, 0x1

    if-ge v9, v10, :cond_b

    .line 805
    :try_start_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 806
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

    .line 807
    .local v12, "key":Ljava/lang/String;
    sget-object v13, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 808
    .local v13, "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_7

    .line 809
    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 812
    .local v14, "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v14}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    .line 813
    invoke-static {v14}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$800(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v15

    invoke-static {v14}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$900(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v17

    move/from16 v19, v9

    add-long v8, v15, v17

    .line 813
    .end local v9    # "i":I
    .local v19, "i":I
    invoke-static {v14, v8, v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$702(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 814
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    move/from16 v9, v19

    goto :goto_4

    .line 816
    .end local v19    # "i":I
    .restart local v9    # "i":I
    :cond_5
    move/from16 v19, v9

    .line 816
    .end local v9    # "i":I
    .restart local v19    # "i":I
    sget v8, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    sub-int/2addr v8, v11

    move/from16 v9, v19

    if-eq v9, v8, :cond_6

    .line 817
    .end local v19    # "i":I
    .restart local v9    # "i":I
    invoke-static {v14, v11}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    .line 819
    .end local v14    # "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_6
    :goto_4
    goto :goto_5

    .line 820
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

    .line 821
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

    .line 820
    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :goto_5
    goto/16 :goto_3

    .line 825
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

    .line 826
    goto :goto_7

    .line 828
    :cond_9
    invoke-direct {v1, v7}, Lcom/android/server/am/RestartProcessManager;->rankDayRecords(Ljava/util/ArrayList;)V

    .line 829
    sget v8, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    sub-int/2addr v8, v11

    if-eq v9, v8, :cond_a

    .line 830
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 831
    .local v10, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v10, v11}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 832
    .end local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    goto :goto_6

    .line 804
    :cond_a
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 837
    .end local v9    # "i":I
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

    .line 838
    .local v9, "key":Ljava/lang/String;
    sget-object v10, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 839
    .local v10, "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    const/4 v12, 0x0

    .line 839
    .local v12, "i":I
    :goto_9
    sget v13, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    if-ge v12, v13, :cond_c

    .line 840
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 841
    .local v13, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v14, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1500(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v16

    add-int/lit8 v11, v12, 0x1

    move-wide/from16 v20, v5

    int-to-double v5, v11

    .line 841
    .end local v5    # "startTime":J
    .local v20, "startTime":J
    mul-double v16, v16, v5

    add-double v14, v14, v16

    iput-wide v14, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    .line 842
    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1600(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v14

    add-int/lit8 v11, v12, 0x1

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    int-to-double v7, v11

    .line 842
    .end local v7    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    .local v22, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    mul-double/2addr v14, v7

    add-double/2addr v5, v14

    iput-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    .line 843
    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1700(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v7

    add-int/lit8 v11, v12, 0x1

    int-to-double v14, v11

    mul-double/2addr v7, v14

    add-double/2addr v5, v7

    iput-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 839
    .end local v13    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    const/4 v11, 0x1

    goto :goto_9

    .line 846
    .end local v12    # "i":I
    .end local v20    # "startTime":J
    .end local v22    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    .restart local v5    # "startTime":J
    .restart local v7    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    :cond_c
    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 846
    .end local v5    # "startTime":J
    .end local v7    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    .restart local v20    # "startTime":J
    .restart local v22    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-wide v5, v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v5, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 850
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    nop

    .line 837
    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    const/4 v11, 0x1

    goto/16 :goto_8

    .line 851
    .end local v20    # "startTime":J
    .end local v22    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    .restart local v5    # "startTime":J
    .restart local v7    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    :cond_d
    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    .line 851
    .end local v5    # "startTime":J
    .end local v7    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    .restart local v20    # "startTime":J
    .restart local v22    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    :try_start_7
    iget-object v5, v1, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/RestartProcessManager$ScoreComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/am/RestartProcessManager$ScoreComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 852
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 853
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 854
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 857
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 858
    .local v5, "minScoreX":D
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 859
    .local v9, "minScoreY":D
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 861
    .local v11, "minScoreZ":D
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 862
    .local v13, "maxScoreX":D
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

    .line 863
    .local v24, "maxScoreY":D
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

    .line 865
    .local v26, "maxScoreZ":D
    sub-double v15, v13, v5

    .line 866
    .local v15, "difScoreX":D
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-wide/from16 v2, v24

    sub-double v24, v2, v9

    .line 867
    .end local v3    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v2, "maxScoreY":D
    .local v24, "difScoreY":D
    .local v28, "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v29, "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    move-wide/from16 v31, v9

    move-wide/from16 v8, v26

    sub-double v26, v8, v11

    .line 869
    .end local v9    # "minScoreY":D
    .local v8, "maxScoreZ":D
    .local v26, "difScoreZ":D
    .local v31, "minScoreY":D
    :try_start_8
    const-string v7, "RestartProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v0

    const-string/jumbo v0, "maxScoreX : "

    .line 869
    .end local v0    # "isMaxRecordChange":Z
    .local v33, "isMaxRecordChange":Z
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

    .line 871
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

    .end local v31    # "minScoreY":D
    .local v2, "minScoreY":D
    .local v34, "maxScoreY":D
    const-string v10, ", minScoreZ : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/16 v30, 0x0

    .line 875
    .local v30, "i":I
    :goto_a
    move/from16 v0, v30

    .line 875
    .end local v30    # "i":I
    .local v0, "i":I
    sget v7, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v0, v7, :cond_e

    .line 876
    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-wide/from16 v36, v8

    int-to-double v8, v0

    .line 876
    .end local v8    # "maxScoreZ":D
    .local v36, "maxScoreZ":D
    mul-double/2addr v8, v15

    sget v10, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v38, v13

    int-to-double v13, v10

    .line 876
    .end local v13    # "maxScoreX":D
    .local v38, "maxScoreX":D
    div-double/2addr v8, v13

    add-double/2addr v8, v5

    iput-wide v8, v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 877
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

    .line 878
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

    .line 881
    iget-object v7, v1, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v7}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    .line 875
    add-int/lit8 v30, v0, 0x1

    .line 875
    .end local v0    # "i":I
    .restart local v30    # "i":I
    move-wide/from16 v8, v36

    move-wide/from16 v13, v38

    goto :goto_a

    .line 886
    .end local v30    # "i":I
    .end local v36    # "maxScoreZ":D
    .end local v38    # "maxScoreX":D
    .restart local v8    # "maxScoreZ":D
    .restart local v13    # "maxScoreX":D
    :cond_e
    move-wide/from16 v36, v8

    move-wide/from16 v38, v13

    .line 886
    .end local v8    # "maxScoreZ":D
    .end local v13    # "maxScoreX":D
    .restart local v36    # "maxScoreZ":D
    .restart local v38    # "maxScoreX":D
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->calculate()V

    .line 889
    const-string v0, "RestartProcessManager"

    const-string v7, "Finish all packages"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v2    # "minScoreY":D
    .end local v5    # "minScoreX":D
    .end local v11    # "minScoreZ":D
    .end local v15    # "difScoreX":D
    .end local v20    # "startTime":J
    .end local v22    # "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    .end local v24    # "difScoreY":D
    .end local v26    # "difScoreZ":D
    .end local v33    # "isMaxRecordChange":Z
    .end local v34    # "maxScoreY":D
    .end local v36    # "maxScoreZ":D
    .end local v38    # "maxScoreX":D
    monitor-exit p0

    .line 894
    goto :goto_d

    .line 890
    .end local v28    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v29    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v2, "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v3    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    .line 890
    .end local v2    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v28    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v29    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :goto_b
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 891
    :catch_0
    move-exception v0

    goto :goto_c

    .line 890
    :catchall_2
    move-exception v0

    goto :goto_b

    .line 891
    .end local v28    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v29    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v2    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v3    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :catch_1
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    .line 892
    .end local v2    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v28    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v29    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    return-void

    .line 770
    .end local v4    # "scoreZList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v28    # "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v29    # "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
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

    .line 1019
    .local p1, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
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

    .line 1020
    .local v2, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->resetScore()V

    .line 1021
    .end local v2    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    goto :goto_0

    .line 1024
    :cond_0
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayDurationComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/RestartProcessManager$DayDurationComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1025
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v3

    .line 1027
    .local v3, "maxDuration":J
    const-string v1, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max day duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
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

    .line 1029
    .local v5, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_1

    .line 1030
    sget-wide v6, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    long-to-double v8, v8

    long-to-double v10, v3

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1602(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 1032
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

    .line 1033
    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1032
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .end local v5    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_1
    goto :goto_1

    .line 1038
    :cond_2
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayLRUComparator;

    invoke-direct {v1, v2}, Lcom/android/server/am/RestartProcessManager$DayLRUComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1039
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    .line 1040
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1042
    .local v8, "maxLruDiff":J
    const-string v1, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Max LRU Diff : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1044
    .restart local v5    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v10

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 1045
    .local v10, "lruDiff":J
    cmp-long v12, v10, v6

    if-gez v12, :cond_3

    .line 1046
    goto :goto_2

    .line 1047
    :cond_3
    sget-wide v12, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    long-to-double v14, v10

    long-to-double v6, v8

    div-double/2addr v14, v6

    mul-double/2addr v12, v14

    invoke-static {v5, v12, v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1702(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 1049
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

    .line 1050
    .end local v5    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    .end local v10    # "lruDiff":J
    nop

    .line 1043
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 1053
    :cond_4
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;

    invoke-direct {v1, v2}, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;-><init>(Lcom/android/server/am/RestartProcessManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1054
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v1

    .line 1056
    .local v1, "maxTimes":J
    const-string v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max launch times : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1058
    .local v6, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_5

    .line 1059
    sget-wide v10, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    long-to-double v14, v14

    long-to-double v12, v1

    div-double/2addr v14, v12

    mul-double/2addr v10, v14

    invoke-static {v6, v10, v11}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1502(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 1061
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

    .line 1062
    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1061
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .end local v6    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_5
    goto :goto_3

    .line 1065
    :cond_6
    return-void
.end method

.method private readFileContent(Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "line":Ljava/lang/String;
    const-string v2, ""

    .line 352
    .local v2, "curPkgName":Ljava/lang/String;
    const-string v3, "RestartProcessManager"

    const-string v4, "Read old record"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_5

    .line 356
    const-string v3, "RestartProcessManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HasWarmUp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "hasWarmUp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WarmUpTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "warmUpTime":Ljava/lang/String;
    const-string v5, "HasWarmUp :"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 361
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

    .line 362
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

    .line 363
    :cond_0
    const-string v5, "WarmUpTime :"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
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

    .line 365
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

    .line 366
    :cond_1
    const-string v5, "PackageName:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 367
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 368
    new-instance v5, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-direct {v5, v2, v7, v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 369
    .local v5, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    sget-object v6, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v5    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    goto/16 :goto_2

    .line 371
    :cond_2
    const-string v5, "\\s+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "split":[Ljava/lang/String;
    new-instance v8, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-direct {v8, v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 373
    .local v8, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 374
    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$902(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 375
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1202(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 376
    aget-object v6, v5, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 378
    array-length v6, v5

    const/16 v9, 0x8

    if-ge v6, v9, :cond_3

    .line 379
    invoke-static {v8, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    goto :goto_1

    .line 381
    :cond_3
    const/4 v6, 0x4

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v8, v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    .line 382
    const/4 v6, 0x5

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1502(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 383
    const/4 v6, 0x6

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1602(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 384
    const/4 v6, 0x7

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1702(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 386
    :goto_1
    sget-object v6, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v6, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$1802(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    .line 388
    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-eqz v6, :cond_4

    .line 389
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

    .line 391
    .end local v3    # "hasWarmUp":Ljava/lang/String;
    .end local v4    # "warmUpTime":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    .end local v8    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 396
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "curPkgName":Ljava/lang/String;
    :cond_5
    nop

    .line 398
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :goto_3
    goto :goto_4

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 396
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 392
    :catch_1
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    .line 398
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 403
    :cond_6
    :goto_4
    return-void

    .line 396
    :goto_5
    if-eqz v0, :cond_7

    .line 398
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 401
    goto :goto_6

    .line 399
    :catch_2
    move-exception v2

    .line 400
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 401
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    :goto_6
    throw v1
.end method

.method private readOldRecord()V
    .locals 5

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "targetFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v3, "record.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v1, "currentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    move-object v0, v1

    goto :goto_0

    .line 274
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v4, "record_backup.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    move-object v0, v1

    .line 280
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 281
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

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->readFileContent(Ljava/io/File;)V

    .line 284
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 287
    :cond_2
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    .line 288
    return-void
.end method

.method private removeWhiteList([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 1206
    array-length v0, p1

    .line 1207
    .local v0, "argsSize":I
    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    .line 1208
    .local v1, "type":Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    .line 1210
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "high"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1211
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1212
    :cond_0
    const-string v3, "general"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1213
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1214
    :cond_1
    const-string/jumbo v3, "low"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1215
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1217
    :cond_2
    :goto_0
    return-void
.end method

.method public static resolveConfig(Lorg/json/JSONArray;)V
    .locals 7
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 229
    if-nez p0, :cond_0

    .line 230
    const-string v0, "RestartProcessManager"

    const-string v1, "[OnlineConfig] RestartProcess jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 234
    .local v0, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 235
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 236
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "name":Ljava/lang/String;
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

    .line 238
    const-string/jumbo v3, "valid_duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    goto :goto_2

    .line 240
    :cond_1
    const-string v3, "general_duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    goto :goto_2

    .line 242
    :cond_2
    const-string v3, "enable_module"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    goto :goto_2

    .line 244
    :cond_3
    const-string v3, "enable_all_module"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 247
    .local v3, "newValue":Z
    sget-boolean v4, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eq v4, v3, :cond_5

    .line 249
    if-eqz v3, :cond_4

    .line 250
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v4

    invoke-direct {v4}, Lcom/android/server/am/RestartProcessManager;->initEssentials()V

    goto :goto_1

    .line 253
    :cond_4
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    .line 256
    :cond_5
    :goto_1
    sput-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    .line 234
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "newValue":Z
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 260
    .end local v0    # "index":I
    :cond_7
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-nez v0, :cond_8

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 262
    :cond_8
    const-string v0, "RestartProcessManager"

    const-string v1, "[OnlineConfig] RestartProcessManager updated complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_3

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
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

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private setClusterParam([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .line 1162
    monitor-enter p0

    .line 1167
    const/4 v0, 0x2

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1168
    .local v0, "newHigh":I
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1169
    .local v1, "newGeneral":I
    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1171
    .local v2, "newLow":I
    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    .line 1172
    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    .line 1173
    sput v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    .line 1174
    sget v3, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sget v4, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    add-int/2addr v3, v4

    sput v3, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    .line 1175
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

    .line 1177
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1178
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1179
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initCluster()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    goto :goto_0

    .line 1183
    .end local v0    # "newHigh":I
    .end local v1    # "newGeneral":I
    .end local v2    # "newLow":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 1184
    return-void

    .line 1183
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static setCriteriaGeneralDuration(J)V
    .locals 0
    .param p0, "duraion"    # J

    .line 1653
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    .line 1654
    return-void
.end method

.method private static setCriteriaValidDuration(J)V
    .locals 0
    .param p0, "duration"    # J

    .line 1649
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    .line 1650
    return-void
.end method

.method private setDebugParameter()V
    .locals 4

    .line 156
    const-string/jumbo v0, "persist.sys.rp.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 159
    const-string v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.rp.debug : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    .line 161
    const-wide/32 v1, 0x1b7740

    sput-wide v1, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    .line 162
    const/4 v1, 0x5

    sput v1, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    .line 163
    const-wide/32 v1, 0x493e0

    sput-wide v1, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    .line 165
    :cond_0
    return-void
.end method

.method public static setScreenState(Z)V
    .locals 3
    .param p0, "isOff"    # Z

    .line 221
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    .line 222
    return-void

    .line 223
    :cond_0
    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    .line 225
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

    .line 226
    return-void
.end method

.method public static setUpdatingPackage(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 406
    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    .line 407
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

    .line 408
    return-void
.end method

.method private setWhitelist()V
    .locals 10

    .line 411
    const-string/jumbo v0, "persist.sys.rp.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 412
    .local v0, "debug":Z
    if-nez v0, :cond_0

    .line 413
    return-void

    .line 414
    :cond_0
    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v2, "High Used Packages"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 416
    .local v1, "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v3, "General Used Packages"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 417
    .local v2, "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v4, "Low Used Packages"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 419
    .local v3, "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    if-nez v1, :cond_1

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 421
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v5, "High Used Packages"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_1
    if-nez v2, :cond_2

    .line 424
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 425
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v5, "General Used Packages"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_2
    if-nez v3, :cond_3

    .line 428
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 429
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string v5, "Low Used Packages"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
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

    .line 434
    .local v5, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 435
    .local v6, "isFound":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 436
    .local v8, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 437
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    const/4 v6, 0x1

    .line 440
    goto :goto_2

    .line 442
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_4
    goto :goto_1

    .line 444
    :cond_5
    :goto_2
    if-nez v6, :cond_7

    .line 445
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 446
    .restart local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 447
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    goto :goto_4

    .line 451
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_6
    goto :goto_3

    .line 453
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "isFound":Z
    :cond_7
    :goto_4
    goto :goto_0

    .line 456
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

    .line 458
    .restart local v5    # "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 460
    .restart local v6    # "isFound":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 461
    .restart local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 462
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const/4 v6, 0x1

    .line 465
    goto :goto_7

    .line 467
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_9
    goto :goto_6

    .line 469
    :cond_a
    :goto_7
    if-nez v6, :cond_c

    .line 470
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 471
    .restart local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 472
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    goto :goto_9

    .line 476
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_b
    goto :goto_8

    .line 478
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "isFound":Z
    :cond_c
    :goto_9
    goto :goto_5

    .line 481
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

    .line 483
    .restart local v5    # "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 484
    .restart local v6    # "isFound":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 485
    .restart local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 486
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    const/4 v6, 0x1

    .line 489
    goto :goto_c

    .line 491
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_e
    goto :goto_b

    .line 493
    :cond_f
    :goto_c
    if-nez v6, :cond_11

    .line 494
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 495
    .restart local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 496
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    goto :goto_e

    .line 500
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_10
    goto :goto_d

    .line 502
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "isFound":Z
    :cond_11
    :goto_e
    goto :goto_a

    .line 503
    .end local v1    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v2    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v3    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    :cond_12
    monitor-exit p0

    .line 504
    return-void

    .line 503
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
    .param p1, "packageName"    # Ljava/lang/String;

    .line 690
    monitor-enter p0

    .line 691
    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
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

    .line 695
    new-instance v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 696
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    monitor-exit p0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cleanAllData(J)V
    .locals 8
    .param p1, "curTime"    # J

    .line 175
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 182
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    .local v0, "oldTime":J
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

    .line 184
    sub-long v2, p1, v0

    .line 185
    .local v2, "diff":J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/am/RestartProcessManager;->NORMAL_TIME_DIFF:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 186
    const-string v4, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normal time diff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 189
    :cond_1
    const-string v4, "RestartProcessManager"

    const-string v5, "Clean all data due to time is changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    .line 191
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1068
    .local p2, "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 1070
    :cond_0
    monitor-enter p0

    .line 1071
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v1

    .line 1072
    .local v1, "allTypePackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/am/RestartProcessManager;->writeRecord(Z)V

    .line 1073
    const-string v2, "Current Restart Whitelist : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1076
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 1079
    :cond_1
    const-string v2, "Classification Whitelist : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    const-string v2, "High used : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
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

    .line 1082
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_1

    .line 1084
    :cond_2
    const-string v2, "General used : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
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

    .line 1086
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_2

    .line 1088
    :cond_3
    const-string v2, "Low used : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
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

    .line 1090
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_3

    .line 1093
    :cond_4
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    if-eqz p3, :cond_6

    .line 1095
    const-string v2, "Current Restart Rank : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    const-string v2, "ScoreFG   ScoreLRU   ScoreTimes   Package Name                                           Total Launch Times   Foreground Time                    Last LaunchTime"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
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

    .line 1100
    .local v3, "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->resetOldRecord()V

    .line 1101
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

    .line 1102
    .local v5, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$800(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$900(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$702(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1103
    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2914(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    .line 1104
    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$3014(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    .line 1105
    .end local v5    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    goto :goto_5

    .line 1106
    :cond_5
    const-string v4, "%1$6.2f      %2$6.2f       %3$6.2f      %4$50s  %5$18d  %6$16d   %7$32d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    .line 1107
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    iget-wide v6, v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 1108
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

    .line 1109
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

    .line 1106
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1110
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    .end local v3    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v4    # "str":Ljava/lang/String;
    goto/16 :goto_4

    .line 1114
    :cond_6
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    const-string v0, "Print All type packages : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
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

    .line 1118
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1119
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
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

    .line 1121
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1122
    .local v5, "p":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    .end local v5    # "p":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    goto :goto_7

    .line 1124
    :cond_7
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    goto :goto_6

    .line 1126
    .end local v1    # "allTypePackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    :cond_8
    monitor-exit p0

    .line 1127
    return-void

    .line 1126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1069
    :cond_9
    :goto_8
    return-void
.end method

.method public getGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 647
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

    .line 646
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 639
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 641
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

    .line 640
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 653
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

    .line 652
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public handleCommand([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 1130
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1133
    :cond_0
    const-string v0, "RestartProcessManager"

    const-string v1, "Handle command :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1135
    .local v2, "str":Ljava/lang/String;
    const-string v3, "RestartProcessManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .end local v2    # "str":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    :cond_1
    array-length v0, p1

    .line 1139
    .local v0, "argsSize":I
    monitor-enter p0

    .line 1141
    add-int/lit8 v1, v0, -0x1

    :try_start_0
    aget-object v1, p1, v1

    const-string v2, "cleanall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1142
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->cleanAllWhitelist()V

    goto :goto_1

    .line 1143
    :cond_2
    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    add-int/lit8 v2, v0, -0x3

    aget-object v2, p1, v2

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->addWhiteList([Ljava/lang/String;)V

    goto :goto_1

    .line 1145
    :cond_3
    if-le v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x3

    aget-object v1, p1, v1

    const-string/jumbo v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->removeWhiteList([Ljava/lang/String;)V

    goto :goto_1

    .line 1147
    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_5

    aget-object v1, p1, v2

    const-string/jumbo v3, "specific"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1148
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->addSpecificList([Ljava/lang/String;)V

    goto :goto_1

    .line 1149
    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    aget-object v1, p1, v2

    const-string v3, "clusters"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1150
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->setClusterParam([Ljava/lang/String;)V

    goto :goto_1

    .line 1151
    :cond_6
    aget-object v1, p1, v2

    const-string v2, "clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1152
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1153
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    :cond_7
    :goto_1
    goto :goto_2

    .line 1158
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1155
    :catch_0
    move-exception v1

    .line 1156
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1158
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    .line 1159
    return-void

    .line 1158
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1131
    .end local v0    # "argsSize":I
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

    .line 677
    .local p1, "allPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 678
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

    .line 679
    .local v1, "str":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 680
    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-direct {v4, v1, v2, v2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
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

    .line 683
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 684
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    .line 687
    return-void

    .line 684
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
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 667
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 670
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 671
    return v0

    .line 673
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 668
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 708
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

    .line 710
    :goto_0
    const-string v0, ""

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    .line 711
    monitor-exit p0

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDuration(Ljava/lang/String;J)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "finishTime"    # J

    .line 715
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    .line 716
    return-void

    .line 717
    :cond_0
    monitor-enter p0

    .line 718
    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 721
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2300(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
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

    .line 724
    monitor-exit p0

    return-void

    .line 726
    :cond_1
    if-nez v0, :cond_2

    .line 727
    monitor-exit p0

    return-void

    .line 728
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setFinishTime(J)V

    .line 729
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2302(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z

    .line 730
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    monitor-exit p0

    .line 731
    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateLaunchTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 734
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    .line 735
    return-void

    .line 737
    :cond_0
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    if-eqz v0, :cond_1

    .line 739
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen is off, skip updateLaunchTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void

    .line 742
    :cond_1
    monitor-enter p0

    .line 744
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

    .line 745
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 746
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    if-nez v0, :cond_2

    .line 747
    sput-object p1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    .line 749
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

    .line 750
    monitor-exit p0

    return-void

    .line 752
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setLastLaunchTime(J)V

    .line 753
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$2302(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z

    .line 754
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 755
    invoke-virtual {v0, p1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->increaseLaunchTime(Ljava/lang/String;)V

    .line 758
    :cond_3
    sput-object p1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    .line 759
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
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

    .line 762
    return-void

    .line 759
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
    .param p1, "force"    # Z

    .line 291
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 293
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 294
    .local v0, "now":J
    if-nez p1, :cond_2

    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    if-nez v2, :cond_1

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/RestartProcessManager;->WRITE_RECORD_DURATION:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 295
    :cond_1
    const-string v2, "RestartProcessManager"

    const-string v3, "No need to write old record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 298
    :cond_2
    const-string v2, "RestartProcessManager"

    const-string v3, "Start to write old record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    .line 300
    new-instance v2, Lcom/android/server/am/RestartProcessManager$1;

    const-string v3, "RestartProcessManager"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/server/am/RestartProcessManager$1;-><init>(Lcom/android/server/am/RestartProcessManager;Ljava/lang/String;J)V

    .line 342
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$1;->start()V

    .line 343
    return-void
.end method
