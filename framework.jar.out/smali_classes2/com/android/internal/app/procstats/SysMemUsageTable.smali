.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method private dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static mergeSysMemUsage([JI[JI)V
    .locals 14

    add-int/lit8 v2, p1, 0x0

    aget-wide v2, p0, v2

    add-int/lit8 v4, p3, 0x0

    aget-wide v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    const/16 v9, 0x10

    const/4 v10, 0x1

    if-nez v8, :cond_0

    add-int/lit8 v6, p1, 0x0

    aput-wide v4, p0, v6

    nop

    :goto_0
    move v6, v10

    if-ge v6, v9, :cond_3

    add-int v7, p1, v6

    add-int v8, p3, v6

    aget-wide v10, p2, v8

    aput-wide v10, p0, v7

    add-int/lit8 v10, v6, 0x1

    goto :goto_0

    :cond_0
    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    add-int/lit8 v6, p1, 0x0

    add-long v7, v2, v4

    aput-wide v7, p0, v6

    move v6, v10

    :goto_1
    if-ge v6, v9, :cond_3

    add-int v7, p1, v6

    aget-wide v7, p0, v7

    add-int v11, p3, v6

    aget-wide v11, p2, v11

    cmp-long v7, v7, v11

    if-lez v7, :cond_1

    add-int v7, p1, v6

    add-int v8, p3, v6

    aget-wide v11, p2, v8

    aput-wide v11, p0, v7

    :cond_1
    add-int v7, p1, v6

    add-int/2addr v7, v10

    add-int v8, p1, v6

    add-int/2addr v8, v10

    aget-wide v11, p0, v8

    long-to-double v11, v11

    long-to-double v9, v2

    mul-double/2addr v11, v9

    add-int v8, p3, v6

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aget-wide v9, p2, v8

    long-to-double v8, v9

    long-to-double v0, v4

    mul-double/2addr v8, v0

    add-double/2addr v11, v8

    add-long v0, v2, v4

    long-to-double v0, v0

    div-double/2addr v11, v0

    double-to-long v0, v11

    aput-wide v0, p0, v7

    add-int v0, p1, v6

    add-int/lit8 v0, v0, 0x2

    aget-wide v0, p0, v0

    add-int v8, p3, v6

    add-int/lit8 v8, v8, 0x2

    aget-wide v10, p2, v8

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    add-int v0, p1, v6

    add-int/lit8 v0, v0, 0x2

    add-int v1, p3, v6

    add-int/lit8 v1, v1, 0x2

    aget-wide v10, p2, v1

    aput-wide v10, p0, v0

    :cond_2
    add-int/lit8 v6, v6, 0x3

    const/16 v9, 0x10

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 21

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, -0x1

    const/4 v9, 0x0

    move v1, v0

    move v0, v9

    :goto_0
    move v10, v0

    array-length v0, v7

    if-ge v10, v0, :cond_6

    const/4 v0, -0x1

    move v2, v1

    move v1, v0

    move v0, v9

    :goto_1
    move v11, v0

    array-length v0, v8

    if-ge v11, v0, :cond_5

    aget v12, v7, v10

    aget v13, v8, v11

    add-int v0, v12, v13

    mul-int/lit8 v14, v0, 0xe

    int-to-byte v0, v14

    move-object/from16 v15, p0

    invoke-virtual {v15, v0, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-lez v0, :cond_4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v0, v7

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    if-eq v2, v12, :cond_0

    nop

    move v0, v12

    goto :goto_2

    :cond_0
    nop

    const/4 v0, -0x1

    :goto_2
    invoke-static {v6, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v0, v12

    move/from16 v16, v0

    goto :goto_3

    :cond_1
    move/from16 v16, v2

    :goto_3
    array-length v0, v8

    if-le v0, v3, :cond_3

    nop

    if-eq v1, v13, :cond_2

    move v0, v13

    goto :goto_4

    :cond_2
    const/4 v0, -0x1

    :goto_4
    invoke-static {v6, v0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v1, v13

    :cond_3
    move/from16 v17, v1

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " samples:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  Cached"

    const/16 v18, 0x1

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, p2

    move-wide/from16 v19, v4

    move v4, v14

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Free"

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  ZRam"

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Kernel"

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Native"

    const/16 v5, 0xd

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    move/from16 v2, v16

    move/from16 v1, v17

    :cond_4
    add-int/lit8 v0, v11, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v15, p0

    add-int/lit8 v0, v10, 0x1

    move v1, v2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v15, p0

    return-void
.end method

.method public getTotalMemUsage()[J
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v6

    invoke-static {v0, v2, v5, v6}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public mergeStats(I[JI)V
    .locals 3

    int-to-byte v0, p1

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
