.class Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$EntrySet$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field delegate:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$EntrySet$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/common/collect/HashBiMap$EntrySet$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;, "Lcom/google/common/collect/HashBiMap$EntrySet$1.MapEntry;"
    .local p2, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 444
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 445
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;, "Lcom/google/common/collect/HashBiMap$EntrySet$1.MapEntry;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;, "Lcom/google/common/collect/HashBiMap$EntrySet$1.MapEntry;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;, "Lcom/google/common/collect/HashBiMap$EntrySet$1.MapEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    .line 457
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$300(Ljava/lang/Object;)I

    move-result v1

    .line 458
    .local v1, "valueHash":I
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v2, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    return-object p1

    .line 461
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/HashBiMap$EntrySet;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 462
    invoke-static {v2, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$600(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-string v5, "value already present: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 461
    invoke-static {v2, v5, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/HashBiMap$EntrySet;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v2, v3}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 464
    new-instance v2, Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v4, v4, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 466
    .local v2, "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/HashBiMap$EntrySet;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v3, v2}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 467
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    iget-object v4, v4, Lcom/google/common/collect/HashBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/HashBiMap$EntrySet;

    iget-object v4, v4, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v4}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v4

    iput v4, v3, Lcom/google/common/collect/HashBiMap$EntrySet$1;->expectedModCount:I

    .line 468
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$EntrySet$1;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-ne v3, v4, :cond_2

    .line 469
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->this$2:Lcom/google/common/collect/HashBiMap$EntrySet$1;

    iput-object v2, v3, Lcom/google/common/collect/HashBiMap$EntrySet$1;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 471
    :cond_2
    iput-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 472
    return-object v0
.end method
