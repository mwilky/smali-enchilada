.class final Lcom/android/server/am/RestartProcessManager$ClusterComparator;
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
    name = "ClusterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/RestartProcessManager$Cluster;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/RestartProcessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/RestartProcessManager$1;

    .line 1619
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager$ClusterComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$Cluster;Lcom/android/server/am/RestartProcessManager$Cluster;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$Cluster;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 1622
    iget-wide v0, p1, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1623
    .local v0, "l1":Ljava/lang/Double;
    iget-wide v1, p2, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1624
    .local v1, "l2":Ljava/lang/Double;
    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1619
    check-cast p1, Lcom/android/server/am/RestartProcessManager$Cluster;

    check-cast p2, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$ClusterComparator;->compare(Lcom/android/server/am/RestartProcessManager$Cluster;Lcom/android/server/am/RestartProcessManager$Cluster;)I

    move-result p1

    return p1
.end method
