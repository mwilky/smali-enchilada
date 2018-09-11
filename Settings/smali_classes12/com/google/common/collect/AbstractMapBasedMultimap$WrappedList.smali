.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 760
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "ancestor":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 761
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 762
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 799
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "element":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 800
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 801
    .local v0, "wasEmpty":Z
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 802
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 803
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    .line 806
    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 770
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const/4 v0, 0x0

    return v0

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->size()I

    move-result v0

    .line 774
    .local v0, "oldSize":I
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 775
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 777
    .local v2, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 778
    if-nez v0, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    .line 782
    .end local v2    # "newSize":I
    :cond_1
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 787
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 788
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getListDelegate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 765
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 819
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 820
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 825
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 826
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 831
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 832
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 837
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 838
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 810
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 811
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 812
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 813
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->removeIfEmpty()V

    .line 814
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 793
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "element":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 794
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 843
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 844
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 845
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 846
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v3

    if-nez v3, :cond_0

    .line 844
    move-object v3, p0

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v3

    .line 844
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
