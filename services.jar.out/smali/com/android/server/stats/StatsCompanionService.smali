.class public Lcom/android/server/stats/StatsCompanionService;
.super Landroid/os/IStatsCompanionService$Stub;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;,
        Lcom/android/server/stats/StatsCompanionService$Lifecycle;,
        Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PullingAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;
    }
.end annotation


# static fields
.field public static final CODE_DATA_BROADCAST:I = 0x1

.field public static final CODE_SUBSCRIBER_BROADCAST:I = 0x1

.field public static final CONFIG_DIR:Ljava/lang/String; = "/data/misc/stats-service"

.field public static final DEATH_THRESHOLD:I = 0xa

.field static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final EXTRA_LAST_REPORT_TIME:Ljava/lang/String; = "android.app.extra.LAST_REPORT_TIME"

.field private static final MILLIS_IN_A_DAY:J

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field static final TAG:Ljava/lang/String; = "StatsCompanionService"

.field private static sStatsd:Landroid/os/IStatsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation
.end field

.field private static final sStatsdLock:Ljava/lang/Object;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnomalyAlarmIntent:Landroid/app/PendingIntent;

.field private final mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeathTimeMillis:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeletedFiles:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

.field private mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

.field private mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

.field private mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mPeriodicAlarmIntent:Landroid/app/PendingIntent;

.field private final mPullingAlarmIntent:Landroid/app/PendingIntent;

.field private final mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

.field private final mStatFsData:Landroid/os/StatFs;

.field private final mStatFsSystem:Landroid/os/StatFs;

