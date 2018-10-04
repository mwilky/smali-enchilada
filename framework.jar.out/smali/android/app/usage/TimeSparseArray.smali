.class public Landroid/app/usage/TimeSparseArray;
.super Landroid/util/LongSparseArray;
.source "TimeSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWtfReported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/usage/TimeSparseArray;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public closestIndexOnOrAfter(J)I
    .locals 7

    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    :goto_0
    if-gt v1, v2, :cond_2

    sub-int v6, v2, v1

    div-int/lit8 v6, v6, 0x2

    add-int v3, v1, v6

    invoke-virtual {p0, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    cmp-long v6, p1, v4

    if-gez v6, :cond_3

    return v3

    :cond_3
    cmp-long v6, p1, v4

    if-lez v6, :cond_4

    if-ge v1, v0, :cond_4

    return v1

    :cond_4
    const/4 v6, -0x1

    return v6
.end method

.method public closestIndexOnOrBefore(J)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public put(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/usage/TimeSparseArray;->mWtfReported:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/usage/TimeSparseArray;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overwriting value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/TimeSparseArray;->mWtfReported:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method
