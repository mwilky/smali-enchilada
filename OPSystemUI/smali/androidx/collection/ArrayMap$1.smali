.class Landroidx/collection/ArrayMap$1;
.super Landroidx/collection/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    iget-object v0, v0, Landroidx/collection/ArrayMap;->mArray:[Ljava/lang/Object;

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

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    iget v0, v0, Landroidx/collection/ArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

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

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
