.class public abstract Landroid/content/pm/split/SplitDependencyLoader;
.super Ljava/lang/Object;
.source "SplitDependencyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    return-void
.end method

.method private static append([II)[I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    :cond_0
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    array-length v1, p0

    aput p1, v0, v1

    return-object v0
.end method

.method private collectConfigSplitIndices(I)[I
    .locals 3

    iget-object v0, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    return-object v1
.end method

.method public static createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v2, v4

    :goto_0
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_1

    add-int/lit8 v6, v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' requires split \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', which is missing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v1

    :cond_2
    move v6, v4

    :goto_1
    add-int/lit8 v7, v2, 0x1

    new-array v8, v1, [I

    aput v6, v8, v4

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_3
    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' declares itself as configuration split for a non-feature split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v3

    :cond_6
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' targets split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\', which is missing."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v3

    :cond_7
    move v5, v4

    :goto_4
    nop

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    add-int/lit8 v8, v1, 0x1

    invoke-static {v7, v8}, Landroid/content/pm/split/SplitDependencyLoader;->append([II)[I

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_6
    if-ge v2, v5, :cond_c

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    :goto_7
    if-eq v7, v3, :cond_b

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    if-eqz v8, :cond_9

    aget v9, v8, v4

    goto :goto_8

    :cond_9
    move v9, v3

    :goto_8
    move v7, v9

    goto :goto_7

    :cond_a
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    const-string v4, "Cycle detected in split dependencies."

    invoke-direct {v3, v4, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    return-object v0
.end method


# virtual methods
.method protected abstract constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isSplitCached(I)Z
.end method

.method protected loadDependenciesForSplit(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    return-void

    :cond_1
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    :goto_0
    iget-object v2, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    aget p1, v2, v0

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_4
    :goto_2
    move v0, p1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    move v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    return-void
.end method
