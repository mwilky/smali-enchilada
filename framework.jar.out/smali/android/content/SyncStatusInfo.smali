.class public Landroid/content/SyncStatusInfo;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStatusInfo$Stats;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EVENT_COUNT:I = 0xa

.field private static final SOURCE_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Sync"

.field static final VERSION:I = 0x6


# instance fields
.field public final authorityId:I

.field public initialFailureTime:J

.field public initialize:Z

.field public lastFailureMesg:Ljava/lang/String;

.field public lastFailureSource:I

.field public lastFailureTime:J

.field public lastSuccessSource:I

.field public lastSuccessTime:J

.field public lastTodayResetTime:J

.field private final mLastEventTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pending:Z

.field public final perSourceLastFailureTimes:[J

.field public final perSourceLastSuccessTimes:[J

.field private periodicSyncTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final todayStats:Landroid/content/SyncStatusInfo$Stats;

.field public final totalStats:Landroid/content/SyncStatusInfo$Stats;

.field public final yesterdayStats:Landroid/content/SyncStatusInfo$Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/SyncStatusInfo$1;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$1;-><init>()V

    sput-object v0, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iput p1, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/SyncStatusInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iget v0, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    iget-object v0, p1, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    iget-object v0, p1, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    iget-object v0, p1, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iget v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iget v0, p1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    iget-object v0, p1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->pending:Z

    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->pending:Z

    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->initialize:Z

    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    iget-object v0, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    invoke-static {v0, v1}, Landroid/content/SyncStatusInfo;->copy([J[J)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    invoke-static {v0, v1}, Landroid/content/SyncStatusInfo;->copy([J[J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    if-eq v1, v2, :cond_0

    const-string v3, "SyncStatusInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    goto :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_4

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_5

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v3, 0x3

    if-lt v1, v3, :cond_6

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_6

    iget-object v6, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v2, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    if-gez v2, :cond_8

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iput v4, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    goto :goto_6

    :cond_7
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    :cond_8
    :goto_6
    const/4 v2, 0x5

    if-lt v1, v2, :cond_9

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v2, p1}, Landroid/content/SyncStatusInfo$Stats;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v2, p1}, Landroid/content/SyncStatusInfo$Stats;->readFromParcel(Landroid/os/Parcel;)V

    :cond_9
    if-lt v1, v0, :cond_a

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    :cond_a
    return-void
.end method

.method private static areSameDates(JJ)Z
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static copy([J[J)V
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private ensurePeriodicSyncTimeSize(I)V
    .locals 5

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEventTime(I)J
    .locals 2

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFailureMesgAsInt(I)I
    .locals 4

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorStringToInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown lastFailureMesg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getPeriodicSyncTime(I)J
    .locals 2

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public maybeResetTodayStats(ZZ)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p2, :cond_1

    iget-wide v2, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-static {v0, v1, v2, v3}, Landroid/content/SyncStatusInfo;->areSameDates(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v2, v3}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v2}, Landroid/content/SyncStatusInfo$Stats;->clear()V

    return-void
.end method

.method public removePeriodicSyncTime(I)V
    .locals 1

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setLastFailure(IJLjava/lang/String;)V
    .locals 4

    iput-wide p2, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iput p1, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    iput-object p4, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aput-wide p2, v0, p1

    :cond_1
    return-void
.end method

.method public setLastSuccess(IJ)V
    .locals 3

    iput-wide p2, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iput p1, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const/4 v2, -0x1

    iput v2, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aput-wide p2, v0, p1

    :cond_0
    return-void
.end method

.method public setPeriodicSyncTime(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->ensurePeriodicSyncTimeSize(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v0, v0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, p1}, Landroid/content/SyncStatusInfo$Stats;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, p1}, Landroid/content/SyncStatusInfo$Stats;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
