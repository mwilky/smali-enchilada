.class final Lcom/android/server/am/RestartProcessManager$ScoreComparator;
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
    name = "ScoreComparator"
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

    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/RestartProcessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/RestartProcessManager$1;

    .line 1639
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager$ScoreComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I
    .locals 5
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1642
    iget-wide v0, p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iget-wide v2, p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    add-double/2addr v0, v2

    iget-wide v2, p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1643
    .local v0, "l1":Ljava/lang/Double;
    iget-wide v1, p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iget-wide v3, p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    add-double/2addr v1, v3

    iget-wide v3, p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1644
    .local v1, "l2":Ljava/lang/Double;
    invoke-virtual {v1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1639
    check-cast p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    check-cast p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$ScoreComparator;->compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I

    move-result p1

    return p1
.end method
