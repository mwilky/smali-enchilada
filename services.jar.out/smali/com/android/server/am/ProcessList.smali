.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1

    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 8

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    if-eqz v3, :cond_2

    move v4, v1

    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v1, v1, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v1

    iput v4, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    :goto_2
    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    nop

    :goto_3
    if-eqz p2, :cond_5

    if-eqz v3, :cond_4

    sget-object v2, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_7

    if-eqz p3, :cond_6

    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_8

    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    aget-wide v4, v2, v0

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    const-wide/32 v4, 0x36ee80

    :cond_9
    add-long v6, p4, v4

    return-wide v6
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    const-string v1, "cch"

    const-string v2, "  "

    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x320

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    const-string/jumbo v2, "svcb "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    const-string/jumbo v2, "prev "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    const-string/jumbo v2, "home "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    const-string/jumbo v2, "svc  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    const-string/jumbo v2, "hvy  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    const-string v2, "bkup "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7

    const-string/jumbo v2, "prcp "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8

    const-string/jumbo v2, "vis  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    if-ltz p0, :cond_9

    const-string v0, "fore "

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_a

    const-string/jumbo v2, "psvc "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const/16 v0, -0x320

    if-lt p0, v0, :cond_b

    const-string/jumbo v2, "pers "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/16 v0, -0x384

    if-lt p0, v0, :cond_c

    const-string/jumbo v2, "sys  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_d

    const-string/jumbo v2, "ntv  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x3e6

    return v0

    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    :pswitch_11
    const/16 v0, 0x3ea

    return v0

    :pswitch_12
    const/16 v0, 0x3e9

    return v0

    :pswitch_13
    const/16 v0, 0x3e8

    return v0

    :pswitch_14
    const/16 v0, 0x3e7

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "??"

    goto :goto_0

    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "CEM "

    goto :goto_0

    :pswitch_2
    const-string v0, "CRE "

    goto :goto_0

    :pswitch_3
    const-string v0, "CACC"

    goto :goto_0

    :pswitch_4
    const-string v0, "CAC "

    goto :goto_0

    :pswitch_5
    const-string v0, "LAST"

    goto :goto_0

    :pswitch_6
    const-string v0, "HOME"

    goto :goto_0

    :pswitch_7
    const-string v0, "HVY "

    goto :goto_0

    :pswitch_8
    const-string v0, "TPSL"

    goto :goto_0

    :pswitch_9
    const-string v0, "RCVR"

    goto :goto_0

    :pswitch_a
    const-string v0, "SVC "

    goto :goto_0

    :pswitch_b
    const-string v0, "BKUP"

    goto :goto_0

    :pswitch_c
    const-string v0, "TRNB"

    goto :goto_0

    :pswitch_d
    const-string v0, "IMPB"

    goto :goto_0

    :pswitch_e
    const-string v0, "IMPF"

    goto :goto_0

    :pswitch_f
    const-string v0, "BFGS"

    goto :goto_0

    :pswitch_10
    const-string v0, "FGS "

    goto :goto_0

    :pswitch_11
    const-string v0, "TOP "

    goto :goto_0

    :pswitch_12
    const-string v0, "PERU"

    goto :goto_0

    :pswitch_13
    const-string v0, "PER "

    nop

    :goto_0
    nop

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private static openLmkdSocket()Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final remove(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 9

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v4, 0x15e

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    const v3, 0x5dc00

    const v4, 0xfa000

    mul-int v5, p1, p2

    int-to-float v5, v5

    int-to-float v6, v3

    sub-float/2addr v5, v6

    sub-int v6, v4, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v6, v2, v5

    if-lez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0057

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sget-object v9, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const/4 v12, 0x0

    :goto_3
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    const/4 v14, 0x2

    const/4 v10, 0x4

    if-ge v12, v13, :cond_6

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v13, v13, v12

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v11, v11, v12

    if-eqz v9, :cond_5

    if-ne v12, v10, :cond_4

    mul-int/lit8 v10, v11, 0x3

    div-int/lit8 v11, v10, 0x2

    goto :goto_4

    :cond_4
    const/4 v14, 0x5

    if-ne v12, v14, :cond_5

    mul-int/lit8 v14, v11, 0x7

    div-int/lit8 v11, v14, 0x4

    :cond_5
    :goto_4
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v13

    move/from16 v16, v2

    sub-int v2, v11, v13

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v14, v2

    float-to-int v2, v14

    aput v2, v10, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_3

    :cond_6
    move/from16 v16, v2

    if-ltz v8, :cond_7

    const/4 v2, 0x0

    :goto_5
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v11, v11

    if-ge v2, v11, :cond_7

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v12, v8

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v13, v13, v2

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v14, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    aget v13, v13, v14

    int-to-float v13, v13

    div-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v11, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x2

    goto :goto_5

    :cond_7
    if-eqz v7, :cond_9

    const/4 v2, 0x0

    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v11, v11

    if-ge v2, v11, :cond_9

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v12, v11, v2

    int-to-float v13, v7

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v14, v2

    int-to-float v14, v14

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v10, v10

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget v10, v14, v10

    int-to-float v10, v10

    div-float/2addr v13, v10

    float-to-int v10, v13

    add-int/2addr v12, v10

    aput v12, v11, v2

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v10, v10, v2

    if-gez v10, :cond_8

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v11, 0x0

    aput v11, v10, v2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x4

    goto :goto_6

    :cond_9
    const/16 v2, 0x38a

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3

    div-long/2addr v10, v12

    iput-wide v10, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int v2, p1, p2

    const/4 v10, 0x4

    mul-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0x3

    div-int/lit16 v2, v2, 0x400

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0045

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0044

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-ltz v11, :cond_a

    move v2, v11

    :cond_a
    if-eqz v10, :cond_b

    add-int/2addr v2, v10

    if-gez v2, :cond_b

    const/4 v2, 0x0

    :cond_b
    if-eqz p3, :cond_d

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    const/4 v14, 0x2

    mul-int/2addr v14, v13

    const/4 v13, 0x1

    add-int/2addr v14, v13

    const/4 v13, 0x4

    mul-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    nop

    :goto_7
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v14, v1, :cond_c

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v14

    mul-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x1000

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v14

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_c
    invoke-static {v13}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v2

    const-string v3, "ActivityManager"

    const-string v4, "Error writing to lowmemorykiller socket"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    sget-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_1
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method
