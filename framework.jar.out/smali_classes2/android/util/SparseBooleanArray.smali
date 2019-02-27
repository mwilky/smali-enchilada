.class public Landroid/util/SparseBooleanArray;
.super Ljava/lang/Object;
.source "SparseBooleanArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(IZ)V
    .locals 2

    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/SparseBooleanArray;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    move-object v0, v1

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, Landroid/util/SparseBooleanArray;->mValues:[Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 6

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/util/SparseBooleanArray;

    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    iget v4, v1, Landroid/util/SparseBooleanArray;->mSize:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v4, v4, v3

    iget-object v5, v1, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v4, v4, v3

    iget-object v5, v1, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v5, v5, v3

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public get(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public get(IZ)Z
    .locals 2

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_0

    return p2

    :cond_0
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v1, v2, :cond_0

    const/16 v2, 0x1f

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v3, v3, v1

    or-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOfKey(I)I
    .locals 2

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Z)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public keyAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aput-boolean p2, v1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([ZIIZ)[Z

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    :goto_0
    return-void
.end method

.method public removeAt(I)V
    .locals 5

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    return-void
.end method

.method public setKeyAt(II)V
    .locals 1

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aput p2, v0, p1

    return-void
.end method

.method public setValueAt(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Z
    .locals 1

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
