.class Lcom/android/server/am/LaunchTimeTracker;
.super Ljava/lang/Object;
.source "LaunchTimeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LaunchTimeTracker$Entry;
    }
.end annotation


# instance fields
.field private final mWindowingModeLaunchTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/LaunchTimeTracker$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method getEntry(I)Lcom/android/server/am/LaunchTimeTracker$Entry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LaunchTimeTracker$Entry;

    return-object v0
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LaunchTimeTracker$Entry;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/am/LaunchTimeTracker$Entry;

    invoke-direct {v1}, Lcom/android/server/am/LaunchTimeTracker$Entry;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/am/LaunchTimeTracker$Entry;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method stopFullyDrawnTraceIfNeeded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LaunchTimeTracker$Entry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->access$000(Lcom/android/server/am/LaunchTimeTracker$Entry;)V

    return-void
.end method
