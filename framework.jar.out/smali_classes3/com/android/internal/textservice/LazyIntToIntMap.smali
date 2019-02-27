.class public final Lcom/android/internal/textservice/LazyIntToIntMap;
.super Ljava/lang/Object;
.source "LazyIntToIntMap.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mMap:Landroid/util/SparseIntArray;

.field private final mMappingFunction:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public constructor <init>(Ljava/util/function/IntUnaryOperator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMappingFunction:Ljava/util/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public get(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMappingFunction:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v1, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    return v1
.end method
