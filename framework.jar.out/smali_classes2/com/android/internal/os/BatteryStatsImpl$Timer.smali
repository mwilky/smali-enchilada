.class public abstract Lcom/android/internal/os/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field protected final mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

.field protected mCount:I

.field protected mLastCount:I

.field protected mLastTime:J

.field protected mLoadedCount:I

.field protected mLoadedTime:J

.field protected final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field protected mTimeBeforeMark:J

.field protected mTotalTime:J

.field protected final mType:I

.field protected mUnpluggedCount:I

.field protected mUnpluggedTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1750
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 1751
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 1752
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 1753
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1754
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1755
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    .line 1732
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 1733
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 1734
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 1735
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1737
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1738
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 1739
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 1740
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 1741
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1742
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 1743
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 1744
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 1745
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 1746
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1748
    return-void
.end method

.method public static writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "timer"    # Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .param p2, "elapsedRealtimeUs"    # J

    .line 1827
    if-nez p1, :cond_0

    .line 1828
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    return-void

    .line 1831
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1834
    return-void
.end method


# virtual methods
.method protected abstract computeCurrentCountLocked()I
.end method

.method protected abstract computeRunTimeLocked(J)J
.end method

.method public detach()V
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1776
    return-void
.end method

.method public getCountLocked(I)I
    .locals 2
    .param p1, "which"    # I

    .line 1850
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    .line 1851
    .local v0, "val":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1852
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1853
    :cond_0
    if-eqz p1, :cond_1

    .line 1854
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    sub-int/2addr v0, v1

    .line 1857
    :cond_1
    :goto_0
    return v0
.end method

.method public getTimeSinceMarkLocked(J)J
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J

    .line 1862
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1863
    .local v0, "val":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public getTotalTimeLocked(JI)J
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 1838
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1839
    .local v0, "val":J
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 1840
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1841
    :cond_0
    if-eqz p3, :cond_1

    .line 1842
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    sub-long/2addr v0, v2

    .line 1845
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLoadedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mUnpluggedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1875
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "timeBaseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 1797
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 1804
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 1812
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1813
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1818
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1886
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1887
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 1888
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 1889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1890
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 1891
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 1894
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 1895
    return-void
.end method

.method public reset(Z)Z
    .locals 2
    .param p1, "detachIfReset"    # Z

    .line 1766
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1767
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1768
    if-eqz p1, :cond_0

    .line 1769
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 1771
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 1879
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1880
    .local v0, "runTime":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 1781
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1785
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1786
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1787
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1788
    return-void
.end method
