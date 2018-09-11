.class Lcom/google/common/collect/Maps$UnmodifiableBiMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field

.field inverse:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field final unmodifiableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V
    .locals 1
    .param p2    # Lcom/google/common/collect/BiMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "+TK;+TV;>;",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1423
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableBiMap;, "Lcom/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    .local p1, "delegate":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<+TK;+TV;>;"
    .local p2, "inverse":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 1424
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    .line 1425
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    .line 1426
    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/BiMap;

    .line 1427
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1415
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableBiMap;, "Lcom/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1430
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableBiMap;, "Lcom/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1435
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableBiMap;, "Lcom/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1440
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableBiMap;, "Lcom/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/BiMap;

    .line 1441
    .local v0, "result":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TV;TK;>;"
    if-nez v0, :cond_0

    .line 1442
    new-instance v1, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    iget-object v2, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    invoke-interface {v2}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V

    iput-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/BiMap;

    goto :goto_0

    .line 1443
    :cond_0
    nop

    .line 1441
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1415
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableBiMap;, "Lcom/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 1447
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableBiMap;, "Lcom/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    .line 1448
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    .line 1449
    iget-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    goto :goto_0

    .line 1450
    :cond_0
    nop

    .line 1448
    move-object v1, v0

    :goto_0
    return-object v1
.end method
