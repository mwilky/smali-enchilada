.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffPolicy:I

.field private mBackoffPolicySet:Z

.field private mClipData:Landroid/content/ClipData;

.field private mClipGrantFlags:I

.field private mConstraintFlags:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mFlags:I

.field private mFlexMillis:J

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private final mJobId:I

.field private final mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkDownloadBytes:J

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mNetworkUploadBytes:J

.field private mPriority:I

.field private mTransientExtras:Landroid/os/Bundle;

.field private mTriggerContentMaxDelay:J

.field private mTriggerContentUpdateDelay:J

.field private mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "jobService"    # Landroid/content/ComponentName;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 966
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 969
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 974
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 975
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 977
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 978
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 990
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 991
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 993
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1007
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 1008
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 1009
    return-void
.end method

.method static synthetic access$000(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method static synthetic access$1300(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static synthetic access$1400(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$1500(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static synthetic access$1800(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    return-wide v0
.end method

.method static synthetic access$1900(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return v0
.end method

.method static synthetic access$2100(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return v0
.end method

.method static synthetic access$2400(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return v0
.end method

.method static synthetic access$300(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return v0
.end method

.method static synthetic access$500(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return v0
.end method

.method static synthetic access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .line 962
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-wide v0
.end method


# virtual methods
.method public addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "uri"    # Landroid/app/job/JobInfo$TriggerContentUri;

    .line 1317
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 1320
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    return-object p0
.end method

.method public build()Landroid/app/job/JobInfo;
    .locals 4

    .line 1529
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1532
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1536
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_12

    .line 1541
    :cond_3
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1542
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 1543
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network specifiers aren\'t supported for persistent jobs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1547
    :cond_5
    :goto_1
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    if-eqz v0, :cond_9

    .line 1548
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 1552
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 1556
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    goto :goto_2

    .line 1557
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call addTriggerContentUri() on a periodic job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1549
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_9
    :goto_2
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    if-eqz v0, :cond_d

    .line 1562
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1566
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1570
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_a

    goto :goto_3

    .line 1571
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setClipData() on a persisted job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1567
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setTransientExtras() on a persisted job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1563
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call addTriggerContentUri() on a persisted job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :cond_d
    :goto_3
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    if-nez v0, :cond_e

    goto :goto_4

    .line 1576
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An important while foreground job cannot have a time delay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1579
    :cond_f
    :goto_4
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_10

    goto :goto_5

    .line 1580
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1584
    :cond_11
    :goto_5
    new-instance v0, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$1;)V

    return-object v0

    .line 1537
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t provide estimated network usage without requiring a network"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 5
    .param p1, "initialBackoffMillis"    # J
    .param p3, "backoffPolicy"    # I

    .line 1441
    invoke-static {}, Landroid/app/job/JobInfo;->getMinBackoffMillis()J

    move-result-wide v0

    .line 1442
    .local v0, "minBackoff":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1443
    invoke-static {}, Landroid/app/job/JobInfo;->access$2700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested backoff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is too small; raising to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1443
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    move-wide p1, v0

    .line 1448
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1449
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1450
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1451
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "grantFlags"    # I

    .line 1073
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 1074
    iput p2, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    .line 1075
    return-object p0
.end method

.method public setEstimatedNetworkBytes(J)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "networkBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1167
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "downloadBytes"    # J
    .param p3, "uploadBytes"    # J

    .line 1209
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1210
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1211
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 1029
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1030
    return-object p0
.end method

.method public setFlags(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "flags"    # I

    .line 1019
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 1020
    return-object p0
.end method

.method public setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "importantWhileForeground"    # Z

    .line 1471
    if-eqz p1, :cond_0

    .line 1472
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    goto :goto_0

    .line 1474
    :cond_0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 1476
    :goto_0
    return-object p0
.end method

.method public setIsPrefetch(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "isPrefetch"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1485
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setPrefetch(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "minLatencyMillis"    # J

    .line 1405
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1407
    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "maxExecutionDelayMillis"    # J

    .line 1419
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 1420
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 1421
    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "intervalMillis"    # J

    .line 1358
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 9
    .param p1, "intervalMillis"    # J
    .param p3, "flexMillis"    # J

    .line 1373
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    .line 1374
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1375
    invoke-static {}, Landroid/app/job/JobInfo;->access$2700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is too small; raising to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1375
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    move-wide p1, v0

    .line 1380
    :cond_0
    const-wide/16 v2, 0x5

    mul-long/2addr v2, p1

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    .line 1381
    .local v2, "percentClamp":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1382
    .local v4, "minFlex":J
    cmp-long v6, p3, v4

    if-gez v6, :cond_1

    .line 1383
    invoke-static {}, Landroid/app/job/JobInfo;->access$2700()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested flex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for job "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is too small; raising to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1383
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    move-wide p3, v4

    .line 1388
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 1389
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 1390
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 1391
    iput-boolean v6, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v6, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1392
    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "isPersisted"    # Z

    .line 1520
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 1521
    return-object p0
.end method

.method public setPrefetch(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "prefetch"    # Z

    .line 1503
    if-eqz p1, :cond_0

    .line 1504
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    goto :goto_0

    .line 1506
    :cond_0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 1508
    :goto_0
    return-object p0
.end method

.method public setPriority(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "priority"    # I

    .line 1013
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1014
    return-object p0
.end method

.method public setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 1156
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1157
    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "networkType"    # I

    .line 1104
    if-nez p1, :cond_0

    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0

    .line 1107
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1110
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1111
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1112
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1114
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 1116
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1117
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    .line 1118
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 1119
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    .line 1120
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 1121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1124
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "batteryNotLow"    # Z

    .line 1245
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x3

    .line 1246
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1247
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "requiresCharging"    # Z

    .line 1231
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x2

    .line 1232
    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1233
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "requiresDeviceIdle"    # Z

    .line 1270
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x5

    .line 1271
    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1272
    return-object p0
.end method

.method public setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "storageNotLow"    # Z

    .line 1284
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x9

    .line 1285
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1286
    return-object p0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1044
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1045
    return-object p0
.end method

.method public setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "durationMs"    # J

    .line 1343
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1344
    return-object p0
.end method

.method public setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "durationMs"    # J

    .line 1332
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1333
    return-object p0
.end method
