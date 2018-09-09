.class final Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/RestartProcessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/RestartProcessManager$1;

    .line 1629
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I
    .locals 9
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1632
    new-instance v7, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    invoke-static {p1, v7}, Lcom/android/server/am/RestartProcessManager;->access$3600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1633
    .local v0, "l1":Ljava/lang/Double;
    new-instance v8, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    invoke-static {p2, v8}, Lcom/android/server/am/RestartProcessManager;->access$3600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1634
    .local v1, "l2":Ljava/lang/Double;
    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1629
    check-cast p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    check-cast p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;->compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I

    move-result p1

    return p1
.end method
