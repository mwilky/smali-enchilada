.class Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;
.super Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->getCollection()Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
