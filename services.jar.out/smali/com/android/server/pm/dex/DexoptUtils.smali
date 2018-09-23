.class public final Lcom/android/server/pm/dex/DexoptUtils;
.super Ljava/lang/Object;
.source "DexoptUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DexoptUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p1

    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "PCL"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "DLC"

    goto :goto_0

    :cond_2
    const-string v1, "DexoptUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported classLoaderName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const-string v0, "&"

    return-object v0
.end method

.method private static encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static encodeClasspath([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 15

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    new-array v3, v5, [Ljava/lang/String;

    aput-object v2, v3, v4

    return-object v3

    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/dex/DexoptUtils;->getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    invoke-static {v1, v6}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v3

    add-int/2addr v8, v5

    new-array v8, v8, [Ljava/lang/String;

    aget-boolean v9, p2, v4

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    move-object v9, v2

    goto :goto_0

    :cond_1
    move-object v9, v10

    :goto_0
    aput-object v9, v8, v4

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-nez v9, :cond_2

    goto :goto_6

    :cond_2
    array-length v9, v3

    new-array v9, v9, [Ljava/lang/String;

    nop

    :goto_1
    array-length v11, v3

    if-ge v4, v11, :cond_3

    aget-object v11, v3, v4

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-static {v11, v12}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    move v12, v5

    :goto_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_5

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    aget-boolean v14, p2, v13

    if-eqz v14, :cond_4

    invoke-static {v13, v9, v11, v8, v4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    nop

    :goto_3
    array-length v12, v8

    if-ge v5, v12, :cond_b

    const-string v12, ""

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    invoke-static {v12, v13}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aget-boolean v13, p2, v5

    if-eqz v13, :cond_7

    aget-object v13, v8, v5

    if-nez v13, :cond_6

    nop

    move-object v13, v12

    goto :goto_4

    :cond_6
    aget-object v13, v8, v5

    invoke-static {v12, v13}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_4
    aput-object v13, v8, v5

    goto :goto_5

    :cond_7
    aput-object v10, v8, v5

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    move-object v4, v7

    nop

    :goto_7
    array-length v9, v8

    if-ge v5, v9, :cond_a

    aget-boolean v9, p2, v5

    if-eqz v9, :cond_9

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_9
    move-object v9, v10

    :goto_8
    aput-object v9, v8, v5

    add-int/lit8 v9, v5, -0x1

    aget-object v9, v3, v9

    invoke-static {v4, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    nop

    :cond_b
    return-object v8
.end method

.method private static getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p4

    :cond_0
    aget-object v0, p3, p0

    if-eqz v0, :cond_1

    aget-object v0, p3, p0

    return-object v0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    nop

    move-object v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    invoke-static {v2, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, p3, p0

    return-object v2
.end method

.method private static getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DexoptUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Split paths have different base paths: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    nop

    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_3

    aget-object v6, v3, v1

    invoke-static {v5, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    invoke-static {v5, v6}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty classLoadersNames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the class loader names and the dex paths do not match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
