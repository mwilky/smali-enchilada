.class public Landroid/content/pm/split/SplitAssetDependencyLoader;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "SplitAssetDependencyLoader.java"

# interfaces
.implements Landroid/content/pm/split/SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Landroid/content/pm/PackageParser$PackageParserException;",
        ">;",
        "Landroid/content/pm/split/SplitAssetLoader;"
    }
.end annotation


# instance fields
.field private final mCachedAssetManagers:[Landroid/content/res/AssetManager;

.field private final mCachedSplitApks:[[Landroid/content/res/ApkAssets;

.field private final mFlags:I

.field private final mSplitPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            "Landroid/util/SparseArray<",
            "[I>;I)V"
        }
    .end annotation

    .line 50
    .local p2, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 53
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    .line 54
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 55
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput p3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    .line 58
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    .line 59
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 60
    return-void
.end method

.method private static createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;
    .locals 20
    .param p0, "apkAssets"    # [Landroid/content/res/ApkAssets;

    .line 83
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 84
    .local v0, "assets":Landroid/content/res/AssetManager;
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 86
    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 87
    return-object v0
.end method

.method private static loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 69
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load APK at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 130
    .local v3, "assets":Landroid/content/res/AssetManager;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 129
    .end local v3    # "assets":Landroid/content/res/AssetManager;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method protected constructSplit(I[II)V
    .locals 6
    .param p1, "splitIdx"    # I
    .param p2, "configSplitIndices"    # [I
    .param p3, "parentSplitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    if-ltz p3, :cond_0

    .line 97
    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget v2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v1, v2}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p2, v2

    .line 105
    .local v3, "configSplitIdx":I
    iget-object v4, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget v5, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v4, v5}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v3    # "configSplitIdx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/ApkAssets;

    aput-object v2, v1, p1

    .line 110
    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    iget-object v2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object v2, v2, p1

    invoke-static {v2}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;

    move-result-object v2

    aput-object v2, v1, p1

    .line 111
    return-void
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 116
    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 123
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 124
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected isSplitCached(I)Z
    .locals 1
    .param p1, "splitIdx"    # I

    .line 64
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
