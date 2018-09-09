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

    .line 555
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 577
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 585
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 593
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 601
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 609
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 617
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

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 173
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 179
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 184
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 196
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 197
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 199
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 200
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
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 694
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 695
    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .line 473
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 474
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 475
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 478
    .end local v0    # "j":I
    .end local v1    # "fact":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 479
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .line 312
    if-ne p2, p3, :cond_1

    .line 313
    if-nez p1, :cond_0

    return-object p0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
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
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 685
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 687
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 688
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 689
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 691
    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .line 308
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 8
    .param p0, "procState"    # I
    .param p1, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 701
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 702
    .local v0, "memState":I
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 703
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v2, :cond_0

    .line 704
    move v2, v0

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 705
    .local v2, "highestMemState":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 706
    .local v3, "first":Z
    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 707
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 708
    if-eqz v3, :cond_2

    .line 709
    move v4, v1

    .local v4, "scalingFactor":F
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    .line 711
    .end local v4    # "scalingFactor":F
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v1, v1, v0

    .line 712
    .local v1, "scalingFactor":F
    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v1

    iput v4, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 714
    .end local v2    # "highestMemState":I
    :goto_2
    goto :goto_3

    .line 715
    .end local v1    # "scalingFactor":F
    .end local v3    # "first":Z
    :cond_3
    const/4 v3, 0x1

    .line 716
    .restart local v3    # "first":Z
    nop

    .line 718
    .restart local v1    # "scalingFactor":F
    :goto_3
    if-eqz p2, :cond_5

    .line 719
    if-eqz v3, :cond_4

    .line 720
    sget-object v2, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    .line 721
    :cond_4
    sget-object v2, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    .line 722
    :cond_5
    if-eqz v3, :cond_7

    .line 723
    if-eqz p3, :cond_6

    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    .line 724
    :cond_7
    if-eqz p3, :cond_8

    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 725
    .local v2, "table":[J
    :goto_4
    aget-wide v4, v2, v0

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    .line 726
    .local v4, "delay":J
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    .line 727
    const-wide/32 v4, 0x36ee80

    .line 729
    :cond_9
    add-long v6, p4, v4

    return-wide v6
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 3
    .param p0, "setAdj"    # I

    .line 320
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 321
    const-string v1, "cch"

    const-string v2, "  "

    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :cond_0
    const/16 v0, 0x320

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    .line 323
    const-string/jumbo v2, "svcb "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    .line 325
    const-string/jumbo v2, "prev "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    .line 327
    const-string v2, "home "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    .line 329
    const-string/jumbo v2, "svc  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    .line 331
    const-string/jumbo v2, "hvy  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    .line 333
    const-string v2, "bkup "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 334
    :cond_6
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7

    .line 335
    const-string/jumbo v2, "prcp "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_7
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8

    .line 337
    const-string/jumbo v2, "vis  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_8
    if-ltz p0, :cond_9

    .line 339
    const-string v0, "fore "

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_9
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_a

    .line 341
    const-string/jumbo v2, "psvc "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_a
    const/16 v0, -0x320

    if-lt p0, v0, :cond_b

    .line 343
    const-string/jumbo v2, "pers "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_b
    const/16 v0, -0x384

    if-lt p0, v0, :cond_c

    .line 345
    const-string/jumbo v2, "sys  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_c
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_d

    .line 347
    const-string/jumbo v2, "ntv  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1
    .param p0, "curProcState"    # I

    .line 424
    packed-switch p0, :pswitch_data_0

    .line 468
    const/16 v0, 0x3e6

    return v0

    .line 464
    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    .line 462
    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    .line 460
    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    .line 458
    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    .line 456
    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    .line 454
    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    .line 452
    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    .line 446
    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    .line 436
    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    .line 450
    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    .line 448
    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    .line 444
    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    .line 442
    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    .line 440
    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    .line 438
    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    .line 432
    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    .line 434
    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    .line 430
    :pswitch_11
    const/16 v0, 0x3ea

    return v0

    .line 428
    :pswitch_12
    const/16 v0, 0x3e9

    return v0

    .line 426
    :pswitch_13
    const/16 v0, 0x3e8

    return v0

    .line 466
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
    .param p0, "curProcState"    # I

    .line 355
    packed-switch p0, :pswitch_data_0

    .line 417
    const-string v0, "??"

    goto :goto_0

    .line 414
    :pswitch_0
    const-string v0, "NONE"

    .line 415
    .local v0, "procState":Ljava/lang/String;
    goto :goto_0

    .line 411
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CEM "

    .line 412
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 408
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CRE "

    .line 409
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 405
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CACC"

    .line 406
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 402
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAC "

    .line 403
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 399
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "LAST"

    .line 400
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 396
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "HOME"

    .line 397
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 393
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HVY "

    .line 394
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 390
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "TPSL"

    .line 391
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 387
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "RCVR"

    .line 388
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 384
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "SVC "

    .line 385
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 381
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "BKUP"

    .line 382
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 378
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "TRNB"

    .line 379
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 375
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "IMPB"

    .line 376
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 372
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "IMPF"

    .line 373
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "BFGS"

    .line 370
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 366
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string v0, "FGS "

    .line 367
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 363
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string v0, "TOP "

    .line 364
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 360
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "PERU"

    .line 361
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_13
    const-string v0, "PER "

    .line 358
    .restart local v0    # "procState":Ljava/lang/String;
    nop

    .line 417
    :goto_0
    nop

    .line 420
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
    .param p0, "test"    # Z

    .line 681
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

    .line 797
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 798
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 801
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    nop

    .line 808
    const/4 v0, 0x1

    return v0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 805
    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .line 677
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
    .param p0, "pid"    # I

    .line 786
    if-gtz p0, :cond_0

    .line 787
    return-void

    .line 789
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 790
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 791
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 792
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 793
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .line 761
    if-gtz p0, :cond_0

    .line 762
    return-void

    .line 764
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 765
    return-void

    .line 767
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 768
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 769
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 770
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 771
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 772
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 773
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 775
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 776
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

    .line 779
    :cond_2
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 18
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    move-object/from16 v0, p0

    .line 217
    iget-wide v2, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v4, 0x15e

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    .line 220
    .local v2, "scaleMem":F
    const v3, 0x5dc00

    .line 221
    .local v3, "minSize":I
    const v4, 0xfa000

    .line 222
    .local v4, "maxSize":I
    mul-int v5, p1, p2

    int-to-float v5, v5

    int-to-float v6, v3

    sub-float/2addr v5, v6

    sub-int v6, v4, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 229
    .local v5, "scaleDisp":F
    cmpl-float v6, v2, v5

    if-lez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    .line 230
    .local v6, "scale":F
    :goto_0
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 231
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 232
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 234
    .local v7, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0057

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 240
    .local v8, "minfree_abs":I
    sget-object v9, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 242
    .local v9, "is64bit":Z
    :goto_2
    const/4 v12, 0x0

    .line 242
    .local v12, "i":I
    :goto_3
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    const/4 v14, 0x2

    const/4 v10, 0x4

    if-ge v12, v13, :cond_6

    .line 243
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v13, v13, v12

    .line 244
    .local v13, "low":I
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v11, v11, v12

    .line 245
    .local v11, "high":I
    if-eqz v9, :cond_5

    .line 247
    if-ne v12, v10, :cond_4

    mul-int/lit8 v10, v11, 0x3

    div-int/lit8 v11, v10, 0x2

    goto :goto_4

    .line 248
    :cond_4
    const/4 v14, 0x5

    if-ne v12, v14, :cond_5

    mul-int/lit8 v14, v11, 0x7

    div-int/lit8 v11, v14, 0x4

    .line 250
    :cond_5
    :goto_4
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v13

    move/from16 v16, v2

    sub-int v2, v11, v13

    .line 250
    .end local v2    # "scaleMem":F
    .local v16, "scaleMem":F
    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v14, v2

    float-to-int v2, v14

    aput v2, v10, v12

    .line 242
    .end local v11    # "high":I
    .end local v13    # "low":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_3

    .line 253
    .end local v12    # "i":I
    .end local v16    # "scaleMem":F
    .restart local v2    # "scaleMem":F
    :cond_6
    move/from16 v16, v2

    .line 253
    .end local v2    # "scaleMem":F
    .restart local v16    # "scaleMem":F
    if-ltz v8, :cond_7

    .line 254
    const/4 v2, 0x0

    .line 254
    .local v2, "i":I
    :goto_5
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v11, v11

    if-ge v2, v11, :cond_7

    .line 255
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

    .line 254
    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x2

    goto :goto_5

    .line 260
    .end local v2    # "i":I
    :cond_7
    if-eqz v7, :cond_9

    .line 261
    const/4 v2, 0x0

    .line 261
    .restart local v2    # "i":I
    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v11, v11

    if-ge v2, v11, :cond_9

    .line 262
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

    .line 264
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v10, v10, v2

    if-gez v10, :cond_8

    .line 265
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v11, 0x0

    aput v11, v10, v2

    .line 261
    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x4

    goto :goto_6

    .line 273
    .end local v2    # "i":I
    :cond_9
    const/16 v2, 0x38a

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3

    div-long/2addr v10, v12

    iput-wide v10, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 277
    mul-int v2, p1, p2

    const/4 v10, 0x4

    mul-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0x3

    div-int/lit16 v2, v2, 0x400

    .line 278
    .local v2, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0045

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 279
    .local v10, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0044

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 281
    .local v11, "reserve_abs":I
    if-ltz v11, :cond_a

    .line 282
    move v2, v11

    .line 285
    :cond_a
    if-eqz v10, :cond_b

    .line 286
    add-int/2addr v2, v10

    .line 287
    if-gez v2, :cond_b

    .line 288
    const/4 v2, 0x0

    .line 292
    :cond_b
    if-eqz p3, :cond_d

    .line 293
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

    .line 294
    .local v13, "buf":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 295
    nop

    .line 295
    .local v14, "i":I
    :goto_7
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v14, v1, :cond_c

    .line 296
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v14

    mul-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x1000

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 297
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v14

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 295
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 300
    .end local v14    # "i":I
    :cond_c
    invoke-static {v13}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 301
    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 813
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 814
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_0

    .line 815
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 817
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    goto :goto_2

    .line 818
    :catch_0
    move-exception v2

    .line 820
    goto :goto_2

    .line 825
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

    .line 826
    return-void

    .line 827
    :catch_1
    move-exception v2

    .line 828
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "ActivityManager"

    const-string v4, "Error writing to lowmemorykiller socket"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :try_start_2
    sget-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 833
    goto :goto_1

    .line 832
    :catch_2
    move-exception v3

    .line 835
    :goto_1
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 813
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 203
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 206
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 207
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 208
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 209
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 212
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .line 746
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 3
    .param p1, "adjustment"    # I

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 733
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "i":I
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
