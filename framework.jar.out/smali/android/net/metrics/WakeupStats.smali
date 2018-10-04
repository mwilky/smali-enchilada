.class public Landroid/net/metrics/WakeupStats;
.super Ljava/lang/Object;
.source "WakeupStats.java"


# static fields
.field private static final NO_UID:I = -0x1


# instance fields
.field public applicationWakeups:J

.field public final creationTimeMs:J

.field public durationSec:J

.field public final ethertypes:Landroid/util/SparseIntArray;

.field public final iface:Ljava/lang/String;

.field public final ipNextHeaders:Landroid/util/SparseIntArray;

.field public l2BroadcastCount:J

.field public l2MulticastCount:J

.field public l2UnicastCount:J

.field public noUidWakeups:J

.field public nonApplicationWakeups:J

.field public rootWakeups:J

.field public systemWakeups:J

.field public totalWakeups:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    iput-object p1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    return-void
.end method

.method private static increment(Landroid/util/SparseIntArray;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public countEvent(Landroid/net/metrics/WakeupEvent;)V
    .locals 4

    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    goto :goto_0

    :pswitch_0
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    nop

    :goto_0
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->getAddressType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    goto :goto_1

    :pswitch_3
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    goto :goto_1

    :pswitch_4
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    nop

    :goto_1
    iget-object v0, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/metrics/WakeupEvent;->ethertype:I

    invoke-static {v0, v1}, Landroid/net/metrics/WakeupStats;->increment(Landroid/util/SparseIntArray;I)V

    iget v0, p1, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    invoke-static {v0, v1}, Landroid/net/metrics/WakeupStats;->increment(Landroid/util/SparseIntArray;I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "WakeupStats("

    const-string v3, ")"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "non-apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string/jumbo v1, "l2 unicast/multicast/broadcast: %d/%d/%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v5, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-wide v6, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move v1, v4

    :goto_0
    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-string v7, "ethertype 0x%x: %d"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-string v7, "ipNxtHdr %d: %d"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateDuration()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    return-void
.end method
