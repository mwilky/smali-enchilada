.class public Lcom/android/server/wm/utils/RotationCache;
.super Ljava/lang/Object;
.source "RotationCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TR;>;"
        }
    .end annotation
.end field

.field private mCachedFor:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mComputation:Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation<",
            "TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;

    return-void
.end method


# virtual methods
.method public getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object p1, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;->compute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method
