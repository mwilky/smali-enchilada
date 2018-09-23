.class public Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
.super Ljava/lang/Object;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDexUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageUseInfo"
.end annotation


# instance fields
.field private final mCodePathsUsedByOtherApps:Ljava/util/Map;
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

.field private final mDexUseInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsedByOtherAppsBeforeUpgrade:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v4, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mergeCodePathUsedByOtherApps(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z

    return p1
.end method

.method private mergeCodePathUsedByOtherApps(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_1
    const/4 v3, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v0, v3

    :goto_2
    return v0
.end method


# virtual methods
.method clearCodePathUsedByOtherApps()Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z

    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return v0
.end method

.method public getDexUseInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isAnyCodePathUsedByOtherApps()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUsedByOtherApps(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
