.class public Lcom/android/settings/search/indexing/PreIndexData;
.super Ljava/lang/Object;
.source "PreIndexData.java"


# instance fields
.field public dataToUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public nonIndexableKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/indexing/PreIndexData;->dataToUpdate:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/indexing/PreIndexData;->nonIndexableKeys:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/indexing/PreIndexData;)V
    .locals 2
    .param p1, "other"    # Lcom/android/settings/search/indexing/PreIndexData;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/indexing/PreIndexData;->dataToUpdate:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/indexing/PreIndexData;->dataToUpdate:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/settings/search/indexing/PreIndexData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings/search/indexing/PreIndexData;->nonIndexableKeys:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/search/indexing/PreIndexData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    iget-object v0, p0, Lcom/android/settings/search/indexing/PreIndexData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    return-void
.end method

.method public copy()Lcom/android/settings/search/indexing/PreIndexData;
    .locals 1

    .line 48
    new-instance v0, Lcom/android/settings/search/indexing/PreIndexData;

    invoke-direct {v0, p0}, Lcom/android/settings/search/indexing/PreIndexData;-><init>(Lcom/android/settings/search/indexing/PreIndexData;)V

    return-object v0
.end method
