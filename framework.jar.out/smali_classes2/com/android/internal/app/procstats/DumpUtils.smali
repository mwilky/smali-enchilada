.class public final Lcom/android/internal/app/procstats/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# static fields
.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_PROTO_ENUMS:[I

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_SCREEN_PROTO_ENUMS:[I

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field public static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field static final STATE_PROTO_ENUMS:[I

.field static final STATE_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Persist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Top"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ImpFg"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ImpBg"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Backup"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Service"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ServRst"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Receivr"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "HeavyWt"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Home"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "LastAct"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "CchAct"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "CchCAct"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "CchEmty"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "pers"

    aput-object v2, v1, v3

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "top"

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "impfg"

    aput-object v2, v1, v5

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "impbg"

    aput-object v2, v1, v6

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "backup"

    aput-object v2, v1, v7

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "service"

    aput-object v2, v1, v8

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "service-rs"

    aput-object v2, v1, v9

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "receiver"

    aput-object v2, v1, v10

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "heavy"

    aput-object v2, v1, v11

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "home"

    aput-object v2, v1, v12

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "lastact"

    aput-object v2, v1, v13

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "cch-activity"

    aput-object v2, v1, v14

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "cch-aclient"

    aput-object v2, v1, v15

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "cch-empty"

    aput-object v2, v1, v16

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "p"

    aput-object v2, v1, v3

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "t"

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "f"

    aput-object v2, v1, v5

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "b"

    aput-object v2, v1, v6

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "u"

    aput-object v2, v1, v7

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "s"

    aput-object v2, v1, v8

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "x"

    aput-object v2, v1, v9

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "r"

    aput-object v2, v1, v10

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "w"

    aput-object v2, v1, v11

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "h"

    aput-object v2, v1, v12

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "l"

    aput-object v2, v1, v13

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v14

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "c"

    aput-object v2, v1, v15

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "e"

    aput-object v2, v1, v16

    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v4, v1, v3

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v5, v1, v4

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v6, v1, v5

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v7, v1, v6

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v8, v1, v7

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v9, v1, v8

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v10, v1, v9

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v11, v1, v10

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v12, v1, v11

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v13, v1, v12

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v14, v1, v13

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v15, v1, v14

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v16, v1, v15

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v0, v1, v16

    const-string/jumbo v0, "off"

    const-string/jumbo v1, "on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v0, "norm"

    const-string/jumbo v1, "mod"

    const-string/jumbo v2, "low"

    const-string v3, "crit"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    const-string v0, "0"

    const-string v1, "1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    const-string/jumbo v0, "n"

    const-string/jumbo v1, "m"

    const-string v2, "l"

    const-string v3, "c"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_PROTO_ENUMS:[I

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v2, ""

    return-object v2

    :cond_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    return-object p1
.end method

.method public static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    add-int v3, v2, v1

    aget-wide v4, p2, v3

    if-ne p3, v3, :cond_0

    sub-long v6, p6, p4

    add-long/2addr v4, v6

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    move-object v10, p0

    const-string/jumbo v0, "process"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "vers"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\t"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object/from16 v2, p3

    goto :goto_0

    :cond_0
    nop

    move-object v2, v1

    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v3, p5

    goto :goto_1

    :cond_1
    nop

    move-object v3, v1

    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v1, p7

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-static {v10, v0, v2, v3, v1}, Lcom/android/internal/app/procstats/DumpUtils;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    move v11, v0

    if-ltz v11, :cond_3

    move-object v12, p1

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v0

    invoke-static {v10, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v13, v8

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V

    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v11, -0x1

    goto :goto_3

    :cond_3
    move-object v12, p1

    return-void
.end method

.method public static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    move-object v1, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move-object v1, p2

    return-void
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v3

    move-wide v2, v1

    move v1, v4

    :goto_0
    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    if-ge v1, v6, :cond_6

    const/4 v6, -0x1

    move-wide v9, v2

    move v2, v4

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    add-int v3, v2, v1

    aget-wide v11, p2, v3

    const-string v13, ""

    move/from16 v14, p3

    if-ne v14, v3, :cond_0

    sub-long v15, p6, p4

    add-long/2addr v11, v15

    if-eqz v0, :cond_0

    const-string v13, " (running)"

    :cond_0
    cmp-long v15, v11, v7

    if-eqz v15, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v15, -0x1

    if-eq v5, v1, :cond_1

    nop

    move v7, v1

    goto :goto_2

    :cond_1
    nop

    move v7, v15

    :goto_2
    invoke-static {v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v5, v1

    if-eq v6, v2, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    move v7, v15

    :goto_3
    invoke-static {v0, v7, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v6, v2

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-long/2addr v9, v11

    :cond_4
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_5
    move/from16 v14, p3

    add-int/lit8 v1, v1, 0x4

    move-wide v2, v9

    goto :goto_0

    :cond_6
    move/from16 v14, p3

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    TOTAL: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    :cond_7
    return-wide v2
.end method

.method private static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 11

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    array-length v2, p3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p4, :cond_2

    array-length v3, p4

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v1, :cond_a

    move v6, v4

    :goto_4
    if-ge v6, v2, :cond_9

    move v7, v4

    :goto_5
    if-ge v7, v3, :cond_8

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v8, 0x0

    if-eqz p2, :cond_3

    array-length v9, p2

    if-le v9, v0, :cond_3

    aget v9, p2, v5

    invoke-static {p0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    const/4 v8, 0x1

    :cond_3
    if-eqz p3, :cond_5

    array-length v9, p3

    if-le v9, v0, :cond_5

    if-eqz v8, :cond_4

    const-string v9, "-"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    aget v9, p3, v6

    invoke-static {p0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    const/4 v8, 0x1

    :cond_5
    if-eqz p4, :cond_7

    array-length v9, p4

    if-le v9, v0, :cond_7

    if-eqz v8, :cond_6

    const-string v9, "-"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    sget-object v9, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v10, p4, v7

    aget-object v9, v9, v10

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method public static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    return-void
.end method

.method public static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTag(Ljava/io/PrintWriter;I)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2

    div-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    :goto_0
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1
.end method

.method public static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :pswitch_0
    const-string v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :pswitch_1
    const-string v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :pswitch_2
    const-string v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :pswitch_3
    const-string v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :pswitch_4
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static printPercent(Ljava/io/PrintWriter;D)V
    .locals 5

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    const-string v0, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, v3

    if-gez v0, :cond_1

    const-string v0, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "%.0f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    return-void
.end method

.method public static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public static printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .locals 12

    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    const/16 v5, 0x38

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    move-result v0

    sget-object v9, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_PROTO_ENUMS:[I

    const/16 v11, 0xe

    move-object v6, p0

    move-wide v7, p3

    move v10, v0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    move-result v0

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    const/4 v6, 0x1

    move-object v1, p0

    move-wide/from16 v2, p5

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    return-void
.end method

.method public static printProto(Landroid/util/proto/ProtoOutputStream;J[III)I
    .locals 2

    div-int v0, p4, p5

    if-ltz v0, :cond_0

    array-length v1, p3

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    mul-int v1, v0, p5

    sub-int v1, p4, v1

    return v1
.end method

.method public static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
