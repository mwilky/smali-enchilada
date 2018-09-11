.class Lcom/google/common/collect/Synchronized$SynchronizedMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 929
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 930
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 939
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 941
    monitor-exit v0

    .line 942
    return-void

    .line 941
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 946
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 948
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 953
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 954
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 955
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 922
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 934
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 960
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1031
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 1032
    const/4 v0, 0x1

    return v0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1036
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 970
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 972
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 1040
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1042
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 977
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 979
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 984
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 994
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 996
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1001
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1003
    monitor-exit v0

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1008
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1010
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 1015
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1016
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1017
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1022
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 1027
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
