.class final Lcom/android/server/am/ActiveServices$ServiceDumper;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceDumper"
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private final dumpAll:Z

.field private final dumpPackage:Ljava/lang/String;

.field private final fd:Ljava/io/FileDescriptor;

.field private final matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field private needSep:Z

.field private final nowReal:J

.field private printed:Z

.field private printedAnything:Z

.field private final pw:Ljava/io/PrintWriter;

.field private final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    iput-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iput-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    iput-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    new-instance v8, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    iput-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    move/from16 v9, p5

    invoke-virtual {v8, v2, v9}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v8}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v8

    array-length v10, v8

    move v11, v4

    :goto_0
    if-ge v11, v10, :cond_3

    aget v12, v8, v11

    invoke-static {v1, v12}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v13

    iget-object v14, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-lez v14, :cond_2

    move v14, v4

    :goto_1
    iget-object v15, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    iget-object v15, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v1, v15, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v15, v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v3, :cond_1

    iget-object v1, v15, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private dumpHeaderLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  Last ANR service:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method

.method private dumpRemainsLocked()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  Pending services:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Pending "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "    "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    :cond_8
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  Restarting services:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Restarting "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "    "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_5

    :cond_d
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    :cond_e
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  Destroying services:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    :cond_f
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Destroy "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "    "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v0, :cond_18

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_18

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v1

    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_8

    :cond_12
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_13

    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_8

    :cond_13
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_15

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    :cond_14
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Connection bindings to services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    :cond_15
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "    "

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_16
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    array-length v5, v0

    :goto_9
    if-ge v1, v5, :cond_22

    aget v6, v0, v1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v8, v8, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v8, :cond_19

    goto/16 :goto_c

    :cond_19
    iget-object v9, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    :goto_a
    if-ltz v9, :cond_1f

    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    goto/16 :goto_b

    :cond_1a
    if-nez v7, :cond_1c

    const/4 v7, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-boolean v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    :cond_1b
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "Active foreground apps - user "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->print(I)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11, v9}, Ljava/io/PrintWriter;->print(I)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mLabel="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1d
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mNumActive="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mAppOnTop="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mShownWhileTop="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mShownWhileScreenOn="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mStartTime="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    sub-long/2addr v11, v3

    iget-object v13, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v11, v12, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mStartVisibleTime="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    sub-long/2addr v11, v3

    iget-object v13, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v11, v12, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1e

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mEndTime="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    sub-long/2addr v11, v3

    iget-object v13, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v11, v12, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    :cond_1e
    :goto_b
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_a

    :cond_1f
    invoke-virtual {v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->hasMessagesOrCallbacks()Z

    move-result v9

    if-eqz v9, :cond_21

    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v9, :cond_20

    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    :cond_20
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v10, "  Handler - user "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(I)V

    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Landroid/util/PrintWriterPrinter;

    iget-object v10, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-direct {v9, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v10, "    "

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->dumpMine(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_21
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_22
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  (nothing)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v3, "    Client:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :try_start_0
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    invoke-interface {v1, v3, p1, v4}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v4, "      Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Failure while dumping the service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    nop

    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    return-void
.end method

.method private dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 8

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserHeaderLocked(I)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  * "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    "

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    app="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    created="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iget-wide v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " started="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " connections="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    Connections:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    const-string/jumbo v7, "null"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private dumpUserHeaderLocked(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active services:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method private dumpUserRemainsLocked(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " delayed start services:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "  * Delayed start "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_9

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " starting in background:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    :cond_8
    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "  * Starting bg "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method


# virtual methods
.method dumpLocked()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    move v5, v2

    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    add-int/lit8 v5, v5, 0x1

    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_2

    :cond_2
    :goto_3
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    return-void
.end method

.method dumpWithClient()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    move v5, v2

    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    add-int/lit8 v5, v5, 0x1

    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v7, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    :goto_3
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_4
    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
