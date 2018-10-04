.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$ActivityResources;,
        Landroid/app/ResourcesManager$ApkKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustedDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCachedApkAssets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ApkAssets;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLoadedApkAssets:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThemeManager:Landroid/app/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;->INSTANCE:Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;

    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    const/4 v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0

    :cond_0
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    return-void
.end method

.method private cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    :cond_0
    return-void
.end method

.method private static countLiveReferences(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 6

    new-instance v0, Landroid/view/DisplayAdjustments;

    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget v2, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {p0, v2, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    move-result-object v3

    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    invoke-static {}, Landroid/app/ThemeManager;->getInstance()Landroid/app/ThemeManager;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ResourcesManager;->mThemeManager:Landroid/app/ThemeManager;

    iget-object v5, p0, Landroid/app/ResourcesManager;->mThemeManager:Landroid/app/ThemeManager;

    invoke-virtual {v5, v4, p1}, Landroid/app/ThemeManager;->changeTheme(Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v4

    return-object v4
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 5

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    nop

    :cond_0
    if-eqz v2, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    return-object v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 4

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    return-object v1
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .locals 4

    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-nez v0, :cond_3

    invoke-static {p2, v2}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_4
    :goto_2
    nop

    return-object v2
.end method

.method private getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    :goto_0
    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display;

    if-eqz v3, :cond_1

    monitor-exit p0

    return-object v3

    :cond_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    :cond_2
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/DisplayAdjustments;

    invoke-virtual {v3, p1, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    const-class v0, Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/ResourcesManager;

    invoke-direct {v1}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    :cond_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 3

    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/ResourcesManager$ActivityResources;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$1;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getOrCreateResources(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/app/ThemeManager;->getInstance()Landroid/app/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ResourcesManager;->mThemeManager:Landroid/app/ThemeManager;

    if-eqz p2, :cond_2

    nop

    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    sget-object v2, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    invoke-virtual {p3}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v2, p3, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v2, p3, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-direct {p0, p3}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p3, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p2, p4, v1, v2}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ResourcesManager;->mThemeManager:Landroid/app/ThemeManager;

    invoke-virtual {v3, p1, v2, p3}, Landroid/app/ThemeManager;->changeTheme(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/ResourcesKey;)Landroid/content/res/Resources;

    move-result-object v3

    move-object v2, v3

    monitor-exit p0

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    invoke-direct {p0, p3}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p3, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p4, v0, v1}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mThemeManager:Landroid/app/ThemeManager;

    invoke-virtual {v2, p1, v1, p3}, Landroid/app/ThemeManager;->changeTheme(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/ResourcesKey;)Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, v2

    monitor-exit p0

    return-object v1

    :cond_3
    :goto_0
    invoke-direct {p0, p3}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :cond_4
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    iget-object v1, p3, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p2, p4, v0, v1}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v1, p3, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p4, v0, v1}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mThemeManager:Landroid/app/ThemeManager;

    invoke-virtual {v2, p1, v1, p3}, Landroid/app/ThemeManager;->changeTheme(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/ResourcesKey;)Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, v2

    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 6

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    if-ne v5, p3, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/res/CompatResources;

    invoke-direct {v2, p2}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, p2}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_1
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 5

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/res/CompatResources;

    invoke-direct {v1, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/res/Resources;

    invoke-direct {v1, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_1
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method static synthetic lambda$static$0(Ljava/lang/ref/WeakReference;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ApkAssets;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/content/res/ApkAssets;

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x0

    if-eqz p3, :cond_3

    invoke-static {p1}, Landroid/app/ResourcesManager;->overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p1, v3, p2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    nop

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    if-eqz v5, :cond_3

    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v7, "failed to redirect ResourcesImpl"

    invoke-direct {v1, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResources;

    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_8

    iget-object v7, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Resources;

    goto :goto_4

    :cond_5
    move-object v8, v3

    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    if-eqz v9, :cond_7

    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_5

    :cond_6
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "failed to redirect ResourcesImpl"

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    goto :goto_2

    :cond_9
    return-void
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p1

    :try_start_1
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    nop

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v9, v9

    goto :goto_2

    :cond_1
    move v9, v4

    :goto_2
    const/4 v11, 0x1

    add-int/2addr v11, v9

    new-array v9, v11, [Ljava/lang/String;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v13, v13

    invoke-static {v12, v4, v9, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v12, v11, -0x1

    aput-object v2, v9, v12

    new-instance v15, Landroid/content/res/ResourcesKey;

    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget v4, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move/from16 v20, v3

    iget-object v3, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v16, v12

    move-object v12, v15

    move-object/from16 v21, v6

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v9

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {v0, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object/from16 v10, p1

    :cond_4
    move/from16 v20, v3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v20

    move-object/from16 v2, p2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v10, p1

    move/from16 v20, v3

    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-wide/16 v4, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#applyConfigurationToResourcesLocked"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_0

    const-string v0, "ResourcesManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping new config: curSeq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", newSeq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    :cond_1
    :try_start_1
    iget-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v7, v1, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v3, :cond_3

    iget-object v8, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v8, :cond_2

    iget-object v8, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v8, v3}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iput-object v3, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    or-int/lit16 v0, v0, 0xd00

    :cond_3
    invoke-static {v2, v7, v3}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/4 v8, 0x0

    iget-object v9, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_0
    if-ltz v9, :cond_e

    iget-object v11, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesKey;

    iget-object v12, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_d

    sget-boolean v14, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v14, :cond_5

    const-string v14, "ResourcesManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changing resources "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " config to: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v6, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v6, :cond_6

    move v14, v10

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    :goto_2
    move-object v15, v7

    invoke-virtual {v11}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v17

    if-eqz v14, :cond_8

    if-eqz v17, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v13, v2, v15, v3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_4

    :cond_8
    :goto_3
    if-nez v8, :cond_9

    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    move-object v8, v10

    :cond_9
    invoke-virtual {v8, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {v13}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v10

    if-eqz v3, :cond_a

    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4, v10}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object v10, v4

    invoke-virtual {v10, v3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    :cond_a
    invoke-virtual {v1, v6, v10}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v4

    if-nez v14, :cond_b

    invoke-static {v4, v8}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_b
    if-eqz v17, :cond_c

    iget-object v5, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_c
    invoke-virtual {v13, v8, v4, v3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    nop

    :goto_4
    goto :goto_5

    :cond_d
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    add-int/lit8 v9, v9, -0x1

    const-wide/16 v4, 0x2000

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_f

    const/16 v16, 0x1

    goto :goto_6

    :cond_f
    nop

    const/16 v16, 0x0

    :goto_6
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v16

    :catchall_0
    move-exception v0

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method final applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    const-wide/16 v2, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#applyNewResourceDirsLocked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_1
    move-object/from16 v10, p1

    :goto_2
    new-instance v9, Landroid/content/res/ResourcesKey;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v15, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v14, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v3, v11

    move-object v11, v9

    move/from16 v16, v14

    move-object/from16 v14, p2

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move-object/from16 v10, p1

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0x2000

    goto :goto_0

    :cond_4
    move-object/from16 v10, p1

    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_4
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v3}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to add asset path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    :try_start_1
    invoke-direct {p0, v6, v3, v3}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to add split asset path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    :try_start_2
    invoke-direct {p0, v6, v3, v2}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    const-string v8, "ResourcesManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to add overlay path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_3
    invoke-direct {p0, v6, v2, v3}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v7

    const-string v8, "ResourcesManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Asset path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' does not exist or contains no resources."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v1

    return-object v1
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ResourcesManager;->createBaseActivityResources(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public createBaseActivityResources(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    const-wide/16 v4, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#createBaseActivityResources"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/res/ResourcesKey;

    if-eqz v3, :cond_0

    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v12, v6

    move-object v6, v0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v13, p9

    invoke-direct/range {v6 .. v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    move-object v6, v0

    if-eqz p10, :cond_1

    move-object/from16 v0, p10

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_1
    move-object v7, v0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-direct {v1, v2}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    move/from16 v8, p7

    :try_start_3
    invoke-virtual {v1, v2, v3, v8, v0}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, p1

    :try_start_4
    invoke-direct {v1, v9, v2, v6, v7}, Landroid/app/ResourcesManager;->getOrCreateResources(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v9, p1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v9, p1

    move/from16 v8, p7

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v9, p1

    move/from16 v8, p7

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v9, p1

    move/from16 v8, p7

    move-object/from16 v7, p10

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "ResourcesManager:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "cached apks: total="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " created="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->createCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " evicted="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " hit="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->hitCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " miss="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->missCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " max="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "total apks: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "resources: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ActivityResources;

    iget-object v4, v3, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-static {v4}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v2, "resource impls: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    :goto_0
    return-object v0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ResourcesManager;->getResources(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 12

    move-object/from16 v1, p8

    const-wide/16 v2, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#getResources"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/res/ResourcesKey;

    if-eqz v1, :cond_0

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v10, v4

    move-object v4, v0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    if-eqz p10, :cond_1

    move-object/from16 v5, p10

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    move-object v4, v5

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    :try_start_1
    invoke-direct {v5, v6, v7, v0, v4}, Landroid/app/ResourcesManager;->getOrCreateResources(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v8

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v4, p10

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesKey;

    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const-string v1, "ResourcesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalidated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " asset managers that referenced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    move v1, v2

    nop

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v3}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    :goto_2
    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-wide/16 v3, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#updateResourcesForActivity"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p4, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_2
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz v2, :cond_1

    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->unset()V

    :goto_0
    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    iget-object v8, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_8

    iget-object v10, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Resources;

    if-nez v11, :cond_2

    nop

    :goto_2
    move-object/from16 v23, v0

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v12

    if-nez v12, :cond_3

    const-string v13, "ResourcesManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    if-eqz v2, :cond_4

    invoke-virtual {v13, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v12}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v12, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v6, v14}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_5
    new-instance v22, Landroid/content/res/ResourcesKey;

    iget-object v15, v12, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v3, v12, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v4, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v12, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v16, v14

    move-object/from16 v14, v22

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, p3

    move-object/from16 v20, v13

    move-object/from16 v21, v0

    invoke-direct/range {v14 .. v21}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    move-object/from16 v0, v22

    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_6

    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v14, Ljava/lang/ref/WeakReference;

    invoke-direct {v14, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-eq v3, v4, :cond_7

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    const-wide/16 v3, 0x2000

    goto/16 :goto_1

    :cond_8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
