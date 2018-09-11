.class Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;
.super Lcom/google/common/collect/ForwardingMultimap;
.source "MapConstraints.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstrainedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final constraint:Lcom/google/common/collect/MapConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field final delegate:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/MapConstraint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    .local p1, "delegate":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    .local p2, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultimap;-><init>()V

    .line 407
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    .line 408
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapConstraint;

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/MapConstraint;

    .line 409
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->asMap:Ljava/util/Map;

    .line 417
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    .line 420
    .local v1, "asMapDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v2, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;

    invoke-direct {v2, p0, v1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/util/Map;)V

    move-object v0, v2

    iput-object v2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->asMap:Ljava/util/Map;

    .line 461
    .end local v1    # "asMapDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    :cond_0
    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 398
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->entries:Ljava/util/Collection;

    .line 466
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-static {v1, v2}, Lcom/google/common/collect/MapConstraints;->access$300(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->entries:Ljava/util/Collection;

    .line 469
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    .line 474
    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/lang/Object;)V

    .line 473
    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->constrainedTypePreservingCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 484
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 494
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    const/4 v0, 0x0

    .line 495
    .local v0, "changed":Z
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 496
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 497
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 498
    :cond_0
    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-static {p1, p2, v1}, Lcom/google/common/collect/MapConstraints;->access$400(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/Multimap;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-static {p1, p2, v1}, Lcom/google/common/collect/MapConstraints;->access$400(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