.field private final mStatFsTemp:Landroid/os/StatFs;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroid/os/IStatsCompanionService$Stub;-><init>()V

    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsData:Landroid/os/StatFs;

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsSystem:Landroid/os/StatFs;

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsTemp:Landroid/os/StatFs;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    new-instance v1, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    new-instance v1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    new-instance v1, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    new-instance v1, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$PullingAlarmReceiver;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmReceiver;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    new-instance v1, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/stats/StatsCompanionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/stats/StatsCompanionService$1;-><init>(Lcom/android/server/stats/StatsCompanionService;)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    const/4 v2, 0x0

    nop

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v6, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v6, v2, v4}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v6, v5, v3

    invoke-virtual {v0, v3}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->setThrottleInterval(J)V

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v3, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readFreqs(Lcom/android/internal/os/PowerProfile;)[J

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->setThrottleInterval(J)V

    iget-object v6, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->setThrottleInterval(J)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/IStatsManager;
    .locals 1

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .locals 0

    sput-object p0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/IStatsManager;
    .locals 1

    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->systemReady()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900()J
    .locals 2

    sget-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    return-wide v0
.end method

.method private addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;",
            "Landroid/net/NetworkStats;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/net/NetworkStats;->size()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p3, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    new-instance v5, Landroid/os/StatsLogEventWrapper;

    if-eqz p4, :cond_0

    const/4 v6, 0x6

    goto :goto_1

    :cond_0
    const/4 v6, 0x5

    :goto_1
    invoke-direct {v5, v1, v2, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    iget v6, v3, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    if-eqz p4, :cond_1

    iget v6, v3, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    :cond_1
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    const-string v2, "StatsCompanionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no controller energy info supplied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatsCompanionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private enforceCallingPermission()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATSCOMPANION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static fetchStatsdService()Landroid/os/IStatsManager;
    .locals 1

    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method private forgetEverythingLocked()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelAnomalyAlarm()V

    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelPullingAlarm()V

    return-void
.end method

.method private final informAllUidsLocked(Landroid/content/Context;)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    const v8, 0x402000

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->toIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-static {v4}, Lcom/android/server/stats/StatsCompanionService;->toLongArray(Ljava/util/List;)[J

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Landroid/os/IStatsManager;->informAllUidData([I[J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuActiveTime$3(JILjava/util/List;IJ)V
    .locals 2

    new-instance v0, Landroid/os/StatsLogEventWrapper;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v0, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v0, p5, p6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuClusterTime$2(JILjava/util/List;I[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v1, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    aget-wide v2, p5, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuFreqTime$1(JILjava/util/List;I[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_1

    aget-wide v1, p5, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v1, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    aget-wide v2, p5, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuTime$0(JILjava/util/List;IJJ)V
    .locals 2

    new-instance v0, Landroid/os/StatsLogEventWrapper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v0, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v0, p5, p6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0, p7, p8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullBluetoothActivityInfo(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    new-instance v1, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, p1, v4}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullBluetoothBytesTransfer(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    new-instance v7, Landroid/os/StatsLogEventWrapper;

    const/4 v8, 0x3

    invoke-direct {v7, v1, v2, p1, v8}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    const-string v1, "StatsCompanionService"

    const-string v2, "Failed to get bluetooth adapter!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private pullCpuTimePerFreq(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuSpeedReader;->readAbsolute()[J

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    new-instance v5, Landroid/os/StatsLogEventWrapper;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v1, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v5, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v5, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    aget-wide v6, v3, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pullDiskSpace(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsData:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsSystem:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsTemp:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullKernelUidCpuActiveTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelUidCpuClusterTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$HnKmFmrhuaLvGqFujHXRVkF_MsY;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$HnKmFmrhuaLvGqFujHXRVkF_MsY;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelUidCpuFreqTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelUidCpuTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelWakelock(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/KernelWakelockStats$Entry;

    new-instance v7, Landroid/os/StatsLogEventWrapper;

    const/4 v8, 0x4

    invoke-direct {v7, v1, v2, p1, v8}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v7, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget v8, v6, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget v8, v6, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v8, v6, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pullMobileBytesTransfer(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v7, v6}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5, v7}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for mobile bytes has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private pullMobileBytesTransferByFgBg(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for mobile bytes w/ fg/bg has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private pullModemActivityInfo(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/telephony/ModemActivityInfo;

    new-instance v4, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    const/16 v7, 0xa

    invoke-direct {v4, v5, v6, p1, v7}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private pullProcessMemoryState(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProcessMemoryState;

    new-instance v5, Landroid/os/StatsLogEventWrapper;

    const/16 v6, 0x8

    invoke-direct {v5, v1, v2, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    iget v6, v4, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v6, v4, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget v6, v4, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->pgfault:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->pgmajfault:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->rssInBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->swapInBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pullSystemElapsedRealtime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullSystemUpTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullWifiActivityInfo(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "wifi"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiActivityEnergyInfo;

    new-instance v4, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, p1, v7}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling wifiManager for wifi controller activity energy info has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_2
    return-void
.end method

.method private pullWifiBytesTransfer(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v7, v6}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5, v7}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for wifi bytes has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private pullWifiBytesTransferByFgBg(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for wifi bytes w/ fg/bg has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 7

    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    const/4 v3, -0x1

    iput v3, v1, Landroid/net/NetworkStats$Entry;->metered:I

    iput v3, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    nop

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    iget v5, v4, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v4, Landroid/net/NetworkStats$Entry;->set:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v4, Landroid/net/NetworkStats$Entry;->uid:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private sayHiToStatsd()V
    .locals 10

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-eqz v1, :cond_0

    const-string v1, "StatsCompanionService"

    const-string v2, "Trying to fetch statsd, but it was already fetched"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "sStatsd is not null when being fetched"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-nez v1, :cond_1

    const-string v1, "StatsCompanionService"

    const-string v2, "Could not yet find statsd to tell it that StatsCompanion is alive."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->statsCompanionReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;-><init>(Lcom/android/server/stats/StatsCompanionService;Lcom/android/server/stats/StatsCompanionService$1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "StatsCompanionService"

    const-string/jumbo v3, "linkToDeath(StatsdDeathRecipient) failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    nop

    const-string v4, "StatsCompanionService"

    const-string v5, "Told statsd that StatsCompanionService is alive."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v1

    :try_start_6
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd that statscompanion is ready"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private systemReady()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    return-void
.end method

.method private static final toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final toLongArray(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancelAlarmForSubscriberTriggering()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelAnomalyAlarm()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelPullingAlarm()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v1, "StatsCompanionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of configuration files deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "  timestamp, deleted file name"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullData(I)[Landroid/os/StatsLogEventWrapper;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "StatsCompanionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such tagId data as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullDiskSpace(ILjava/util/List;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuClusterTime(ILjava/util/List;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuActiveTime(ILjava/util/List;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullSystemUpTime(ILjava/util/List;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullSystemElapsedRealtime(ILjava/util/List;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryState(ILjava/util/List;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullModemActivityInfo(ILjava/util/List;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiActivityInfo(ILjava/util/List;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuFreqTime(ILjava/util/List;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuTime(ILjava/util/List;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerFreq(ILjava/util/List;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothActivityInfo(ILjava/util/List;)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothBytesTransfer(ILjava/util/List;)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelWakelock(ILjava/util/List;)V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransferByFgBg(ILjava/util/List;)V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransfer(ILjava/util/List;)V

    goto :goto_0

    :pswitch_11
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransferByFgBg(ILjava/util/List;)V

    goto :goto_0

    :pswitch_12
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransfer(ILjava/util/List;)V

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/StatsLogEventWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/StatsLogEventWrapper;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendDataBroadcast(Landroid/os/IBinder;J)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v6, v1

    const-string v1, "android.app.extra.LAST_REPORT_TIME"

    invoke-virtual {v6, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatsCompanionService"

    const-string v3, "Unable to send using IntentSender"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V
    .locals 20

    move-wide/from16 v1, p2

    move-object/from16 v3, p10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v10, p1

    invoke-direct {v4, v10}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.app.extra.STATS_CONFIG_UID"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_CONFIG_KEY"

    move-wide/from16 v11, p4

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_ID"

    move-wide/from16 v13, p6

    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

    move-wide/from16 v8, p8

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_DIMENSIONS_VALUE"

    move-object/from16 v15, p11

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    array-length v0, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    move/from16 v16, v0

    aget-object v0, v3, v5

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    const-string v0, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v5, p0

    :try_start_0
    iget-object v0, v5, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v0

    move-object/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v16, v7

    :goto_1
    const-string v5, "StatsCompanionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send using IntentSender from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; presumably it had been cancelled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setAlarmForSubscriberTriggering(J)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnomalyAlarm(J)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPullingAlarm(J)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public statsdReady()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.STATSD_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public triggerUidSnapshot()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "StatsCompanionService"

    const-string v5, "Failed to trigger uid snapshot."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
