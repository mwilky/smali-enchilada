.class public final Landroid/app/usage/EventStats;
.super Ljava/lang/Object;
.source "EventStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBeginTimeStamp:J

.field public mCount:I

.field public mEndTimeStamp:J

.field public mEventType:I

.field public mLastEventTime:J

.field public mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/EventStats$1;

    invoke-direct {v0}, Landroid/app/usage/EventStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/EventStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/EventStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/usage/EventStats;->mEventType:I

    iput v0, p0, Landroid/app/usage/EventStats;->mEventType:I

    iget-wide v0, p1, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    iget-wide v0, p1, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    iget-wide v0, p1, Landroid/app/usage/EventStats;->mLastEventTime:J

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mLastEventTime:J

    iget-wide v0, p1, Landroid/app/usage/EventStats;->mTotalTime:J

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mTotalTime:J

    iget v0, p1, Landroid/app/usage/EventStats;->mCount:I

    iput v0, p0, Landroid/app/usage/EventStats;->mCount:I

    return-void
.end method


# virtual methods
.method public add(Landroid/app/usage/EventStats;)V
    .locals 4

    iget v0, p0, Landroid/app/usage/EventStats;->mEventType:I

    iget v1, p1, Landroid/app/usage/EventStats;->mEventType:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p1, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    iget-wide v2, p0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mLastEventTime:J

    iget-wide v2, p1, Landroid/app/usage/EventStats;->mLastEventTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mLastEventTime:J

    :cond_0
    iget-wide v0, p0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mTotalTime:J

    iget-wide v2, p1, Landroid/app/usage/EventStats;->mTotalTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/EventStats;->mTotalTime:J

    iget v0, p0, Landroid/app/usage/EventStats;->mCount:I

    iget v1, p1, Landroid/app/usage/EventStats;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/EventStats;->mCount:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t merge EventStats for event #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/usage/EventStats;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with EventStats for event #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/app/usage/EventStats;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/app/usage/EventStats;->mCount:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Landroid/app/usage/EventStats;->mEventType:I

    return v0
.end method

.method public getFirstTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getLastEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mLastEventTime:J

    return-wide v0
.end method

.method public getLastTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getTotalTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mTotalTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/app/usage/EventStats;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mLastEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/EventStats;->mTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/usage/EventStats;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
