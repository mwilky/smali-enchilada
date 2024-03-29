.class public final Landroid/telephony/ClientRequestStats;
.super Ljava/lang/Object;
.source "ClientRequestStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_HISTOGRAM_BUCKET_COUNT:I = 0x5


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mCompletedRequestsCount:J

.field private mCompletedRequestsWakelockTime:J

.field private mPendingRequestsCount:J

.field private mPendingRequestsWakelockTime:J

.field private mRequestHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ClientRequestStats$1;

    invoke-direct {v0}, Landroid/telephony/ClientRequestStats$1;-><init>()V

    sput-object v0, Landroid/telephony/ClientRequestStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/telephony/ClientRequestStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ClientRequestStats;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCompletedRequestsCount()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCompletedRequestsWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getPendingRequestsCount()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getPendingRequestsWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getRequestHistograms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    iget-object v3, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedWakelockTime(J)V
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCompletedRequestsCount()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    return-wide v0
.end method

.method public getCompletedRequestsWakelockTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    return-wide v0
.end method

.method public getPendingRequestsCount()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    return-wide v0
.end method

.method public getPendingRequestsWakelockTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    return-wide v0
.end method

.method public getRequestHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Landroid/telephony/TelephonyHistogram;

    iget-object v4, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    move-object v0, v1

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementCompletedRequestsCount()V
    .locals 4

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    iget-object v3, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    return-void
.end method

.method public setPendingRequestsCount(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    return-void
.end method

.method public setPendingRequestsWakelockTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientRequestStats{mCallingPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCompletedRequestsWakelockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCompletedRequestsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingRequestsWakelockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingRequestsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRequestHistograms(II)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyHistogram;

    if-nez v1, :cond_0

    new-instance v2, Landroid/telephony/TelephonyHistogram;

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-direct {v2, v3, p1, v4}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v1, v2

    iget-object v2, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/telephony/ClientRequestStats;->getRequestHistograms()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
