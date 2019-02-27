.class public Landroid/text/AutoGrowArray$FloatArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatArray"
.end annotation


# instance fields
.field private mSize:I

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->FLOAT:[F

    iput-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v0

    iput-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6

    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    invoke-static {v1, v0}, Landroid/text/AutoGrowArray;->access$000(II)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v2

    iget-object v3, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    iget v4, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    :cond_0
    return-void
.end method


# virtual methods
.method public append(F)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;->ensureCapacity(I)V

    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    iget v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return-void
.end method

.method public clearWithReleasingLargeArray()V
    .locals 2

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->FLOAT:[F

    iput-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    :cond_0
    return-void
.end method

.method public get(I)F
    .locals 1

    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRawArray()[F
    .locals 1

    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    return-object v0
.end method

.method public resize(I)V
    .locals 1

    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;->ensureCapacity(I)V

    :cond_0
    iput p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return-void
.end method

.method public set(IF)V
    .locals 1

    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    aput p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return v0
.end method
