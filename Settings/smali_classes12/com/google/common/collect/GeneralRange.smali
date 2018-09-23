.class final Lcom/google/common/collect/GeneralRange;
.super Ljava/lang/Object;
.source "GeneralRange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final hasLowerBound:Z

.field private final hasUpperBound:Z

.field private final lowerBoundType:Lcom/google/common/collect/BoundType;

.field private final lowerEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient reverse:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final upperBoundType:Lcom/google/common/collect/BoundType;

.field private final upperEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    iput-boolean p5, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    iput-object p3, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    iput-object p6, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    if-eqz p2, :cond_0

    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_1
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const-string v4, "lowerEndpoint (%s) > upperEndpoint (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v1

    aput-object p6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_5

    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p4, v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p7, v4, :cond_4

    move v1, v2

    nop

    :cond_4
    or-int/2addr v1, v3

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_5
    return-void
.end method

.method static all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/GeneralRange;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/GeneralRange;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static from(Lcom/google/common/collect/Range;)Lcom/google/common/collect/GeneralRange;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range<",
            "TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    :goto_3
    move-object v8, v1

    goto :goto_4

    :cond_2
    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    :goto_5
    move-object v9, v0

    goto :goto_6

    :cond_3
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    goto :goto_5

    :goto_6
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v4

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method static range(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            "TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/GeneralRange;

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/GeneralRange;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method


# virtual methods
.method comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/GeneralRange;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v3, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, v3}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    iget-boolean v3, v0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    iget-boolean v3, v0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method getLowerBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method getLowerEndpoint()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method getUpperBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method getUpperEndpoint()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method hasLowerBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    return v0
.end method

.method hasUpperBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v3, v1, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, v3}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-boolean v2, v0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v2, v1, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    if-nez v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    :cond_2
    :goto_0
    iget-boolean v5, v0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v8

    if-nez v8, :cond_4

    iget-boolean v5, v1, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    :cond_3
    :goto_1
    move v12, v5

    move-object v13, v6

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gtz v8, :cond_5

    if-nez v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v9

    sget-object v10, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v9, v10, :cond_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_7

    if-eqz v12, :cond_7

    iget-object v5, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, v3, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6

    if-nez v5, :cond_7

    sget-object v6, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v6, :cond_7

    sget-object v6, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v7, v6, :cond_7

    :cond_6
    move-object v3, v13

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    sget-object v5, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    move-object v14, v4

    move-object v15, v5

    goto :goto_3

    :cond_7
    move-object v14, v4

    move-object v15, v7

    :goto_3
    new-instance v16, Lcom/google/common/collect/GeneralRange;

    iget-object v5, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    move-object/from16 v4, v16

    move v6, v2

    move-object v7, v3

    move-object v8, v14

    move v9, v12

    move-object v10, v13

    move-object v11, v15

    invoke-direct/range {v4 .. v11}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v16
.end method

.method isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reverse()Lcom/google/common/collect/GeneralRange;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    if-nez v0, :cond_0

    new-instance v9, Lcom/google/common/collect/GeneralRange;

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    move-object v0, v9

    iput-object p0, v0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v1, "-\u221e"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v1, "\u221e"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_3

    const/16 v1, 0x5d

    goto :goto_3

    :cond_3
    const/16 v1, 0x29

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method tooHigh(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_3

    move v1, v3

    nop

    :cond_3
    and-int/2addr v1, v5

    or-int/2addr v1, v4

    return v1
.end method

.method tooLow(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_3

    move v1, v3

    nop

    :cond_3
    and-int/2addr v1, v5

    or-int/2addr v1, v4

    return v1
.end method
