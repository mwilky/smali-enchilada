.class final Lcom/google/common/collect/EmptyImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "EmptyImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final elementSet:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 35
    return-void
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 0
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 107
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    return p2
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 95
    .local v0, "other":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v1

    return v1

    .line 97
    .end local v0    # "other":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 0
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object p0
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    .line 102
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 59
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 0
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method
