.class public final Landroid/os/PowerManager$WakeLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation


# instance fields
.field private mExternalCount:I

.field private mFlags:I

.field private mHeld:Z

.field private mHistoryTag:Ljava/lang/String;

.field private mInternalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private mRefCounted:Z

.field private final mReleaser:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private final mTraceName:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1487
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 1481
    new-instance v0, Landroid/os/PowerManager$WakeLock$1;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 1488
    iput p2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 1489
    iput-object p3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 1490
    iput-object p4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1491
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    .line 1493
    return-void
.end method

.method private acquireLocked()V
    .locals 9

    .line 1560
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    .line 1561
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 1562
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-ne v0, v1, :cond_1

    .line 1569
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1570
    const-wide/32 v2, 0x20000

    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1572
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v2, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget v4, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Landroid/os/IPowerManager;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    nop

    .line 1577
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 1579
    :cond_1
    return-void

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static synthetic lambda$wrap$0(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1759
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1762
    nop

    .line 1763
    return-void

    .line 1761
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .line 1537
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1538
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 1539
    monitor-exit v0

    .line 1540
    return-void

    .line 1539
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .line 1553
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1554
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 1555
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1556
    monitor-exit v0

    .line 1557
    return-void

    .line 1556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1497
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1498
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_0

    .line 1499
    const-string v1, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const-wide/32 v1, 0x20000

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v4}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    goto :goto_0

    .line 1503
    :catch_0
    move-exception v1

    .line 1504
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1507
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1508
    return-void

    .line 1507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1699
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isHeld()Z
    .locals 2

    .line 1639
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1640
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 1641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 1

    .line 1590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 1591
    return-void
.end method

.method public release(I)V
    .locals 5
    .param p1, "flags"    # I

    .line 1606
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1607
    :try_start_0
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-lez v1, :cond_0

    .line 1610
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    .line 1612
    :cond_0
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    .line 1613
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 1615
    :cond_1
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-nez v1, :cond_3

    .line 1616
    :cond_2
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1617
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_3

    .line 1618
    const-wide/32 v1, 0x20000

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    nop

    .line 1624
    :try_start_2
    iput-boolean v4, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v1

    .line 1622
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1627
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    if-ltz v1, :cond_4

    goto :goto_1

    .line 1628
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1630
    :cond_5
    :goto_1
    monitor-exit v0

    .line 1631
    return-void

    .line 1630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setHistoryTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 1704
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1705
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 1524
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1525
    :try_start_0
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 1526
    monitor-exit v0

    .line 1527
    return-void

    .line 1526
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 1694
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 1695
    return-void
.end method

.method public setUnimportantForLogging(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 1709
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    goto :goto_0

    .line 1710
    :cond_0
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 1711
    :goto_0
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1663
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1664
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1665
    const/4 p1, 0x0

    goto :goto_0

    .line 1689
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1669
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 1670
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1671
    .local v1, "changed":Z
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_2

    .line 1672
    .end local v1    # "changed":Z
    :cond_2
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_3

    .line 1673
    const/4 v1, 0x1

    .line 1674
    .restart local v1    # "changed":Z
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_2

    .line 1676
    .end local v1    # "changed":Z
    :cond_3
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 1677
    .restart local v1    # "changed":Z
    if-eqz v1, :cond_4

    .line 1678
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1682
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 1684
    :try_start_1
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v2, v2, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    goto :goto_3

    .line 1685
    :catch_0
    move-exception v2

    .line 1686
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1689
    .end local v1    # "changed":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    monitor-exit v0

    .line 1690
    return-void

    .line 1689
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1715
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1716
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " held="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", refCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 1716
    return-object v1

    .line 1719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1756
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1757
    new-instance v0, Landroid/os/-$$Lambda$PowerManager$WakeLock$VvFzmRZ4ZGlXx7u3lSAJ_T-YUjw;

    invoke-direct {v0, p0, p1}, Landroid/os/-$$Lambda$PowerManager$WakeLock$VvFzmRZ4ZGlXx7u3lSAJ_T-YUjw;-><init>(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1724
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1725
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1726
    .local v1, "token":J
    const-wide v3, 0x10900000001L

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1727
    const-wide v3, 0x10900000002L

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1728
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1729
    const-wide v3, 0x10500000004L

    iget v5, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1730
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v3, :cond_0

    .line 1731
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/WorkSource;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1733
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1734
    .end local v1    # "token":J
    monitor-exit v0

    .line 1735
    return-void

    .line 1734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
