.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounter"
.end annotation


# instance fields
.field public mCount:J

.field public mCurrentCount:J

.field public mLoadedCount:J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field public mUnpluggedCount:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public addCountLocked(J)V
    .locals 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->update(JZ)V

    return-void
.end method

.method public addCountLocked(JZ)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->update(JZ)V

    return-void
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountLocked(I)J
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    sub-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-void
.end method

.method public reset(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    :cond_0
    return-void
.end method

.method public update(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->update(JZ)V

    return-void
.end method

.method public update(JZ)V
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    :cond_0
    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    :cond_1
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCurrentCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
