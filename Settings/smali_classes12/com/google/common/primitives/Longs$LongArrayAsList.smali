.class Lcom/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[J

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([J)V
    .locals 2
    .param p1, "array"    # [J

    .line 557
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    .line 558
    return-void
.end method

.method constructor <init>([JII)V
    .locals 0
    .param p1, "array"    # [J
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 560
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 561
    iput-object p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    .line 562
    iput p2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .line 563
    iput p3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    .line 564
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 581
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    .line 582
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 625
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 626
    return v0

    .line 628
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v1, :cond_4

    .line 629
    move-object v1, p1

    check-cast v1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 630
    .local v1, "that":Lcom/google/common/primitives/Longs$LongArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    .line 631
    .local v2, "size":I
    invoke-virtual {v1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    .line 632
    return v4

    .line 634
    :cond_1
    move v3, v4

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 635
    iget-object v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v6, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v6, v3

    aget-wide v5, v5, v6

    iget-object v7, v1, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v8, v1, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v8, v3

    aget-wide v7, v7, v8

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 636
    return v4

    .line 634
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 639
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 641
    .end local v1    # "that":Lcom/google/common/primitives/Longs$LongArrayAsList;
    .end local v2    # "size":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .line 575
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 576
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 549
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 645
    const/4 v0, 0x1

    .line 646
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 647
    const/16 v2, 0x1f

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v3

    add-int v0, v2, v3

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 587
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    .line 589
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 590
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 593
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 598
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Longs;->access$100([JJII)I

    move-result v0

    .line 600
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 601
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 604
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .line 608
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 609
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    .line 611
    .local v0, "oldValue":J
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 612
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 567
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 617
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 618
    if-ne p1, p2, :cond_0

    .line 619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 621
    :cond_0
    new-instance v1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    return-object v1
.end method

.method toLongArray()[J
    .locals 5

    .line 663
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 664
    .local v0, "size":I
    new-array v1, v0, [J

    .line 665
    .local v1, "result":[J
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 654
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 655
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 656
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 655
    goto :goto_0

    .line 658
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
