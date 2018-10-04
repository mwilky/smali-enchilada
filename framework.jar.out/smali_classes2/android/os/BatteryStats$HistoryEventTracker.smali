.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStateForEvent(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public removeEvents(I)V
    .locals 3

    const v0, -0xc001

    and-int/2addr v0, p1

    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void
.end method

.method public updateState(ILjava/lang/String;II)Z
    .locals 5

    const v0, 0x8000

    and-int/2addr v0, p1

    const v1, -0xc001

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    and-int v0, p1, v1

    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v1, v3, v0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-nez v3, :cond_1

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v4

    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {v3, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_7

    and-int v0, p1, v1

    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-nez v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {v3, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_6

    return v2

    :cond_6
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_7

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
