.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final backingIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;)V
    .locals 1
    .param p1, "this$2"    # Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    .line 247
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 248
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    .line 249
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    .line 248
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 247
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;"
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "key":Ljava/lang/Object;, "TK;"
    nop

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v4, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object v4, v4, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v4, v4, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {v3, v4, v1}, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/google/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v2

    .line 258
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    return-object v3

    .line 261
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
