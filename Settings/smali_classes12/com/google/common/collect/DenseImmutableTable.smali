.class final Lcom/google/common/collect/DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "DenseImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/DenseImmutableTable$ColumnMap;,
        Lcom/google/common/collect/DenseImmutableTable$RowMap;,
        Lcom/google/common/collect/DenseImmutableTable$Column;,
        Lcom/google/common/collect/DenseImmutableTable$Row;,
        Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final columnCounts:[I

.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final iterationOrderColumn:[I

.field private final iterationOrderRow:[I

.field private final rowCounts:[I

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    .local p1, "cellList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    .local p2, "rowSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TR;>;"
    .local p3, "columnSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TC;>;"
    move-object/from16 v0, p0

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/RegularImmutableTable;-><init>()V

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 57
    .local v1, "array":[[Ljava/lang/Object;, "[[TV;"
    iput-object v1, v0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 58
    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/DenseImmutableTable;->makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 59
    invoke-static/range {p3 .. p3}, Lcom/google/common/collect/DenseImmutableTable;->makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 60
    iget-object v2, v0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    .line 61
    iget-object v2, v0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 63
    .local v2, "iterationOrderRow":[I
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 64
    .local v3, "iterationOrderColumn":[I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 65
    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/Table$Cell;

    .line 66
    .local v7, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {v7}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v8

    .line 67
    .local v8, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-interface {v7}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v9

    .line 68
    .local v9, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v10, v0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10, v8}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 69
    .local v10, "rowIndex":I
    iget-object v11, v0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v11, v9}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 70
    .local v11, "columnIndex":I
    iget-object v12, v0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v12, v12, v10

    aget-object v12, v12, v11

    .line 71
    .local v12, "existingValue":Ljava/lang/Object;, "TV;"
    if-nez v12, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    move v14, v4

    :goto_1
    const-string v15, "duplicate key: (%s, %s)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v4

    const/16 v16, 0x1

    aput-object v9, v13, v16

    invoke-static {v14, v15, v13}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v13, v0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v13, v13, v10

    invoke-interface {v7}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v13, v11

    .line 73
    iget-object v13, v0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    aget v14, v13, v10

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v10

    .line 74
    iget-object v13, v0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    aget v14, v13, v11

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v11

    .line 75
    aput v10, v2, v5

    .line 76
    aput v11, v3, v5

    .line 64
    .end local v7    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .end local v8    # "rowKey":Ljava/lang/Object;, "TR;"
    .end local v9    # "columnKey":Ljava/lang/Object;, "TC;"
    .end local v10    # "rowIndex":I
    .end local v11    # "columnIndex":I
    .end local v12    # "existingValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v5    # "i":I
    :cond_1
    move-object/from16 v6, p1

    iput-object v2, v0, Lcom/google/common/collect/DenseImmutableTable;->iterationOrderRow:[I

    .line 79
    iput-object v3, v0, Lcom/google/common/collect/DenseImmutableTable;->iterationOrderColumn:[I

    .line 80
    new-instance v4, Lcom/google/common/collect/DenseImmutableTable$RowMap;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/google/common/collect/DenseImmutableTable$RowMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V

    iput-object v4, v0, Lcom/google/common/collect/DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 81
    new-instance v4, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;

    invoke-direct {v4, v0, v5}, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V

    iput-object v4, v0, Lcom/google/common/collect/DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 82
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/DenseImmutableTable;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/DenseImmutableTable;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private static makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    .local p0, "set":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 45
    .local v0, "indexBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 46
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 47
    .local v3, "key":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .end local v3    # "key":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 29
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 254
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 255
    .local v1, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_1

    .line 255
    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method getCell(I)Lcom/google/common/collect/Table$Cell;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->iterationOrderRow:[I

    aget v0, v0, p1

    .line 267
    .local v0, "rowIndex":I
    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->iterationOrderColumn:[I

    aget v1, v1, p1

    .line 268
    .local v1, "columnIndex":I
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 269
    .local v2, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 270
    .local v3, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v4, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    .line 271
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v2, v3, v4}, Lcom/google/common/collect/DenseImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v5

    return-object v5
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->iterationOrderRow:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->iterationOrderColumn:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 29
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 261
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->iterationOrderRow:[I

    array-length v0, v0

    return v0
.end method
