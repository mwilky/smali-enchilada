.class public final Lcom/google/common/collect/ArrayTable;
.super Lcom/google/common/collect/AbstractTable;
.source "ArrayTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ArrayTable$RowMap;,
        Lcom/google/common/collect/ArrayTable$Row;,
        Lcom/google/common/collect/ArrayTable$ColumnMap;,
        Lcom/google/common/collect/ArrayTable$Column;,
        Lcom/google/common/collect/ArrayTable$ArrayMap;
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
        "Lcom/google/common/collect/AbstractTable<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final array:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

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

.field private final columnList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

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

.field private final rowList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TR;>;"
        }
    .end annotation
.end field

.field private transient rowMap:Lcom/google/common/collect/ArrayTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractTable;-><init>()V

    .line 181
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 182
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 183
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 184
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 187
    .local v0, "copy":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 189
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->eraseAll()V

    .line 190
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 191
    iget-object v3, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    aget-object v4, v0, v2

    iget-object v5, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v5, v5, v2

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Table;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->putAll(Lcom/google/common/collect/Table;)V

    .line 178
    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .local p2, "columnKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractTable;-><init>()V

    .line 146
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 147
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 156
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->index(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 157
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->index(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 160
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 161
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 162
    .local v0, "tmpArray":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->eraseAll()V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Table;)Lcom/google/common/collect/ArrayTable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 131
    .local p0, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    instance-of v0, p0, Lcom/google/common/collect/ArrayTable;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    move-object v1, p0

    check-cast v1, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/ArrayTable;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/Table;)V

    .line 131
    :goto_0
    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/ArrayTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)",
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 99
    .local p0, "rowKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .local p1, "columnKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static index(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 169
    .local v0, "columnBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 170
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public at(II)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 333
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 334
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 558
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$1;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 596
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 597
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/collect/ArrayTable$Column;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ArrayTable$Column;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    .line 596
    :goto_0
    return-object v1
.end method

.method public columnKeyList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;"
        }
    .end annotation

    .line 632
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .line 84
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    .line 640
    .local v0, "map":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/ArrayTable$ColumnMap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ArrayTable$ColumnMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 410
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 419
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 428
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 433
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 434
    .local v4, "row":[Ljava/lang/Object;, "[TV;"
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 435
    .local v7, "element":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 436
    const/4 v0, 0x1

    return v0

    .line 434
    .end local v7    # "element":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 433
    .end local v4    # "row":[Ljava/lang/Object;, "[TV;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_2
    return v2
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public erase(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    .line 523
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 524
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 525
    .local v1, "columnIndex":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 526
    :cond_1
    :goto_0
    return-object v2
.end method

.method public eraseAll()V
    .locals 5

    .line 399
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 400
    .local v3, "row":[Ljava/lang/Object;, "[TV;"
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    .end local v3    # "row":[Ljava/lang/Object;, "[TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
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

    .line 445
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 446
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 447
    .local v1, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 447
    :goto_1
    return-object v2
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 84
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 456
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 470
    .local v0, "rowIndex":Ljava/lang/Integer;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "Row %s not in %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v1

    iget-object v7, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    aput-object v7, v6, v2

    invoke-static {v3, v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 472
    .local v3, "columnIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const-string v6, "Column %s not in %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    aput-object v1, v5, v2

    invoke-static {v4, v6, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 495
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->putAll(Lcom/google/common/collect/Table;)V

    .line 496
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 684
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 686
    .local v0, "rowIndex":Ljava/lang/Integer;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/collect/ArrayTable$Row;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ArrayTable$Row;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    :goto_0
    return-object v1
.end method

.method public rowKeyList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TR;>;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;"
        }
    .end annotation

    .line 721
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 84
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 728
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    .line 729
    .local v0, "map":Lcom/google/common/collect/ArrayTable$RowMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/ArrayTable$RowMap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ArrayTable$RowMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public set(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)TV;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 355
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    .line 357
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aput-object p3, v1, p2

    .line 358
    return-object v0
.end method

.method public size()I
    .locals 2

    .line 535
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public toArray(Ljava/lang/Class;)[[Ljava/lang/Object;
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "reflection"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;)[[TV;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 376
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 375
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 377
    .local v0, "copy":[[Ljava/lang/Object;, "[[TV;"
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    array-length v5, v5

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 84
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 769
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
