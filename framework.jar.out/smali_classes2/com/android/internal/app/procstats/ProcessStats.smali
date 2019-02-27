.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    }
.end annotation


# static fields
.field public static final ADD_PSS_EXTERNAL:I = 0x3

.field public static final ADD_PSS_EXTERNAL_SLOW:I = 0x4

.field public static final ADD_PSS_INTERNAL_ALL_MEM:I = 0x1

.field public static final ADD_PSS_INTERNAL_ALL_POLL:I = 0x2

.field public static final ADD_PSS_INTERNAL_SINGLE:I = 0x0

.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field private static final MAGIC:I = 0x50535454

.field public static final NON_CACHED_PROC_STATES:[I

.field private static final PARCEL_VERSION:I = 0x1b

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0xa

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_RSS_AVERAGE:I = 0x8

.field public static final PSS_RSS_MAXIMUM:I = 0x9

.field public static final PSS_RSS_MINIMUM:I = 0x7

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x8

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x7

.field public static final STATE_SERVICE:I = 0x5

.field public static final STATE_SERVICE_RESTARTING:I = 0x6

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mExternalPssCount:J

.field public mExternalPssTime:J

.field public mExternalSlowPssCount:J

.field public mExternalSlowPssTime:J

.field public mFlags:I

.field mHasSwappedOutPss:Z

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInternalAllMemPssCount:J

.field public mInternalAllMemPssTime:J

.field public mInternalAllPollPssCount:J

.field public mInternalAllPollPssTime:J

.field public mInternalSinglePssCount:J

.field public mInternalSinglePssTime:J

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final mSysMemUsageArgs:[J

.field public final mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v0, "^Node\\s+(\\d+),.*. type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x3
        0x4
        0x8
        0x5
        0x6
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    :cond_0
    return-void
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 3

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    return-void
.end method

.method private dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .locals 10

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Available pages by page size:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    const-string v3, "Zone %3d  %14s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    array-length v4, v3

    :goto_1
    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_1

    const-string v7, "%6d"

    new-array v8, v6, [Ljava/lang/Object;

    aget v9, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v1, v0

    if-eq v0, p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    not-int v0, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8

    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    return-void

    :cond_0
    array-length v0, p3

    if-gt p4, v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_1

    int-to-long v3, v2

    aput-wide v3, p3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    not-int v4, v2

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    const-wide/16 v2, 0x0

    aput-wide v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad array lengths: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " array is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x4000

    :goto_0
    new-array v2, v2, [B

    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_1

    aput v0, p1, v4

    return-object v2

    :cond_1
    add-int/2addr v0, v3

    array-length v5, v2

    if-lt v0, v5, :cond_2

    add-int/lit16 v5, v0, 0x4000

    new-array v5, v5, [B

    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v2, v5

    :cond_2
    goto :goto_1
.end method

.method private resetCommon()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    return-void
.end method

.method private static splitAndParseNumbers(Ljava/lang/String;)[I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_0

    if-gt v7, v5, :cond_0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    nop

    :goto_2
    if-ge v3, v2, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_4

    if-gt v9, v5, :cond_4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    add-int/lit8 v8, v9, -0x30

    goto :goto_3

    :cond_3
    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v10, v9, -0x30

    add-int/2addr v8, v10

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    const/4 v4, 0x0

    add-int/lit8 v10, v7, 0x1

    aput v8, v0, v7

    move v7, v10

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-lez v1, :cond_7

    add-int/lit8 v3, v1, -0x1

    aput v8, v0, v3

    :cond_7
    return-object v0
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time val negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    long-to-int v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v1

    long-to-int v4, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .locals 32

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    const/4 v0, 0x0

    :goto_0
    move v11, v0

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_1
    move v14, v0

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v14, v0, :cond_5

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    :goto_2
    move v5, v0

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v17, v16

    move/from16 v10, v17

    if-ge v10, v1, :cond_2

    move/from16 v19, v0

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    move/from16 v20, v1

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-eq v1, v0, :cond_1

    nop

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v6

    move/from16 v1, v19

    move-object v6, v0

    move-object v0, v7

    move-object/from16 v22, v9

    move/from16 v17, v20

    move v9, v1

    move-object v1, v12

    move-object/from16 v23, v13

    move-object v13, v2

    move v2, v15

    move-wide/from16 v24, v3

    move/from16 v19, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-wide/from16 v3, v24

    invoke-virtual {v7, v12, v15, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-wide/from16 v26, v1

    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_0
    move-wide/from16 v3, v24

    :goto_4
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    goto :goto_5

    :cond_1
    move-object/from16 v21, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v13

    move/from16 v9, v19

    move/from16 v17, v20

    move-object v13, v2

    move/from16 v19, v5

    :goto_5
    add-int/lit8 v16, v10, 0x1

    move v0, v9

    move-object v2, v13

    move/from16 v1, v17

    move/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v9, v22

    move-object/from16 v13, v23

    goto :goto_3

    :cond_2
    move/from16 v17, v1

    move/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v13

    move v9, v0

    move-object v13, v2

    const/4 v0, 0x0

    :goto_6
    move v10, v0

    if-ge v10, v9, :cond_3

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/app/procstats/ServiceState;

    nop

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object v1, v12

    move v2, v15

    move-wide/from16 v24, v3

    move/from16 v28, v9

    move-object/from16 v20, v21

    move-object v9, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    add-int/lit8 v0, v10, 0x1

    move/from16 v9, v28

    goto :goto_6

    :cond_3
    move-object/from16 v20, v21

    add-int/lit8 v0, v19, 0x1

    move-object/from16 v6, v20

    move-object/from16 v9, v22

    move-object/from16 v13, v23

    goto/16 :goto_2

    :cond_4
    move-object/from16 v22, v9

    move-object/from16 v23, v13

    add-int/lit8 v0, v14, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v22, v9

    add-int/lit8 v0, v11, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v22, v9

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    const/4 v0, 0x0

    :goto_7
    move v10, v0

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v10, v0, :cond_a

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_8
    move v12, v0

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_9

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v4

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v15, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v16, :cond_7

    new-instance v17, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v17

    move-object v1, v7

    move-object v2, v6

    move v3, v13

    move-wide/from16 v29, v4

    move-object/from16 v31, v9

    move-object v9, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v15, v13, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, v29

    invoke-virtual {v7, v9, v13, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v3

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_7
    move-wide v1, v4

    move-object/from16 v31, v9

    move-object v9, v6

    move-object/from16 v0, v16

    :cond_8
    :goto_9
    invoke-virtual {v0, v14}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    add-int/lit8 v0, v12, 0x1

    move-object/from16 v9, v31

    goto :goto_8

    :cond_9
    move-object/from16 v31, v9

    add-int/lit8 v0, v10, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v31, v9

    const/16 v18, 0x0

    :goto_a
    move/from16 v0, v18

    const/16 v1, 0x8

    if-ge v0, v1, :cond_b

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v2, v1, v0

    iget-object v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v18, v0, 0x1

    goto :goto_a

    :cond_b
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iget-wide v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    :cond_c
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iget-boolean v1, v8, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    or-int/2addr v0, v1

    iput-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    return-void
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 5

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    mul-int/lit8 v0, v0, 0xe

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    move v1, v4

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x1

    add-int/2addr v3, v1

    aput-wide p1, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x4

    add-int/2addr v3, v1

    aput-wide p3, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x7

    add-int/2addr v3, v1

    aput-wide p5, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/16 v3, 0xa

    add-int/2addr v3, v1

    aput-wide p7, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/16 v3, 0xd

    add-int/2addr v3, v1

    aput-wide p9, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    :cond_1
    return-void
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p7

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_5

    invoke-virtual {v9, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v13, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_3

    :cond_0
    const/4 v14, 0x0

    goto :goto_4

    :cond_1
    :goto_3
    const/4 v14, 0x1

    :goto_4
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_4

    iget-object v4, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v14, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_6

    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v17

    if-nez v17, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    :goto_7
    move/from16 v4, v16

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    move-object v6, v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    if-eq v12, v13, :cond_9

    move-object v6, v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v13

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    goto :goto_8

    :cond_8
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :cond_9
    :goto_8
    add-int/lit8 v16, v4, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    sget-object v4, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0xe

    const-wide/16 v9, 0x0

    if-ge v7, v8, :cond_0

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aput-wide v9, v8, v7

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    aput-wide v4, v8, v7

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aput-wide v4, v8, v7

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aput v6, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    aput-wide v4, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iput v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    move-result-object v4

    move v5, v6

    :goto_2
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    array-length v7, v7

    if-ge v5, v7, :cond_5

    move v7, v6

    :goto_3
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_4

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    aget v8, v8, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    mul-int/lit8 v9, v8, 0xe

    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v10, v8

    iget v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-ne v12, v8, :cond_2

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    :cond_2
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    int-to-byte v13, v9

    invoke-virtual {v12, v13}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    move-result v12

    move-object v13, v4

    const/4 v14, 0x0

    const/4 v15, -0x1

    if-eq v12, v15, :cond_3

    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v15, v12}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v15

    invoke-static {v12}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v16

    add-int/lit8 v17, v16, 0x0

    aget-wide v17, v15, v17

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-ltz v17, :cond_3

    move-object/from16 v21, v4

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    invoke-static {v4, v6, v13, v14}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    move-object v13, v15

    move/from16 v14, v16

    goto :goto_4

    :cond_3
    move-object/from16 v21, v4

    :goto_4
    move/from16 v22, v7

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-int/lit8 v4, v14, 0x2

    move/from16 v23, v8

    move/from16 v24, v9

    aget-wide v8, v13, v4

    long-to-double v8, v8

    long-to-double v2, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    add-int/lit8 v4, v14, 0x5

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-int/lit8 v4, v14, 0x8

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    add-int/lit8 v4, v14, 0xb

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-int/lit8 v4, v14, 0xe

    aget-wide v6, v13, v4

    long-to-double v6, v6

    long-to-double v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    int-to-long v2, v2

    add-int/lit8 v4, v14, 0x0

    aget-wide v6, v13, v4

    add-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    add-int/lit8 v7, v22, 0x1

    move-object/from16 v4, v21

    move-wide/from16 v2, p2

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_4
    move-object/from16 v21, v4

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v2, p2

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_5
    move-object/from16 v21, v4

    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iput-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    move-wide/from16 v7, p2

    invoke-virtual {v6, v1, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    move-wide/from16 v7, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move-wide/from16 v7, p2

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    const-string/jumbo v1, "vers,5"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "period,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v10, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_0
    invoke-virtual {v10, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const-string v2, ",shutdown"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    const-string v2, ",sysprops"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v15, 0x1

    and-int/2addr v2, v15

    if-eqz v2, :cond_3

    const-string v2, ",complete"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3
    move/from16 v16, v1

    if-eqz v16, :cond_4

    const-string v1, ",partial"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_5

    const-string v1, ",swapped-out-pss"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "config,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_1
    move v8, v1

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_b

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    if-eqz v11, :cond_6

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    nop

    move/from16 v22, v8

    move-object/from16 v24, v14

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/util/SparseArray;

    move/from16 v1, v17

    :goto_2
    move v5, v1

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_a

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/util/LongSparseArray;

    move/from16 v1, v17

    :goto_3
    move v4, v1

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_9

    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v19

    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move/from16 v21, v17

    :goto_4
    move/from16 v22, v21

    move/from16 v15, v22

    if-ge v15, v2, :cond_7

    move/from16 v23, v1

    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/String;

    move/from16 v11, v23

    move-object/from16 v1, v21

    move/from16 v23, v2

    move-object v2, v10

    move-object/from16 v24, v14

    move-object v14, v3

    move-object v3, v9

    move/from16 v25, v4

    move/from16 v4, v18

    move/from16 v26, v5

    move-object/from16 v27, v6

    move-wide/from16 v5, v19

    move-object/from16 v28, v7

    move-object/from16 v7, v22

    move/from16 v22, v8

    move-object v0, v9

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    add-int/lit8 v21, v15, 0x1

    move-object v9, v0

    move v1, v11

    move-object v3, v14

    move/from16 v8, v22

    move/from16 v2, v23

    move-object/from16 v14, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    move v11, v1

    move/from16 v23, v2

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v22, v8

    move-object v0, v9

    move-object/from16 v24, v14

    move-object v14, v3

    move/from16 v1, v17

    :goto_5
    move v15, v1

    if-ge v15, v11, :cond_8

    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/internal/app/procstats/ServiceState;

    move-object/from16 v1, v29

    move-object v2, v10

    move-object v3, v0

    move/from16 v4, v18

    move-wide/from16 v5, v19

    move-object/from16 v7, v21

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    add-int/lit8 v1, v15, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v25, 0x1

    move-object v9, v0

    move/from16 v8, v22

    move-object/from16 v14, v24

    move/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_9
    move/from16 v26, v5

    move-object/from16 v28, v7

    move/from16 v22, v8

    move-object v0, v9

    move-object/from16 v24, v14

    add-int/lit8 v1, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_a
    move/from16 v22, v8

    move-object/from16 v24, v14

    :goto_6
    add-int/lit8 v1, v22, 0x1

    move-object/from16 v14, v24

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v24, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    move/from16 v1, v17

    :goto_7
    move v7, v1

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_d

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/SparseArray;

    move/from16 v1, v17

    :goto_8
    move v14, v1

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_c

    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v1, v18

    move-object v2, v10

    move-object v3, v8

    move v4, v15

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    add-int/lit8 v1, v14, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v7, 0x1

    goto :goto_7

    :cond_d
    const-string/jumbo v1, "total"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-object v1, v10

    move-wide v7, v12

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_10

    const-string/jumbo v2, "sysmemusage"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v2, v17

    :goto_9
    if-ge v2, v1, :cond_10

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    move/from16 v5, v17

    :goto_a
    const/16 v6, 0x10

    if-ge v5, v6, :cond_f

    const/4 v6, 0x1

    if-le v5, v6, :cond_e

    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v7, v3, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    const-string/jumbo v3, "weights,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    move/from16 v3, v17

    :goto_b
    const/16 v4, 0xe

    if-ge v3, v4, :cond_11

    const-string v4, ","

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v3

    invoke-virtual {v10, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    const-string v4, ":"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v4, v4, v3

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v4, v17

    :goto_c
    if-ge v4, v3, :cond_15

    const-string v5, "availablepages,"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-nez v5, :cond_12

    move/from16 v6, v17

    goto :goto_d

    :cond_12
    array-length v6, v5

    :goto_d
    move/from16 v7, v17

    :goto_e
    if-ge v7, v6, :cond_14

    if-eqz v7, :cond_13

    const-string v8, ","

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_13
    aget v8, v5, v7

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_15
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p8

    move-object/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    move-object v2, p3

    move-object v3, v0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-static/range {v1 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 37

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    move/from16 v3, p6

    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v10, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v11, v6, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v13, p3

    invoke-static/range {v7 .. v14}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v18

    const/4 v0, 0x0

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "System memory usage:"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    const-string v2, "  "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-virtual {v1, v5, v2, v7, v8}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v1, 0x0

    const/16 v20, 0x0

    move v7, v0

    move/from16 v0, v20

    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v0, v8, :cond_1a

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Landroid/util/SparseArray;

    move v8, v7

    move v7, v1

    move/from16 v1, v20

    :goto_1
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_19

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/util/LongSparseArray;

    move v9, v8

    move v8, v7

    move/from16 v7, v20

    :goto_2
    move v11, v7

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v11, v7, :cond_18

    move/from16 v22, v1

    move-object/from16 v21, v2

    invoke-virtual {v12, v11}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-virtual {v12, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v7, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move/from16 v23, v0

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-eqz v4, :cond_2

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    goto :goto_3

    :cond_1
    move/from16 v16, v20

    goto :goto_4

    :cond_2
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v24, v16

    if-nez v24, :cond_5

    const/16 v16, 0x0

    move/from16 v17, v20

    :goto_5
    move/from16 v25, v17

    move/from16 v26, v11

    move/from16 v11, v25

    if-ge v11, v7, :cond_4

    move-object/from16 v27, v12

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v28, v13

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v16, 0x1

    goto :goto_6

    :cond_3
    add-int/lit8 v17, v11, 0x1

    move/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    goto :goto_5

    :cond_4
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    :goto_6
    if-nez v16, :cond_6

    nop

    move/from16 v31, v14

    move-object/from16 v32, v15

    goto/16 :goto_16

    :cond_5
    move/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    :cond_6
    if-gtz v7, :cond_8

    if-lez v0, :cond_7

    goto :goto_8

    :cond_7
    :goto_7
    move/from16 v29, v8

    move/from16 v25, v9

    goto :goto_9

    :cond_8
    :goto_8
    if-nez v8, :cond_a

    if-eqz v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    const-string v11, "Per-Package Stats:"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_a
    const-string v11, "  * "

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " / "

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v11, " / v"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v11, ":"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :goto_9
    if-eqz p5, :cond_f

    if-eqz v3, :cond_b

    move v6, v7

    move-object v3, v10

    move/from16 v31, v14

    move-object/from16 v32, v15

    goto/16 :goto_c

    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v8

    move/from16 v8, v20

    :goto_a
    if-ge v8, v7, :cond_e

    iget-object v9, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v24, :cond_c

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_b

    :cond_c
    if-eqz p7, :cond_d

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_e
    const-string v8, "      "

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v12, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v16, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move v9, v7

    move-object v7, v5

    move v6, v9

    move-object v9, v13

    move-object v3, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object/from16 v17, v13

    move/from16 v31, v14

    move-wide/from16 v13, p3

    move-object/from16 v32, v15

    move-wide/from16 v15, v18

    invoke-static/range {v7 .. v16}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    move v14, v0

    move-wide/from16 v34, v1

    move-object v13, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v12, p6

    goto/16 :goto_11

    :cond_f
    move v6, v7

    move-object v3, v10

    move/from16 v31, v14

    move-object/from16 v32, v15

    :goto_c
    move/from16 v7, v20

    :goto_d
    move v15, v7

    if-ge v15, v6, :cond_13

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v24, :cond_10

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    nop

    :goto_e
    move v14, v0

    move-wide/from16 v34, v1

    move-object v13, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v12, p6

    goto/16 :goto_10

    :cond_10
    if-eqz p7, :cond_11

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "      (Not active: "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_11
    const-string v7, "      Process "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, " (multi, "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    :cond_12
    const-string v7, " (unique, "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " entries)"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "        "

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v12, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v7, v13

    move-object v8, v5

    move-object/from16 v33, v13

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v7, "        "

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move v14, v0

    move-object/from16 v0, v33

    move-wide/from16 v34, v1

    move-object v1, v5

    move-object v2, v7

    move-object v13, v3

    move/from16 v12, p6

    move-object v3, v8

    move-object v11, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    const-string v0, "        "

    move-object/from16 v1, v33

    invoke-virtual {v1, v9, v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_10
    add-int/lit8 v7, v15, 0x1

    move-object v5, v9

    move-object v4, v11

    move-object v3, v13

    move v0, v14

    move-wide/from16 v1, v34

    goto/16 :goto_d

    :cond_13
    move v14, v0

    move-wide/from16 v34, v1

    move-object v13, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v12, p6

    :goto_11
    move/from16 v0, v20

    :goto_12
    if-ge v0, v14, :cond_17

    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    if-nez v24, :cond_14

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    nop

    :goto_13
    move-object v5, v9

    move-object v4, v11

    move v3, v12

    move-object v2, v13

    move/from16 v30, v14

    goto/16 :goto_15

    :cond_14
    if-eqz p7, :cond_15

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "      (Not active: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_15
    if-eqz v12, :cond_16

    const-string v2, "      Service "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    :cond_16
    const-string v2, "      * "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_14
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        Process: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        "

    const-string v10, "          "

    const-string v3, "    "

    move-object v7, v1

    move-object v8, v9

    move-object v5, v9

    move-object v9, v2

    move-object v4, v11

    move-object v11, v3

    move v3, v12

    move-object v2, v13

    move-wide/from16 v12, p3

    move/from16 v30, v14

    move-wide/from16 v14, v18

    move/from16 v16, p5

    move/from16 v17, v3

    invoke-virtual/range {v7 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    :goto_15
    add-int/lit8 v0, v0, 0x1

    move-object v13, v2

    move v12, v3

    move-object v11, v4

    move-object v9, v5

    move/from16 v14, v30

    goto/16 :goto_12

    :cond_17
    move-object v5, v9

    move-object v4, v11

    move v3, v12

    move/from16 v9, v25

    move/from16 v8, v29

    :goto_16
    add-int/lit8 v7, v26, 0x1

    move-object/from16 v2, v21

    move/from16 v1, v22

    move/from16 v0, v23

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move/from16 v14, v31

    move-object/from16 v15, v32

    move-object/from16 v6, p0

    goto/16 :goto_2

    :cond_18
    move/from16 v23, v0

    move/from16 v22, v1

    move-object/from16 v21, v2

    move-object/from16 v28, v13

    move-object/from16 v32, v15

    add-int/lit8 v1, v22, 0x1

    move v7, v8

    move v8, v9

    move-object/from16 v6, p0

    goto/16 :goto_1

    :cond_19
    move/from16 v23, v0

    move-object/from16 v21, v2

    add-int/lit8 v0, v23, 0x1

    move v1, v7

    move v7, v8

    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v21, v2

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v10, v0

    move v8, v2

    move v9, v7

    move/from16 v0, v20

    move v7, v1

    :goto_17
    move v2, v0

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_22

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    move v11, v10

    move v10, v7

    move/from16 v7, v20

    :goto_18
    move v13, v7

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v13, v7, :cond_21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    add-int/lit8 v16, v8, 0x1

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_19

    :cond_1b
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_19

    :cond_1c
    if-eqz v4, :cond_1d

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    nop

    :goto_19
    move-object v12, v0

    move v14, v2

    move v7, v3

    move-object v8, v5

    move/from16 v24, v13

    move-object v13, v1

    goto/16 :goto_1c

    :cond_1d
    add-int/lit8 v17, v10, 0x1

    if-eqz v9, :cond_1e

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1e
    const/16 v22, 0x1

    if-nez v11, :cond_1f

    const-string v7, "Multi-Package Common Processes:"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    move/from16 v23, v7

    goto :goto_1a

    :cond_1f
    move/from16 v23, v11

    :goto_1a
    if-eqz p7, :cond_20

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, "      (Not active: "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    move-object v12, v0

    move v14, v2

    move v7, v3

    move-object v8, v5

    move/from16 v24, v13

    move-object v13, v1

    goto :goto_1b

    :cond_20
    const-string v7, "  * "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " entries)"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "        "

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v24, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v7, v12

    move-object v8, v5

    move-object/from16 v36, v12

    move-object/from16 v12, v24

    move/from16 v24, v13

    move/from16 v25, v14

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v7, "        "

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v12, v0

    move-object/from16 v0, v36

    move-object v13, v1

    move-object v1, v5

    move v14, v2

    move-object v2, v7

    move v7, v3

    move-object v3, v8

    move-object v4, v9

    move-object v8, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    const-string v0, "        "

    move-object/from16 v1, v36

    invoke-virtual {v1, v8, v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_1b
    move/from16 v10, v17

    move/from16 v9, v22

    move/from16 v11, v23

    :goto_1c
    add-int/lit8 v0, v24, 0x1

    move-object/from16 v4, p2

    move v3, v7

    move-object v5, v8

    move-object v1, v13

    move v2, v14

    move/from16 v8, v16

    move v7, v0

    move-object v0, v12

    goto/16 :goto_18

    :cond_21
    move v14, v2

    move v7, v3

    add-int/lit8 v0, v14, 0x1

    move-object/from16 v4, p2

    move v7, v10

    move v10, v11

    goto/16 :goto_17

    :cond_22
    move v11, v3

    if-eqz v11, :cond_23

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Total procs: "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " shown of "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " total"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23
    if-eqz v9, :cond_24

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_24
    if-eqz p5, :cond_25

    const-string v0, "Summary:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v12, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-wide/from16 v0, p3

    goto :goto_1d

    :cond_25
    move-object v12, v5

    move-wide/from16 v0, p3

    invoke-virtual {v6, v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    :goto_1d
    if-eqz v11, :cond_26

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Internal state:"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mRunning="

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 17

    move-object/from16 v14, p0

    iget-object v2, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v3, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v4, v14, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-wide/from16 v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v15

    const-string v3, "  "

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v2, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-wide/from16 v8, p3

    move-wide v10, v15

    move-object/from16 v12, p2

    move/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v0, "Run time Stats:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  "

    iget-object v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v3, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-object v0, v12

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Memory usage:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object v13, v0

    move-wide/from16 v14, p2

    invoke-virtual {v11, v13, v14, v15}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    const-wide/16 v16, 0x0

    const-string v2, "  "

    const-string v3, "Kernel "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object v0, v11

    move-object v1, v12

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    const-string v2, "  "

    const-string v3, "Native "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v0

    const/4 v2, 0x0

    move-wide/from16 v16, v0

    :goto_0
    move v10, v2

    const/16 v0, 0xe

    const/4 v8, 0x6

    if-ge v10, v0, :cond_1

    if-eq v10, v8, :cond_0

    const-string v2, "  "

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v10

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v10

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v18, v0, v10

    move-object v0, v11

    move-object v1, v12

    move-wide/from16 v8, v16

    move/from16 v19, v10

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    goto :goto_1

    :cond_0
    move/from16 v19, v10

    :goto_1
    add-int/lit8 v2, v19, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "  "

    const-string v3, "Cached "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object v0, v11

    move-object v1, v12

    move/from16 v18, v8

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    const-string v2, "  "

    const-string v3, "Free   "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    const-string v2, "  "

    const-string v3, "Z-Ram  "

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    const-string v0, "  TOTAL  : "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v12, v8, v9}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  "

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v18

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v18

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v0, v18

    move-object v0, v11

    move-wide/from16 v16, v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "PSS collection stats:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Internal Single: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Internal All Procs (Memory Change): "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Internal All Procs (Polling): "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  External: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  External Slow: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "          Start time: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "        Total uptime: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    :goto_2
    iget-wide v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Total elapsed time: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_3

    :cond_3
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_3
    iget-wide v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const/4 v0, 0x1

    iget v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const-string v1, " (shutdown)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4
    iget v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    const-string v1, " (sysprops)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_5
    iget v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    const-string v1, " (complete)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_7

    const-string v1, " (partial)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    iget-boolean v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_8

    const-string v1, " (swapped-out-pss)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const/16 v1, 0x20

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    :cond_0
    return v0
.end method

.method public getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v0, p3, p4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v1
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 19

    move-object/from16 v7, p0

    move/from16 v15, p2

    move-object/from16 v14, p5

    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v12

    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v17, :cond_0

    return-object v17

    :cond_0
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v8, :cond_1

    new-instance v9, Lcom/android/internal/app/procstats/ProcessState;

    move-object v0, v9

    move-object v1, v7

    move-object/from16 v2, p1

    move v3, v15

    move-wide/from16 v4, p3

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v14, v15, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v8

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v3

    cmp-long v1, p3, v3

    if-nez v1, :cond_2

    move-object v1, v0

    move-object v7, v12

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v9

    invoke-virtual {v7, v8, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    iget-object v9, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v1

    :goto_1
    move v1, v9

    if-ltz v1, :cond_4

    iget-object v9, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v10

    if-ne v10, v0, :cond_3

    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    :cond_3
    add-int/lit8 v9, v1, -0x1

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    const-string v1, "ProcessStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cloning proc state: no package state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for proc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v2

    move v11, v15

    move-object v7, v12

    move-object/from16 v18, v13

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    move-wide v15, v3

    invoke-direct/range {v8 .. v16}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    goto :goto_3

    :cond_6
    move-object/from16 v2, p1

    move-object v7, v12

    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object v8, v1

    move-object v9, v0

    move-object v10, v2

    move/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v16}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    :goto_3
    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 9

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/android/internal/app/procstats/ServiceState;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p6

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v1, v2

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, p4

    long-to-double v2, p6

    div-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " samples)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-long v2, p8, v0

    return-wide v2

    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 34

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-gtz v0, :cond_1

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v9

    :goto_1
    move v11, v0

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    :cond_2
    const v0, 0x50535454

    const-string/jumbo v1, "magic number"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/16 v0, 0x1b

    if-eq v12, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_4
    const/16 v0, 0xe

    const-string/jumbo v1, "state count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    const-string v1, "adj count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/16 v0, 0xa

    const-string/jumbo v1, "pss count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x10

    const-string/jumbo v1, "sys mem usage count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/16 v0, 0x1000

    const-string/jumbo v1, "longs size"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v9

    goto :goto_2

    :cond_a
    move v0, v10

    :goto_2
    iput-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v1, v1

    invoke-direct {v7, v8, v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad process count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_c
    move v6, v0

    :goto_3
    if-lez v6, :cond_16

    add-int/lit8 v14, v6, -0x1

    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    const-string v0, "bad process name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad uid count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_e
    :goto_4
    if-lez v0, :cond_15

    add-int/lit8 v16, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gez v6, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_f
    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_10

    const-string v0, "bad process package name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    if-eqz v11, :cond_11

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v15, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    move-object v4, v0

    if-eqz v4, :cond_13

    invoke-virtual {v4, v8, v10}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    move v13, v6

    goto :goto_6

    :cond_13
    new-instance v20, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v20

    move-object v1, v7

    move-object/from16 v2, v17

    move v3, v6

    move-object/from16 v21, v4

    move-wide/from16 v4, v18

    move v13, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    move-object/from16 v4, v20

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    :goto_6
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v15, v13, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    nop

    move/from16 v0, v16

    goto :goto_4

    :cond_15
    nop

    move v6, v14

    goto/16 :goto_3

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_17
    :goto_7
    if-lez v0, :cond_2f

    add-int/lit8 v13, v0, -0x1

    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_18

    const-string v0, "bad package name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad uid count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_19
    :goto_8
    if-lez v0, :cond_2e

    add-int/lit8 v15, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad versions count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1b
    :goto_9
    if-lez v0, :cond_2d

    add-int/lit8 v16, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-direct {v0, v14, v5}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    move-object v1, v0

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_1c

    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v4

    iget-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v14, v5, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_1d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad package process count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1d
    move/from16 v17, v4

    :goto_a
    if-lez v17, :cond_25

    add-int/lit8 v17, v17, -0x1

    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    const-string v9, "bad package process name"

    iput-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    iget-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v9, :cond_1f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v0

    const-string/jumbo v0, "no common proc: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1f
    move-object/from16 v31, v0

    if-eqz v18, :cond_24

    if-eqz v11, :cond_20

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_b

    :cond_20
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_22

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v19

    if-nez v19, :cond_21

    return-void

    :cond_21
    const/4 v10, 0x1

    goto :goto_c

    :cond_22
    new-instance v19, Lcom/android/internal/app/procstats/ProcessState;

    const-wide/16 v29, 0x0

    move-object/from16 v22, v19

    move-object/from16 v23, v9

    move-object/from16 v24, v14

    move/from16 v25, v5

    move-wide/from16 v26, v2

    move-object/from16 v28, v4

    invoke-direct/range {v22 .. v30}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    move-object/from16 v0, v19

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v19

    if-nez v19, :cond_23

    return-void

    :cond_23
    :goto_c
    iget-object v10, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_24
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    nop

    move-object/from16 v0, v31

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_a

    :cond_25
    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad package service count: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_26
    :goto_e
    if-lez v0, :cond_2c

    add-int/lit8 v9, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_27

    const-string v0, "bad package service name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_27
    const/16 v0, 0x9

    if-le v12, v0, :cond_28

    invoke-direct {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_f

    :cond_28
    const/4 v4, 0x0

    :goto_f
    if-eqz v11, :cond_29

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_10

    :cond_29
    const/4 v0, 0x0

    :goto_10
    move-object/from16 v18, v0

    if-nez v18, :cond_2a

    new-instance v19, Lcom/android/internal/app/procstats/ServiceState;

    const/16 v20, 0x0

    move-object/from16 v21, v31

    move-object/from16 v0, v19

    move-object/from16 v33, v1

    move-object v1, v7

    move-wide/from16 v22, v2

    move-object v2, v14

    move-object v3, v10

    move/from16 v24, v5

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object/from16 v18, v19

    move-object/from16 v0, v18

    goto :goto_11

    :cond_2a
    move-object/from16 v33, v1

    move-wide/from16 v22, v2

    move/from16 v24, v5

    move-object/from16 v21, v31

    move-object/from16 v0, v18

    :goto_11
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_2b

    return-void

    :cond_2b
    move-object/from16 v1, v33

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    move v0, v9

    move-object/from16 v31, v21

    move-wide/from16 v2, v22

    move/from16 v5, v24

    goto :goto_e

    :cond_2c
    move/from16 v24, v5

    move/from16 v0, v16

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_2d
    nop

    move v0, v15

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_2e
    nop

    move v0, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/16 v32, 0x0

    :goto_12
    move/from16 v2, v32

    if-ge v2, v1, :cond_30

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v32, v2, 0x1

    goto :goto_12

    :cond_30
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    return-void
.end method

.method public resetSafely()V
    .locals 15

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_1
    if-ltz v6, :cond_0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_2
    if-ltz v5, :cond_b

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_3
    if-ltz v7, :cond_9

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v4

    :goto_4
    if-ltz v9, :cond_7

    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_5
    if-ltz v11, :cond_3

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iget v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iput-object v12, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_6

    :cond_2
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_3
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_7
    if-ltz v11, :cond_5

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    goto :goto_8

    :cond_4
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    :cond_5
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_6

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_6

    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_8

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_a

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_9
    if-ltz v5, :cond_11

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_a
    if-ltz v7, :cond_f

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v9

    if-nez v9, :cond_d

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-lez v9, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_c

    :cond_d
    :goto_b
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v9

    if-eqz v9, :cond_e

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-ne v9, v4, :cond_e

    iget-object v8, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_c

    :cond_e
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    :goto_c
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    :cond_f
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_10

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_11
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    return-void
.end method

.method public updateFragmentation()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/pagetypeinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :goto_2
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    :cond_4
    :goto_5
    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const v4, 0x50535454

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x1b

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_0

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v11, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_7

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_6

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/LongSparseArray;

    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_5

    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v17, v10

    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/16 v16, 0x0

    :goto_5
    move/from16 v18, v16

    move/from16 v19, v11

    move/from16 v11, v18

    if-ge v11, v10, :cond_3

    move/from16 v20, v10

    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v21, v13

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    if-eq v13, v10, :cond_2

    invoke-virtual {v10, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    :cond_2
    add-int/lit8 v16, v11, 0x1

    move/from16 v11, v19

    move/from16 v10, v20

    move-object/from16 v13, v21

    goto :goto_5

    :cond_3
    move/from16 v20, v10

    move-object/from16 v21, v13

    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_4

    iget-object v13, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v13, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v17

    move/from16 v11, v19

    move-object/from16 v13, v21

    goto :goto_4

    :cond_5
    move-object/from16 v17, v10

    move/from16 v19, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_7
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v10, v6, v9

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    aput-wide v10, v6, v9

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    :cond_8
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v9, v9

    invoke-direct {v0, v1, v6, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_a

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_9

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v12, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v8, :cond_10

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v10, :cond_f

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v13, :cond_e

    move-object/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual {v12, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v12, v14}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v5, :cond_c

    move/from16 v24, v5

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v25, v7

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    if-ne v7, v5, :cond_b

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    :cond_b
    const/4 v7, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    :goto_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v24

    move-object/from16 v7, v25

    goto :goto_c

    :cond_c
    move/from16 v24, v5

    move-object/from16 v25, v7

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v5, :cond_d

    iget-object v15, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v15, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ServiceState;

    move-object/from16 v27, v4

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v15, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v27

    goto :goto_e

    :cond_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v7, v25

    goto/16 :goto_b

    :cond_e
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v7

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    :cond_f
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v7

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    :cond_10
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v7

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x0

    :goto_f
    move/from16 v5, v26

    if-ge v5, v4, :cond_11

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v26, v5, 0x1

    goto :goto_f

    :cond_11
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v9, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_0
    const-wide v3, 0x10300000002L

    invoke-virtual {v9, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000003L

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000004L

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10900000005L

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10800000006L

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const-wide v4, 0x20e00000007L

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v9, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v1, 0x0

    :cond_1
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v6, 0x4

    and-int/2addr v2, v6

    if-eqz v2, :cond_2

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v1, 0x0

    :cond_2
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v6, 0x1

    and-int/2addr v2, v6

    if-eqz v2, :cond_3

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v1, 0x0

    :cond_3
    move v13, v1

    if-eqz v13, :cond_4

    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    const/4 v15, 0x0

    move v1, v15

    :goto_1
    move v7, v1

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/util/SparseArray;

    move v1, v15

    :goto_2
    move v6, v1

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/internal/app/procstats/ProcessState;

    const-wide v3, 0x20b00000008L

    move-object/from16 v1, v18

    move-object v2, v9

    move-object/from16 v5, v16

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v20, v7

    move-object/from16 v21, v8

    move-wide/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V

    add-int/lit8 v1, v19, 0x1

    move/from16 v7, v20

    move-object/from16 v8, v21

    goto :goto_2

    :cond_5
    move/from16 v20, v7

    add-int/lit8 v1, v20, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
