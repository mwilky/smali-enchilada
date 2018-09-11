.class abstract Lcom/google/common/collect/AbstractRangeSet;
.super Ljava/lang/Object;
.source "AbstractRangeSet.java"

# interfaces
.implements Lcom/google/common/collect/RangeSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeSet<",
        "TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 68
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractRangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 69
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 52
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 53
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract encloses(Lcom/google/common/collect/Range;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)Z"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 58
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractRangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    if-ne p1, p0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/RangeSet;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/RangeSet;

    .line 88
    .local v0, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<*>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 95
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 37
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 75
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 76
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 100
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
