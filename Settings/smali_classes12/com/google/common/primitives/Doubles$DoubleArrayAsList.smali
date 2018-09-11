.class Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
.super Ljava/util/AbstractList;
.source "Doubles.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Doubles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[D

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([D)V
    .locals 2
    .param p1, "array"    # [D

    .line 466
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    .line 467
    return-void
.end method

.method constructor <init>([DII)V
    .locals 0
    .param p1, "array"    # [D
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 469
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    .line 471
    iput p2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .line 472
    iput p3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    .line 473
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 490
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    .line 491
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->access$000([DDII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 490
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 534
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 535
    return v0

    .line 537
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v1, :cond_4

    .line 538
    move-object v1, p1

    check-cast v1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .line 539
    .local v1, "that":Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v2

    .line 540
    .local v2, "size":I
    invoke-virtual {v1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    .line 541
    return v4

    .line 543
    :cond_1
    move v3, v4

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 544
    iget-object v5, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v6, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v6, v3

    aget-wide v5, v5, v6

    iget-object v7, v1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v8, v1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v8, v3

    aget-wide v7, v7, v8

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 545
    return v4

    .line 543
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 550
    .end local v1    # "that":Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
    .end local v2    # "size":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .line 484
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 485
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 458
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 554
    const/4 v0, 0x1

    .line 555
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 556
    const/16 v2, 0x1f

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->hashCode(D)I

    move-result v3

    add-int v0, v2, v3

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 496
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->access$000([DDII)I

    move-result v0

    .line 498
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 499
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 502
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 507
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->access$100([DDII)I

    move-result v0

    .line 509
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 510
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 513
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 517
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 518
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    .line 520
    .local v0, "oldValue":D
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v3, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 521
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 476
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 526
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 527
    if-ne p1, p2, :cond_0

    .line 528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 530
    :cond_0
    new-instance v1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    return-object v1
.end method

.method toDoubleArray()[D
    .locals 5

    .line 572
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 573
    .local v0, "size":I
    new-array v1, v0, [D

    .line 574
    .local v1, "result":[D
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 563
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 564
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 565
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 564
    goto :goto_0

    .line 567
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
